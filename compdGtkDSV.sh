#!/bin/sh
rm libgtkdsv.a
compd \
	srcsv/gsv \
	srcsv/gsvc \
	-I src:srcsv:~/dmd/src/phobos \
	-olib libgtkdsv
