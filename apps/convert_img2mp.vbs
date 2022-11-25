' ConvertToNTM.vbs
'
' Copyright (c) Konstantin Galichsky (kg@...), 2004-2007
' All rights reserved.
' This script uses GPSMapEdit to convert multiple maps to NTM format.
'
' USAGE:
' Input files should be put into .\Maps folder (relative to the script file).
' Log.txt file is created to log progress.
'
' Connect to GPSMapEdit.
'
' Modificado por Michel Metran, tornando possível converter os arquivos IMG para MP...
' https://github.com/Larry0ua/ua-convert/blob/master/navitel/ConvertToNM2.vbs
' https://pt.slideshare.net/rogerioreformado/apostila-manual-completo-windowsscripthost
' https://social.technet.microsoft.com/Forums/pt-BR/aa94ea1c-6d88-4eb1-953b-382891505489/acentos-no-script-vbs?forum=scriptadminpt


' Test Input Args
input_path = WScript.Arguments.Item(0)
output_path = WScript.Arguments.Item(1)
log_file = WScript.Arguments.Item(2)

'MsgBox "Olá Mundo: "' + strMonth
'WScript.Echo "Alô"
'WScript.Echo "Pasta com arquivos .img: " & input_path

' Instance Application
Dim app
Set app = CreateObject ("GPSMapEdit.Application.1")
app.MinimizeWindow



' Check version of GPSMapEdit
If app.Version < "1.0.30.3" Then
	MsgBox "Obsolete version of GPSMapEdit is used. Please upgrade."
	app.Exit
	WScript.Quit
End If


Dim fso
Set fso = CreateObject ("Scripting.FileSystemObject")

' 
Dim strRoot
strRoot = fso.GetAbsolutePathName (WScript.ScriptFullName + "\..\")
'MsgBox "Folder contains .vbs file: " + strRoot

' Create log file
Dim log
'Set log = fso.CreateTextFile (strRoot + "\Log.txt")
Set log = fso.CreateTextFile (log_file)


Dim pMapsFolder
'If Not fso.FolderExists (strRoot + "\img_files") Then
If Not fso.FolderExists (input_path) Then
	MsgBox "Couldn't find input folder."
	WScript.Quit
End if

'Set pMapsFolder = fso.GetFolder (strRoot + "\img_files")
Set pMapsFolder = fso.GetFolder (input_path)


Dim pFile
For Each pFile In pMapsFolder.Files
	Dim strExt
	strExt = LCase (fso.GetExtensionName (pFile.Path))
	
	'If strExt = "img" Or strExt = "rus" Or strExt = "mp" Then
	If strExt = "img" Then
		app.Open pFile.Path, False

		Dim strOutFile
		strOutFile = output_path + "\" +  fso.GetBaseName (pFile.Path) + ".mp"
		'strOutFile = fso.GetParentFolderName(pFile.Path) + "\..\" + "\mp_files" + "\" + fso.GetBaseName (pFile.Path) + ".mp"
		'strOutFile = fso.GetParentFolderName(pFile.Path) + "\" + fso.GetBaseName (pFile.Path) + ".nm2"
		
		
		' Save in polish format
		app.SaveAs strOutFile, "polish"
		'app.SaveAs strOutFile, "navitel-nm2"
	End if
	
	log.WriteLine strOutFile

Next
app.Exit
'MsgBox "Converting maps is completed!"
