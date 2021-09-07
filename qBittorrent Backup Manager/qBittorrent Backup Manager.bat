@ECHO OFF
SET "VERSION=1.0"
MODE con:cols=50 lines=32
TITLE qBittorrent Backup Manager v%VERSION%

@REM Declare variables
SET "CURRENT_DIR=%~dp0"
SET "DATA=%UserProfile%\AppData"
SET "App_Location1=%SystemDrive%\Program Files\qBittorrent\qBittorrent.exe"
SET "App_Location2=%SystemDrive%\Program Files (x86)\qBittorrent\qBittorrent.exe"
SET "App_Location=%App_Location1%"
SET "DATA1_DIR=%DATA%\Local\qBittorrent"
SET "DATA2_DIR=%DATA%\Roaming\qBittorrent"
SET "BACKUP_DIR=%CURRENT_DIR%qBittorrent"
SET "NEED_TO_RUN=FALSE"
SET "WILL_ARCHIVE=initialization"
SET "MYDATE=initialization"
SET "MYTIME=initialization"
SET "ARCHIVE_DIR=%BACKUP_DIR%\Archive"
SET "ARCHIVE_DATA1=%ARCHIVE_DIR%\qBittorrent\Local"
SET "ARCHIVE_DATA2=%ARCHIVE_DIR%\qBittorrent\Roaming"
SET "RESTORE_MODE=DIRTY"

CALL :Header

@REM Step 1 - Check if qBittorrent is installed
ECHO  - Checking if qBittorrent is installed...
IF NOT EXIST "%App_Location%" (
    IF NOT EXIST "%App_Location2%" CALL :NOT_INSTALLED
    SET "App_Location=%App_Location2%"
)


@REM Step 2 - Check if qBittorrent is running
SET "APP_NAME=qbittorrent.exe"
SET "IS_RUNNING=FALSE"
CALL :CHECK_RUNNING
IF "%IS_RUNNING%" EQU "TRUE" (
    ECHO  - qBittorrent is running.
    ECHO  - Stopping qBittorrent...
    TASKKILL /IM %APP_NAME% /F >NUL 2>&1
    SET "NEED_TO_RUN=TRUE"

)


@REM Step 3 - Check if any previous backup exists
ECHO  - Checking if any previous backup exists...
SET "IS_EMPTY=TRUE"
CALL :CHECK_DIR
IF "%IS_EMPTY%" EQU "FALSE" (
    CALL :GENERATE_CREATION_TIME
    CALL :GENERATE_CREATION_DATE
    ECHO  - Previous backup exists!
    ECHO.
    ECHO  Please Choose one of the following options:
    ECHO  [1] Archive Old Backup
    ECHO  [2] Replace Old Backup
    ECHO  [R] Restore to Old Backup
    ECHO  [c] Cancel
    
	CHOICE /C:12RC /N /M " => "
		IF ERRORLEVEL 4 GOTO :NOPE
		IF ERRORLEVEL 3 GOTO :RESTORE
		IF ERRORLEVEL 2 SET "WILL_ARCHIVE=FALSE" && GOTO :BACKUP_NEXT
		IF ERRORLEVEL 1 SET "WILL_ARCHIVE=TRUE" && GOTO :BACKUP_NEXT
)

:BACKUP_NEXT
IF "%WILL_ARCHIVE%" EQU "TRUE" (
    @REM Step 3.1 - Preparing for Archive old backup
    ECHO.
    ECHO  - Archiving previous backup...
    MKDIR "%ARCHIVE_DATA1%"
    MKDIR "%ARCHIVE_DATA2%"
    XCOPY /S /Y /E "%BACKUP_DIR%\Local\" "%ARCHIVE_DATA1%\" >NUL
    XCOPY /S /Y /E "%BACKUP_DIR%\Roaming\" "%ARCHIVE_DATA2%\" >NUL
    PowerShell -NoLogo -NoProfile -COMMAND "& { Add-Type -A 'System.IO.Compression.FileSystem'; [IO.Compression.ZipFile]::CreateFromDirectory('%ARCHIVE_DIR%', '%CURRENT_DIR%\qBittorrent_%MYDATE%_%MYTIME%.zip'); }" >NUL 2>&1
    RMDIR /S /Q "%BACKUP_DIR%" >NUL 2>&1
    @REM PAUSE
) ELSE IF "%WILL_ARCHIVE%" EQU "FALSE" (
    @REM Step 3.2 - Preparing for Replace old backup
    ECHO.
    ECHO  - Replacing previous backup...
    RMDIR /S /Q "%BACKUP_DIR%" >NUL 2>&1
)


@REM Step 3.3 - Create backup directory
ECHO  - Creating backup directory...
IF NOT EXIST "%BACKUP_DIR%" (
    MKDIR "%BACKUP_DIR%\Local"
    MKDIR "%BACKUP_DIR%\Roaming"
)

@REM Step 3.4 - Copy qBittorrent data to backup directory
ECHO  - Copying qBittorrent data to backup directory...
XCOPY /D /S /Y /E "%DATA1_DIR%\" "%BACKUP_DIR%\Local\qBittorrent\" >NUL
XCOPY /D /S /Y /E "%DATA2_DIR%\" "%BACKUP_DIR%\Roaming\qBittorrent\" >NUL

