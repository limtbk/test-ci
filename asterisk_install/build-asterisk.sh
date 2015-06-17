#!/bin/bash

cd /usr/src/
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13.4.0.tar.gz
tar -xzvf asterisk-13.4.0.tar.gz
cd /usr/src/asterisk-13.4.0
./configure -with-crypto -with-ssl -with-srtp=/usr/local/lib
contrib/scripts/get_mp3_source.sh
make menuselect.makeopts
menuselect/menuselect --enable format_mp3 --enable res_config_mysql --enable app_mysql --enable app_saycounted --enable cdr_mysql --enable EXTRA-SOUNDS-EN-GSM
make
make install
make samples
make config
chkconfig asterisk on