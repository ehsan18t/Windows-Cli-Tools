@ECHO OFF
TITLE One Click Prepare
cd /d %~dp0

:: Removing Current VM Folder
ECHO - Removing Current VM Folder
rmdir /S /Q "VMOS\test"

:: Copying New VM Folder
ECHO - Copying New VM Folder
MD "VMOS\test"
XCOPY /S /Y /E "Image\test" "VMOS\test" >nul

:: Copying New install.wim
ECHO - Replacing New install.wim
COPY /Y "Image\03. Cleaned\install.wim" "z\DVD\sources\install.wim" >nul

:: Deleting old test.iso
IF EXIST "z\ISO\test.iso" (
	ECHO - Deleting old test.iso
	DEL "z\ISO\test.iso"
)
ECHO.
ECHO   *********************
ECHO   * OPERATION SUCCEED *
ECHO   *********************
ECHO.
ECHO PROGRAM WILL EXIT IN 3 SEC...
CALL "z\Start.cmd" && TIMEOUT /t 3 >nul
EXIT
