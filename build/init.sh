#!/bin/bash
rm -Rf tmp
rm -Rf build
rm latesthash
mkdir tmp
mkdir build
git clone https://github.com/daniw/fosamath tmp
touch latesthash
