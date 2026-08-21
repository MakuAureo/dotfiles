#!/bin/bash
mkdir -p $HOME/Pictures/wallpapers
mkdir -p $HOME/config

rm -r $HOME/.config/dcli
rm -r $HOME/.config/fish
rm -r $HOME/.config/hypr
rm -r $HOME/.config/hyprlock
rm -r $HOME/.config/kitty
rm -r $HOME/.config/nvim
rm -r $HOME/.config/quickshell
rm -r $HOME/Pictures/wallpapers

ln -s $PWD/dcli $HOME/.config/dcli
ln -s $PWD/fish $HOME/.config/fish
ln -s $PWD/hypr $HOME/.config/hypr
ln -s $PWD/hyprlock $HOME/.config/hyprlock
ln -s $PWD/kitty $HOME/.config/kitty
ln -s $PWD/nvim $HOME/.config/nvim
ln -s $PWD/quickshell $HOME/.config/quickshell
ln -s $PWD/wallpapers $HOME/Pictures/wallpapers
