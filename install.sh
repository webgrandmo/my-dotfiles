#!/bin/bash

DOT="$HOME/.dotfiles"

# Zsh
ln -sf $DOT/zsh/.zshrc ~/.zshrc
ln -sf $DOT/zsh/.p10k.zsh ~/.p10k.zsh
ln -sf $DOT/zsh/.aliases ~/.aliases

# VS Code
mkdir -p ~/.config/Code/User
ln -sf $DOT/config/Code/User/settings.json ~/.config/Code/User/
ln -sf $DOT/config/Code/User/keybindings.json ~/.config/Code/User/

# GNOME
dconf load / < $DOT/gnome/gnome-settings.ini

echo "Dotfiles synced!"
