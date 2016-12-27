#!/bin/bash

rm -f vimrc
git pull
git fetch --all
git reset --hard origin/master
ln -s -f vimrc ~/.vimrc
git submodule update --init
git submodule foreach git pull origin master

echo -e '\n\e[32m[\e[1m\e[92m+\e[0m\e[32m] \e[1m\e[92mSuccessfully updated Optixal'\''s vimrc!\e[0m\n'
