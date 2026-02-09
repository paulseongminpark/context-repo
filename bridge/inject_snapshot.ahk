#Requires AutoHotkey v2.0

; Ctrl + Alt + V => (1) sync_snapshot.ps1 실행 (2) SNAPSHOT.txt 붙여넣기
^!v::
{
  ps1Path  := "C:\dev\context-repo\bridge\sync_snapshot.ps1"
  snapPath := "C:\dev\context-repo\context\SNAPSHOT.txt"

  if !FileExist(ps1Path) {
    MsgBox "sync_snapshot.ps1 not found:`n" ps1Path
    return
  }

  RunWait 'powershell -NoProfile -ExecutionPolicy Bypass -File "' ps1Path '"',, "Hide"

  if !FileExist(snapPath) {
    MsgBox "SNAPSHOT not found:`n" snapPath
    return
  }

  A_Clipboard := FileRead(snapPath, "UTF-8")
  ClipWait 1
  Send "^v"
}
