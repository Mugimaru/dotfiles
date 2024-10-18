#!/bin/bash

ln -sf $DOTFILES/asdf/dotfile $HOME/.asdfrc

git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.14.1
git clone https://github.com/zplug/zplug $DOTFILES/zsh/zplug

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

asdf plugin add python
asdf plugin add golang
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add ruby
asdf plugin add rust
asdf plugin add lazydocker https://github.com/comdotlinux/asdf-lazydocker.git
