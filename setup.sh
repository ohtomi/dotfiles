#!/bin/bash

dotfiles=".bash_profile .bashrc .gitconfig .vimrc"

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done

extra_dotfile=".github_token"
if [ ! -f "$HOME/$extra_dotfile" ]; then
  echo "export GITHUB_TOKEN=(my token)" >$HOME/$extra_dotfile
  echo "created $HOME/$extra_dotfile ! set GITHUB_TOKEN"
fi

extra_dotfile=".scrapbox_token"
if [ ! -f "$HOME/$extra_dotfile" ]; then
  echo "export SCRAPBOX_TOKEN=(my token)" >$HOME/$extra_dotfile
  echo "created $HOME/$extra_dotfile ! set SCRAPBOX_TOKEN"
fi

mkdir -p $HOME/bin

binfiles="gzipinfo"

for binfile in $binfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/bin/$binfile" $HOME/bin
done
