#!/usr/bin/env sh

mkdir -p "thesis"
cd "thesis"

cp -f "../doc/fduthesis-template.tex"       .
cp -f "../source/fduthesis.dtx"             .
cp -f "../source/fduthesis-doc.dtx"         .
cp -f "../source/fduthesis-logo.dtx"        .
cp -f "../logo/pdf/fudan-emblem-a-black.pdf"     "./fudan-emblem.pdf"
cp -f "../logo/pdf/fudan-emblem-new-a-black.pdf" "./fudan-emblem-new.pdf"
cp -f "../logo/pdf/fudan-name-black.pdf"         "./fudan-name.pdf"

xetex "fduthesis.dtx" > /dev/null

rm *.cfg
rm *.dtx
rm *.ins
rm *.log
rm *.md

rm "fdudoc.cls"
rm "fdulogo-example.tex"
rm "fduthesis-cover.tex"

cd ..
