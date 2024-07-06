#!/bin/sh

if command -v repo-add; then
  for arch in x86_64; do
    ( cd $arch && rm -rf ./*.tar.gz && repo-add --remove packages-aeros.db.tar.gz ./*.pkg.tar.zst )
  done
else
  printf "\e[0;31m==> ERROR:\e[0m\`repo-add\` wasn't found, you might not be running Arch Linux"
  exit 1
fi
