#!/bin/bash

# Set branch to main
BRANCH="main"

# Fetch latest changes from remote
git fetch origin "$BRANCH"

# Compare local and remote branches
LOCAL=$(git rev-parse "$BRANCH")
REMOTE=$(git rev-parse "origin/$BRANCH")

if [ "$LOCAL" = "$REMOTE" ]; then
    echo "✅ Local and remote repositories are in sync. Deployment successful!"
else
    echo "❌ Local and remote repositories are not in sync. Deployment failed!"
fi

