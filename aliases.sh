alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ "$HAS_PYTHON" == true ]; then
    alias python="python3"
    alias pip="pip3"
    alias pip-upgrade="python -m pip install --upgrade pip"
fi

if [ "$HAS_DOCKER" == true ]; then
    alias dc="docker-compose"
    alias dcr="docker-compose run --rm"
    alias dex="docker exec -it"
    alias dxx="docker system prune --all --volumes --force"
    alias dkc='docker kill `docker ps -q`'
fi
