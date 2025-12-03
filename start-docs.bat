@echo off
REM Authority Cardgame - Documentation Server
REM Double-click this file to start the documentation server

setlocal enabledelayedexpansion

REM Change to script directory
cd /d "%~dp0"

REM Run the PowerShell script
powershell -NoProfile -ExecutionPolicy Bypass -File "start-docs.ps1"

REM Keep window open if there's an error
if %ERRORLEVEL% neq 0 (
    echo.
    echo Press any key to close...
    pause
)
