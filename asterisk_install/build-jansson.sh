#!/bin/bash

cd /usr/src/
wget http://www.digip.org/jansson/releases/jansson-2.5.tar.gz
tar zxvf jansson-2.5.tar.gz
cd /usr/src/jansson-2.5
./configure -prefix=/usr/
make
make install
cd ..
