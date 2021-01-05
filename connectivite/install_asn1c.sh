#!/bin/sh

sudo apt-get update
sudo apt-get install automake autoconf libtool bison flex
git clone https://github.com/vlm/asn1c
cd asn1c
test -f configure || autoreconf -iv
./configure
sudo make
sudo make install
