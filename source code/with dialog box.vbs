Dim objShell, RegLocate, valUserIn, var
Set objShell = WScript.CreateObject("WScript.Shell")
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
valUserIn = MsgBox("Использовать прокси?",4,"Proxy manager") 
If valUserIn=vbYes Then var = "1" else var = "0" End If
objShell.RegWrite RegLocate,var,"REG_DWORD"
WScript.Quit
