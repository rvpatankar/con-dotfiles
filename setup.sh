#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/tmux" "$XDG_CONFIG_HOME"/tmux
ln -sf "$PWD/tmux" "$XDG_CONFIG_HOME"/ohmyposh

#ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
#ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.zshrc" "$HOME"/.zshrc
#ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
#ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages

zsh
