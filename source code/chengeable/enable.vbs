Dim objShell, RegLocate, ProxyAddress
ProxyAddress = "8.8.8.8:11"
Set objShell = WScript.CreateObject("WScript.Shell")
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer"
objShell.RegWrite RegLocate, ProxyAddress,"REG_SZ"
RegLocate = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable"
objShell.RegWrite RegLocate,"1","REG_DWORD"
WScript.Quit