#!/bin/sh

VIM_DIR=$HOME$VIM_DIR
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



