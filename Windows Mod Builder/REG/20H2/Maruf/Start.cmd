@ECHO OFF
cd /d %~dp0
TITLE Tweaks
ECHO ^=^> Taking Ownership of Shell...
SetACL.exe -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell" -ot reg -actn ace -ace "n:Administrators;p:full"
ECHO.
ECHO ^=^> Taking Ownership of Shell for Manage...
SetACL.exe -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage" -ot reg -actn setowner -ownr "n:Administrators"
SetACL.exe -on "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Manage" -ot reg -actn ace -ace "n:Administrators;p:full"
ECHO.
ECHO ^=^> Copying Files...
XCOPY /S /Y "Files\Program Files" "%ProgramFiles%"
XCOPY /S /Y "Files\Windows" "%SystemRoot%"
ECHO.
ECHO ^=^> Importing Registry...
REGEDIT /S "REG\Desktop_System_Tools.reg"
REGEDIT /S "REG\Desktop_Tools.reg"
REGEDIT /S "REG\Drive_Change_Icon.reg"
REGEDIT /S "REG\Drive_Disk_CleanUp.reg"
REGEDIT /S "REG\EXE_Add_To_Firewall.reg"
REGEDIT /S "REG\EXE_Delete_From_Firewall.reg"
REGEDIT /S "REG\Files_Block_Access.reg"
REGEDIT /S "REG\Files_Permanent_Delete.reg"
REGEDIT /S "REG\Files_Take_Ownership.reg"
REGEDIT /S "REG\Folder_Block_Access.reg"
REGEDIT /S "REG\Folder_Change_Icon.reg"
REGEDIT /S "REG\Folder_Copy_Folder_Content_List.reg"
REGEDIT /S "REG\Folder_Permanent_Delete.reg"
REGEDIT /S "REG\Folder_Take_Ownership.reg"
REGEDIT /S "REG\This_PC_Administrative_Tools.reg"
REGEDIT /S "REG\This_PC_ControlPanel.reg"
REGEDIT /S "REG\This_PC_DeviceManager.reg"
REGEDIT /S "REG\This_PC_DiskManagement.reg"
REGEDIT /S "REG\This_PC_LocalGroupPolicyEditor.reg"
REGEDIT /S "REG\This_PC_Manage_(Position).reg"
REGEDIT /S "REG\This_PC_ProgramsAndFeatures.reg"
REGEDIT /S "REG\This_PC_Reboot_Menu_This_PC.reg"
REGEDIT /S "REG\This_PC_RegRegistry.reg"
REGEDIT /S "REG\This_PC_RegServices.reg"
REGEDIT /S "REG\This_PC_SafeMode.reg"
REGEDIT /S "REG\This_PC_System_Tools.reg"
REGEDIT /S "REG\This_PC_Tools.reg"
ECHO.
ECHO   *********************
ECHO   * OPERATION SUCCEED *
ECHO   *********************
ECHO.
PAUSE
