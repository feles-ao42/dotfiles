#!/bin/sh

if [ ! -d $HOME/.asdf ]; then
    mkdir $HOME/.asdf
fi

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.2