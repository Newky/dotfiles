#!/bin/sh

VIM_DIR=$HOME"/.vim"
PLUGIN_DIR=$VIM_DIR"/plugin"
BACKUP_DIR=$VIM_DIR"/backup"
TEMP_DIR=$VIM_DIR"/tmp"
COMMENTSPACKAGE="http://www.vim.org/scripts/download_script.php?src_id=9801"

#
if [ -d $VIM_DIR ]; then
	echo "Vim Directory Exists"
else
	mkdir -p $VIM_DIR
fi
#
if [ ! -d $BACKUP_DIR ]; then
	mkdir -p $BACKUP_DIR
fi
#
if [ ! -d $TEMP_DIR ]; then
	mkdir -p $TEMP_DIR
fi
#
if [ ! -d $PLUGIN_DIR ]; then
	mkdir -p $PLUGIN_DIR
fi

COMMENTSFILE=$PLUGIN_DIR"/comments.vim"

wget -O $COMMENTSFILE $COMMENTSPACKAGE 2>&1 1> /dev/null

if hash ctags >/dev/null; then

TAGLISTURL="http://vim.sourceforge.net/scripts/download_script.php?src_id=7701"

TAGLISTFILE="/tmp/plugin.zip"
wget -O $TAGLISTFILE $TAGLISTURL 2>&1 1> /dev/null

unzip $TAGLISTFILE -d "/tmp"

TAGLISTFILE=$PLUGIN_DIR"/taglist.vim"

mv /tmp/plugin/taglist.vim $TAGLISTFILE

else
	echo "Please Install CTAGS for this to work"
fi

NERDTREEURL="http://www.vim.org/scripts/download_script.php?src_id=11834"
NERDTREEFILE=$PLUGIN_DIR"/NERD_tree.vim"

wget -O /tmp/plugin.zip $NERDTREEURL
unzip /tmp/plugin.zip -d /tmp
mv /tmp/plugin/NERD_tree.vim $NERDTREEFILE

./update.sh
