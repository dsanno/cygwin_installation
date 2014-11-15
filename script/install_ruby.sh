#! /usr/bin/bash

# install necessary packages.
apt-cyg install git gcc-core  gcc-g++ make zlib-devel curl autoconf  libiconv libiconv-devel rsync patch unzip openssh openssl-devel libxml2-devel libxslt-devel  libffi-devel libgdbm-devel

install rbenv and ruby-bilder
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
eval "$(rbenv init -)"

rbenv install 2.1.0-rc1
rbenv global 2.1.0-rc1
rbenv rehash
