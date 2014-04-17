#/bin/bash
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
 pdflatex fosa_main
 pdflatex fosa_main
 pdflatex fosa_main
 pdflatex fosa_main
 pdflatex fosa_main

 pdflatex fosa_main_ti89
 pdflatex fosa_main_ti89
 pdflatex fosa_main_ti89
 pdflatex fosa_main_ti89
 pdflatex fosa_main_ti89
 pdflatex fosa_main_ti89

 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire
 pdflatex fosa_main_tinspire


 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth
 pdflatex fosa_main_tiboth

 hash=$(git log | head -n1 | sed -e 's/ /\n/g' | tail -n1)
 cp fosa_main.pdf $currpwd/build/fosa_$hash.pdf
 cp fosa_main.pdf $currpwd/build/fosa_latest.pdf
 cp fosa_main_ti89.pdf $currpwd/build/ti89/fosa_$hash.pdf
 cp fosa_main_ti89.pdf $currpwd/build/ti89/fosa_latest.pdf
 cp fosa_main_tinspire.pdf $currpwd/build/tinspire/fosa_$hash.pdf
 cp fosa_main_tinspire.pdf $currpwd/build/tinspire/fosa_latest.pdf
 cp fosa_main_tiboth.pdf $currpwd/build/tiboth/fosa_$hash.pdf
 cp fosa_main_tiboth.pdf $currpwd/build/tiboth/fosa_latest.pdf
 cd $currpwd
 echo $hash > latesthash
fi
#rm -Rf $tmpdir

