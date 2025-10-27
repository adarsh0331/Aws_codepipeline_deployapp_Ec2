#!/bin/bash

cd /home/ec2-user/nodejs-app
npm install
pm2 stop all || true
pm2 start app.js
