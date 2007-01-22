This contains information and code to generate the GtkD source code.

Prerequesits:

htod.exe from http://digitalmars.com/d needs to be in the
GtkD/wrap/utils directory.
wine needs to be installed and in $PATH
$GtkD/../gtk/api must hold the html documentation of gtk & friends (need
		to document what these are specifically)

Build & run on linux:

cd $GtkD/wrap
make default
cd $GtkD
wrap/wrapit






When building from leds the following commands are run...

dmd wrap/utils/HTODConvert.d wrap/utils/WrapperIF.d wrap/utils/funct.d wrap/utils/DefReader.d wrap/utils/GtkWrapper.d wrap/utils/HtmlStrip.d wrap/utils/convparms.d wrap/utils/DuitClass.d  \
    -odobj  -op  -Iwrap:/home/ruimt/dmd/src/phobos:/home/ruimt/devel/D/Duit/trunk/src   -c  -I/home/ruimt/dmd/src/phobos
gcc  obj/wrap/utils/HTODConvert.o obj/wrap/utils/WrapperIF.o obj/wrap/utils/funct.o obj/wrap/utils/DefReader.o obj/wrap/utils/GtkWrapper.o obj/wrap/utils/HtmlStrip.o obj/wrap/utils/convparms.o \
    obj/wrap/utils/DuitClass.o -o ./gtkwrap -m32     -ldl -lpthread -lstdc++ -lphobos -lpthread -lm   -m32 -lphobos -lpthread -lm



