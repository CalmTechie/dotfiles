#!/bin/sh

rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

ln -sf "$DOTFILES/dwm" "$XDG_DATA_HOME"

####################
# TEMP ADD HOTKEYS #
####################
mkdir -p "$XDG_DATA_HOME/my_scripts"
cp -f "$DOTFILES/other/chvol" "$XDG_DATA_HOME/my_scripts/"
ln -sf "$DOTFILES/other/mkeys.config" "$XDG_CONFIG_HOME"

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc" 
