#!/bin/bash

cd $HOME
mkdir tools
cd tools

# go
wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz

# Lazygit
git clone https://github.com/jesseduffield/lazygit.git
cd lazygit
go install
