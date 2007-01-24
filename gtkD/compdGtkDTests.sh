#!/bin/sh
compd \
	demos/gtkD \
	demos/cairo/clock.d \
	-o GtkDTests \
	-c \
	-I src \
	-I demos \
	-c \
	-L .. \
	-l phobos \
	-L . -l gtkd \
	-l dl
