#!/bin/bash

# バージョン指定
VERSION='3.10.11'

# ダウンロード
wget "https://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tgz"
tar -xzvf "Python-${VERSION}.tgz"

# インストール
cd "Python-${VERSION}"
./configure --enable-optimizations
make altinstall
cd

# Path の設定
rm /usr/bin/python
ln -s "/usr/local/bin/python${VERSION%.*}" /usr/bin/python
