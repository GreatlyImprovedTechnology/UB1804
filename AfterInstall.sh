#!/bin/bash
# by: JOR
# Date: 10MAR19
# Function: Configure network settings in UB1804
# Script: AfterInstall.sh

sudo apt-get update
sudo apt -y upgrade
sudo apt install open-vm-tools
sudo apt install openssh-server

