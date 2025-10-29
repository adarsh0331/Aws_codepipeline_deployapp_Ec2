#!/bin/bash
set -e

echo "===== Before Install Script Started ====="

# Ensure we run as ec2-user (not root)
sudo chown -R ec2-user:ec2-user /home/ec2-user

# Stop any running Node.js apps (ignore errors if none)
export PM2_HOME=/home/ec2-user/.pm2
mkdir -p $PM2_HOME
sudo chown -R ec2-user:ec2-user $PM2_HOME

pm2 stop all || true

# Clean old app files
rm -rf /home/ec2-user/nodejsapp

# Update packages safely
sudo yum clean all -y
# Optional: upgrade without touching kernel/bootloader
# sudo yum upgrade -y --exclude=grub2*,kernel*,systemd*

# DO NOT REMOVE curl-minimal — just install full curl alongside
echo "Installing curl and git (curl-minimal may remain — this is safe)..."
sudo yum install -y curl git

# Install Node.js (if not already installed)
#if ! command -v node &> /dev/null
#then
    #echo "Installing Node.js 18.x from NodeSource..."
    #curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
    #sudo yum install -y nodejs
#fi

echo "===== Before Install Completed Successfully ====="
