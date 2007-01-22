#!/bin/sh
compd \
	demos/gtkD \
	-o GtkDTests \
	-c \
	-I src \
	-I demos \
	-c \
	-L .. \
	-l phobos \
	-L . -l gtkd \
	-l dl
