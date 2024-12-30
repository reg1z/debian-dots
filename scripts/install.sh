#!/bin/bash

sudo apt update
sudo apt install i3 rofi neovim tmux -y

# directory setup
mkdir -p ~/.config

# shell(s) / aliases
echo "alias v='nvim'" >> ~/.bashrc
echo "alias ls='ls -a'" >> ~/.bashrc

echo "alias v='nvim'" >> ~/.zshrc
echo "alias ls='ls -a'" >> ~/.zshrc

# home
cp -fv ../vim/.vimrc ~/.vimrc
cp -rfv ../tmux/.tmux ~
cp -fv ../tmux/.tmux.conf ~/.tmux.conf

# .config
cp -rfv ../.config/i3 ~/.config
cp -rfv ../.config/rofi ~/.config
cp -rfv ../.config/nvim ~/.config

echo 'Would you like to apt full-upgrade all available packages?: '
read input

if [ $input = 'yes' ] || [ $input = 'y' ]; then
  sudo apt full-upgrade -y
fi

