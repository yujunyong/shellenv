#!/bin/sh

hash brew > /dev/null 2>&1 || {
  echo "\033[0;34m请先安装brew再运行这个脚本, \033[0;32mhttp://brew.sh/\033[0m"
  exit
}

echo "\n\033[0;34m安装git(有很多的开源项目需要使用git)...\033[0m"
brew install git

echo "\n\033[0;34m安装vim...\033[0m"
brew install vim
echo "\033[0;34安装vim的配置...\033[0m"
git clone https://github.com/yujunyong/vimconfig.git ~/.vimconfig
~/.vimconfig/install.sh

echo "\n\033[0;34m安装zsh...\033[0m"
brew install zsh
echo "\n\033[0;34m安装curl，用来安装oh-my-zsh\033[0m"
brew install curl
echo "\n\033[0;34m安装zsh的配置oh-my-zsh...\033[0m"
curl -L http://install.ohmyz.sh | sh

echo "\n\033[0;34m安装tmux...\033[0m"
brew install tmux

echo "\n\033[0;34m配置安装好的软件...\033[0m"
source config.sh
