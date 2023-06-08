#!/bin/bash -ex

version=$1
if [ -z $version ]; then
    version=HEAD
fi

latexdiff-vc -e utf8 -t CFONT --git --flatten --force -r $version main.tex
mv main-diff$version.tex main-diff.tex
latexmk
