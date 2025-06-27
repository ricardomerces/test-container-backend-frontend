#!/bin/sh
while true; do
  echo "$(date): Checking backend..."
  # Example: curl -Is http://backend:8080 || echo "Falha de conexão ao BACKEND"
  curl -I "${BACKEND_URL}" || echo "Falha de conexão ao BACKEND"
  echo
  sleep 5
done