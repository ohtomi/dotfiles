#!/bin/bash

dotfiles=".bash_profile .bashrc .gitconfig .vimrc"

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done
