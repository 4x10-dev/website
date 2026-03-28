@echo off
title GitHub Push Helper
echo Preparing to push to GitHub...
echo.
set /p msg="Enter commit message: "
git add .
git commit -m "%msg%"
git push origin main
echo.
echo Changes pushed to GitHub. Actions will handle the deployment.
pause
