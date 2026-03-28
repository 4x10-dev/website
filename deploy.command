#!/bin/bash
echo "Preparing to push to GitHub..."
read -p "Enter commit message: " msg
git add .
git commit -m "$msg"
git push origin main
echo ""
echo "Changes pushed to GitHub. Actions will handle the deployment."
