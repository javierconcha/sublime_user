#!/bin/bash

/usr/texbin/pdflatex -draftmode $1.tex;
/usr/texbin/bibtex $1.aux;
# /usr/texbin/biber $1;
# /usr/texbin/makeindex -s $1.ist -t $1.glg -o $1.gls $1.glo
# /usr/texbin/makeglossaries $1.acn;
/usr/texbin/pdflatex -draftmode $1.tex;
/usr/texbin/pdflatex $1.tex;
open $1.pdf;