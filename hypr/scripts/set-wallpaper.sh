#!/bin/bash

WALLPAPER_DIR="$HOME/Wallpapers"
CONF_FILE="$HOME/.config/hypr/hyprpaper.conf"

menu() {
    find "${WALLPAPER_DIR}" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | awk '{print "img:"$0}'
}

SELECTED=$( menu | wofi -c ~/.config/wofi/wallpaper/config -s ~/.config/wofi/wallpaper/style.css --dmenu --prompt "Select wallpaper:" )

[ -z "$SELECTED" ] && exit 0

SELECTED_WALLPAPER=$(echo "$SELECTED" | sed 's/^img://')

SELECTED="${SELECTED_WALLPAPER/#\~/$HOME}"

echo $SELECTED

matugen image "$SELECTED"