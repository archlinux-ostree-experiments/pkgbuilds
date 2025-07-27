#!/usr/bin/bash

set -euo pipefail

echo "Install grub-blscfg..."
pwd
sudo pacman -U --noconfirm ../output/grub-blscfg-2*.pkg.tar.zst

if [ -f ../MOK.key ]; then
    cp -v ../MOK.key .
fi
