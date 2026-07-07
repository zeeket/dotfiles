#!/bin/zsh
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load, or leave empty to use the custom PROMPT below.
ZSH_THEME=""

# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Custom prompt, equivalent to the PS1 in .bashrc: cyan user @ magenta host, white cwd
PROMPT="%F{cyan}%n%f@%F{magenta}%m%f%F{white}%~%#%f "

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    #echo "Loading MacOS prefs from .zshrc"
    [[ -s ~/.macprefs ]] && source ~/.macprefs
fi

export CLICOLOR=1
