#!/bin/sh

#配置vim
if [-f ~/.vimconfig/install.sh ]; then
  ~/.vimconfig/install.sh
fi

#配置zsh
if [ -n `which zsh` ]; then
  echo "\033[0;34m安装~/.zshrc(主要包含对oh-my-zsh的配置和一些必要的配置)..\033[0m"
  echo "\033[0;34m备件原来的~/.zshrc到~/.zshrc.bak\033[0m"
  mv ~/.zshrc ~/.zshrc.bak

  echo "  \033[0;34m使用zshrc配置文件模板生成~/.zshrc文件\033[0m"
  cp zshrc.template  ~/.zshrc
if

#配置tmux
if [ -n `which tmux` ]; then
  echo "\033[0;34m安装tmux的配置...\033[0m"
  echo "  \033[0;34m查找是否已经存在tmux配置文件...\033[0m"
  if [ -f ~/.tmux.conf ] || [ -h ~/.tmux.conf ]; then
    echo "\033[0;33m发现已存在'~/.tmux.conf', \033[0;32m将它备件到~/.tmux.conf.bak\033[0m";
    mv ~/.tmux.conf ~/.tmux.conf.bak
  fi

  echo "  \033[0;34m使用tmux配置文件模板生成~/.tmux.conf文件\033[0m"
  cp tmux.conf.template ~/.tmux.conf
fi

#配置完成
echo "\033[0;34m安装完成\033[0m"
