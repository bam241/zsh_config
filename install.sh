#!/bin/bash


rm_or_mv() {
    if [[ -L ${1} ]]
    then
        rm ${1}
    else
        mv ${1} ${1}_bak
    fi
}


# Getting Omzsh & fonts for iterm
git submodule update --init --recursive

# Backing-up the existing file

rm_or_mv ${HOME}/.zshrc
rm_or_mv ${HOME}/.gitconfig 
rm_or_mv ${HOME}/.vimrc
rm_or_mv ${HOME}/.vim  

# Installing the new config
ln -s ${HOME}/.zsh_config/zsh/zshrc ${HOME}/.zshrc
ln -s ${HOME}/.zsh_config/git/gitconfig ${HOME}/.gitconfig
ln -s ${HOME}/.zsh_config/vim/vim ${HOME}/.vim
ln -s ${HOME}/.zsh_config/vim/vimrc ${HOME}/.vimrc
ln -s ${HOME}/.zsh_config/tmux/tmux.conf ${HOME}/.tmux.conf
ln -s ${HOME}/.zsh_config/root/rootlogon.C ${HOME}/.rootlogon.C 
