#!/bin/zsh
# Zsh sources ~/.zprofile for login shells and ~/.zshrc for interactive shells.
# Mirroring the .bash_profile pattern in case a shell only sources .zprofile.
[[ -s ~/.zshrc ]] && source ~/.zshrc
