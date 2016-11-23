#!/bin/bash

# alias
alias ll='ls -laG'

# function
source $DOTFILES/bash/peco.sh

# git-completion
source /usr/local/etc/bash_completion.d/git-completion.bash

# git-prompt
source /usr/local/etc/bash_completion.d/git-prompt.sh
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '
