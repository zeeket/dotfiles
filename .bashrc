#!/bin/bash
export PS1="\[\e[36m\]\u\[\e[0m\]@\[\e[35m\]\h\[\e[37m\]\w\$\[\e[0m\] "
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    #echo "Loading MacOS prefs from .bashrc"
    [[ -s ~/.macprefs ]] && source ~/.macprefs
fi

export CLICOLOR=1
