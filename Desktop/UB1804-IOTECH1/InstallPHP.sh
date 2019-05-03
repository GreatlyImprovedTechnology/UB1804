#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install PHP to best practice
# Script: InstallPHP.sh

clear
echo "****************************************************"
echo "Welcome" $USER
echo "Installing PHP on UB1804"
echo "You MUST run this script using sudo"
echo
echo "Note: the preferred way to install software is with" 
echo "Ansible, are you sure you want to continue?"
echo "Press return to continue, [ctrl][c] to exit"
read
echo "Installing..."
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install php libapache2-mod-php php-mysql

# Create a default page
cat > /var/www/html/info.php <<EOF
<?php
phpinfo();
?>
EOF
echo "To test this, open a browser to"
echo "http://127.0.0.1/info.php" 
echo "****************************************************"
