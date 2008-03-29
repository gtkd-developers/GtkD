#!/bin/sh
rm libgtkd.a
./compd \
	src/atk \
	src/cairo \
	src/gdk \
	src/gdkpixbuf \
	src/glib \
	src/gobject \
	src/gthread \
	src/gtk \
	src/gtkc \
	src/pango \
	srcsv/gsv \
	srcsv/gsvc \
	-I src:srcsv:~/dmd/src/phobos \
	-olib libgtkd
