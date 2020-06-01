#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing common packages"
sudo apt-get install vim-gtk3 git curl jq tmux tig

echo "Setting up git config"

git config --global user.email "dpetroff@gmail.com"
git config --global user.name "Dmitry Petrov"
git config --global core.editor vim
git config --global push.default simple
git config --global core.pager cat
git config --global pager.log "less -S"

echo "Setting up symlinks"

if [[ -e "$HOME/.zshrc" ]]; then
  echo "$HOME/.zshrc already exists, remove to use this one"
else
  ln -s $SCRIPT_DIR/zshrc $HOME/.zshrc
fi

if [[ -e "$HOME/.tmux.conf" ]]; then
  echo "$HOME/.tmux.conf already exists, remove to use this one"
else
  ln -s $SCRIPT_DIR/tmux.conf $HOME/.tmux.conf
fi

if [[ -e "$HOME/.bash_aliases" ]]; then
  echo "$HOME/.bash_aliases already exists, remove to use this one"
else
  ln -s $SCRIPT_DIR/bash_aliases $HOME/.bash_aliases
fi
