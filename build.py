#!/usr/bin/env python

import subprocess, os
os.chdir(os.path.dirname(__file__))

def removeIfExisting(filename):
    try:
        os.remove(filename)
    except OSError:
        pass


def removeTemporaryFiles(basename):
    removeIfExisting(basename + '.acn')
    removeIfExisting(basename + '.aux')
    removeIfExisting(basename + '.bbl')
    removeIfExisting(basename + '.blg')
    removeIfExisting(basename + '.glo')
    removeIfExisting(basename + '.lof')
    removeIfExisting(basename + '.log')
    removeIfExisting(basename + '.toc')
    removeIfExisting(basename + '.acr')
    removeIfExisting(basename + '.alg')
    removeIfExisting(basename + '.glg')
    removeIfExisting(basename + '.gls')
    removeIfExisting(basename + '.ist')
    removeIfExisting(basename + '.out')
    removeIfExisting(basename + '.d')

def removeAllTemporaryFiles():
    for base in ['fosa_main', 'fosa_main_ti89', 'fosa_main_tinspire', 'fosa_main_tiboth', 'fosa', 'rechenregeln', 'kurvendiskussion', 'integrationsregeln', 'taylorreihen', 'folgen', 'ableitungsregeln', 'abl_int_spez_funk', 'darstellung', 'fourierreihen', 'integral', 'kurven', 'about', 'reihen', 'vektorgeometrie']:
       removeTemporaryFiles(base)

for file in ['fosa_main', 'fosa_main_ti89', 'fosa_main_tinspire', 'fosa_main_tiboth']:
    removeAllTemporaryFiles()

    subprocess.check_call(['pdflatex', '-interaction', 'batchmode', '-halt-on-error', file])
    for i in range(1, 2):
        subprocess.check_call(['pdflatex', '-halt-on-error', file])

    removeAllTemporaryFiles()
