#!/bin/bash

# fonts
git clone git@github.com:powerline/fonts.git `pwd`/fonts
sh `pwd`/fonts/install.sh

#git
ln -sf `pwd`/git/gitconfig ~/.gitconfig
