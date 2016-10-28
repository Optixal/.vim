#!/bin/bash
# Installs powerline patched fonts
git clone https://github.com/powerline/fonts tmp/powerline-fonts
/tmp/powerline-fonts/install.sh
rm -rf /tmp/powerline-fonts
