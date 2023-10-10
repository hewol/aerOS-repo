#!/bin/bash

. /etc/os-release

if [[ "$PRETTY_NAME" == "Arch Linux" ]]; then
  rm -rf *.tar.gz
  repo-add --remove packages-aeros.db.tar.gz *.pkg.tar.zst
else
  echo "This system is not Arch!"
fi
