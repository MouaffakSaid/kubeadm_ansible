#!/bin/bash
# setup configuration 
#Pre-requisites
sudo swapoff -a
sudo sed -i '$s/^/#/' /etc/fstab
sudo systemctl stop firewalld 
sudo systemctl disable firewalld
#Enable the bridged traffic

sudo lsmod | grep br_netfilter
sudo modprobe br_netfilter



echo br_netfilter | sudo tee -a /etc/modules-load.d/k8s.conf




echo net.bridge.bridge-nf-call-ip6tables = 1 |  sudo tee -a /etc/sysctl.d/k8s.conf

echo net.bridge.bridge-nf-call-iptables = 1|  sudo tee -a /etc/sysctl.d/k8s.conf

# Install Yum Utilities | Config Manager

sudo yum install -y yum-utils
