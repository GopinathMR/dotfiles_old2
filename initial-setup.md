# Initial setup

This document explains all custom steps to be done when setting up Mac fresh

## Install iTerm

* Download iTerm binary from 
## Install brew
Run below command

`
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
`

## Install brew based apps

Run below commands

`
brew install wget tmux git neovim gh
`

## Install rust

`
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
`

## Install developer tools from their websites as Mac app
* Visual Studio Code
* Github Desktop
* Discord
* NeoVim GUI (https://github.com/onivim/oni/wiki/Installation-Guide#mac)

# Install VSCode Plugins
* VSCode Neovim 

# Setup the symlinks

* Make sure you have cloned the `dotfiles` repo as ~/dotfiles using Github Desktop

Run below command

`
cd ~/dotfiles && ./setup.sh
`