@ECHO OFF
MODE con:cols=41 lines=20
TITLE Taskbar Controller by Ahsan
CD /D %~dp0
:START
CALL :Check_NirCMD
CLS
CALL :Header
ECHO  [1] Enable Taskbar
ECHO  [2] Disable Taskbar
ECHO  [3] Set Custom
ECHO  [x] Exit
ECHO.
ECHO [1;33m
CHOICE /C:123X /N /M " => Enter your choice: "
ECHO [1;37m
IF ERRORLEVEL 4 EXIT
IF ERRORLEVEL 3 CALL :Custom
IF ERRORLEVEL 2 CALL :Disable
IF ERRORLEVEL 1 CALL :Enable

EXIT /B

:Enable
nircmd.exe win trans class Shell_TrayWnd 255
CALL :END_LINE

:Disable
nircmd.exe win trans class Shell_TrayWnd 256
CALL :END_LINE

:Custom
CLS
CALL :Header
CALL :Take_Input
nircmd.exe win trans class Shell_TrayWnd %Input%
CALL :END_LINE

:END_LINE
ECHO.
ECHO  [1;32m         [OPERATION COMPLETE][1;37m
ECHO   --- Press Any Key To Go Main Menu ---
PAUSE >NUL 2>&1
GOTO START
EXIT /B
:Check_NirCMD
IF NOT EXIST "nircmd.exe" (
	IF NOT EXIST "%WinDir%\system32\nircmd.exe" (
		ECHO.
	    ECHO         [1;31m!!! NirCMD not found !!![1;37m
	    CHOICE /C:NY /N /M "--> Want to download it (115KB)? [Y/N] "
	    IF ERRORLEVEL 2 CALL :DNL_NirCMD
	    IF ERRORLEVEL 1 EXIT
	)
)
EXIT /B

:DNL_NirCMD
ECHO --^> Downloading NirCMD... [1;33m
powershell.exe -nologo -noprofile -Command wget https://raw.githubusercontent.com/Ahsan400/MagicX_Mod_Files/master/Windows_10/Libs/nircmd.exe -OutFile nircmd.exe >NUL 2>&1
EXIT /B

:Header
ECHO        [1;31m--------------------------
ECHO        --- [1;37mTaskbar Controller[1;31m ---
ECHO        -------- [1;37mby Ahsan[1;31m --------
ECHO        --------------------------[1;37m
ECHO.
EXIT /B

:Take_Input
SET "Input="
IF DEFINED Inp_Error_Message (
    ECHO.%Inp_Error_Message%
    SET "Inp_Error_Message="
)
ECHO [1;33m
SET /p "Input= -> Enter Custom Value: "
ECHO [1;37m
IF NOT DEFINED Input (
    SET "Inp_Error_Message=[1;31m EMPTY INPUT! [1;37m"
    GOTO Take_Input
)
EXIT /B
