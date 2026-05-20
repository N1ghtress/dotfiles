#!/bin/bash
# This script sets up symbolic links in $HOME, $XDG_CONFIG_HOME and $HOME/.local/bin directories

if [[ $EUID -eq 0 ]]; then
   echo "Do not run a stranger's script as root ! This script shouldn't be ran as root." 1>&2
   exit 1
fi

update_sym_links () {
   shopt -s dotglob
   for f in $1/*; do
      # echo "$1 $2"
      ln -sfv $f $2
   done
   shopt -u dotglob
}

update_sym_links $(pwd)/config ${XDG_CONFIG_HOME:-$HOME/.config}
update_sym_links $(pwd)/home $HOME
update_sym_links $(pwd)/scripts $HOME/.local/bin
