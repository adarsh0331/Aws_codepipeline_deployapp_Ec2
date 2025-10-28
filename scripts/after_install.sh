#!/bin/bash
set -e
echo "===== After Install Script Started ====="

cd /home/ec2-user/nodejsapp

# Ensure correct permissions
sudo chown -R ec2-user:ec2-user /home/ec2-user/nodejsapp
chmod +x scripts/*.sh

# Install npm dependencies
npm install

echo "===== After Install Completed ====="

