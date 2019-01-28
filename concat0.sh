#!/bin/bash

# this script requires ghostscript
# sudo apt-get install ghostscript

notes=$(find ./notes/ | grep 'L0[0-9]*\.pdf' | sort)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=m0.pdf $notes
