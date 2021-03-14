#!/usr/bin/env zsh

dotfiles=(.zshrc .gitconfig .gitattributes .gitignore_global .vimrc .fixpackrc)

for dotfile in $dotfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/$dotfile" $HOME
done

extra_dotfile=".github_token"
if [ ! -f "$HOME/$extra_dotfile" ]; then
  echo "export GITHUB_TOKEN=(my token)" >$HOME/$extra_dotfile
  echo "created $HOME/$extra_dotfile ! set GITHUB_TOKEN"
fi


mkdir -p $HOME/bin

binfiles=(gzipinfo fortune)

for binfile in $binfiles
do
  ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/bin/$binfile" $HOME/bin
done


mkdir -p $HOME/Library/Application\ Support/pypoetry
ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/pypoetry/config.toml" $HOME/Library/Application\ Support/pypoetry


mkdir -p $HOME/.lazybones
ln -sfn "$HOME/src/github.com/ohtomi/dotfiles/.lazybones/managed-config.json" $HOME/.lazybones
