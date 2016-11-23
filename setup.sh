#!/bin/bash

dotfiles=".bash_profile .bashrc .gitconfig .vimrc"

for dotfile in $dotfiles
do
  ln -sfn "$HOME/dotfiles/$dotfile" $HOME
done
