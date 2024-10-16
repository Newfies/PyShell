@echo off
title [🐍🐚] Soft Refresh - Made By Newfies

:: Prep Setup
:Prep

:: Start of Soft Refresh Tool
:Start
echo [Soft Refresh] Force stopping the program explorer.exe if its running...
taskkill /F /IM explorer.exe >nul
if %ERRORLEVEL% NEQ 0 (
    echo [Soft Refresh] explorer.exe wasn't running.
    echo.
    echo [Soft Refresh] stopping SRefresh.bat in 5 seconds.
    timeout 5 >nul
    exit
) else (
    echo [Soft Refresh] explorer.exe was stopped successfully.
    echo.
    echo [Soft Refresh] opening explorer.exe again in 3 seconds.
    timeout 3 >nul
    start explorer.exe
)
