#!/bin/bash

# this script requires ghostscript
# sudo apt-get install ghostscript

notes=$(find ./notes/ | grep 'L1[0-5]*\.pdf' | sort)
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=m1.pdf $notes
