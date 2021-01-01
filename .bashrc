if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
export PS1="\033[0;36m\u\033[0m@\033[0;33m\h\033[0m:\w$ "
export CLICOLOR=1
