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
sudo systemctl enable mariadb
sudo systemctl start mariadb
echo "****************************************************"
echo "Checking Status"
sudo systemctl status mariadb -q
echo "****************************************************"
echo "Securing systems"
echo "Please note passwords and settings used in the next section"
echo "Restrict root user remote login!!"
echo "Remove the test databse"
echo "Reload the new privilege"
sudo mysql_secure_installation
echo "****************************************************"
echo "Setting Firewall for remote access"
sudo ufw allow from 192.168.234.0/24 to any port 3306

