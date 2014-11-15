#! /usr/bin/bash

# mirror for apt-syg
APT_SYG_MIRROR="ftp://ftp.iij.ad.jp/pub/cygwin/"

# get apt-cyg and locate
wget https://raw.github.com/kou1okada/apt-cyg/master/apt-cyg
mv apt-cyg /usr/local/bin/apt-cyg
chmod 0755 /usr/local/bin/apt-cyg

# set mirror
apt-cyg -m $APT_SYG_MIRROR update
