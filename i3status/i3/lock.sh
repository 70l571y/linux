#!/bin/bash

# Requires : scrot, imagemagick, i3lock
# Creates a screenshot of the current desktop,
# blurs it, then sets it as the "lock" image
# for i3lock. Looks pretty slick!

scrot /tmp/tempshot.png
convert /tmp/tempshot.png -blur 0x5 /tmp/screenshot.png
i3lock -i /tmp/screenshot.png