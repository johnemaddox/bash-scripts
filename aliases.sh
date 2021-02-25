# use winpty for interactive terminal commands on windows MINGW
winpty=""
if [[ $(uname) =~ MINGW* ]]; then
    winpty="winpty "
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ "$HAS_PYTHON" == true ]; then
    alias python="${winpty}python3"
    alias pip="${winpty}pip3"
    alias pip-upgrade="${winpty}python -m pip install --upgrade pip"
fi

if [ "$HAS_DOCKER" == true ]; then
    alias dc="docker-compose"
    alias dcr="${winpty}docker-compose run --rm"
    alias dex="${winpty}docker exec -it"
    alias dxx="docker system prune --all --volumes --force"
    alias dkc='docker kill `docker ps -q`'
fi
