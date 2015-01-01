#!/usr/bin/env bash

#安装vim
echo "\n\033[0;34m安装vim...\033[0m"
yum -y install vim
echo "\033[0;34安装vim的配置...\033[0m"
git clone https://github.com/yujunyong/vimconfig.git ~/.vimconfig
~/.vimconfig/install.sh

#安装zsh
echo "\n\033[0;34m安装zsh...\033[0m"
yum -y install zsh
echo "\n\033[0;34m安装curl，用来安装oh-my-zsh\033[0m"
yum -y install curl
echo "\n\033[0;34m安装zsh的配置oh-my-zsh...\033[0m"
curl -L http://install.ohmyz.sh | sh

#安装tmux
echo "\n\033[0;34m安装tmux...\033[0m"
yum -y install tmux

#配置已经安装好的软件
echo "\n\033[0;34m软件已经安装完成，开始配置已经安装好的软件...\033[0m"
source config.sh
