#!/bin/bash

dotfiles=".bash_profile .bashrc .gitconfig .vimrc"

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done

if [ ! -f "$HOME/.github_token" ]; then
  echo "export GITHUB_TOKEN=(my token)" >$HOME/.github_token
  echo "created $HOME/.github_token ! set GITHUB_TOKEN"
fi

mkdir -p $HOME/bin

binfiles="gzipinfo"

for binfile in $binfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/bin/$binfile" $HOME/bin
done
