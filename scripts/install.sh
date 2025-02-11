#!/bin/bash

sudo apt update
sudo apt install i3 autotiling rofi neovim tmux -y

# directory setup
mkdir -p $HOME/.config

# shell(s) / aliases
echo "alias v='nvim'" >> $HOME/.bashrc
echo "alias ls='ls -a'" >> $HOME/.bashrc

echo "alias v='nvim'" >> $HOME/.zshrc
echo "alias ls='ls -a'" >> $HOME/.zshrc

# home
cp -fv ../vim/.vimrc $HOME/.vimrc
cp -rfv ../tmux/.tmux $HOME
cp -fv ../tmux/.tmux.conf $HOME/.tmux.conf

# .config
cp -rfv ../.config/i3 $HOME/.config
cp -rfv ../.config/rofi $HOME/.config
cp -rfv ../.config/nvim $HOME/.config

echo 'Would you like to apt full-upgrade all available packages?: '
read input

if [ $input = 'yes' ] || [ $input = 'y' ]; then
  sudo apt full-upgrade -y
fi

echo 'Would you like to install QuteBrowser (via github) ?'
read input

if [ $input = 'yes' ] || [ $input = 'y' ]; then
  ./installQutebrowser.sh
fi


echo 'Fin.'
