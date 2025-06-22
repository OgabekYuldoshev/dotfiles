#!/bin/bash

PROC=$(pgrep -a openconnect | grep -v grep)

if [ -n "$PROC" ]; then
    SERVER=$(echo "$PROC" | grep -oP -- '--server=\K[^\s]+')
    echo $SERVER
fi
