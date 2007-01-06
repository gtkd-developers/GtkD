#!/bin/sh

# make duit libs and test

./compdDuit.sh
./compdDuitTests.sh

./compdDuitgl.sh
./compdSimpleGL.sh
./compdShapesGL.sh

# you can now run
#./DuitTests
#./SimpleGL
#./ShapesGL


