#!/bin/bash
/usr/local/bin/mmd syllabus.md
mv syllabus.html index.html
/usr/local/bin/mmd2tex syllabus.md
sed -i.bak 's/\\slash /\//g' syllabus.tex
sed -i.bak 's/\\chapter/\\chapter*/' syllabus.tex
sed -i.bak 's/\\section/\\section*/' syllabus.tex
sed -i.bak 's/\\subsection/\\subsection*/' syllabus.tex
/Library/TeX/texbin/xelatex syllabus.tex
