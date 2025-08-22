#begin!
#cd ~
sudo apt update

#install zsh
sudo apt install -y zsh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
export ZPLUG_HOME=/path/to/.zplug


#install git
sudo apt install -y git


#install Tmux
sudo apt-get install -y tmux 

#build essentials
sudo apt install -y build-essential libc6 libc6-dev make g++

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh   

#install brave
curl -fsS https://dl.brave.com/install.sh | sh

#install alacritty
sudo add-apt-repository ppa:aslatter/ppa
sudo apt install -y alacritty

#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bashrc

#install neovim
wget https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.appimage
#chmod u+x nvim-linux-x86_64.appimage && ./nvim-linux-x86_64.appimage
sudo mv nvim-linux-x86_64.appimage /usr/bin/nvim
sudo chmod +x /usr/bin/nvim

#install nodeJS
sudo apt install -y nodejs 
sudo apt install -y npm
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.18.0".
nvm current # Should print "v22.18.0".

# Verify npm version:
npm -v # Should print "10.9.3".

#golang
sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
sudo apt-get update
sudo apt-get install golang

#tmux
cargo install tmux-sessionizer

# Install luarocks
sudo apt install -y lua5.1 liblua5.1-0-dev # Needed for luarocks
wget https://luarocks.org/releases/luarocks-3.12.2.tar.gz
tar zxpf luarocks-3.12.2.tar.gz
cd luarocks-3.12.2
./configure && make && sudo make install
sudo luarocks install -y 
luasocket
cd $HOME
rm luarocks-3.12.2.tar.gz

#dotfiles for cfg
sh .dotfiles/setup.sh
