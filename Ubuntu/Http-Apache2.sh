#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo chmod 744 /var/www/html/index.html
instanceId=$(curl http://169.254.169.254/latest/meta-data/instance-id)
sudo echo "Instance ID: $instanceId" > /var/www/html/index.html
