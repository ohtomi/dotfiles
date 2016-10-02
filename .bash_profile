# alias
alias ll='ls -laG'

# functions
function g {
  local dir="$(ghq list -p | peco)"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

function h {
  local site="$(ghq list | peco | cut -d "/" -f 2,3)"
  if [ ! -z "$site" ]; then
    hub browse "$site"
  fi
}

function c {
  if [ ! -d $1 ]; then
    echo "$1: Not a directory"
    return
  fi
  local dir="$(find $1 -maxdepth 1 -type d | sort | peco)"
  if [ ! -z "$dir" ]; then
    cd "$dir"
  fi
}

function peco-history {
  local l=$(HISTTIMEFORMAT= history | sort -k1,1nr | sed 's/^ *[0-9]* *//' | peco --query "$READLINE_LINE")
  READLINE_LINE="$l"
  READLINE_POINT=${#l}
}

bind -x '"\C-r": peco-history'

function gzipinfo {
  gzcat $1 | tar tv
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
