# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source aliases
[[ ! -f ~/.local_aliases ]] || source ~/.local_aliases
[[ ! -f ~/.local_path ]] || source ~/.local_path
[[ ! -f ~/.nvm/nvm.sh ]] || source ~/.nvm/nvm.sh

PS1='[\u@\h \W]\$ '

. "$HOME/.local/bin/env"

