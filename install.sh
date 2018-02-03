#!/usr/bin/env bash

SCRIPT_DIR=`dirname $0`

echo "Installing common packages"
sudo apt-get install vim git curl jq tmux

echo "Setting up git config"

git config --global user.email "dpetroff@gmail.com"
git config --global user.name "Dmitry Petrov"

pushd $SCRIPT_DIR

ln -s "$SCRIPT_DIR/bash_aliases" ~/.bash_aliases

popd
