#!/bin/sh
compd \
	demos/duit \
	-o DuitTests \
	-c \
	-I src \
	-c \
	-L .. \
	-l phobos \
	-L . -l duit \
	-l dl
