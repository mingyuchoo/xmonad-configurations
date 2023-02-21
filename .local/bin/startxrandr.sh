#!/bin/bash

# xrandr --listmonitors
# xrandr --current
# xrandr \
#     --auto \
#     --output HDMI-1 \
#     --mode 2560x1440 \
#     --scale 1.0x1.0 \
#     --left-of ePD-1

xrandr \
    --auto \
    --output HDMI-1 \
    --mode 2560x1440 \
    --scale 1.0x1.0 \
    --left-of ePD-1
