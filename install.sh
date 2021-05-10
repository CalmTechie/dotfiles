#!/bin/bash

rm -rf "$HOME/.config/X11"
ln -s "$DOTFILES/X11" "$HOME/.config"

rm -rf "$HOME/.config/i3"
ln -s "$DOTFILES/i3" "$HOME/.config"

mkdir -p "$HOME/.config/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$DOTFILES/zsh/.zsh-dircolors.config" "$HOME/.config/zsh"

ln -sf "$DOTFILES/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$HOME/.config/zsh"

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc" 
