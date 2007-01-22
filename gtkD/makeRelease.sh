#!/bin/sh

rm -fr release/*

mkdir release
mkdir release/gtkD
mkdir release/gtkD/src
mkdir release/gtkD/srcgl
mkdir release/gtkD/demos
mkdir release/gtkD/wrap
mkdir release/gtkD/images


#cp `which compd` release/gtkD/compd
#cp compd.exe release/gtkD/compd.exe

cp -R src/* release/gtkD/src
cp -R srcgl/* release/gtkD/srcgl
cp -R demos/* release/gtkD/demos
cp -R wrap/* release/gtkD/wrap
cp -R images/* release/gtkD/images

cp setup release/gtkD
cp setup.exe release/gtkD


#cp compdGtkD.sh compdGtkDTests.sh release/gtkD
#cp compdGtkD.bat compdGtkDTests.bat release/gtkD

#cp compdGtkDgl.sh compdShapesGL.sh compdSimpleGL.sh release/gtkD
#cp compdGtkDgl.bat compdShapesGL.bat compdSimpleGL.bat release/gtkD

#cp makeAll.sh release/gtkD
#cp makeAll.bat release/gtkD

cd release
# how is this done?
# th: Export the svn; then make your release...
rm -fr .svn
rm -fr */.svn
rm -fr */*/.svn
rm -fr */*/*/.svn
rm -fr */*/*/*/.svn
rm -fr */*/*/*/*/.svn
rm -fr */*/*/*/*/*/.svn

tar -cf ../gtkD.tar gtkD
gzip ../gtkD.tar

zip  -qr ../gtkD.zip gtkD -x .svn

cd ..

mv gtkD.tar.gz gtkD.zip ../downloads

#rm -fr release

