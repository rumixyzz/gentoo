#!/bin/sh
WM="sxwm"


sh $HOME/.config/x11/pipewire.sh &
brightnessctl s 100%
xrdb -merge $XRESOURCES

xset r rate 150 70
xwallpaper --zoom $HOME/pics/wizard.jpg &
{ [ "$WM" == "sxwm" ] && { sxbar & exec sxwm; }; } || { slstatus & exec dwm; }
