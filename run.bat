@echo off

:Run-Process
cls
title Newfies Run PyShell Tool
echo Starting the app...
echo.
cls
echo [SERVER] Press Any Key To Stop The Server.
echo.
start /b python PyShell.py
pause > nul
echo.
taskkill /f /im python3.11.exe
echo.
choice /c YN /m "Do you want to restart PyShell (Y/N)?"
if errorlevel 2 goto Exit-Process
if errorlevel 1 goto Run-Process

:Exit-Process
echo Server stopped. Exiting now...
timeout 5 >nul