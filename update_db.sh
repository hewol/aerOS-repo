#!/bin/sh

if command -v repo-add; then
    ( cd x86_64 && rm -rf ./*.tar.gz && repo-add packages-aeros.db.tar.gz ./*.pkg.tar.zst )
else
  printf "\e[0;31m==> ERROR:\e[0m\`repo-add\` wasn't found, you might not be running Arch Linux.\n"
  exit 1
fi
