Set oShell = CreateObject("Shell.Application")
Set WshShell = WScript.CreateObject("WScript.Shell")
ScriptDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(Wscript.ScriptFullName)

oShell.ShellExecute ScriptDir & "\del.bat", , , "runas", 0

Set objFSO = CreateObject( "Scripting.FileSystemObject" )
objFSO.DeleteFile WScript.ScriptFullName
WScript.Quit