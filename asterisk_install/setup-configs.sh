#!/bin/bash

BASE_DIR=`dirname $0`
pushd $BASE_DIR >/dev/null
PATCH_FILE=`pwd`/etc.patch
popd >/dev/null
cd /
patch -p0 -N <$PATCH_FILE
