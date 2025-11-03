#!/bin/bash
set -e
# stop existing node on port (simple approach)
PID=$(pgrep -f "node app.js" || true)
if [ -n "$PID" ]; then
  echo "Stopping process $PID"
  kill -9 $PID || true
fi
