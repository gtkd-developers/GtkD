#!/bin/sh
compd \
	demos/gtkD \
	-o GtkDTests \
	-c \
	-I src \
	-c \
	-L .. \
	-l phobos \
	-L . -l gtkd \
	-l dl
