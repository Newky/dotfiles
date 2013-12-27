#!/bin/bash
if [ $# -eq 0 ]; then
    CONFIG="all"
else
    CONFIG=$1
fi
if [ $CONFIG == 'all' -o $CONFIG == 'git' ]; then
    cp ~/.gitconfig{,_bk}
    cp .gitconfig ~/.gitconfig
    echo "Copied gitconfig to ~/.gitconfig. Old gitconfig copied to ~/.gitconfig_bk"
    mkdir -p ~/bin
    cp git/git_diff_wrapper.sh ~/bin/
    echo "Copied git_diff_wrapper.sh into the ~/bin folder"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'bash' ]; then
    cp ~/.bashrc{,_bk}
    cp .bashrc ~/.bashrc
    echo "Copied bashrc to ~/.bashrc. Old bashrc copied to ~/.bashrc_bk"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'screen' ]; then
    cp ~/.screenrc{,_bk}
    cp .screenrc ~/.screenrc
    echo "Copied screenrc to ~/.screenrc. Old screenrc copied to ~/.screenrc_bk"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'vim' ]; then
    sh ~/dotfiles/bin/installvimconfig.sh
    cp ~/.vimrc{,_bk}
    cp .vimrc ~/.vimrc
    echo "Copied vimrc to ~/.vimrc. Old vimrc copied to ~/.vimrc_bk"
fi
if [ $CONFIG == 'all' -o $CONFIG == 'tmux' ]; then
    cp ~/.tmux.conf{,_bk}
    cp .tmux.conf ~/.tmux.conf
    echo "Copied tmux configuration to ~/.tmux.conf."
    echo "Old tmux conf (if any) was copied to ~/.tmux.conf_bk"
fi
exec bash -login
