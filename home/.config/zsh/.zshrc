#!/usr/bin/env zsh


autoload -Uz colors && colors
#export PROMPT="%B%F{red}[%f%F{yellow}%n%f%F{green}@%f%F{blue}%m%f %F{magenta}%~%f%F{red}]%f%F{cyan}$%f%b "

export PROMPT="%B%F{green}%n@%m%f %F{blue}%~$ %f%b"


alias ls='ls --color=auto'
alias la='ls -al'
alias ll='ls -l'
alias grep='grep --color=auto'
alias rm='rm -iv'
alias cp='cp -v'

alias emerge='doas emerge -av'
alias unmerge='emerge --unmerge'

alias reboot='doas reboot'
alias poweroff='doas poweroff'

alias walset='wal -s -o $HOME/.config/wal/postrun -i'

alias vim='nvim'
