#!/bin/sh
# This devcontainer folder is mounted at $CONFIG_MOUNT
# The files in this folder should not be symlinks, docker will have trouble on MacOS
# WARNING: If you edit this file you may have to manually delete the dev container and restart the docker daemon before rebuilding the container with the updated config
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
cp .zprofile ~/.zprofile
cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
