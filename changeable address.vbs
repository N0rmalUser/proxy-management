Option Explicit
Dim valUserIn, objShell, RegLocate 
Set objShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
If MsgBox("Èñïîëüçîâàòü ïðîêñè?",4,"Cloaked Select")=vbYes Then
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
objShell.RegWrite RegLocate,"10.10.24.1:3128","REG_SZ"
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"1","REG_DWORD"
MsgBox "Ïðîêñè èñïîëüçóåòñÿ"
else
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"0","REG_DWORD"
MsgBox "Ïðîêñè íå èñïîëüçóåòñÿ"
End If
WScript.Quit
