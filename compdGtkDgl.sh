#!/bin/sh
rm libgtkdgl.a
compd \
	srcgl/glgdk \
	srcgl/glgtk \
	srcgl/gtkglc \
	-I src:srcgl:~/dmd/src/phobos \
	-olib libgtkdgl
