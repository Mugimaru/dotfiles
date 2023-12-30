#!/bin/bash
DOTFILES=$HOME/dotfiles
SCRIPTS=$DOTFILES/install
source $DOTFILES/install/_helpers.sh

# script "filename" "defaultAnswer"
script "fonts" "n"
script "asdf" "n"
script "git" "y"
script "tmux" "y"
script "zsh" "y"

# Collect answers
for key in $(map_keys $scriptsMap); do
  read -n 1 -p "Install $key (y/n)? [default - $(map_get $scriptsMap $key)]" answer
  if [ "$answer" = "y" ]; then map_put $scriptsMap $key "y"; fi
  if [ "$answer" = "n" ]; then map_put $scriptsMap $key "n"; fi
  echo $''
done

# Perform install
source $SCRIPTS/dotconfig.sh
for key in $(map_keys $scriptsMap); do
  if [ $(map_get $scriptsMap $key) = "y" ]; then
    printf "\n-> Installing %s:\n" $key
    source $SCRIPTS/$key.sh
  fi
done
