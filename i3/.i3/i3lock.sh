#!/bin/bash

letterEnteredColor=d23c3dff
letterRemovedColor=2dc3c2ff
passwordCorrect=00000000
passwordIncorrect=d23c3dff
background=00000000
foreground=ffffffff

maim -f jpg > /tmp/screen_locked.jpg
blur /tmp/screen_locked.jpg /tmp/screen_locked_blured.jpg 7
i3lock -i /tmp/screen_locked_blured.jpg \
       --clock \
       --insidecolor=$background \
       --ringcolor=$foreground \
       --line-uses-inside \
       --keyhlcolor=$letterEnteredColor \
       --bshlcolor=$letterRemovedColor \
       --separatorcolor=$background \
       --insidevercolor=$passwordCorrect \
       --insidewrongcolor=$passwordIncorrect \
       --ringvercolor=$foreground \
       --ringwrongcolor=$foreground \
       --verifcolor="$foreground" \
       --timecolor="$foreground" \
       --datecolor="$foreground" \
