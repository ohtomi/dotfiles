#!/bin/bash

# alias
alias ll='ls -laG'

# function
source $DOTFILES/bash/peco.sh

# git-prompt
source $DOTFILES/git-prompt.sh
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
