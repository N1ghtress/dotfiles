#! /bin/sh

# If not running interactively, skip rest
[[ $- != *i* ]] && return

# Aliases
alias ls="lsd --color=auto"
alias la="lsd -a --color=auto"
alias ll="lsd -l --color=auto"
alias grap="grep --color"

alias c="clear"

alias hx="helix"

# zsh config

# Key bindings
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

cat<<'EOF'
EOF
