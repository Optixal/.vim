#!/bin/bash
# Installs powerline patched fonts

# Change terminal font to a patched powerline font
# such as Droid Sans Mono for Powerline Regular

git clone https://github.com/powerline/fonts /tmp/powerline-fonts
/tmp/powerline-fonts/install.sh
rm -rf /tmp/powerline-fonts
