#!/usr/bin/env zsh

dotfiles=(.zshrc .gitconfig .gitattributes .gitignore_global .vimrc .fixpackrc)

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done


mkdir -p $HOME/bin

binfiles=(gzipinfo fortune)

for binfile in $binfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/bin/$binfile" $HOME/bin
done
