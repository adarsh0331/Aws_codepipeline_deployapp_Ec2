#!/bin/bash
set -e
echo "===== Application Start Script ====="

cd /home/ec2-user/nodejsapp

# Stop previous app
pm2 stop all || true

# Start new version
pm2 start app.js --name nodejsapp

# Save process list
pm2 save

echo "===== Application Started ====="
