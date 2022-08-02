SetWorkingDir %A_ScriptDir%
PTH:="C:\Users\" A_UserName "\.vscode\extensions\"
AHK:="\snippets\ahk.json"
BUP:="ahkOld.json"
REP:="ahkFix.json"
If !FileExist(BUP){
  MsgBox % "VSUpdate path error!"
	ExitApp
}
Loop Files,% "C:\Users\" A_UserName "\.vscode\extensions\*.*",D
  If RegExMatch(A_LoopFileName,"mark-wiemer")
    DIR:=A_LoopFileName
VER:=SubStr(DIR,-4)
FileRead OLD,VSCVer.txt
If (VER=OLD)
  ExitApp
Else
	FileCopy % PTH DIR AHK,% BUP,1
  FileCopy % REP,% PTH DIR AHK,1
  MsgBox % "VSC Updated: " OLD " -> " VER "`nErr: " ErrorLevel
  FileDelete VSCVer.txt
  FileAppend % VER,VSCVer.txt
ExitApp
