#!/bin/bash

# 仮の Node.js(LTS) のインストール
curl -sL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs npm

# n のインストール
npm install -g n

# n で管理する Node.js(LTS) のインストール
n lts

# 仮の Node.js(LTS) のアンインストール
apt-get purge -y nodejs npm
apt-get autoremove

# Path の設定
echo "N_PREFIX=$HOME/.n" >> .profile
echo "export PATH=$N_PREFIX/bin:$PATH" >> .profile
source .profile
