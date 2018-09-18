#!/bin/bash

xrandr --output VGA1 --auto --right-of LVDS1
random-wallpaper.sh

i3-msg "workspace 6, move workspace to output VGA1"
i3-msg "workspace 7, move workspace to output VGA1"
i3-msg "workspace 8, move workspace to output VGA1"
i3-msg "workspace 9, move workspace to output VGA1"
i3-msg "workspace 10, move workspace to output VGA1"
