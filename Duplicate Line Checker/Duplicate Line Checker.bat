@ECHO OFF
TITLE Duplicate Line Checker

SET "FILE=%*"
IF NOT DEFINED FILE GOTO :ERROR

PowerShell -NoLogo -ExecutionPolicy Bypass -Command "get-content '%FILE%' | group-object | where { $_.count -ne 1 } | format-table -auto -prop name,count"
PAUSE
EXIT

:ERROR
ECHO.
ECHO  PLEASE DRAG ^& DROP A FILE!!!
ECHO  OR, Run in CMD
ECHO  "Duplicate Line Checker.bat" "file.txt"
ECHO.
ECHO  Press any key to exit...
PAUSE >NUL 2>&1
EXIT