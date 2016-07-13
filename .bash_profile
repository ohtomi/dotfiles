# alias
alias ll='ls -laG'

# functions
function pcd {
  local dir="$(ghq list -p | peco)"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

function gh-open {
  local site="$(ghq list | peco | cut -d "/" -f 2,3)"
  if [ ! -z "$site" ]; then
    hub browse "$site"
  fi
}

# source homebrew
export PATH=/usr/local/bin:$PATH

# source git-prompt
source ~/git-prompt.sh
PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# source diff-highlight
export PATH=/usr/local/share/git-core/contrib/diff-highlight:$PATH

# source pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which virtualenv > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# source rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
rbenv global 2.3.1

# source nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
nodebrew use v6.2.2

# source golang
export GOPATH=$HOME/repo
export PATH=$GOPATH/bin:$PATH

# source scala
export SCALA_HOME=/usr/local/Cellar/scala/2.11.7
export PATH=$SCALA_HOME/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ohtomi/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
