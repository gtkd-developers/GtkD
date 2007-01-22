#!/bin/sh
rm libgtkdgl.a
compd \
	srcgl/glgdk \
	srcgl/glgtk \
	srcgl/lib \
	-I src:srcgl:~/dmd/src/phobos \
	-olib libgtkdgl
