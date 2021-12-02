#!/bin/bash

cd $HOME
mkdir tools
cd tools

# go
wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz

# Oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


# Lazygit
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install
cd ..

# Neovim
mkdir neovim
cd neovim
wget https://github.com/neovim/neovim/releases/download/v0.6.0/nvim.appimage
chmod +x nvim.appimage
sudo cp nvim.appimage /usr/local/bin/nvim
cd ..

