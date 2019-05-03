#!/bin/bash
# by: JOR
# Date: 25FEB19
# Function: Configure network settings in UB18.04.02
# Script: NetworkSettings.sh

echo "****************************************************"
echo "Welcome" $USER
echo "This script will configure standard network settings"
echo "Make sure /etc/cloud/cloud.cfg has the setting"
echo "preserve_hostname: true"
echo
echo "Edit the script as needs"
echo "****************************************************"

# Set variables based on VMWare Workstation NAT’d network
HOSTNAME=ub1804-iotech1

if hostnamectl set-hostname $HOSTNAME
 then
  echo "Set hostname to" $HOSTNAME ", requires a reboot"
 else
  echo "Error setting hostname"
  exit 1
fi

