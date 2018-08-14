@echo off
set IPADDRESS=8.8.8.8
set INTERVAL=30
:PINGINTERVAL
ping %IPADDRESS% -n 1 >> C:\Users\George\Desktop\PingScript\pinglog.txt

if errorlevel 1 (
	echo TESTING %IPADDRESS% Offline >> C:\Users\George\Desktop\PingScript\failurelog.txt
	date /t >> C:\Users\George\Desktop\PingScript\failurelog.txt
	time /t >> C:\Users\George\Desktop\PingScript\failurelog.txt
	echo Remember to rerun batch file 'pingtest' upon solving the issue >> C:\Users\George\Desktop\PingScript\failurelog.txt

	start notepad "failurelog.txt"
	exit
)
timeout %INTERVAL%
goto PINGINTERVAL