#!/bin/bash

# Requires : scrot, imagemagick, i3lock
# Creates a screenshot of the current desktop,
# blurs it, then sets it as the "lock" image
# for i3lock. Looks pretty slick!

# scrot /tmp/tempshot.png
# convert /tmp/tempshot.png -blur 0x5 /tmp/screenshot.png
# i3lock -i /tmp/screenshot.png

#icon="$HOME/.config/i3/lock2.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot -o "$tmpbg"
#convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" -scale 25% -scale 400% -fill black -colorize 25% "$tmpbg"
#convert "$tmpbg" -blur 0x5 "$tmpbg"
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
#i3lock -u -i "$tmpbg"
#i3lock -i "$tmpbg"

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#20BF8020'  # default
T='#80FFBFFF'  # text
W='#880000bb'  # wrong
V='#60BF80FF'  # verifying

i3lock              \
--image $tmpbg          \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--timecolor=$T 		  \
--datecolor=$T		  \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 0            \
--clock               \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--blur 5              \
