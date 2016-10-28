#!/bin/bash
git pull
ln -s -f vimrc ~/.vimrc
git submodule update --init
echo "Vim configurations installed/updated successfully!"
