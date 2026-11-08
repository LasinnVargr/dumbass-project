@echo off
cd /d "%~dp0"
"X:\byond\bin\dm.exe" roguetown.dme > build_log.txt 2>&1
echo.
echo Build finished. Log saved to build_log.txt
pause
