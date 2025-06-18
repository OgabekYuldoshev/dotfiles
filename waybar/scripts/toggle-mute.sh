#!/bin/bash

# Default audio sinkni aniqlash
SINK=$(pactl get-default-sink)

# Joriy mute statusini olish
MUTE_STATUS=$(pactl get-sink-mute "$SINK" | awk '{print $2}')

# Agar ovoz o‘chirilgan bo‘lsa — yoqish, aks holda — o‘chirish
if [ "$MUTE_STATUS" = "yes" ]; then
    pactl set-sink-mute "$SINK" 0
else
    pactl set-sink-mute "$SINK" 1
fi
