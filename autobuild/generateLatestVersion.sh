#!/bin/bash
currpwd=$(pwd)
tmpdir=tmp
cd $tmpdir
git pull
hash=$(git log | head -n1 | sed -e 's/ /\n/g' | tail -n1)

echo latest pdf hash:  $(cat $currpwd/latesthash)
echo new hash: $hash

if [ x$(cat $currpwd/latesthash) = x$hash ]; then
 echo already latest version
else
 make
 hash=$(git log | head -n1 | sed -e 's/ /\n/g' | tail -n1)
 cp fosa_main.pdf $currpwd/build/fosa_$hash.pdf
 cp fosa_main.pdf $currpwd/build/fosa_latest.pdf
 cp fosa_main_ti89.pdf $currpwd/build/fosa_$hash.pdf
 cp fosa_main_ti89.pdf $currpwd/build/fosa_latest.pdf
 cp fosa_main_tinspire.pdf $currpwd/build/fosa_$hash.pdf
 cp fosa_main_tinspire.pdf $currpwd/build/fosa_latest.pdf
 cp fosa_main_ti_both.pdf $currpwd/build/fosa_$hash.pdf
 cp fosa_main_ti_both.pdf $currpwd/build/fosa_latest.pdf
 cd $currpwd
 echo $hash > latesthash
fi
#rm -Rf $tmpdir
