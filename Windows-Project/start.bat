@echo off
setlocal
cd /d %~dp0

echo ========================================
echo   4x10.dev Windows Launcher
echo ========================================

:: Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed or not in your PATH.
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo [1/2] Checking dependencies...
if not exist "node_modules" (
    echo [INFO] node_modules not found. Installing...
    npm install
) else (
    echo [INFO] node_modules already exists. Skipping install.
)

echo [2/2] Starting Astro development server...
npm run dev

if %errorlevel% neq 0 (
    echo [ERROR] Something went wrong while starting the site.
    pause
)
endlocal
