@ECHO OFF
TITLE One Click Prepare
CD /d %~dp0
CD ..

REM Environment Variables
SET "envDrive=A:"
SET "vmDrive=A:"
SET "Environment=%envDrive%\Environmment"

REM All Image variables
SET "One=01. Migreted"
SET "Two=02. Updated"
SET "Three=03. Cleaned - Toolkit"
SET "Four=04. Cleaned - DISM++"
SET "Five=05. Tweaked - DISM++"
SET "Six=06. Tweaked - Script"

REM Selecting Image
SET "Image=Images\%Five%"

REM Removing Current VM Folder
ECHO - Removing Current VM Folder
CD ..
RMDIR /S /Q "VMOS\test"

REM Copying New VM Folder
ECHO - Copying New VM Folder
MD "%vmDrive%\VMOS\test"
XCOPY /I /Y /E "%Environment%\Others\test" "%vmDrive%\VMOS\test" >nul

REM Copying New install.wim
ECHO - Replacing New install.wim
COPY /Y "%Environment%\%Image%\install.wim" "%Environment%\Toolkit\DVD\sources\install.wim" >nul

REM Deleting old test.iso
IF EXIST "%Environment%\Toolkit\ISO\test.iso" (
	ECHO - Deleting old test.iso
	DEL "%Environment%\Toolkit\ISO\test.iso"
)
ECHO.
ECHO   *********************
ECHO   * OPERATION SUCCEED *
ECHO   *********************
ECHO.
ECHO PROGRAM WILL EXIT IN 3 SEC...
CALL "%Environment%\Toolkit\Start.cmd" && TIMEOUT /t 3 >nul
EXIT
