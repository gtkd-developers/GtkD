#makeAll.sh
SHELL=/bin/sh
prefix=/usr/local

OS=$(shell uname || uname -s)
ARCH=$(shell arch || uname -m)

# make gtkD libs and test
all: libs test

ifndef DC
    ifneq ($(strip $(shell which dmd 2>/dev/null)),)
        DC=dmd
    else ifneq ($(strip $(shell which ldc 2>/dev/null)),)
        DC=ldc
    else
        DC=gdc
    endif
endif

ifeq ("$(DC)","dmd")
    DCFLAGS=-O
    LINKERFLAG=-L
    output=-of$@
else ifeq ("$(DC)","ldc")
    DCFLAGS=-O
    LINKERFLAG=-L
    output=-of$@
else
    DCFLAGS=-O2
    LINKERFLAG=-Xlinker 
    output=-o $@
endif

ifeq ("$(OS)","Linux")
    LDFLAGS+=$(LINKERFLAG)-ldl
endif

ifeq ("$(ARCH)", "x86_64") 
    DCFLAGS+=-m64
	LDFLAGS+=-m64
endif 


AR=ar
RANLIB=ranlib

define make-lib
    $(AR) rcs $@ $^
    $(RANLIB) $@
endef


#######################################################################

LIBNAME_GTKD = libgtkd.a
SOURCES_GTKD = $(shell find \
        src/atk \
        src/cairo \
        src/gdk \
        src/gdkpixbuf \
        src/gio \
        src/glade \
        src/glib \
        src/gobject \
        src/gthread \
        src/gtk \
        src/gtkc \
        src/pango \
        -name '*.d' )
OBJECTS_GTKD = $(shell echo $(SOURCES_GTKD) | sed -e 's/\.d/\.o/g')

LIBNAME_GTKDGL = libgtkdgl.a
SOURCES_GTKDGL = $(shell find \
        srcgl/glgdk \
        srcgl/glgtk \
        srcgl/gtkglc \
        -name '*.d' )
OBJECTS_GTKDGL = $(shell echo $(SOURCES_GTKDGL) | sed -e 's/\.d/\.o/g')

LIBNAME_GTKDSV = libgtkdsv.a
SOURCES_GTKDSV = $(shell find \
        srcsv/gsv \
        srcsv/gsvc \
        -name '*.d' )
OBJECTS_GTKDSV = $(shell echo $(SOURCES_GTKDSV) | sed -e 's/\.d/\.o/g')

LIBNAME_GTKDGDA = libgtkdgda.a
SOURCES_GTKDGDA = $(shell find \
        srcgda/gda \
        srcgda/gdac \
        -name '*.d' )
OBJECTS_GTKDGDA = $(shell echo $(SOURCES_GTKDGDA) | sed -e 's/\.d/\.o/g')

LIBNAME_GSTREAMERD = libgstreamerd.a
SOURCES_GSTREAMERD = $(shell find \
        srcgstreamer/gstinterfaces \
        srcgstreamer/gstreamer \
        srcgstreamer/gstreamerc \
        -name '*.d' )
OBJECTS_GSTREAMERD = $(shell echo $(SOURCES_GSTREAMERD) | sed -e 's/\.d/\.o/g')

#######################################################################

BINNAME_DEMO = TestWindow
SOURCES_DEMO = $(shell find \
        demos/gtkD/TestWindow \
        -name '*.d' )
OBJECTS_DEMO = $(shell echo $(SOURCES_DEMO) | sed -e 's/\.d/\.o/g') 

# you can now run
#./GtkDTests
#./SimpleGL
#./ShapesGL

#######################################################################

# -Isrc

ifeq ("$(OS)","Darwin")
    libs: gtkd
else
    libs: gtkd gtkdgl sv
endif

gtkd:      $(LIBNAME_GTKD)
gtkdgl:    $(LIBNAME_GTKDGL)
sv:        $(LIBNAME_GTKDSV)
gda:       $(LIBNAME_GTKDGDA)
gstreamer: $(LIBNAME_GSTREAMERD)

$(LIBNAME_GTKD): IMPORTS=-Isrc
$(LIBNAME_GTKD): $(OBJECTS_GTKD)
	$(make-lib)

