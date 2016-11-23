git fetch --all
git pull
# Getting Omzsh & fonts for iterm
git clone https://github.com/Baaaaam/oh-my-zsh.git oh-my-zsh
git clone https://github.com/powerline/fonts.git

git clone http://github.com/zsh-users/zsh-syntax-highlighting.git oh-my-zsh/plugins/zsh-syntax-highlighting


# Installing the new config
ln -s ../.zsh_config/zshrc ../.zshrc
ln -s ../.zsh_config/gitconfig ../.gitconfig
ln -s ../.zsh_config/vim ../.vim
ln -s ../.zsh_config/vimrc ../.vimrc
