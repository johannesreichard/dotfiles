#!/bin/bash

SCREEN_LEFT='HDMI-1'
SCREEN_MIDDLE='DVI-D-0'
SCREEN_RIGHT='DP-2'
SCREEN_TOP='HDMI-0'

SCREEN_TOP_DETECTED=`xrandr | grep HDMI-1 | wc -l`

# deactivate
SCREEN_TOP_DETECTED=0


if [[ SCREEN_TOP_DETECTED -eq 0 ]]; then
    xrandr --output ${SCREEN_MIDDLE} --auto --primary --output ${SCREEN_RIGHT} --auto --right-of ${SCREEN_MIDDLE} --output ${SCREEN_LEFT} --auto --rotate left --left-of ${SCREEN_MIDDLE}
else
    xrandr --output ${SCREEN_MIDDLE} --auto --primary --output ${SCREEN_RIGHT} --auto --right-of ${SCREEN_MIDDLE} --output ${SCREEN_LEFT} --auto --rotate left --left-of ${SCREEN_MIDDLE} --output ${SCREEN_TOP} --mode 3840x2160 --above ${SCREEN_MIDDLE}
fi
