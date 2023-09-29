# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h:\W\$ '

export EDITOR='/usr/bin/vim'

alias ls='ls --color=auto'
alias sl='ls'
alias mark='printf "\e[3$((1+RANDOM%5))m%$(tput cols)s\e[0m" | tr " " "="'

. "$HOME/.cargo/env"
