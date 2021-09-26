#!/usr/bin/env zsh
pushd $DOTFILES
for folder in $STOW_FOLDERS; 
do
    echo "Removing $folder"
    stow -D $folder
done
popd
