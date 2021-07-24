#!/usr/bin/env bash
set -e

. $IDF_PATH/export.sh

build_output=$(idf.py build)
echo "::set-output name=build_output::$build_output"
