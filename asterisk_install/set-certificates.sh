#!/bin/bash

hostname 192.168.56.2
mkdir /etc/asterisk/keys
cd /usr/src/asterisk-13.4.0/contrib/scripts
./ast_tls_cert -C 192.168.56.2 -O "Conectica" -d /etc/asterisk/keys
./ast_tls_cert -m client -c /etc/asterisk/keys/ca.crt -k /etc/asterisk/keys/ca.key -C phone1.192.168.56.2 -O "Conectica" -d /etc/asterisk/keys -o phone1
