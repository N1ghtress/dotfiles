# Used for setting user's environment variables; it should not contain commands that produce output or assume the shell is attached to a TTY. When this file exists it will always be read.
typeset -U path PATH
path=(~/.local/bin $path)
path=(/usr/lib/jvm/default-runtime/ $path)
export PATH

export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/code

export PS1='%B%F{yellow}%~%f%b %F{magenta}->%f '
export PATH=$PATH:/home/kn1ghtress/.local/bin/:.:

# Colors
export DARK="#37352F"
export WHITE_BONE="#D8D0C1"
export PEACH="#FFA570"
export LIGHT_PEACH="#FFCBAD"
export YELLOW="#FFB30F"
export RED="#D72638"
export ORANGE="#ED7D3A"
export PURPLE="#C47AC0"
export YELLOW_GREEN="#B0DB43"
export BLUE="#355691"
export GREEN="#0C7C59"
