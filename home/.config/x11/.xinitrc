#!/bin/sh
WM="sxwm"


sh $HOME/.config/x11/pipewire.sh &
brightnessctl s 100%
xrdb -merge $XRESOURCES

xset r rate 150 70
{ [ "$WM" == "sxwm" ] && { sxbar & exec sxwm; }; } || { slstatus & exec dwm; }
