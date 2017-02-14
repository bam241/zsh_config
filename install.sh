#!/bin/bash

# Getting Omzsh & fonts for iterm
git submodule update --init --recursive

# Backing-up the existing file
mv ${HOME}/.zshrc ${HOME}/.zshrc_bak
mv ${HOME}/.gitconfig ${HOME}/.gitconfig_bak
mv ${HOME}/.vimrc ${HOME}/.vimrc_bak
mv ${HOME}/.vim ${HOME}/.vim_bak

# Installing the new config
ln -s ${HOME}/.zsh_config/zsh/zshrc ${HOME}/.zshrc
ln -s ${HOME}/.zsh_config/git/gitconfig ${HOME}/.gitconfig
ln -s ${HOME}/.zsh_config/vim/vim ${HOME}/.vim
ln -s ${HOME}/.zsh_config/vim/vimrc ${HOME}/.vimrc
