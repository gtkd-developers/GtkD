#!/bin/sh
compd \
	demos/gl/SimpleGL.d \
	-o SimpleGL \
	-c \
	-I src \
	-c \
	-L .. \
	-l phobos \
	-L . -l duit -l duitgl -l GLU -l GL\
	-l dl
