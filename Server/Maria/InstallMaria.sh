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
echo "****************************************************"
echo "Press return to continue, [ctrl][c] to exit"
read
echo "****************************************************"
echo "Installing..."
sudo apt install mariadb-server
echo "****************************************************"
echo "Checking Status"
sudo systemctl status mariadb
echo "****************************************************"
echo "Securing systems"
sudo mysql_secure_installation

