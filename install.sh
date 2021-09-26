#!/bin/zsh
# I am using zsh instead of bash.  I was having some troubles using bash with
# arrays.  Didn't want to investigate, so I just did zsh
pushd $DOTFILES
for folder in $STOW_FOLDERS;
do
    echo "Installing $folder"
    stow -D $folder
    stow $folder
done
popd
