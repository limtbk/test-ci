#!/bin/bash

BASE_DIR=`dirname $0`
PATCH_FILE=$BASE_DIR/etc.patch
cd /etc
patch -p0 -N <$PATCH_FILE
