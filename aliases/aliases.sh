alias cls=clear
alias lsa="ls -la"
alias lg="lazygit"
alias lzd="lazydocker"

alias dps="docker ps -a"
alias dpss="docker ps -a --format 'table {{.ID}} {{.Image}} {{.Status}}'"
alias dpsp="docker ps -a --format 'table {{.ID}} {{.Image}} {{.Ports}}'"

alias dstart="docker start"
alias dstop="docker stop"
alias drm="docker rm"
alias drmi"docker rmi"
alias dprune="docker container prune"
alias drun="docker run --rm -it"
alias dexec="docker exec -it"

alias dv="docker volume"
alias dvl="docker volume ls"

alias dimg="docker image"
alias dils="docker image ls"

alias dlog="docker logs -f"
alias dlogs="docker logs"

alias dc="docker-compose"

alias vg="valgrind -s --track-origins=yes --leak-check=full --show-leak-kinds=all"

alias zls="zellij ls"
alias zk="zellij kill-session"
alias zd="zellij delete-session"
alias zka="zellij ka"
alias zda="zellij da"
