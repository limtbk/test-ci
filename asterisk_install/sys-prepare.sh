#!/bin/bash

yum -y update
yum -y install gcc-c++ make gnutls-devel kernel-devel libxml2-devel ncurses-devel subversion doxygen texinfo curl-devel net-snmp-devel neon-devel
yum -y install uuid-devel libuuid-devel sqlite-devel sqlite git speex-devel gsm-devel
yum -y install wget patch httpd zip unzip mc systemctl

# systemctl start httpd.service

chkconfig httpd on

# iptables -I INPUT -p tcp -m tcp --dport 80 -j ACCEPT
# /etc/init.d/iptables save
