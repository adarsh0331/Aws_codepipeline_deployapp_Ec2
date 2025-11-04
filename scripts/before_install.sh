#!/bin/bash
echo "Running BeforeInstall - cleaning up old files"

# Clean up old deployment
sudo rm -rf /home/ec2-user/app/*
