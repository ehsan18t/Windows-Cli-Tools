' This Script is built from "clean-c.vbs v0.9"
' REF: https://github.com/spmorton/VBScripts/blob/master/clean-c.vbs

Script_Version = "1.0"

Set ObjFSO = CreateObject("Scripting.FileSystemObject")

Set WshShell = WScript.CreateObject("WScript.Shell")

UserName = WshShell.ExpandEnvironmentStrings( "%USERNAME%" )

On Error Resume Next 

call delete_file("C:\Windows\MEMORY.DMP")

Set fSystem = CreateObject("Scripting.FileSystemObject")
If (fSystem.FolderExists("c:\recycler")) Then
	call delete_file_tree("c:\recycler")
End If

If (fSystem.FolderExists("c:\$Recycle.Bin")) Then
	call delete_file_tree("c:\$Recycle.Bin", true)
End If


call delete_dir_tree("C:\Windows\Logs\WindowsServerBackup")
call delete_dir_tree("C:\Documents and Settings\All Users\Application Data\Symantec\Symantec Endpoint Protection\Quarantine\")
call delete_dir_tree("C:\Documents and Settings\All Users\Application Data\Symantec\LiveUpdate\Downloads\")
call delete_dir_tree("C:\Documents and Settings\All Users\Application Data\Symantec\Symantec Endpoint Protection\Logs\")
call delete_dir_tree("C:\Documents and Settings\All Users\Application Data\Symantec\Symantec Endpoint Protection\Quarantine\")
call delete_dir_tree("C:\ProgramData\Symantec\LiveUpdate\Downloads\")
call delete_dir_tree("C:\ProgramData\Symantec\Symantec Endpoint Protection\Logs\")
call delete_dir_tree("C:\ProgramData\Symantec\Symantec Endpoint Protection\Quarantine\")
call delete_dir_tree("C:\Windows\System32\CCM\Cache\")
call delete_dir_tree("C:\Windows\System32\CCM\temp\")
call delete_dir_tree("C:\Windows\System32\CCM\Logs\")
call delete_dir_tree("C:\Windows\SysWOW64\CCM\Cache\")
call delete_dir_tree("C:\Windows\SysWOW64\CCM\Logs\")
call delete_dir_tree("C:\ProgramData\Microsoft\WIndows\WER\ReportQueue\")
call delete_dir_tree("C:\ProgramData\Microsoft\WIndows\WER\ReportQueue\")
call delete_dir_tree("C:\Windows\SoftwareDistribution\Download\")
call delete_dir_tree("C:\Windows\Minidump\")
call delete_dir_tree("C:\WINDOWS\system32\LogFiles\W3SVC1\")
call delete_dir_tree("C:\Program Files\Common Files\microsoft shared\Web Server Extensions\14\LOGS\")
call delete_dir_tree("C:\ProgramData\Microsoft\Windows\WER\ReportQueue\")


call delete_file_tree ("C:\WINDOWS\system32\CCM\Inventory\temp\")

call delete_dir_tree_by_date("C:\Program Files\Common Files\Symantec Shared\VirusDefs", 30)
call delete_dir_tree_by_date("C:\inetpub\logs\LogFiles", 14)
call delete_dir_tree_by_date("C:\WINDOWS\system32\LogFiles", 30)
call delete_dir_tree_by_date("C:\Radius_Logs", 30)

call stop_service ("wmicimserver")
call stop_service ("cimlistener")
call stop_service ("TWGIPC")
call delete_file("C:\Program Files\IBM\Director\data\esntevt.dat")
call delete_file("C:\Program Files\IBM\Director\log\CimUrlCgi.log")
call delete_file("C:\Program Files\IBM\Director\log\twgescli.bak")
call delete_file("C:\Program Files\IBM\Director\log\twgescli.log")
call start_service ("cimlistener")
call start_service ("wmicimserver")
call start_service ("TWGIPC")


call WshShell.Run("sfc /purgecache", 1, true)

call WshShell.Run("C:\l2serversupport\delprof1.exe /q /i /d:180", 1, true)


call WshShell.Run("DISM.exe /online /Cleanup-Image /spsuperseded", 1, true)
call WshShell.Run("Cmpcln.exe", 1, true)
call WshShell.Run("Vsp1cln.exe", 1, true)

call WshShell.Run("net stop trustedinstaller", 1, true)

call WshShell.Run("takeown /f %windir%\winsxs\ManifestCache\*.bin", 1, true)
call WshShell.Run("cacls %windir%\winsxs\ManifestCache\*.bin /t /e /g %username%:F", 1, true)

call delete_files_by_ext("%windir%\winsxs\ManifestCache", ".bin")

call WshShell.Run("net start trustedinstaller", 1, true)

function stop_service (servicename)
	On Error Resume Next 
	call WshShell.Run("net stop " & servicename, 1, true)
end function

function start_service (servicename)
	On Error Resume Next 
	call WshShell.Run("net start " & servicename, 1, true)
end function

function is_folder(path)

	Set fSystem = CreateObject("Scripting.FileSystemObject")
	Set folder = fSystem.GetFolder(path)
	attr = folder.attributes And 1024
	if ( attr = 0 ) then
		is_folder = true
		Exit function
	end if
	
	is_folder = false

end function

function check_path(path)

	if (instrrev(path,".") = 0) then
		pos = len(path)
	else	
		pos = instrrev(path,"\")
	end if
	do
		if NOT(is_folder(left(path,pos))) then
			Exit Do
		end if
		pos = instrrev(path,"\",pos - 1)
	loop while( pos > 0 )
	if ( pos = 0 ) then
		check_path = true
		Exit function
	else
		check_path = false
	end if

end function


function delete_file (filename)

	On Error Resume Next 
	Set fSystem = CreateObject("Scripting.FileSystemObject")
	If (fSystem.FileExists(filename) And (lcase(left(filename,3)) = "c:\") And check_path(filename) ) Then
		call fSystem.DeleteFile(filename, true)
		delete_file = true
		Exit function
	else
		delete_file = false
		Exit function
		
	End If
end function
	
function delete_at_path (path)

	On Error Resume Next 
	
	Set fSystem = CreateObject("Scripting.FileSystemObject")
	
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And check_path(path)) then
		Set directory = fSystem.GetFolder(path) 
		Set fileSet = directory.Files 

		For each child in fileSet
			if (check_path(child)) then
				child.Delete(True)
			end if
		Next
		delete_at_path = true
		Exit function
	else
		delete_at_path = false
	end if
end function

function delete_by_date( path, date_ref )

	On Error Resume Next 

	Set fSystem = CreateObject("Scripting.FileSystemObject") 
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And chsck_path(path)) then
		Set directory = fSystem.GetFolder(path) 
		Set fileSet = directory.Files 

		For each child in fileSet
			If child.DateLastModified < (Date() - date_ref) Then
				call fSystem.DeleteFile(child, true) 
			End If 
		Next
		delete_by_date = true
		Exit function
	else
		delete_by_date = false
	end if
end function

function delete_file_tree( path )

	On Error Resume Next 

	Set fSystem = CreateObject("Scripting.FileSystemObject")
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And check_path(path)) then
		Set directory = fSystem.GetFolder(path)

		if( delete_at_path(path) ) then
			For Each subFolder in directory.SubFolders
				if not( delete_at_path(subFolder.path) ) then
					delete_file_tree = false
					Exit function
				end if
					
				if not( delete_file_tree(subFolder.path) ) then
					delete_file_tree = false
					Exit function
				end if
			Next

			delete_file_tree = true
			Exit function

		else
			delete_file_tree = false
		end if
	end if
end function

function delete_dir_tree( path )

	Set fSystem = CreateObject("Scripting.FileSystemObject")
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And check_path(path) ) then
		Set directory = fSystem.GetFolder(path)

		if ( delete_at_path(path) ) then
			For Each subFolder in directory.SubFolders
				if not( delete_at_path(subFolder.path) ) then
					delete_dir_tree = false
					Exit function
				end if
				if not( delete_dir_tree(subFolder.path) ) then
					delete_dir_tree = false
					Exit function
				end if
				call fSystem.DeleteFolder(subFolder.path)
			Next
			delete_dir_tree = true
			Exit function
		else
			delete_dir_tree = false
		end if
	end if
end function

function delete_dir_tree_by_date( path, date_ref )

	On Error Resume Next 

	Set fSystem = CreateObject("Scripting.FileSystemObject")
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And check_path(path) ) then
		Set directory = fSystem.GetFolder(path)

		if ( delete_by_date(path, date_ref) ) then
			For Each subFolder in directory.SubFolders
				if not( delete_by_date(subFolder.path, date_ref) ) then
					delete_dir_tree_by_date = false
					Exit function
				end if
				if not( delete_dir_tree_by_date(subFolder.path, date_ref) ) then
					delete_dir_tree_by_date = false
					Exit function
				end if
				call fSystem.DeleteFolder(subFolder.path)
			Next
			delete_dir_tree_by_date = true
			Exit function
		else
			delete_dir_tree_by_date = false
			Exit function
		end if
	else
		delete_dir_tree_by_date = false
	end if
end function

function delete_files_by_ext(path, ext)

	Set fSystem = CreateObject("Scripting.FileSystemObject")
	if (fSystem.FolderExists(path) And (lcase(left(path,3)) = "c:\") And check_path(path) ) then
		Set directory = fSystem.GetFolder(path)
		
		Set fileSet = directory.Files
		
		For Each File In fileSet
			pos = instrrev(File,".")
			If (right(File, len(File) - (pos - 1)) = ext) Then
				call fSystem.DeleteFile(File, true)
			End If
		Next
	else

	end if
end function

Set oShell = CreateObject("Shell.Application")
Set WshShell = WScript.CreateObject("WScript.Shell")
ScriptDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(Wscript.ScriptFullName)

oShell.ShellExecute ScriptDir & "\Clear_all_TEMP.bat", , , "runas", 0

WScript.Quit
