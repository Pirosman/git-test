#!/bin/bash

# Check if the local repository is up to date with the remote repository
echo "Checking for changes..."

# Fetch the latest updates from the remote repository without merging them
git fetch origin

# Check the status of the local repository
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse origin/main)

if [ "$LOCAL" != "$REMOTE" ]; then
    echo "There are changes that need to be pushed to the remote repository."
    exit 0  # Success: Changes found
else
    echo "The repository is up to date. No changes to push."
    exit 0  # Success: No changes
fi

# If something goes wrong, print an error message and exit with a non-zero code
echo "Failed to check for changes."
exit 1  # Failure: Something went wrong
