#!/bin/bash
# by: JOR Date: 10MAR19 Function: Set up GIT for SSH Script: SetUpSSH.sh
clear
echo "***********************************************"
echo "Welcome " $USER
echo "This script will generatefor RSA keys for SSH"
echo "Edit before use!!"
echo "***********************************************"
echo "Press return to continue, [ctrl][c] to exit"
read

# Check for existing keys
echo "Checking for existing keys"
ls -al ~/.ssh
echo "Either generate new keys or copy keys from another server."
echo "Press return to continue, [ctrl][c] to exit"
read

# Generate new keys
cd ~/.ssh
#ssh-keygen -t rsa -b 4096 -C john.oraw@hotmail.com

# Or copy keys from another server
scp johnoraw@192.168.191.11:.ssh/* ~/.ssh/

# Start the ssh agent
eval "$(ssh-agent -s)"

# Add keys to the SSH agent
ssh-add ~/.ssh/JOR.rsa
cd

