#!/bin/bash

# Fixed version - with proper spacing and structure

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
echo "Current disk usage : $USAGE%"

# Check if USAGE is a valid number
if [[ "$USAGE" =~ ^[0-9]+$ ]]; then
    if [ "$USAGE" -gt 80 ]; then
        echo "WARNING: Disk usage is above 80%!"
    else
        echo "Disk usage is under control"
    fi
else
    echo " ERROR: Could not parse disk usage value"
fi

