#!/bin/sh
compd \
	demos/gl/ShapesGL.d \
	demos/gl/TrackBall.d \
	-o ShapesGL \
	-c \
	-I src \
	-c \
	-L .. \
	-l phobos \
	-L . -l duit -l duitgl -l GLU -l GL\
	-l dl
