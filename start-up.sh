#! /usr/bin/bash

# GUI Applications not installed
# -Bitwarden
# -Pycharm
# -Teams
# -Keybase
# -BOINC
# -Gridcoin

# Secrets that need to be copied locally
# -aws credentials
# -ssh

# Update and install
sudo apt update && sudo apt upgrade -y
sudo apt install vim xmlstartlet libxml2-utils zsh tmux fonts-powerline -y

# Clone and place dot files
mkdir ~/bin
cd ~/bin/
git clone --recurse-submodules https://github.com/mrmiguez/dots
cp ~/bin/dots/.bashrc ~/.bashrc
cp -r ~/bin/dots/.fonts/ ~/.fonts
cp -r ~/bin/dots/.vim/ ~/.vim  
ln -s ~/.vim/simple.vim ~/.vimrc
cp -r ~/bin/dots/.tmux/ ~/.tmux
ln -s ~/.tmux/mrmiguez.tmux ~/.tmux.conf

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/bin/dots/.zshrc ~/.zshrc
cp ~/bin/dots/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
cp ~/bin/dots/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes
source ~/.zshrc

# saxon HE 11.4
mkdir -p ~/.local/share/saxon
cp -r ~/bin/dots/saxon/* ~/.local/share/saxon

# AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -r aws
rm awscliv2.zip

# SSM Plugin for AWS
curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb" -o "session-manager-plugin.deb"
sudo dpkg -i session-manager-plugin.deb
rm session-manager-plugin.deb

# MODS schema
mkdir ~/.local/share/schema
cp ~/bin/dots/*.xsd ~/.local/share/schema
