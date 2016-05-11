#!/bin/bash

# fonts
git clone git@github.com:powerline/fonts.git `pwd`/fonts
sh `pwd`/fonts/install.sh

# spacemacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -sf $DOTFILES/spacemacs/dotfile ~/.spacemacs

#git
ln -sf `pwd`/git/gitconfig ~/.gitconfig
