#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install PHPMyAdmin to best practice
# Script: InstallPHPMyAdmin.sh

clear
echo "****************************************************"
echo "Welcome" $USER
echo "Installing PHPMyAdmin on UB1804"
echo "You MUST run this script using sudo"
echo
echo "Note: the preferred way to install software is with" 
echo "Ansible, are you sure you want to continue?"
echo "Press return to continue, [ctrl][c] to exit"
read
echo "Installing..."
sudo add-apt-repository universe
sudo apt-get update -y
sudo apt-get upgrade -y
echo "You are about to enter a config dialouge"
echo "When the prompt appears, Apache2 is highlighted"
echo "but not selected!! Select it using [space]"
echo "Press return to continue, [ctrl][c] to exit"
read
sudo apt install phpmyadmin php-mbstring php-gettext
sudo phpenmod mbstring
sudo systemctl restart apache2
