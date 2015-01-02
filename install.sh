#!/usr/bin/env bash

CURDIR="$(pwd)"
export CURDIR

#安装zsh
echo "安装zsh..."
if hash yum >/dev/null 2>&1; then
  sudo yum -y install zsh
  exec $CURDIR/yum.sh
elif hash apt-get >/dev/null 2>&1; then
  sudo apt-get -y install zsh
  exec $CURDIR/apt-get.sh
fi

if [ `uname` == 'Darwin*' ]; then
  if hash brew >/dev/null 2>&1; then
    echo "\033[0;34m请先安装brew再运行这个脚本, \033[0;32mhttp://brew.sh/\033[0m"
    exit
  else
    brew install zsh
    exec $CURDIR/brew.sh
  fi
fi
