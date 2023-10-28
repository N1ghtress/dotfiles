#!/bin/bash

if [[ $EUID -eq 0 ]]; then
   echo "Do not run a stranger's script as root ! This script shouldn't be ran as root." 1>&2
   exit 1
fi

DOTFILES_DIR="$(pwd)"
CONFIG_DIR="~/.config"

rm -f $HOME/.zshenv
ln -sf $DOTFILES_DIR/.zshenv $HOME/.zshenv

rm -f $HOME/.zshrc
ln -sf $DOTFILES_DIR/.zshrc $HOME/.zshrc

for d in $DOTFILES_DIR/*/; do
   IFS='/' read -ra DIRS <<< "$d"
   SRC_DIR=${d%/}
   DST_DIR="$HOME/.config/"
   DEL_DIR="$DST_DIR${DIRS[-1]}"
   # echo "SRC_DIR=$SRC_DIR DST_DIR=$DST_DIR DEL_DIR=$DEL_DIR"
   rm -rf $DEL_DIR 
   ln -sf $SRC_DIR $DST_DIR
done