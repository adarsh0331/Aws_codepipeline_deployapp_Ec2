#!/bin/bash
set -e
echo "BeforeInstall: cleaning old files"
rm -rf /home/ec2-user/app || true
mkdir -p /home/ec2-user/app
