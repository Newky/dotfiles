#!/bin/bash

if [ $# -eq 0 ]; then
    CONFIG="all"
else
    CONFIG=$1
fi

if [ $CONFIG == 'all' -o $CONFIG == 'git' ]; then
    cp ~/.gitconfig{_bk,}
    echo "restored gitconfig"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'bash' ]; then
    cp ~/.bashrc{_bk,}
    echo "restored bashrc"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'screen' ]; then
    cp ~/.screenrc{_bk,}
    echo "restored screenrc"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'tmux' ]; then
    cp ~/.tmux.conf{_bk,}
    echo "restored tmux conf"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'quicktile' ]; then
    if [ -d ~/.config ]; then
        cp ~/.config/quicktile.cfg{_bk,}
        echo "restored quicktile conf"
    else
        echo "Config directory does not exist."
        echo "please make sure quicktile is installed"
    fi
fi
