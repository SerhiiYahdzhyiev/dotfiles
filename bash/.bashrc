[[ $- != *i* ]] && return

source aliases
[[ ! -f ~/.local_aliases ]] || source ~/.local_aliases
[[ ! -f ~/.local_path ]] || source ~/.local_path
[[ ! -f ~/.nvm/nvm.sh ]] || source ~/.nvm/nvm.sh

PS1='[\u@\h \W]\$ '

export PATH=${HOME}/.local/bin:${PATH}

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
