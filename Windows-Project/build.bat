@echo off
setlocal
cd /d %~dp0

echo ========================================
echo   4x10.dev Windows Build Script
echo ========================================

where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed.
    pause
    exit /b 1
)

echo [1/2] Installing dependencies...
npm install

echo [2/2] Building static production site...
npm run build

echo ========================================
echo   Build complete! 
echo ========================================
pause
endlocal
