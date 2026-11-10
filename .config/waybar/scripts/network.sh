#!/bin/bash

INTERFACE=$(ip route | awk '/default/ {print $5; exit}')

# No network interface
if [ -z "$INTERFACE" ]; then
    echo '{"text":"󰤭","tooltip":"Network: Disconnected"}'
    exit
fi

# Check actual internet connectivity
if ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1; then
    echo '{"text":"󰤨","tooltip":"Ethernet: Connected\nInternet: Connected"}'
else
    echo '{"text":"󰤩","tooltip":"Ethernet: Connected\nInternet: Unavailable"}'
fi
