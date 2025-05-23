#!/bin/sh
while true; do
  echo "$(date): Checking backend..."
  # Example: curl -Is http://backend:8080 || echo "Failed to reach backend"
  curl -Is "${BACKEND_URL}" || echo "Failed to reach backend"
  echo
  sleep 5
done