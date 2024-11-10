#!/bin/bash

# Set branch to main
BRANCH="main"

# Check for changes
if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "Auto-deploy: $(date)"
    git push origin "$BRANCH"
    exit 0  # Deployment successful
else
    git pull origin "$BRANCH"
    exit $?  # Exit with the pull command's status
fi
