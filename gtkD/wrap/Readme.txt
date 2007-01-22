This contains information and code to generate the GtkD source code.
This is not for GUI App writers wanting to use gtkD. Save yourself some
misery and get the archived install files at dsource.org.

Prerequesits:
-------------

htod.exe from http://digitalmars.com/d needs to be in the
GtkD/wrap/utils directory.
wine needs to be installed and in $PATH
cairo source must be unzipped somewhere on your system.
gtkglext source must be unzipped somewhere on your system.
gtk documentation tarballs must be in some directory.

Pointing to where everything is:
-------------------------------


wrap/Makefile #has location of gtk docs tarballs, cairo, gtkglext

wrap/APIlookup.txt #has html-source and output directories
                   #(search for "inputRoot" and "outputRoot")

wrap/utils/GtkWrapper #has build filename & path, output root directory
                      #(search for "buildDir", "buildFile", "srcOut")

wrap/utils/HTODConvert #where to find wine and paths...
                       # constants at the start of the file



Build & run on linux:
--------------------

cd ${gtkD}/wrap
make prephtml
make default
cd ${gtkD}
wrap/wrapit

... and that should do it. Go run ./makeAll.sh and see what works.




When building from leds the following commands are run...

dmd wrap/utils/HTODConvert.d wrap/utils/WrapperIF.d wrap/utils/funct.d wrap/utils/DefReader.d wrap/utils/GtkWrapper.d wrap/utils/HtmlStrip.d wrap/utils/convparms.d wrap/utils/DuitClass.d  \
    -odobj  -op  -Iwrap:/home/ruimt/dmd/src/phobos:/home/ruimt/devel/D/Duit/trunk/src   -c  -I/home/ruimt/dmd/src/phobos
gcc  obj/wrap/utils/HTODConvert.o obj/wrap/utils/WrapperIF.o obj/wrap/utils/funct.o obj/wrap/utils/DefReader.o obj/wrap/utils/GtkWrapper.o obj/wrap/utils/HtmlStrip.o obj/wrap/utils/convparms.o \
    obj/wrap/utils/DuitClass.o -o ./gtkwrap -m32     -ldl -lpthread -lstdc++ -lphobos -lpthread -lm   -m32 -lphobos -lpthread -lm



