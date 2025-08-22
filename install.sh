#!/bin/bash

# This script removes directories and then set up a symlink

if [[ $EUID -eq 0 ]]; then
   echo "Do not run a stranger's script as root ! This script shouldn't be ran as root." 1>&2
   exit 1
fi

CURRENT_DIR="$(pwd)"
CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

rm -f $HOME/.zshenv
ln -sfv $CURRENT_DIR/.zshenv $HOME/.zshenv

rm -f $HOME/.zshrc
ln -sfv $CURRENT_DIR/.zshrc $HOME/.zshrc

for d in $CURRENT_DIR/*/; do
   IFS='/' read -ra DIRS <<< "$d"
   SRC_DIR=${d%/}
   DST_DIR=$CONFIG_HOME/${DIRS[-1]}
   rm -irv $DST_DIR
   ln -sfv $SRC_DIR $DST_DIR
done
