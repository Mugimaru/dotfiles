#!/bin/bash

ln -s $DOTFILES/asdf/dotfile $HOME/.asdfrc

git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.2.1

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

