#!/bin/bash
set -e
echo "===== Validating Service ====="

curl -f http://localhost:3000 || exit 1

echo "===== Validation Successful ====="
