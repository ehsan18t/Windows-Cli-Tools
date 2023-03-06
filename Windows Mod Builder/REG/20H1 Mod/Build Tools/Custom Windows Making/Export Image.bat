@ECHO OFF
CD /d %~dp0
ECHO.
dism /Get-WimInfo /wimfile:"%CD%\install.wim"
ECHO.
ECHO.
ECHO.
ECHO ==============================
set /p Input= Enter Image Index:
ECHO ==============================
ECHO.
ECHO.
dism /Export-Image /SourceImageFile:"%CD%\install.wim" /SourceIndex:"%Input%" /DestinationImageFile:"%CD%\install_New.wim" /Compress:maximum /checkintegrity
ECHO.
rename "%CD%\install.wim" install_Old.wim
rename "%CD%\install_New.wim" install.wim
ECHO.
Pause





























