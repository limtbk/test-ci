#!/bin/bash

cd /etc
patch -p0 -N </home/asterisk/etc.patch
