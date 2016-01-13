#!/bin/bash

for file in .??*
do
  [[ "$file" == ".git" ]] && continue
  [[ "$file" == ".DS_Store" ]] && continue

  ln -sfn "`pwd`/$file" "$HOME/$file"
done
