#! /bin/sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias la='ls -a --color=auto'

alias c='clear'
alias ssh_flat='ssh dragonfly@87.90.77.29 -p 42069'

# zsh config

# Key bindings
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

cat<<'EOF'
EOF
