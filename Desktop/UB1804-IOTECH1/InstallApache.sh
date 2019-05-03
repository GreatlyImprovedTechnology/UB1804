#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install Apache to best practice
# Script: InstallApache.sh

clear
echo "****************************************************"
echo "Welcome" $USER
echo "Installing Apache on UB1804"
echo "You MUST run this script using sudo"
echo
echo "Note: the preferred way to install software is with" 
echo "Ansible, are you sure you want to continue?"
echo "****************************************************"
echo "Press return to continue, [ctrl][c] to exit"
read
echo "****************************************************"
echo "Installing..."
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install -y apache2
sudo systemctl start apache2
echo "****************************************************"
echo "Checking Status"
sudo systemctl status apache2 -q
echo "****************************************************"
echo "Setting Firewall for remote access"
sudo ufw app list
sudo ufw app info "Apache Full"
echo "Now open a web browser to http://127.0.0.1 to test"

