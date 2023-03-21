#!/bin/bash

# Update package list and upgrade packages
sudo apt update

# Install Vim and networking tools
sudo apt install -y vim net-tools iputils-ping
sudo apt install openssh-server
sudo swapoff -a
sudo sed -i '$s/^/#/' /etc/fstab
sudo modprobe br_netfilter
sudo sysctl -p /etc/sysctl.conf
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

echo "Installation complete"