$(LIBNAME_GTKDGL): IMPORTS=-Isrc -Isrcgl
$(LIBNAME_GTKDGL): $(LIBNAME_GTKD) $(OBJECTS_GTKDGL)
	$(make-lib)

$(LIBNAME_GTKDSV): IMPORTS=-Isrc -Isrcsv
$(LIBNAME_GTKDSV): $(LIBNAME_GTKD) $(OBJECTS_GTKDSV)
	$(make-lib)

$(LIBNAME_GTKDGDA): IMPORTS=-Isrc -Isrcgda
$(LIBNAME_GTKDGDA): $(LIBNAME_GTKD) $(OBJECTS_GTKDGDA)
	$(make-lib)

$(LIBNAME_GSTREAMERD): IMPORTS=-Isrc -Isrcgstreamer
$(LIBNAME_GSTREAMERD): $(LIBNAME_GTKD) $(OBJECTS_GSTREAMERD)
	$(make-lib)

#######################################################################

# -Idemos

test: $(BINNAME_DEMO)

$(BINNAME_DEMO): IMPORTS=-Isrc -Idemos/gtkD/TestWindow
$(BINNAME_DEMO): $(OBJECTS_DEMO) $(LIBNAME_GTKD)
	$(DC) $(OBJECTS_DEMO) $(output) $(LDFLAGS) $(LINKERFLAG)-L. $(LINKERFLAG)-lgtkd

#######################################################################

%.o : %.d
	$(DC) $(DCFLAGS) $(IMPORTS) -c $< $(output)

#######################################################################

ifeq ("$(OS)","Darwin")
    install: install-gtkd
else
    install: install-gtkd install-gtkdgl install-gtkdsv
endif

install-gtkd: gtkd
	install -d $(DESTDIR)$(prefix)/include/d
	(cd src;   echo $(SOURCES_GTKD)   | sed -e s,src/,,g   | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -d $(DESTDIR)$(prefix)/lib
	install -m 644 $(LIBNAME_GTKD)   $(DESTDIR)$(prefix)/lib

install-gtkdgl: gtkdgl install-gtkd
	(cd srcgl; echo $(SOURCES_GTKDGL) | sed -e s,srcgl/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDGL) $(DESTDIR)$(prefix)/lib

install-gtkdsv: sv install-gtkd
	(cd srcsv; echo $(SOURCES_GTKDSV) | sed -e s,srcsv/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDSV) $(DESTDIR)$(prefix)/lib

install-gda: gda install-gtkd
	(cd srcgda; echo $(SOURCES_GTKDGDA) | sed -e s,srcgda/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDGDA) $(DESTDIR)$(prefix)/lib

install-gstreamer: gstreamer install-gtkd
	(cd srcgstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,srcgstreamer/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GSTREAMERD) $(DESTDIR)$(prefix)/lib

uninstall: uninstall-gtkdgl uninstall-gtkdsv uninstall-gda uninstall-gstreamer
	$(foreach dir,$(shell ls src)  , rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/lib/$(LIBNAME_GTKD)

uninstall-gtkdgl:
	$(foreach dir,$(shell ls srcsv), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/lib/$(LIBNAME_GTKDGL)

uninstall-gtkdsv:
	$(foreach dir,$(shell ls srcgl), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/lib/$(LIBNAME_GTKDSV)	

uninstall-gda:
	$(foreach dir,$(shell ls srcgda), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/lib/$(LIBNAME_GTKDGDA)

uninstall-gstreamer:
	$(foreach dir,$(shell ls srcgstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/lib/$(LIBNAME_GSTREAMERD)

clean:
	-rm -f $(LIBNAME_GTKD)       $(OBJECTS_GTKD) 
	-rm -f $(LIBNAME_GTKDGL)     $(OBJECTS_GTKDGL) 
	-rm -f $(LIBNAME_GTKDSV)     $(OBJECTS_GTKDSV) 
	-rm -f $(LIBNAME_GTKDGDA)    $(OBJECTS_GTKDGDA) 
	-rm -f $(LIBNAME_GSTREAMERD) $(OBJECTS_GSTREAMERD) 
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)

