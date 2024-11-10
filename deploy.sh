#!/bin/bash

# Starting deployment
echo "Starting deployment..."

# Pull latest changes from the remote repository
git pull origin main

# Check for any changes in the repository
if [[ -n $(git status --porcelain) ]]; then
    echo "Changes detected. Adding, committing, and pushing to the repository..."

    # Add all changes (including new, modified, or deleted files)
    git add .

    # Commit changes with a custom message
    git commit -m "Automated commit for deployment"

    # Push the changes to the origin repository
    git push origin main
    echo "Changes pushed to the repository."
else
    echo "No changes detected. Skipping commit and push."
fi

# Example deployment steps
# For example, if you are deploying a web application:
# cp -r /home/Culture/git-test/* /var/www/html/
# systemctl restart apache2
