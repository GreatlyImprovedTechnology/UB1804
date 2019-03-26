#!/bin/bash
# by: JOR
# Date: 20MAR19
# Function: install Ansible in UB18.04.02
# Script: InstallAnsible.sh

echo "****************************************************"
echo "Welcome" $USER
echo "This script will do updates and then install" 
echo "Ansible in UB1804"
echo "****************************************************"

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install ansible -y



