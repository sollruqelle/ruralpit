#!/usr/bin/env bash
set -e
REPO="sollruqelle/ruralpit"
TAG="gentle-forest-cosmic-badger"
LIB="nested-cabinet.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
