#!/bin/bash

# Requires : scrot, imagemagick, i3lock
# Creates a screenshot of the current desktop,
# blurs it, then sets it as the "lock" image
# for i3lock. Looks pretty slick!

# scrot /tmp/tempshot.png
# convert /tmp/tempshot.png -blur 0x5 /tmp/screenshot.png
# i3lock -i /tmp/screenshot.png

icon="$HOME/.xlock/hand.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
# convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
# convert "$tmpbg" -scale 25% -scale 400% -fill black -colorize 25% "$tmpbg"
convert "$tmpbg" -blur 0x5 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"