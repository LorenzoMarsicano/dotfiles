#!/bin/sh
sed -i \
         -e 's/#d0d1d3/rgb(0%,0%,0%)/g' \
         -e 's/#2a313b/rgb(100%,100%,100%)/g' \
    -e 's/#2a313b/rgb(50%,0%,0%)/g' \
     -e 's/#a5aaae/rgb(0%,50%,0%)/g' \
     -e 's/#ebe9ec/rgb(50%,0%,50%)/g' \
     -e 's/#2a313b/rgb(0%,0%,50%)/g' \
	"$@"
