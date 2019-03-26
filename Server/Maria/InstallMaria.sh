#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install Maria DB to best practice
# Script: InstallMaria.sh

clear
echo "****************************************************"
echo "Welcome" $USER
echo "Installing MariaDB on UB1804"
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
sudo apt install mariadb-client
sudo apt install mariadb-common
sudo apt install mariadb-server
echo "****************************************************"
echo "Checking Status"
sudo systemctl status mariadb -q
echo "****************************************************"
echo "Securing systems"
echo "Please note passwords and settings used in the next section"
sudo mysql_secure_installation

