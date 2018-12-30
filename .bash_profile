# bind: warning: line editing not enabled
if [ -z "$PS1" ]; then
    return
fi

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

# ghg
export GHG_HOME=~/

# rbenv
export GLOBAL_RUBY_VERSION=2.5.0
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
  rbenv global $GLOBAL_RUBY_VERSION
fi

# nodebrew
export GLOBAL_NODE_VERSION=v10.0.0
export PATH=$HOME/.nodebrew/current/bin:$PATH
if which nodebrew > /dev/null; then
  nodebrew use $GLOBAL_NODE_VERSION
fi

# pipenv
export PIPENV_VENV_IN_PROJECT=true

# golang
export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH

# .bashrc
[[ -f "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# .github_token
[[ -f "$HOME/.github_token" ]] && source "$HOME/.github_token"

# .scrapbox_token
[[ -f "$HOME/.scrapbox_token" ]] && source "$HOME/.scrapbox_token"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fortune
fortune
