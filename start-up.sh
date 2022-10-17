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
sudo apt install vim xmlstartlet libxml2-utils zsh tmux fonts-powerline

# Clone and place dot files
mkdir ~/bin
cd ~/bin/
git clone --recurse-submodules https://github.com/mrmiguez/dots
cp ~/bin/dots/.bashrc ~/.bashrc
cp ~/bin/dots/.vimrc ~/.vimrc
cp ~/bin/dots/.tmux.conf ~/.tmux.conf
cp -r ~/bin/dots/.fonts/ ~/.fonts
cp -r ~/bin/dots/.vim/ ~/.vim  
cp -r ~/bin/dots/.tmux/ ~/.tmux 

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/bin/dots/.zshrc ~/.zshrc
cp -r ~/bin/dots/.oh-my-zsh/custom/ ~/.oh-my-zsh/custom
cp -r ~/bin/dots/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/.oh-my-zsh/custom/themes/gruvbox-zsh/gruvbox.zsh-theme ~/.oh-my-zsh/custom/themes
source ~/.zshrc

mkdir -p ~/.local/share/saxon
#curl https://sourceforge.net/projects/saxon/files/Saxon-HE/11/Java/SaxonHE11-4J.zip/download -o ~/.local/share/saxon/saxonHE11-4J.zip

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
