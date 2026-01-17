# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source aliases

PS1='[\u@\h \W]\$ '

. "$HOME/.local/bin/env"
