#!/bin/bash
rm -f vimrc
git pull
git checkout origin/master vimrc
ln -s -f vimrc ~/.vimrc
git submodule update --init
echo "Vim configurations installed/updated successfully!"
