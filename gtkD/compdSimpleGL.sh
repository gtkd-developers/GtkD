#!/bin/sh
compd \
	demos/gl/SimpleGL.d \
	-o SimpleGL \
	-c \
	-I src \
	-I srcgl \
	-c \
	-L .. \
	-l phobos \
	-L . -l gtkd -l gtkdgl -l GLU -l GL\
	-l dl
