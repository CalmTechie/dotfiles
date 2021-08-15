#!/bin/sh

rm -rf "$HOME/.config/X11"
ln -s "$DOTFILES/X11" "$HOME/.config"

mkdir -p "$HOME/.config/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$HOME/.config/zsh/aliases"
ln -sf "$DOTFILES/zsh/external" "$HOME/.config/zsh"

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

ln -sf "$DOTFILES/dwm" "$XDG_DATA_HOME"

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc" 
