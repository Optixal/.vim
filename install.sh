#!/bin/bash

ln -s -f vimrc ~/.vimrc
git submodule update --init

# Installs powerline patched fonts
# Change terminal font to a patched powerline font
# such as Droid Sans Mono for Powerline Regular
git clone https://github.com/powerline/fonts /tmp/powerline-fonts
/tmp/powerline-fonts/install.sh
rm -rf /tmp/powerline-fonts

echo -e '\n\e[32m[\e[1m\e[92m+\e[0m\e[32m] \e[1m\e[92mSuccessfully installed Optixal'\''s vimrc!\e[0m\n'
