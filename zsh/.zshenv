export PATH=$PATH:/usr/local/go/bin:$HOME/.local/bin
export DOTFILES=/home/marius/.dotfiles
export STOW_FOLDERS=(tmux zsh nvim)

if [ -e /home/marius/.nix-profile/etc/profile.d/nix.sh ]; then . /home/marius/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. "$HOME/.cargo/env"
