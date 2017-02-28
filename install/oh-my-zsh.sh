#!/bin/bash

git clone git://github.com/robbyrussell/oh-my-zsh.git $DOTFILES/zsh/oh-my-zsh
ln -s $DOTFILES/zsh/mugimaru-local.zsh-theme $DOTFILES/zsh/oh-my-zsh/themes/mugimaru-local.zsh-theme
ln -s $DOTFILES/zsh/mugimaru-remote.zsh-theme $DOTFILES/zsh/oh-my-zsh/themes/mugimaru-remote.zsh-theme
ln -s $DOTFILES/zsh/zshrc $HOME/.zshrc
touch $DOTFILES/zsh/local.zsh.sh
