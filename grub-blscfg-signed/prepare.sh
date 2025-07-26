#!/usr/bin/bash

set -euxo pipefail

sudo pacman -U --noconfirm ../output/grub-blscfg-signed*.pkg.tar.zst

echo "$SBSIGNKEY" > MOK.key
