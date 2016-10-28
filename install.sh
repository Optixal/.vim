#!/bin/bash
rm -f vimrc
git pull
git fetch --all
git reset --hard origin/master
ln -s -f vimrc ~/.vimrc
git submodule update --init
echo "Vim configurations installed/updated successfully!"
