#!/bin/bash
# by: JOR
# Date: 07MAR19
# Function: Create a completely new GIT repository
# Script: GITCreate.sh

echo 'Run this script in a new directory to set up a local repo'
echo 'You should have already created the repo on GITHUB'
echo '*********************************************************'
echo 'Enter the repo name:'
read RepoName
echo "# UB1804" >> README.md
git config --global user.name "John.ORaw"
git config --global user.email "john.oraw@iotech.ie"
git config --list
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/GreatlyImprovedTechnology/"$RepoName".git
git push -u origin master
git status

