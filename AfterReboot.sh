#!/bin/bash
# by: JOR Date: 13MAR19 Function: Set up GIT for SSH Script: SetUpSSH.sh
clear
echo "***********************************************"
echo "Welcome " $USER
echo "This script start the SSH agent and loads"
echo "the keys"
echo "Edit before use!!"
echo "***********************************************"
echo "Press return to continue, [ctrl][c] to exit"
read

# Check for existing keys
echo "Checking for existing keys"
ls -al ~/.ssh

# Start the ssh agent
eval "$(ssh-agent -s)"

# Add keys to the SSH agent
ssh-add ~/.ssh/git.rsa
ssh-add ~/.ssh/local.rsa
cd
