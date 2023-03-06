@ECHO OFF
SET "File=%SystemRoot%\MagicX\Instructions\First.txt"
IF EXIST "%File%" WScript "%WinDir%\MagicX\Utills\OpenHere.vbs" notepad user "%File%"
START /MIN CMD /C CALL "%SystemRoot%\MagicX\run.bat" >NUL 2>&1
DEL %0
