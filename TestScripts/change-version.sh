#!/usr/bin/env bash

# Use this script to switch back to the previous Crypto++ version before
# building the docs. Before running the script, copy it to the root
# directory. After running this script, you can 'make docs'

sed 's|Library 8.4 API|Library 8.3 API|g' cryptlib.h > cryptlib.h.new
mv cryptlib.h.new cryptlib.h

sed 's|= 8.4|= 8.3|g' Doxyfile > Doxyfile.new
mv Doxyfile.new Doxyfile

sed 's|CRYPTOPP_MINOR 4|CRYPTOPP_MINOR 3|g' config_ver.h > config_ver.h.new
mv config_ver.h.new config_ver.h

sed 's|CRYPTOPP_VERSION 840|CRYPTOPP_VERSION 830|g' config_ver.h > config_ver.h.new
mv config_ver.h.new config_ver.h
