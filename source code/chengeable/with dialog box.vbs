Option Explicit
Dim valUserIn, objShell, RegLocate, ProxyAddress
ProxyAddress = "8.8.8.8:11"
Set objShell = WScript.CreateObject("WScript.Shell")
On Error Resume Next
If MsgBox("Enable proxy?",4,"Cloaked Select")=vbYes Then
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
  objShell.RegWrite RegLocate, ProxyAddress,"REG_SZ"
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"1","REG_DWORD"
  MsgBox "Proxy enabled"
else
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"0","REG_DWORD"
  MsgBox "Proxy disabled"
End If
WScript.Quit
