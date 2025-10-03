@echo off
echo Updating Microsoft Defender definitions...
"C:\Program Files\Windows Defender\MpCmdRun.exe" -SignatureUpdate
echo Definitions updated. Starting Quick Scan...
"C:\Program Files\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
echo Scan completed!
pause
