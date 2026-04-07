#!/usr/bin/env zsh
export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="vim"
export VISUAL="vim"
export XINITRC="$HOME/.config/x11/.xinitrc"
export XRESOURCES="$HOME/.config/x11/.Xresources"

export PATH="$PATH:$HOME/.local/bin"

if [ "$(tty)" = "/dev/tty1" ]; then
startx
fi
