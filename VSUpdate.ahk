SetWorkingDir %A_ScriptDir%
PTH:="C:\Users\" A_UserName "\.vscode\extensions\"
AHK:="\snippets\ahk.json"
REP:="D:\Coding\System\ahkFix.json"
Loop Files,% "C:\Users\" A_UserName "\.vscode\extensions\*.*",D
  If RegExMatch(A_LoopFileName,"mark-wiemer")
    DIR:=A_LoopFileName
VER:=SubStr(DIR,-4)
FileRead OLD,VSCVer.txt 
If (VER=OLD)
  ExitApp
Else
  FileCopy % REP,% PTH DIR AHK,1
  MsgBox % "Updated: " OLD " -> " VER "`nErr: " ErrorLevel
  FileDelete VSCVer.txt
  FileAppend % VER,VSCVer.txt
ExitApp
