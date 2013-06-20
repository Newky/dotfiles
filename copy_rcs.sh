#!/bin/bash
cp ~/.gitconfig{,_bk}
cp .gitconfig ~/.gitconfig
echo "Copied gitconfig to ~/.gitconfig. Old gitconfig copied to ~/.gitconfig_bk"
mkdir -p ~/bin
cp git/git_diff_wrapper.sh ~/bin/
echo "Copied git_diff_wrapper.sh into the ~/bin folder"
cp ~/.bashrc{,_bk}
cp .bashrc ~/.bashrc
echo "Copied bashrc to ~/.bashrc. Old bashrc copied to ~/.bashrc_bk"
cp ~/.screenrc{,_bk}
cp .screenrc ~/.screenrc
echo "Copied screenrc to ~/.screenrc. Old screenrc copied to ~/.screenrc_bk"
exec bash -login
