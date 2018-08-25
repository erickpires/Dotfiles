#!/bin/bash

wallpaper=$(find $HOME/Imagens/Wallpapers/ -name "*.jpg" -o -name "|*.png" | shuf -n1)
feh --bg-fill "$wallpaper"
