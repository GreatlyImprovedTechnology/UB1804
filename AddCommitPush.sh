#!/bin/bash
# by: JOR
# Date: 11DEC18
# Function: Perform a commit
# Script: AddCommitPush.sh

clear
git status
git config --global user.name "John.ORaw"
git config --global user.email "john.oraw@iotech.ie"
git config --list
echo '**************************************************'
echo "Performing an add for all files in this directory"
git add .
git status
echo '**************************************************'
echo 'Enter the commit message:'
read CommitMessage
git commit -m "$CommitMessage"
git status
echo '**************************************************'
echo 'Pushing to GITHUB repository'
git push -u origin master
echo '**************************************************'
echo 'Done!'
