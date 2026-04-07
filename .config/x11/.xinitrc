#!/bin/sh
sh $HOME/.config/x11/pipewire.sh &
brightnessctl s 100%
xrdb -merge $XRESOURCES

slstatus &
xset r rate 150 70
exec dwm
