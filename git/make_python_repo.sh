#!/bin/bash
# make a python repo "repo_name" in local and push it to a blank remote repo 
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

DIR_PATH=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
TEMPLATE_DIR_PATH="${DIR_PATH}/template"

echo "Creating a python repository:" $1
mkdir $1
cd $1

touch README.md
cp $TEMPLATE_DIR_PATH/gitignore-python .gitignore

mkdir tests
touch conftest.py
cp $TEMPLATE_DIR_PATH/pytest-ini pytest.ini

GITHUB_USER=$(git config user.name)
git init
git branch -M main
git remote add origin https://github.com/$GITHUB_USER/$1.git
git add .
git commit -m 'auto commit'
git push -u origin main
echo "Done"
