#!/bin/sh

rm -fr release/*

mkdir release
mkdir release/duit
mkdir release/duit/src
mkdir release/duit/srcgl
mkdir release/duit/demos
mkdir release/duit/wrap
mkdir release/duit/images


cp `which compd` release/duit/compd
cp compd.exe duit/compd.exe

cp -R src/* release/duit/src
cp -R srcgl/* release/duit/srcgl
cp -R demos/* release/duit/demos
cp -R wrap/* release/duit/wrap
cp -R images/* release/duit/images

cp compdDuit.sh compdDuitTests.sh release/duit
cp compdDuit.bat compdDuitTests.bat release/duit

cp compdDuitgl.sh compdShapesGL.sh compdSimpleGL.sh release/duit
cp compdDuitgl.bat compdShapesGL.bat compdSimpleGL.bat release/duit

cp makeAll.sh release/duit
cp makeAll.bat release/duit

cd release
# how is this done?
rm -fr .svn
rm -fr */.svn
rm -fr */*/.svn
rm -fr */*/*/.svn
rm -fr */*/*/*/.svn
rm -fr */*/*/*/*/*.svn
rm -fr */*/*/*/*/*/*.svn

tar -cf ../duit.tar duit
gzip ../duit.tar

zip  -qr ../duit.zip duit -x .svn

cd ..

mv duit.tar.gz duit.zip ../downloads

rm -fr release

