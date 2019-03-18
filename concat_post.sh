#!/bin/bash

# concat post midterm things

# this script requires ghostscript
# sudo apt-get install ghostscript

notes=$(find ./notes/ | grep 'L1[6-9]*\.pdf' | sort)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=p0.pdf $notes

notes=$(find ./notes/ | grep 'L2[0-9]*\.pdf' | sort)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=p1.pdf $notes

notes=$(echo p0.pdf p1.pdf)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=post.pdf $notes

rm p0.pdf p1.pdf
