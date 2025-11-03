#!/bin/bash
set -e
cd /home/ec2-user/app
# start app using nohup (for simplicity); production uses pm2/systemd
nohup /usr/bin/node app.js > /home/ec2-user/app/app.log 2>&1 &
