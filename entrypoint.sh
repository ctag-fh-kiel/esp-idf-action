#!/usr/bin/env bash
set -e

pushd .
cd $IDF_PATH
git remote add ctag https://github.com/ctag-fh-kiel/esp-idf.git
git fetch ctag
git checkout ctag/idf4_1-strampler
git submodule update
popd

. $IDF_PATH/export.sh

idf.py build

