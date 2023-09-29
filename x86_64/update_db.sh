#!/bin/sh

[ ! -f "/usr/bin/repo-add" ] && echo "repo-add binary does not exists ... exiting."
repo-add --remove packages-aeros.db.tar.gz *.pkg.tar.zst
