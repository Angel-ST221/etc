@echo off
net stop wuauserv
echo.
net stop cryptSvc
echo.
net stop bits
echo.
net stop msiserver
echo.
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old
net start wuauserv
echo.
net start cryptSvc
echo.
net start bits
echo.
net start msiserver
echo.
pause
exit
