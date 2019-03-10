#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install software and do updates required for all systems
# Script: AfterInstall.sh

sudo apt-get update
sudo apt -y upgrade
sudo apt install open-vm-tools
sudo apt install open-vm-tools-desktop
sudo apt install openssh-server
sudo apt install git
