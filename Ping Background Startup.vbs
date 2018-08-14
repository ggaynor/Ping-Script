Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\Users\George\Desktop\PingScript\pingtest.bat" & Chr(34), 0
Set WshShell = Nothing