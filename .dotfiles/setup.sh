#!/usr/bin/env bash
#
# Set up some dependencies and folders the neovim and vim configs need.
mkdir -p ~/.vim/tmp/undo
mkdir -p ~/.vim/tmp/backup
mkdir -p ~/.vim/tmp/swap

sudo apt install -y fd-find
sudo apt install -y ansible
sudo apt install -y xdotool # Used for keyboard shortcuts in Ubuntu, e.g.: xdotool search --onlyvisible --class "brave-browser" windowactivate

brew install tmux
brew install ripgrep
brew install fzf
brew install php-code-sniffer
brew install chafa
brew install jq
brew install yq

# # Shell
brew install zoxide
brew install bat
brew install exa
brew install lazygit
brew install git-delta

cp -r .dotfiles/alacritty/.config ~
cp -r .dotfiles/bin/.local ~
cp -r .dotfiles/git ~
cp -r .dotfiles/lazygit ~
cp -r .dotfiles/nvim ~
cp -r .dotfiles/nvm ~
cp -r .dotfiles/tmux ~
cp -r .dotfiles/vim ~
cp -r .dotfiles/nvm ~
cp -r .dotfiles/zsh ~
cp -r profile/.zshrc ~
cp -r .profile/.bashrc ~
cp -r .profile/.zshenv ~
