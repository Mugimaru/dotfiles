#!/bin/bash

ln -s $DOTFILES/vim/vimrc $HOME/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
