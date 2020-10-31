#  0   0   0  0  000   
# 000  0   0 000 0
# 0 0  0   0 0 0 0
# 0 0  0   0 0 0 000
# 000  0   0 000   0
# 0 0  0   0 0 0   0
# 0 0  000 0 0 0 000 copyleft zeeket
function encrypt() { for item in "$@" ; do echo "Encrypting: $item" ; gpg -c --armour --no-symkey-cache --cipher-algo AES256 "$item" && rm "$item"; done; }
function decrypt() { for item in "$@" ; do echo "decrypting: $item" ; gpg "$item" && rm "$item"; done; }

alias cl='clear'
alias sdn='sudo shutdown now'
alias srn='sudo reboot now'
alias sv='sudo vim'
alias v='vim'
alias ls='ls -1AF --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias tar='tar --verbose'
alias untar='tar -zxvf'
alias ping='ping -c 15'
