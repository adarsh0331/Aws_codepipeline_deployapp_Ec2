#!/bin/bash
echo "Running AfterInstall - setting permissions and installing dependencies"

cd /home/ec2-user/app

# Set execute permission after files are copied
chmod +x scripts/*.sh

# Install dependencies if Node.js project
npm install