@REM Step 3.5 - Restore Menu
GOTO :RUN_QBIT
:RESTORE
CLS
CALL :Header
@REM Instructions
ECHO  [1;36mOverwrite[1;37m
ECHO  Merge current data and old ^backup.
ECHO.
ECHO  [1;36mClean Restore[1;37m
ECHO  Removes current data then restore from backup.
ECHO.
ECHO       [1;31mIf you don't know which one to pick
ECHO                [1;36mchoose Overwrite.[1;37m
ECHO.
@REM Step 1 - Ask for restore method
ECHO  Please Choose one of the following options:
ECHO  [1] Overwrite
ECHO  [2] Clean Restore
ECHO  [c] Cancel

CHOICE /C:12C /N /M " => "
    IF ERRORLEVEL 3 GOTO :NOPE
    IF ERRORLEVEL 2 SET "RESTORE_MODE=CLEAN" && GOTO :RESTORE_NEXT
    IF ERRORLEVEL 1 GOTO :RESTORE_NEXT

:RESTORE_NEXT
ECHO.
IF "%RESTORE_MODE%" EQU "CLEAN" (
    ECHO  - Removing current data
    IF EXIST "%DATA1_DIR%" RMDIR /S /Q "%DATA1_DIR%"
    IF EXIST "%DATA2_DIR%" RMDIR /S /Q "%DATA2_DIR%"
    MKDIR "%DATA1_DIR%"
    MKDIR "%DATA2_DIR%"
)
ECHO  - Restoring from backup
XCOPY /D /S /Y /E "%BACKUP_DIR%\Local\qBittorrent\" "%DATA1_DIR%\" >NUL
XCOPY /D /S /Y /E "%BACKUP_DIR%\Roaming\qBittorrent\" "%DATA2_DIR%\" >NUL


@REM Step 4 - Run qBittorrent
:RUN_QBIT
IF "%NEED_TO_RUN%" EQU "TRUE" (
    ECHO  - Starting qBittorrent...
	ECHO SET APP = CreateObject^("Shell.Application"^) > "%TEMP%\OpenQbit.vbs"
	ECHO APP.ShellExecute "%App_Location%", "", "", "open", 1 >> "%TEMP%\OpenQbit.vbs"
	CMD /U /C TYPE "%TEMP%\OpenQbit.vbs">"%TEMP%\OpenQbitUnicode.vbs"
	CSCRIPT //NOLOGO "%TEMP%\OpenQbitUnicode.vbs"
	DEL /F /Q "%TEMP%\OpenQbit.vbs" >NUL 2>&1
	DEL /F /Q "%TEMP%\OpenQbitUnicode.vbs" >NUL 2>&1
)


@REM Step 5 - SUCCESS SCREEN
CALL :SUCCESS



@REM Functions
:NOT_INSTALLED
ECHO  - qBittorrent is not installed.
ECHO  Press any key to exit...
PAUSE >NUL 2>&1
EXIT

:CHECK_RUNNING
FOR /F "TOKENS=1" %%A IN ('"TASKLIST /FI "IMAGENAME EQ %APP_NAME%" | FINDSTR /I "%APP_NAME%""') DO (SET "IS_RUNNING=TRUE" && EXIT /B)
EXIT /B

:CHECK_DIR
DIR /A-D /B /S "%BACKUP_DIR%\*.*" >NUL 2>&1 && (SET "IS_EMPTY=FALSE") || (EXIT /B)
EXIT /B

:NOPE
ECHO.
ECHO  Backup Process Cancelled.
ECHO  PROGRAM WILL EXIT IN 5 SEC...
TIMEOUT /T 5 >NUL 2>&1
EXIT

:SUCCESS
ECHO.
ECHO   *********************
ECHO   * OPERATION SUCCEED *
ECHO   *********************
ECHO.
ECHO  PROGRAM WILL EXIT IN 5 SEC...
@REM PAUSE >NUL 2>&1
TIMEOUT /T 5 >NUL 2>&1
EXIT


:GENERATE_CURRENT_TIME
FOR /F "TOKENS=2-4 DELIMS=/ " %%A IN ('DATE /T') DO (SET "MYDATE=%%C-%%A-%%B")
FOR /F "TOKENS=1-3 DELIMS=/:" %%A IN ("%TIME%") DO (SET "MYTIME=%%A-%%B-%%C")
EXIT /B

:GENERATE_CREATION_DATE
FOR /F "SKIP=5 TOKENS=1-3 DELIMS=/ " %%A IN ('DIR /AD /OD /TC "%BACKUP_DIR%"') DO (SET "MYDATE=%%C-%%A-%%B" && EXIT /B)
EXIT /B

:GENERATE_CREATION_TIME
FOR /F "SKIP=5 TOKENS=2-4 DELIMS=: " %%A IN ('DIR /AD /OD /TC "%BACKUP_DIR%"') DO (SET "MYTIME=%%A-%%B-%%C" && EXIT /B)
EXIT /B

:Header
COLOR 0F
ECHO         [1;31m----------------------------------
ECHO         --- [1;37mqBittorrent Backup Manager[1;31m ---
ECHO         -------------- [1;37mv%VERSION%[1;31m --------------
ECHO         ------------ [1;37mby Ahsan[1;31m ------------
ECHO         ----------------------------------[1;37m
ECHO.
EXIT /B