# GitHub to Gitea Migration Script

This Bash script allows you to migrate a GitHub repository to Gitea with ease. It clones the GitHub repository, sets up Gitea as a remote, and pushes the repository to Gitea.

## Prerequisites

Before using this script, make sure you have the following:

- A GitHub account with the repository you want to migrate.
- A Gitea account or access to a Gitea instance where you have permission to create repositories.
- Personal access tokens or credentials for both GitHub and Gitea (if required).

## Usage

1. Clone this repository or download the script directly to your local machine.

2. Open the script in a text editor and replace the following variables with your own data:

   - `GITHUB_USERNAME`: Your GitHub username.
   - `GITHUB_TOKEN`: Your GitHub personal access token.
   - `GITEA_URL`: The URL of your Gitea instance.
   - `ORGANIZATION`: The Gitea organization or user account where you want to create the repository.

3. Save the script.

4. Open your terminal and navigate to the directory where the script is located.

5. Run the script, providing the GitHub repository URL you want to migrate as an argument:

   ```bash
   ./clone-rep.sh YourUsername/YourRepository.git
