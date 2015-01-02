#!/usr/bin/env bash

CURDIR="$(pwd)"
export CURDIR

#安装zsh
echo "安装zsh..."
if hash yum >/dev/null 2>&1; then
  sudo yum -y install zsh
  exec $CURDIR/yum.sh
fi

