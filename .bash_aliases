#!/bin/bash
#  0   0   0  0  000   
# 000  0   0 000 0
# 0 0  0   0 0 0 0
# 0 0  0   0 0 0 000
# 000  0   0 000   0
# 0 0  0   0 0 0   0
# 0 0  000 0 0 0 000 copyleft zeeket
function has() { if [ ! $1 ]; then 
	echo -e "Usage: has <command>\nCheck if a command exists on this system"
	return 1
elif [ -x "$(command -v $1)" ]; then 
	echo -e "$1 seems to be installed"
	return 0
else 
	echo -e "$1 was not found"
	return 1
fi
}

function encrypt() { for item in "$@"; 
do
	echo "Encrypting: $item";
	gpg -c --armour --no-symkey-cache --cipher-algo AES256 "$item" && rm "$item"; 
done; 
}

function decrypt() { for item in "$@";
do 	
	outputfile=${item%.*};
	echo "decrypting: $item into $outputfile"; 
	gpg --output "$outputfile" -d "$item" && rm "$item";
done;
}

function flac2mp3() { echo "converting! $1 to $2"; ffmpeg -i "$1" -ab 320k -map_metadata 0 -id3v2_version 3 "$2"; }

alias cl='clear'
alias sdn='sudo shutdown now'
alias srn='sudo reboot now'
alias sv='sudo vim'
alias v='vim'
alias l='ls -AF --color=auto'
alias ls='ls -F --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias tar='tar --verbose'
alias untar='tar -zxvf'
alias ping='ping -c 15'
alias watchdiff="watch --color git diff --color=always"
alias dungeon='ssh -p 23 terminal@underhound.eu'
