@echo off
cd /d "%~dp0"
echo ========================================================
echo   Pushing Daily Commit Repository to GitHub (sandeep7313)
echo ========================================================
echo.
git push -u origin main
echo.
pause
