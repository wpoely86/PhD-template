#!/bin/bash

set -e

echo "Preparing to deploy"

cd $HOME/build
mkdir pdf
mv *.pdf pdf

REPO_NAME=${GITHUB_REPO#*/}
GITHUB_USER=${GITHUB_REPO%/*}

wget https://${GITHUB_USER}.github.io/${REPO_NAME}/index.html

git config --global user.email "wpoely86@gmail.com"
git config --global user.name "wpoely86"

git init
git add ./pdf/*.pdf
git add index.html
git status
git commit -m "Deploy to Github Pages"
git push --force "https://${GH_TOKEN}@github.com/${GITHUB_REPO}.git" master:gh-pages
