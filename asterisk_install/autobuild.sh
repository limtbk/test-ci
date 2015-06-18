#!/bin/bash

sudo ./sys-prepare.sh
sudo ./build-srtp.sh
sudo ./build-jansson.sh
sudo ./build-asterisk.sh
sudo ./set-certificates.sh
sudo ./setup-configs.sh
sudo ./setup-sipml5.sh
