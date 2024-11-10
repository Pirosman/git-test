#!/bin/bash

# Check if the local repository is up to date with the remote repository
echo "Checking for changes..."

# Fetch the latest updates from the remote repository without merging them
git fetch origin

# Check the status of the local repository
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)

if [ "$LOCAL" != "$REMOTE" ]; then
    echo "There are changes in the remote repository that need to be pulled."
    exit 1  # Error: Changes need to be pulled
else
    echo "The repository is up to date. No changes to pull."
    exit 0  # Success: No changes needed
fi
