export DOTFILES=$HOME/src/github.com/ohtomi/dotfiles

# $HOME/bin
export PATH=$HOME/bin:$PATH

# diff-highlight
export PATH=/usr/local/share/git-core/contrib/diff-highlight:$PATH

# homebrew
export PATH=/usr/local/bin:$PATH
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ANALYTICS=1

# pyenv
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi
if which virtualenv > /dev/null; then
  eval "$(pyenv virtualenv-init -)"
fi

# rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
  rbenv global 2.3.3
fi

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
if which nodebrew > /dev/null; then
  nodebrew use v6.9.1
fi

# golang
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

# .bashrc
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
