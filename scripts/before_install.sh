#!/bin/bash
echo "Running BeforeInstall - cleaning up and setting permissions"

# Clear old app files
sudo rm -rf /home/ec2-user/app/*

# Ensure scripts are executable
sudo chmod +x /home/ec2-user/app/scripts/*.sh
