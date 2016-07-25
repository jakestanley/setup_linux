#!/usr/bin/env bash

# Install core stuff
sudo apt-get install --ignore-missing git vim screen at xorg openbox rofi openjdk-8-jre -y

# Browser
sudo apt-get install --ignore-missing chromium-browser -y

# Install GUI stuff
sudo apt-get install --ignore-missing rxvt-unicode git-cola gitk kdiff3 ultra-flat-icons gparted -y

# Install dumb stuff
sudo apt-get install --ignore-missing cowsay fortune-mod sl cmatrix toilet figlet -y

# Install zsh
sudo apt-get install zsh -y
# sudo chsh -s /bin/zsh vagrant
# zsh