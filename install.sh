#!/bin/bash

# Getting Omzsh & fonts for iterm
git submodule update --init --recursive

# Backing-up the existing file
mv ~/.zshrc ~/.zshrc_bak
mv ~/.gitconfig ~/.gitconfig_bak
mv ~/.vimrc ~/.vimrc_bak
mv ~/.vim ~/.vim_bak

# Installing the new config
ln -s ~/.zsh_config/zsh/zshrc ~/.zshrc
ln -s ~/.zsh_config/git/gitconfig ~/.gitconfig
ln -s ~/.zsh_config/vim/vim ~/.vim
ln -s ~/.zsh_config/vim/vimrc ~/.vimrc
