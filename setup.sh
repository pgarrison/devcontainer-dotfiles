#!/bin/sh
# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim
cp .zshrc ~/.zshrc
cp .bash_aliases ~/.bash_aliases

# Install vim-plug for neovim
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install neovim plugins
nvim +'PlugInstall --sync' +qa

# Install zsh theme 'pure'
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
