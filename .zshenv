# Used for setting user's environment variables; it should not contain commands that produce output or assume the shell is attached to a TTY. When this file exists it will always be read.
typeset -U path PATH
path=(~/.local/bin $path)
path=(/usr/lib/jvm/default-runtime/ $path)
path=($HOME/bin $path)
export PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock

export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/helix

export PS1='%B%F{yellow}%~%f%b %F{magenta}|>%f ' # Best prompt ever created.

export RANGER_LOAD_DEFAULT_RC=false # Global config not loaded, only local
