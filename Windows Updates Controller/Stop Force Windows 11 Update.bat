@ECHO OFF

TITLE  Stop Force Windows 11 Update

FLTMC >NUL 2>&1 || (
	ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\GetAdmin.vbs"
	ECHO UAC.ShellExecute "%~FS0", "", "", "runas", 1 >> "%TEMP%\GetAdmin.vbs"
	CMD /U /C TYPE "%TEMP%\GetAdmin.vbs">"%TEMP%\GetAdminUnicode.vbs"
	CSCRIPT /NOLOGO "%TEMP%\GetAdminUnicode.vbs"
	DEL /F /Q "%TEMP%\GetAdmin.vbs" >NUL 2>&1
	DEL /F /Q "%TEMP%\GetAdminUnicode.vbs" >NUL 2>&1
	EXIT
)

ECHO.
FOR /F "TOKENS=3" %%A IN ('REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion"') DO (SET "WINVER=%%A")
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseversion" /t REG_DWORD /d "1" /f  >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseversionInfo" /t REG_SZ /d "%WINVER%" /f
ECHO.

ECHO  -^> Press any key to exit...
PAUSE >NUL 2>&1
