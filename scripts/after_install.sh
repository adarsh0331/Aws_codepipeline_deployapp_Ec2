#!/bin/bash
set -e

# Go to app directory
cd /home/ec2-user/app

# Ensure permissions are correct
chown -R ec2-user:ec2-user /home/ec2-user/app

# Install dependencies if node_modules is missing
if [ ! -d "node_modules" ]; then
  echo "node_modules not found, installing..."
  sudo -u ec2-user npm install
else
  echo "node_modules already exists, skipping npm install."
fi

echo "After install completed successfully."
