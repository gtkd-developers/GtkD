#!/bin/sh

rm -fr release/*

mkdir -p release/duit/src
mkdir release/duit/srcgl
mkdir release/duit/demos
mkdir release/duit/wrap


cp `which compd` release/duit/compd
cp ../../Dool/compd.exe duit/compd.exe

cp -R src/* release/duit/src
cp -R srcgl/* release/duit/srcgl
cp -R demos/* release/duit/demos
cp -R wrap/* release/duit/wrap

cp compdDuit.sh compdDuitTests.sh release/duit
cp compdDuit.bat compdDuitTests.bat release/duit

cp compdDuitgl.sh compdShapesGL.sh compdSimpleGL.sh release/duit
cp compdDuitgl.bat compdShapesGL.bat compdSimpleGL.bat release/duit

cp makeAll.sh release/duit
cp makeAll.bat release/duit

cd release
tar -cf ../duit.tar duit
gzip ../duit.tar

zip -qr ../duit.zip duit

cd ..
