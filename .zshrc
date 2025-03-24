#! /bin/sh

# If not running interactively, skip rest
[[ $- != *i* ]] && return

# Aliases
alias ls="lsd --color=auto --group-directories-first"
alias la="lsd -a --color=auto --group-directories-first"
alias ll="lsd -l --color=auto --group-directories-first"
alias lla="lsd -la --color=auto --group-directories-first"
alias grep="grep --color"

alias c="clear"

alias hx="helix"

# zsh config

# Key bindings
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

cat<<'EOF'
EOF
