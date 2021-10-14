@ECHO OFF
MODE con:cols=50 lines=25
SET "VERSION=1.0"
TITLE ExpressVPN Data Importer v%VERSION%

@REM Auto Elevate
FLTMC >NUL 2>&1 || (
	ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\GetAdmin.vbs"
	ECHO UAC.ShellExecute "%~FS0", "", "", "runas", 1 >> "%TEMP%\GetAdmin.vbs"
	CMD /U /C TYPE "%TEMP%\GetAdmin.vbs">"%TEMP%\GetAdminUnicode.vbs"
	CSCRIPT //NOLOGO "%TEMP%\GetAdminUnicode.vbs"
	DEL /F /Q "%TEMP%\GetAdmin.vbs" >NUL 2>&1
	DEL /F /Q "%TEMP%\GetAdminUnicode.vbs" >NUL 2>&1
	EXIT
)

COLOR 0E
CALL :Header

@REM Declare Variables
SET "Current_Dir=%~dp0\bins"
SET "Patch_Dir=%ProgramData%\ExpressVPN\v4"

IF NOT EXIST "%Current_Dir%" MKDIR "%Current_Dir%" >NUL 2>&1
CD "%Current_Dir%" >NUL 2>&1

ECHO  - Checking ADB
adb devices -l | find "device product:" >NUL 2>&1
if errorlevel 1 GOTO NO_DEVICES

ECHO  - Checking SU Permission
adb shell "su -c 'exit'" >NUL 2>&1 || GOTO NO_SU

ECHO  - Checking for bin files
adb shell "mkdir -p /sdcard/tmpExpressImport"
adb shell "su -c 'find /data/user_de/0/com.expressvpn.vpn/files -name '*.bin' | cpio -p /sdcard/tmpExpressImport'" >NUL 2>&1

ECHO  - Pulling bin files
adb pull "/sdcard/tmpExpressImport/data" >NUL 2>&1
Move "data\user_de\0\com.expressvpn.vpn\files\*.bin" "%Current_Dir%" >NUL 2>&1

ECHO  - Clearing Temp Files
adb shell "rm -r /sdcard/tmpExpressImport" >NUL
RMDIR /S /Q "data" >NUL 2>&1

@REM Checkings
IF NOT EXIST "%Current_Dir%\*.bin" EXIT >NUL 2>&1

@REM Killing Shit
ECHO  - Killing ExpressVPN
TASKKILL /IM expressvpn.exe /T /F >NUL 2>&1
NET STOP ExpressVPNService /Y >NUL 2>&1

@REM Cleanups & Setups
ECHO  - Clearing previous data (^if ^exist)
RMDIR /S /Q "%Patch_Dir%\config" >NUL 2>&1
RMDIR /S /Q "%Patch_Dir%\data" >NUL 2>&1
RMDIR /S /Q "%Patch_Dir%\log" >NUL 2>&1
RMDIR /S /Q "%Patch_Dir%\icons" >NUL 2>&1
RMDIR /S /Q "%Patch_Dir%\prefs" >NUL 2>&1
DEL "%Patch_Dir%\userdata2.dat" >NUL 2>&1
MKDIR "%Patch_Dir%\data" >NUL 2>&1

@REM Copy Patch
ECHO  - Patching ExpressVPN
COPY /Y "%Current_Dir%\*.bin" "%Patch_Dir%\data\*.bin" >NUL 2>&1
CD ..
RMDIR /S /Q "%Current_Dir%" >NUL 2>&1

ECHO  - Starting ExpressVPN Service
NET START ExpressVPNService /Y >NUL 2>&1

ECHO  	-------------
ECHO  	^|  SUCCESS  ^|
ECHO  	-------------
CALL :END


:NO_SU
ECHO.
ECHO  -^> SU Permission Denied!
ECHO     Please eneble SU from Magisk Manager.
CALL :END

:NO_DEVICES
ECHO.
ECHO  -^> This ERROR can happen bacause of these,
ECHO		* Phone is not connected
ECHO		* ADB is not installed
ECHO		* ADB Debugging is not enebled
ECHO		* Developer Mode is not enebled
ECHO.
ECHO     Please solve the problem and try again.
CALL :END

:Header
COLOR 0F
ECHO         [1;31m----------------------------------
ECHO         ---- [1;37mExpressVPN Data Importer[1;31m ----
ECHO         -------------- [1;37mv%VERSION%[1;31m --------------
ECHO         ------------ [1;37mby Ahsan[1;31m ------------
ECHO         ----------------------------------[1;37m
ECHO.
ECHO  [1;33mImport trail data from android mobile to 
ECHO  pc and enjoy 7 days free trail.[1;37m
ECHO.
EXIT /B


:END
ECHO.
ECHO  -^> Press any key to exit...
PAUSE >NUL 2>&1
EXIT