#!/bin/bash

# Define the ports you want to open (comma-separated list)
PORTS=" 22 80 443 8080 6443/tcp 2379:2380/tcp 10250:10259/tcp 10257/tcp"


sudo ufw enable

for i in $PORTS
do
       sudo ufw allow $i
done


# Reload UFW to apply the new rules
sudo ufw reload

echo "Ports $PORTS are now open in UFW"

