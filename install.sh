#!/bin/bash

rm_or_mv() {
    if [[ -L ${1} ]]; then
        rm ${1}
    elif [[ -e $1} ]]; then
        mv ${1} ${1}_bak
    fi
}


# Getting Omzsh & fonts for iterm
git submodule update --init --recursive

rm_or_mv ${HOME}/.zshrc
ln -s ${HOME}/.zsh_config/zsh/zshrc ${HOME}/.zshrc

rm_or_mv ${HOME}/.tmux.conf
ln -s ${HOME}/.zsh_config/tmux/tmux.conf ${HOME}/.tmux.conf

rm_or_mv ${HOME}/.config/powerline
ln -s ${HOME}/.zsh_config/powerline ${HOME}/.config/powerline

rm_or_mv ${HOME}/.gitconfig
ln -s ${HOME}/.zsh_config/git/gitconfig ${HOME}/.gitconfig

rm_or_mv ${HOME}/.config/nvim
ln -s ${HOME}/.zsh_config/vim/nvim ${HOME}/.config/nvim

#rm_or_mv ${HOME}/.vim
#rm_or_mv ${HOME}/.vimrc
#ln -s "${HOME}/.zsh_config/vim/vim" "${HOME}/.vim"
#ln -s "${HOME}/.zsh_config/vim/vimrc" "${HOME}/.vimrc"

rm_or_mv ${HOME}/.clang-format
ln -s ${HOME}/.zsh_config/clang-format/clang-format ${HOME}/.clang-format


rm_or_mv ${HOME}/.rootlogon.C
ln -s ${HOME}/.zsh_config/root/rootlogon.C ${HOME}/.rootlogon.C

