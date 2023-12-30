#!/bin/bash

mkdir -p $HOME/.config
find $DOTFILES/.config -maxdepth 1 -mindepth 1 -type d -print0 | xargs -0 ln -s -f -t $HOME/.config
