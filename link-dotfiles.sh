#!/usr/bin/env zsh

dotfiles=(.zshrc .gitconfig .gitattributes .gitignore_global .vimrc .fixpackrc)

for dotfile in $dotfiles
do
  ln -sfn "$HOME/Documents/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done
