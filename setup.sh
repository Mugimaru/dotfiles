#!/bin/bash
DOTFILES=$HOME/dotfiles

# vim
ln -sf $DOTFILES/vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -sf $DOTFILES/spacemacs/dotfile ~/.spacemacs

# tmux
ln -sf $DOTFILES/tmux/tmux.conf ~/.tmux.conf

# zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $DOTFILES/zsh/oh-my-zsh
ln -sf $DOTFILES/zsh/mugimaru-local.zsh-theme $DOTFILES/zsh/oh-my-zsh/themes/mugimaru-local.zsh-theme
ln -sf $DOTFILES/zsh/mugimaru-remote.zsh-theme $DOTFILES/zsh/oh-my-zsh/themes/mugimaru-remote.zsh-theme
ln -sf $DOTFILES/zsh/zshrc ~/.zshrc
touch $DOTFILES/zsh/local.zsh.sh

# git
ln -sf $DOTFILES/git/gitconfig ~/.gitconfig
