#!/bin/bash
# make a generic repo "repo_name" in local and push it to a blank remote repo 
# with the same name in github
#
# command:
# ./make_repo.sh repo_name
#
# precondition:
# - setup user name and email with 'git config'
# - setup a blank repository with the same name in github

if [[ $# -eq 0 ]] ; then
    echo 'ERROR: must specify the repository name'
    exit 1
fi

echo "Creating a generic repository:" $1
mkdir $1
cd $1

touch README.md
touch .gitignore
cat << EOT >> .gitignore
.*
!/.gitignore
EOT

GITHUB_USER=$(git config user.name)
git init
git branch -M main
git remote add origin https://github.com/$GITHUB_USER/$1.git
git add .
git commit -m 'first commit'
git push -u origin main
echo "Done"
