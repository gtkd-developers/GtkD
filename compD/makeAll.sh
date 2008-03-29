#!/bin/sh

# make gtkD libs and test

./compdGtkD.sh
./compdGtkDTests.sh

./compdGtkDgl.sh
./compdSimpleGL.sh
./compdShapesGL.sh

# you can now run
#./GtkDTests
#./SimpleGL
#./ShapesGL


