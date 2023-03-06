@ECHO OFF
cd /d %~dp0
:: Taking Ownership of Display Settings
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Ownership of Display Settings
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Display" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Display" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Display\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Display\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Deleting Display Setting
ECHO.
ECHO.
ECHO.
ECHO ^=^> Deleting Display Setting
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Display" /f

:: Taking Ownership of Personalize
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Ownership of Personalize
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Personalize" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Personalize" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Personalize\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Personalize\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Delete Default Personalize
ECHO.
ECHO.
ECHO.
ECHO ^=^> Delete Default Personalize
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\DesktopBackground\Shell\Personalize" /f

:: Taking Ownership of Shell
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Ownership of Shell
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Taking Ownership of Shell for Manage
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Ownership of Shell for Manage
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage" -ot reg -actn ace -ace "n:Administrators;p:full"




:: Taking Permission of Powershell Context menu
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Permission of Powershell Context menu

:: Desktop
ECHO.
ECHO.
ECHO.
ECHO ^=^> Desktop
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\Powershell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\Powershell" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\Powershell\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\Powershell\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Directory
ECHO.
ECHO.
ECHO.
ECHO ^=^> Directory
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\Powershell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\Powershell" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\Powershell\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\Powershell\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Drive
ECHO.
ECHO.
ECHO.
ECHO ^=^> Drive
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\Powershell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\Powershell" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\Powershell\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\Powershell\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Library
ECHO.
ECHO.
ECHO.
ECHO ^=^> Library
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\Powershell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\Powershell" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\Powershell\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\Powershell\command" -ot reg -actn ace -ace "n:Administrators;p:full"


:: Removing Powershell From Context menu
ECHO.
ECHO.
ECHO.
ECHO ^=^> Removing Powershell From Context menu
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\Powershell" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\Powershell" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\Powershell" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\Powershell" /f




:: Taking Permission of cmd Context menu
ECHO.
ECHO.
ECHO.
ECHO ^=^> Taking Permission of cmd Context menu

:: Desktop
ECHO.
ECHO.
ECHO.
ECHO ^=^> Desktop
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\cmd" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\cmd" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\cmd\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\cmd\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Directory
ECHO.
ECHO.
ECHO.
ECHO ^=^> Directory
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\cmd" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\cmd" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\cmd\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\cmd\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Drive
ECHO.
ECHO.
ECHO.
ECHO ^=^> Drive
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\cmd" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\cmd" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\cmd\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\cmd\command" -ot reg -actn ace -ace "n:Administrators;p:full"

:: Library
ECHO.
ECHO.
ECHO.
ECHO ^=^> Library
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\cmd" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\cmd" -ot reg -actn ace -ace "n:Administrators;p:full"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\cmd\command" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\cmd\command" -ot reg -actn ace -ace "n:Administrators;p:full"


:: Removing cmd From Context menu
ECHO.
ECHO.
ECHO.
ECHO ^=^> Removing CMD From Context menu
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\Background\shell\cmd" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Directory\shell\cmd" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\Drive\shell\cmd" /f
Reg.exe delete "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\LibraryFolder\Background\shell\cmd" /f

ECHO ^=^> Remove Network from Windows Explorer
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" -ot reg -actn setowner -ownr "n:Administrators" >NUL 2>&1
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" -ot reg -actn ace -ace "n:Administrators;p:full" >NUL 2>&1
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" /v "Attributes" /t REG_DWORD /d "2954100836" /f
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" -ot reg -actn ace -ace "n:Administrators;p:read" >NUL 2>&1
SetACL.exe -on "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\CLSID\{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}\ShellFolder" -ot reg -actn setowner -ownr "n:nt service\trustedinstaller" >NUL 2>&1

ECHO [1;33m -^> Removing Print... [1;32m
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\SystemFileAssociations\image\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\batfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\cmdfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\docxfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\fonfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\htmlfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\inffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\inifile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\JSEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\otffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\pfmfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\regfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\rtffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\ttcfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\ttffile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\txtfile\shell\print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\VBEFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\VBSFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f
REG ADD "HKEY_LOCAL_MACHINE\TK_SOFTWARE\Classes\WSFFile\Shell\Print" /v "ProgrammaticAccessOnly" /t REG_SZ /d "" /f

pause
