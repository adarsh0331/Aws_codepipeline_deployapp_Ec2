#!/bin/bash
set -e
cd /home/ec2-user/app
# unzip artifact.zip into folder
unzip -o artifact.zip -d /home/ec2-user/app
# ensure node_modules exist (we packaged node_modules from CodeBuild)
chown -R ec2-user:ec2-user /home/ec2-user/app
