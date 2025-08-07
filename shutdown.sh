#!/bin/bash

# Simple Shutdown Script - Shuts down all servers
# Usage: ./shutdown_all.sh

# Add all your server IPs here
SERVERS=(
    "192.168.1.10"
    "192.168.1.11"
    "192.168.1.12"
    "192.168.1.20"
    "192.168.1.21"
)

# Get root password
echo -n "Enter root password: "
read -s PASSWORD
echo

echo "Shutting down ${#SERVERS[@]} servers..."

# Shutdown each server
for server in "${SERVERS[@]}"; do
    echo "Shutting down: $server"
    sshpass -p "$PASSWORD" ssh -o StrictHostKeyChecking=no root@$server 'shutdown -h now' 2>/dev/null
    if [ $? -eq 0 ]; then
        echo "  ✓ Shutdown command sent to $server"
    else
        echo "  ✗ Failed to connect to $server"
    fi
done

echo "All shutdown commands sent!"

# Clear password
unset PASSWORD
