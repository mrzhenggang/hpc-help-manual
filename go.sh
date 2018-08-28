#!/bin/bash

echo -e "\033[0;32mDeploying updates to Gitee...\033[0m"

# Build the project.
#/e/web/hugo/hugo.exe # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To the git folder
#cd git

# cp Public to git
#cp -av ../public/* .

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
#git push coding master

# Come Back up to the Project Root
#cd ..
