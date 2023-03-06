@ECHO OFF
CD /d %~dp0
MD "%CD%\Offline"


Dism /Mount-Image /ImageFile:"%CD%\install.wim" /Index:1 /MountDir:"%CD%\Offline"
Dism /Image:"%CD%\Offline" /Get-TargetEditions
ECHO.
ECHO.
set "Editon="
set /p "Editon=Type your desire edition name from above: "
ECHO.
Dism /Image:"%CD%\Offline" /Set-Edition:%Editon%
Dism /Unmount-Image /MountDir:"%CD%\Offline" /Commit
Dism /Export-Image /SourceImageFile:"%CD%\install.wim" /SourceIndex:1 /DestinationImageFile:"%CD%\install_New.wim"
rmdir /S /Q "%CD%\Offline"
rename "%CD%\install.wim" install_Old.wim
rename "%CD%\install_New.wim" install.wim
pause