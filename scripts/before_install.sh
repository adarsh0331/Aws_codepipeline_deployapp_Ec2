#!/bin/bash
set -e

echo "===== Before Install Script Started ====="

# Stop any running app (optional)
pm2 stop all || true

# Clean old app files
rm -rf /home/ec2-user/nodejsapp

# Update packages and install dependencies
sudo yum update -y
sudo yum install -y curl git

# Install Node.js if not installed
if ! command -v node &> /dev/null
then
    curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
    sudo yum install -y nodejs
fi

echo "===== Before Install Completed ====="
