#!/bin/sh
del duit.lib
compd 	src/atk 	src/cairoLib 	src/gdk 	src/glib 	src/gobject 	src/gthread 	src/gtk 	src/lib 	src/pango 	-I src;~/dmd/src/phobos 	-olib duit