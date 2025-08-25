#! /bin/sh
# Used for setting user's environment variables; it should not contain commands that produce output or assume the shell is attached to a TTY. When this file exists it will always be read.
typeset -U path PATH
path=(~/.local/bin $path)
path=(/usr/lib/jvm/default-runtime/ $path)
path=($HOME/bin $path)
path=($HOME/.cargo/bin $path)
export PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock

# XDG Base Directories: https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DOWNLOAD_DIR="$HOME/downloads"

export CARGO_HOME="$XDG_DATA_HOME/cargo"
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

# Python interactive startup file
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/startup.py"

# XDG Applications
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/helix
export TERMINAL=/usr/bin/kitty

# Colors
export COLOR1=#D4747F
export COLOR2=#CC536B
export COLOR3=#A8BDDC
export COLOR4=#6C3344
export COLOR5=#D5A9AB

#Prompts
export PS1='%B%F{yellow}%~%f%b %F{magenta}|>%f ' # Best prompt ever created.

# Specifics
export RANGER_LOAD_DEFAULT_RC=false # Global config not loaded, only local
