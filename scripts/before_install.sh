#!/bin/bash
echo "Running BeforeInstall - cleaning and installing Node.js"

sudo rm -rf /home/ec2-user/app/*

# Install Node.js + npm if missing
if ! command -v node &> /dev/null
then
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo bash -
  sudo yum install -y nodejs
fi
