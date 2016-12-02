#!/bin/bash

dotfiles=".bash_profile .bashrc .gitconfig .vimrc"

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done

mkdir -p $HOME/bin

binfiles="gzipinfo"

for binfile in $binfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/bin/$binfile" $HOME/bin
done
