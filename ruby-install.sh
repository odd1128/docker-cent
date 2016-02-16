#!/bin/bash 

#必要パッケージのインストール
yum -y install gcc make openssl-devel libffi-devel readline-devel

#gitをインストール
yum -y install git

#ディレクトリの移動
cd /usr/local

#rbenvのインストール
git clone git://github.com/sstephenson/rbenv.git rbenv

#ディレクトリの作成
mkdir rbenv/shims rbenv/versions rbenv/plugins

#ディレクトリの移動
cd rbenv/plugins

#rbenv-buildのインストール
git clone git://github.com/sstephenson/ruby-build.git ruby-build

#環境変数の設定ファイルの作成
touch /etc/profile.d/rbenv.sh

##以下の三行を記載
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh

#設定の反映
source /etc/profile.d/rbenv.sh

#ruby2.2.2のインストール
rbenv install 2.2.2

#ruby2.2.2をデフォルトバージョンとして指定
rbenv global 2.2.2

#rubyのバージョン確認
ruby -v

#rakeのインストール
gem install rake

#bundlerのインストール
gem install bundler
