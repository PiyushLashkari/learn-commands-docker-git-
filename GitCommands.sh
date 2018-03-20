# Git Commands

# Create a new local repository. Go to the folder
git init

# Clone a repository in local
git clone <repository url>

# Check the files changed
git status

# Add remote
git remote add <name of remote> <remote url>

# Set remote
git remote set-url <name of remote> <remote url>

# Delete remote
git remote rm <name of remote>

# Rename remote
git remote rename <old name> <new name>

# Check all remotes
git remote -v

# Check upstreams for branches
git branch -vv

# Change between branches already existing
git checkout <branch name>

# Create a new branch
git branch <branch name>

# Combines the specified branch’s history into the current branch
git merge <branch name>

# Delete a specified brannch
git branch -d <branch name>

# Create and switch to new branche
git checkout -b <branch name>

# Commit
git commit -m "<commit message>"

# Add all the changed files for commit
git add --all

# Push the local changes to remote repository,
# -u flag is optional its for setting the upstream
git push -u <remote name> <branch name>

# Pull the remote changes to ur local
git pull
