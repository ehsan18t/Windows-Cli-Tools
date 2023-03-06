@ECHO OFF
TITLE Clear all TEMP Files and Folders
DEL /S /Q "%TMP%\*.*"
DEL /S /Q "%TEMP%\*.*"
DEL /S /Q "%WINDIR%\Temp\*.*"
DEL /S /Q "%USERPROFILE%\Local Settings\Temp\*.*"
DEL /S /Q "%LOCALAPPDATA%\Temp\*.*"
IF EXIST "%ProgramFiles%\Easy Context Menu\Files\EcMenu.ini" DEL "%ProgramFiles%\Easy Context Menu\Files\EcMenu.ini"
IF EXIST "%WinDir%\system32\Files\EcMenu.ini" DEL "%WinDir%\system32\Files\EcMenu.ini"
IF EXIST "%ProgramFiles%\Easy Context Menu\Files\Items.ini" DEL "%ProgramFiles%\Easy Context Menu\Files\Items.ini"
IF EXIST "%WinDir%\system32\Files\Items.ini" DEL "%WinDir%\system32\Files\Items.ini"
EcMenu.exe /TempClean
nircmd.exe emptybin
EcMenu.exe /Admin /ReduceMemory
