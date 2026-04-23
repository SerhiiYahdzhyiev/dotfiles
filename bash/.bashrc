[[ $- != *i* ]] && return

source ~/aliases
[[ ! -f ~/.local_aliases ]] || source ~/.local_aliases
[[ ! -f ~/.local_path ]] || source ~/.local_path
[[ ! -f ~/.nvm/nvm.sh ]] || source ~/.nvm/nvm.sh

PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '

export PATH=${HOME}/.local/bin:${PATH}

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PIP_REQUIRE_HASHES=1
export PIP_ONLY_BINARY=:all:
export PIP_NO_INPUT=1
export PIP_DISABLE_PIP_VERSION_CHECK=1

export UV_REQUIRE_HASHES=1
export UV_PRERELEASE=disallow
export UV_INDEX_STRATEGY=first-index
