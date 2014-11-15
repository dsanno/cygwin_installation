#! /usr/bin/bash

# see https://gist.github.com/DQNEO/67442bbe0c60f3220595

apt-cyg install libffi6 libffi-devel pkg-config
export PKG_CONFIG_PATH="/lib/pkgconfig"
gem install ffi

# symbol links for gcc and g++
ln -s gcc.exe /usr/bin/gcc48.exe
ln -s g++.exe /usr/bin/g++48.exe

# get gecode 3.7.3
wget "http://pkgs.fedoraproject.org/repo/pkgs/gecode/gecode-3.7.3.tar.gz/7a5cb9945e0bb48f222992f2106130ac/gecode-3.7.3.tar.gz"
tar xvfz gecode-3.7.3.tar.gz
cd gecode-3.7.3

# compile
./configure CC="gcc48"  --disable-doc-dot --disable-doc-search --disable-doc-tagfile --disable-doc-chm --disable-doc-docset --disable-qt --disable-examples --disable-flatzinc
make
make install
cp libgecode* /lib/
cp -r gecode /usr/include/

USE_SYSTEM_GECODE=1 gem install berkshelf
