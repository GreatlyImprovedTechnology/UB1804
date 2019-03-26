#!/bin/bash
# by: JOR
# Date: 25FEB19
# Function: Configure network settings in UB18.04.02
# Script: ansibleserver.sh

echo "****************************************************"
echo "Welcome" $USER
echo "This script will configure standard network settings"
echo "Edit the script as needs"
echo "****************************************************"

# Set variables based on VMWare Workstation NAT’d network
HOSTNAME=ansibleserver
IPADDR="192.168.234.50/24"
ADAPTER="ens33:"
GATEWAY4="192.168.234.2"
DNS1="9.9.9.9"

if hostnamectl set-hostname $HOSTNAME
 then
  echo "Set hostname to" $HOSTNAME ", requires a reboot"
 else
  echo "Error setting hostname"
  exit 1
fi

# Create a backup of the existing netplan with a time and date stamp
cp /etc/netplan/50-cloud-init.yaml /etc/netplan/50-cloud-init.yaml.bak_`date +%Y%m%d%H%M`

# Create a new netplan YAML file using the variables
cat > /etc/netplan/50-cloud-init.yaml <<EOF
network:
  ethernets:
    $ADAPTER
      addresses: [$IPADDR]
      gateway4: $GATEWAY4
      nameservers:
          addresses: [$DNS1]
EOF
sudo netplan apply
