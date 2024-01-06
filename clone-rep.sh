#!/bin/bash

# Replace these variables with your own data
GITHUB_USERNAME=""
GITHUB_TOKEN=""
GITEA_URL=""
ORGANIZATION=""

# Check for the presence of an argument (GitHub repository URL)
if [ $# -ne 1 ]; then
  echo "Please provide the GitHub repository URL as an argument to the script."
  exit 1
fi

# Extract the repository name from the URL
repo_url="$1"
repo_name=$(basename $repo_url .git)

# Clone the repository with all its branches and tags using GITHUB_TOKEN
git clone --mirror "https://$GITHUB_TOKEN@github.com/$repo_url"

# Navigate to the repository directory
cd "./$repo_name.git"

# Remove the Gitea remote repository if it exists
git remote remove gitea

# Add Gitea as the remote repository
git remote add gitea "$GITEA_URL/$ORGANIZATION/$repo_name"

# Push the repository to Gitea with authentication
git push -u gitea --all

# Return to the original directory
cd ..

# Delete the temporary clone
rm -rf "$repo_name.git"

echo "Repository successfully migrated to the $ORGANIZATION Gitea organization."
