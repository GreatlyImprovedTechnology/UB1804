#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Install software and do updates required for all systems
# Script: AfterInstall.sh

sudo apt-get -y update
sudo apt -y upgrade
sudo apt install -y open-vm-tools
sudo apt install -y open-vm-tools-desktop
sudo apt install -y openssh-server
sudo apt install -y git
