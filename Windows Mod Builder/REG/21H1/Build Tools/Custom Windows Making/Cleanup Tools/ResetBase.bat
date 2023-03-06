@echo off
cd /d %~dp0
ECHO  - Creating Directory
md "%CD%\Mount\Windows"
md "%CD%\Mount\Temp"

ECHO  - Mounting install.wim
Dism /Mount-Image /ImageFile:"%CD%\install.wim" /Index:1 /MountDir:"%CD%\Mount\Windows"

ECHO ========================================================
ECHO  - Reseting Base
Dism /Cleanup-Image /Image="%CD%\Mount\Windows" /StartComponentCleanup /ResetBase /ScratchDir:"%CD%\Mount\Temp"

ECHO ========================================================
ECHO  - Saving Changes ^& Unmounting Image
Dism /Unmount-Image /MountDir:"%CD%\Mount\Windows" /Commit

ECHO ========================================================
ECHO  - Rebuilding New Image
Dism /Export-Image /SourceImageFile:"%CD%\install.wim" /SourceIndex:1 /DestinationImageFile:"%CD%\install_cleaned.wim"

ECHO.
ECHO  - Removing Created Directory
rmdir /S /Q "%CD%\Mount"
ECHO.
ECHO.
pause

