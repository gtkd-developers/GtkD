#!/bin/sh
rm libduitgl.a
compd \
	srcgl/glgdk \
	srcgl/glgtk \
	srcgl/lib \
	-I src:srcgl:~/dmd/src/phobos \
	-olib libduitgl
