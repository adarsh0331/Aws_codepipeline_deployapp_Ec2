#!/bin/bash
echo "Running AfterInstall - setting permissions and installing dependencies"

cd /home/ec2-user/app

sudo chown -R ec2-user:ec2-user /home/ec2-user/app
sudo chmod +x scripts/*.sh

# Install dependencies as ec2-user
sudo -u ec2-user npm install
