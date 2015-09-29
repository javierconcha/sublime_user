#!/bin/bash

/usr/texbin/pdflatex $1.tex;
/usr/texbin/bibtex $1.aux;
/usr/texbin/makeglossaries $1.acn;
/usr/texbin/pdflatex $1.tex;
/usr/texbin/pdflatex $1.tex;
open $1.pdf;