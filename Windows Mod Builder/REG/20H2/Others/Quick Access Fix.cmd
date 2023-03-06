@ECHO OFF
DEL /F /Q "%AppData%\Microsoft\Windows\Recent\AutomaticDestinations"
DEL /F /Q "%AppData%\Microsoft\Windows\Recent\CustomDestinations"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /ve /t REG_SZ /d "Recent Files Folder" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3936E9E4-D92C-4EEE-A85A-BC16D5EA0819}" /ve /t REG_SZ /d "Frequent Places Folder" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3134ef9c-6b18-4996-ad04-ed5912e00eb5}" /ve /t REG_SZ /d "Recent Files Folder" /f
REG ADD "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\HomeFolderDesktop\NameSpace\DelegateFolders\{3936E9E4-D92C-4EEE-A85A-BC16D5EA0819}" /ve /t REG_SZ /d "Frequent Places Folder" /f
PAUSE
