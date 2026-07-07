#!/bin/zsh
# ~/.zlogout: executed by zsh(1) when login shell exits.
# clear the screen when leaving
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi
