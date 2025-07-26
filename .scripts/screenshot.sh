#!/bin/bash

dependencies=("slurp" "grim" "convert" "swappy")
for dep in "${dependencies[@]}"; do
    command -v "$dep" &> /dev/null || { echo "$dep not found, please install it."; exit 1; }
done

screenshot="$(slurp)"

grim -g "$screenshot" - | convert - -shave 2x2 PNG:- | wl-copy

dunstify -t 3000 -u low -a screenshot "Screenshot copied to clipboard"

wl-paste | swappy -f -
