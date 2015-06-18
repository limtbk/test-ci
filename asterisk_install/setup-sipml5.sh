#!/bin/bash

svn checkout http://sipml5.googlecode.com/svn/trunk/ /var/www/html/myphone
chown -R asterisk:asterisk /var/www/html/myphone/
