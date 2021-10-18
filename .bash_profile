#!/bin/bash
#Sometime we open a login shell. This means ~/.bash_profile will get executed but ~/.bashrc won't.
#The solution on most systems is to execute the ~/.bashrc in the ~/.bash_profile
[[ -s ~/.bashrc ]] && source ~/.bashrc
