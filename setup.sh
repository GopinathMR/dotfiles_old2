#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install jq repgrep cmake fpp wget git tmux neovim gh ruby@2.7 cocoapods kdiff3 fp tree
brew cask install oni
brew tap bufbuild/buf && brew install buf
mkdir -p ~/softwares
cd ~/softwares
npm install ts-protoc-gen
mkdir -p ~/github
cd ~/github
git clone git@github.com:stepancheg/rust-protobuf.git && cd rust-protobuf
cargo install protobuf-codegen
cd ~/github && git clone git clone https://github.com/Kethku/neovide && cd neovide && cargo build --release

# https://github.com/ryanoasis/nerd-fonts#option-3-install-script
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install fontforge
