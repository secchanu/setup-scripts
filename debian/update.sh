#!/bin/bash

# アップデート
apt-get update -qq
apt-get upgrade -y

# 不要なファイルの削除
apt-get autoremove
apt-get clean
