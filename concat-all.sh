#!/bin/bash

# this script requires ghostscript
# sudo apt-get install ghostscript

notes=$(echo m0.pdf m1.pdf)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=midterm.pdf $notes
