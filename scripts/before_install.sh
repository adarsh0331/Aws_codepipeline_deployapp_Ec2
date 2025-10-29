#!/bin/bash
set -e

echo "===== Before Install Script Started ====="

# Ensure we run as ec2-user (not root)
sudo chown -R ec2-user:ec2-user /home/ec2-user

# Stop any running Node.js apps (ignore errors if none)
export PM2_HOME=/home/ec2-user/.pm2
mkdir -p $PM2_HOME
chown -R ec2-user:ec2-user $PM2_HOME

pm2 stop all || true

# Clean old app files
rm -rf /home/ec2-user/nodejsapp

# Update packages safely (avoid curl conflict)
sudo yum clean all -y
#sudo yum upgrade -y --exclude=grub2*,kernel*

# Make sure only one curl package exists
if rpm -q curl-minimal; then
    echo "Removing curl-minimal to prevent conflicts..."
    sudo yum remove -y curl-minimal
fi

sudo yum install -y curl git

# Install Node.js (if not already installed)
if ! command -v node &> /dev/null
then
    echo "Installing Node.js..."
    curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
    sudo yum install -y nodejs
fi

echo "===== Before Install Completed Successfully ====="
