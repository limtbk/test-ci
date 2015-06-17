#!/bin/bash

cd /usr/src/
wget http://srtp.sourceforge.net/srtp-1.4.2.tgz
tar zxvf srtp-1.4.2.tgz
cd srtp
autoconf
./configure CFLAGS=-fPIC
make
make install
cp /usr/local/lib/libsrtp.a /lib
cd ..
