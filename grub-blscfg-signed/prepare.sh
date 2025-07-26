#!/usr/bin/bash

set -euo pipefail

echo "Install grub-blscfg..."
pwd
sudo pacman -U --noconfirm ../output/grub-blscfg-2*.pkg.tar.zst

if [ -z "$SBSIGNKEY" ]; then
    echo "ERROR: MOK Key/\$SBSIGNKEY doesn't seem to contain a key!"
    exit 1
fi

echo "Write MOK.key..."
echo "$SBSIGNKEY" > MOK.key
