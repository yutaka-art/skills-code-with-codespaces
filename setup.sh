#!/bin/bash

# slコマンドのインストール
sudo apt-get update
sudo apt-get install -y sl

# /usr/gamesがPATHに含まれていなければ~/.bashrcに追記
if ! grep -q '/usr/games' ~/.bashrc; then
  echo 'export PATH="$PATH:/usr/games"' >> ~/.bashrc
fi
# 現在のシェルにも即時反映
export PATH="$PATH:/usr/games"