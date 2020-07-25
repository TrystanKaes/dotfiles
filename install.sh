#!/bin/sh

chsh -s /bin/bash

ln -sfv ".dotfiles/runcom/.bashrc" ~
ln -sfv ".dotfiles/runcom/.bash_profile" ~
ln -sfv ".dotfiles/git/.gitconfig" ~

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" #homebrew

brew install 'mas' #appstore

echo "Setting case insensitive directory navigation..."

echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc

source ~/.bashrc
