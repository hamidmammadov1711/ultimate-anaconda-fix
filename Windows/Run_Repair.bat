@echo off
TITLE Anaconda Repair Suite Launcher
:: Check for Admin
net session >nul 2>&1
if %errorLevel% == 0 (
    powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Anaconda_Repair_Pro.ps1"
) else (
    echo Requesting Administrator privileges...
    powershell.exe -Command "Start-Process '%~f0' -Verb RunAs"
)
pause