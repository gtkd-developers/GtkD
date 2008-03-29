#!/bin/sh
rm libgstreamerd.a
compd \
	srcgstreamer/gstreamer \
	srcgstreamer/gstreamerc \
	-I src:~/dmd/src/phobos \
	-I src:./srcgstreamer \
	-I src:./src \
	-olib libgstreamerd

#!/bin/sh
compd \
	demos/gstreamer/gstreamer_helloworld.d \
	-o gstreamerhelloworld \
	-c \
	-I src \
	-I srcgstreamer \
	-c \
	-L .. \
	-l phobos \
	-L . -l gstreamerd \
	-L . -l gtkd \
	-l dl \
