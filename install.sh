#!/usr/bin/env bash

SCRIPT_DIR=`dirname $0`

echo "Installing common packages"
sudo apt-get install vim git curl jq tmux

echo "Setting up git config"

git config --global user.email "dpetroff@gmail.com"
git config --global user.name "Dmitry Petrov"
git config --global core.editor vim

echo "Setting up symlinks"

pushd $SCRIPT_DIR > /dev/null

if [ -e ~/.bash_aliases ]
then
  echo "~/.bash_aliases file already exists, symlink will not be created"
else
  ln -s "$SCRIPT_DIR/bash_aliases" ~/.bash_aliases
fi

popd > /dev/null
