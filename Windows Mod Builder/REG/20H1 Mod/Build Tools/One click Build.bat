@ECHO OFF
TITLE Copy All Tweaks to the Mounted WIM in One Click
XCOPY /S /Y "%UserProfile%\Desktop\20H1 Mod\LIB FILES\Windows" "A:\z\Mount\Install\Windows"
XCOPY /S /Y "%UserProfile%\Desktop\20H1 Mod\Post Install [Apps]\Windows" "A:\z\Mount\Install\Windows"
XCOPY /S /Y "%UserProfile%\Desktop\20H1 Mod\Post Script\Windows" "A:\z\Mount\Install\Windows"
XCOPY /S /Y "%UserProfile%\Desktop\20H1 Mod\Post Script\Users" "A:\z\Mount\Install\Users"
REGEDIT /S "C:\Users\Ahsan\Desktop\REGS\Console - New.reg"
REGEDIT /S "C:\Users\Ahsan\Desktop\REGS\Current_User.reg"
SetACL.exe -on "A:\z\Mount\Install\Windows\HelpPane.exe" -ot file -actn setowner -ownr "n:Administrators"
SetACL.exe -on "A:\z\Mount\Install\Windows\HelpPane.exe" -ot file -actn ace -ace "n:Administrators;p:full"

SetACL.exe -on "A:\z\Mount\Install\Windows\logo.bmp" -ot file -actn trustee -trst "n1:UserOrGroup;ta:remtrst;w:dacl,sacl" -rec cont_obj -ignoreerr
SetACL.exe -on "A:\z\Mount\Install\Windows\logo.bmp" -ot file -actn ace -ace "n:Administrators;p:read"
SetACL.exe -on "A:\z\Mount\Install\Windows\logo.bmp" -ot file -actn setowner -ownr "n:nt service\trustedinstaller"

DEL "A:\z\Mount\Install\Windows\HelpPane.exe"
CALL "%UserProfile%\Desktop\Custom Windows Making\Taking Ownership of Toolkit Mounted REG with SetACL\Taking Ownership of REG with SetACL.bat"

PAUSE




