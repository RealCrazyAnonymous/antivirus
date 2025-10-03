@echo off
title Microsoft Defender Antivirus Scan
echo Starting Microsoft Defender scan...
echo This may take a while. Please do not close this window.

REM Check if MpCmdRun.exe exists (Microsoft Defender tool)
if not exist "%ProgramFiles%\Windows Defender\MpCmdRun.exe" (
    echo Error: Microsoft Defender not found. Ensure it's installed and enabled.
    pause
    exit /b 1
)

REM Option 1: Quick Scan (recommended for daily use - scans common areas)
echo Performing Quick Scan...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1

REM Option 2: Uncomment the line below for Full Scan (scans entire system - use sparingly)
REM echo Performing Full Scan...
REM "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2

REM Option 3: Custom Scan (e.g., specific folder - replace C:\YourFolder with your path)
REM echo Performing Custom Scan on C:\YourFolder...
REM "%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 3 -File C:\YourFolder

if %errorlevel% equ 0 (
    echo Scan completed successfully! Check Windows Security for details.
) else (
    echo Scan encountered an issue. Review logs in Windows Security.
)

pause