#!/bin/bash

echo "Running tests..."

# Check if index.html exists
if [ -f /usr/share/nginx/html/index.html ]; then
  echo "✅ index.html exists"
else
  echo "❌ index.html not found"
  exit 1
fi

# Additional tests can be added here

echo "All tests passed!"
exit 0
