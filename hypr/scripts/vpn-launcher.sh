#!/bin/bash

VPN_JSON=~/.config/vpn-list.json

CHOICE=$(jq -r '.[].name' "$VPN_JSON" | wofi -dmenu -p "VPN tanlang")
[ -z "$CHOICE" ] && exit 0

# Tanlangan VPN uchun ma'lumot olish
USERNAME=$(jq -r --arg name "$CHOICE" '.[] | select(.name == $name) | .username' "$VPN_JSON")
PASSWORD=$(jq -r --arg name "$CHOICE" '.[] | select(.name == $name) | .password' "$VPN_JSON")
SERVER=$(jq -r --arg name "$CHOICE" '.[] | select(.name == $name) | .server' "$VPN_JSON")
SERVERCERT=$(jq -r --arg name "$CHOICE" '.[] | select(.name == $name) | .servercert' "$VPN_JSON")

sudo pkill openconnect

echo "$PASSWORD" | sudo openconnect --user="$USERNAME" \
    --server="$SERVER" \
    --passwd-on-stdin \
    --non-inter \
    --servercert="$SERVERCERT" \
    --background