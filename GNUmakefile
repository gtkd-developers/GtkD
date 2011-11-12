#makeAll.sh
SHELL=/bin/sh
prefix=/usr/local
libdir=lib

OS=$(shell uname || uname -s)
ARCH=$(shell arch || uname -m)

# make gtkD libs and test
all: libs test
shared: shared-libs libs test

ifndef DC
    ifneq ($(strip $(shell which dmd 2>/dev/null)),)
        DC=dmd
    else ifneq ($(strip $(shell which ldc 2>/dev/null)),)
        DC=ldc
    else ifneq ($(strip $(shell which ldc2 2>/dev/null)),)
        DC=ldc2
    else
        DC=gdc
    endif
endif

ifeq ("$(DC)","gdc")
    DCFLAGS=-O2
    LINKERFLAG=-Xlinker 
    output=-o $@
else
    DCFLAGS=-O
    LINKERFLAG=-L
    output=-of$@
endif

ifneq (,$(findstring ldc,$(DC)))
    FPIC=-relocation-model=pic
else
	FPIC=-fPIC
endif

ifeq ("$(OS)","Linux")
    LDFLAGS+=$(LINKERFLAG)-ldl
endif

ifndef MODEL
    ifeq ("$(ARCH)", "x86_64")
        MODEL=64
    else
        MODEL=32
    endif
endif

ifeq ($(MODEL), 64) 
   DCFLAGS+=-m64
   LDFLAGS+=-m64
else
   DCFLAGS+=-m32
   LDFLAGS+=-m32
endif

AR=ar
RANLIB=ranlib

define make-lib
    $(AR) rcs $@ $^
    $(RANLIB) $@
endef

#######################################################################

LIBNAME_GTKD = libgtkd.a
SONAME_GTKD = libgtkd.so
SOURCES_GTKD = $(subst src/build/gtkD.d,,$(wildcard src/*/*.d))
OBJECTS_GTKD = $(patsubst %.d,%.o,$(SOURCES_GTKD))
PICOBJECTS_GTKD = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKD))

LIBNAME_GTKDGL = libgtkdgl.a
SONAME_GTKDGL = libgtkdgl.so
SOURCES_GTKDGL = $(wildcard srcgl/*/*.d)
OBJECTS_GTKDGL = $(patsubst %.d,%.o,$(SOURCES_GTKDGL))
PICOBJECTS_GTKDGL = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDGL))

LIBNAME_GTKDSV = libgtkdsv.a
SONAME_GTKDSV = libgtkdsv.so
SOURCES_GTKDSV = $(wildcard srcsv/*/*.d)
OBJECTS_GTKDSV = $(patsubst %.d,%.o,$(SOURCES_GTKDSV))
PICOBJECTS_GTKDSV = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDSV))

LIBNAME_GTKDGDA = libgtkdgda.a
SONAME_GTKDGDA = libgtkdgda.so
SOURCES_GTKDGDA = $(wildcard srcgda/*/*.d)
OBJECTS_GTKDGDA = $(patsubst %.d,%.o,$(SOURCES_GTKDGDA))
PICOBJECTS_GTKDGDA = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDGDA))

LIBNAME_GSTREAMERD = libgstreamerd.a
SONAME_GSTREAMERD = libgstreamerd.so
SOURCES_GSTREAMERD = $(wildcard srcgstreamer/*/*.d)
OBJECTS_GSTREAMERD = $(patsubst %.d,%.o,$(SOURCES_GSTREAMERD))
PICOBJECTS_GSTREAMERD = $(patsubst %.o,%.pic.o,$(OBJECTS_GSTREAMERD))

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
    shared-libs: shared-gtkd
else
    libs: gtkd gtkdgl sv
    shared-libs: shared-gtkd shared-gtkdgl shared-sv
endif

gtkd:      $(LIBNAME_GTKD)
gtkdgl:    $(LIBNAME_GTKDGL)
sv:        $(LIBNAME_GTKDSV)
gda:       $(LIBNAME_GTKDGDA)
gstreamer: $(LIBNAME_GSTREAMERD)

shared-gtkd:      $(SONAME_GTKD)
shared-gtkdgl:    $(SONAME_GTKDGL)
shared-sv:        $(SONAME_GTKDSV)
shared-gda:       $(SONAME_GTKDGDA)
shared-gstreamer: $(SONAME_GSTREAMERD)

#######################################################################

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

# When we get a shared standard lib use:
# $(DC) $(LINKERFLAG)-shared $^ $(output)

$(SONAME_GTKD): IMPORTS=-Isrc
$(SONAME_GTKD): $(PICOBJECTS_GTKD)
	$(CC) -shared $^ -o $@

$(SONAME_GTKDGL): IMPORTS=-Isrc -Isrcgl
$(SONAME_GTKDGL): $(PICOBJECTS_GTKDGL)
	$(CC) -shared $^ -o $@

$(SONAME_GTKDSV): IMPORTS=-Isrc -Isrcsv
$(SONAME_GTKDSV): $(PICOBJECTS_GTKDSV)
	$(CC) -shared $^ -o $@

$(SONAME_GTKDGDA): IMPORTS=-Isrc -Isrcgda
$(SONAME_GTKDGDA): $(PICOBJECTS_GTKDGDA)
	$(CC) -shared $^ -o $@

$(SONAME_GTKDGSTREAMERD): IMPORTS=-Isrc -Isrcgstreamer
$(SONAME_GTKDGSTREAMERD): $(PICOBJECTS_GTKDGSTREAMERD)
	$(CC) -shared $^ -o $@

#######################################################################

# -Idemos

test: $(BINNAME_DEMO)

$(BINNAME_DEMO): IMPORTS=-Isrc -Idemos/gtkD/TestWindow
$(BINNAME_DEMO): $(LIBNAME_GTKD) $(OBJECTS_DEMO)
	$(DC) $(OBJECTS_DEMO) $(output) $(LDFLAGS) $(LINKERFLAG)-L. $(LINKERFLAG)-lgtkd

#######################################################################

%.o : %.d
	$(DC) $(DCFLAGS) $(IMPORTS) -c $< $(output)

%.pic.o : %.d
ifneq (,$(findstring ldc,$(DC)))
	$(DC) $(DCFLAGS) $(FPIC) $(IMPORTS) -c $< $(output)
else
	$(error shared not suported with $(DC))
endif
#######################################################################

ifeq ("$(OS)","Darwin")
    install: install-gtkd
    install-shared: install-shared-gtkd
else
    install: install-gtkd install-gtkdgl install-gtkdsv
    install-shared: install-shared-gtkd install-shared-gtkdgl install-shared-gtkdsv
endif

install-gtkd: gtkd
	install -d $(DESTDIR)$(prefix)/include/d
	(cd src;   echo $(SOURCES_GTKD)   | sed -e s,src/,,g   | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -d $(DESTDIR)$(prefix)/$(libdir)
	install -m 644 $(LIBNAME_GTKD)   $(DESTDIR)$(prefix)/$(libdir)

install-gtkdgl: gtkdgl install-gtkd
	(cd srcgl; echo $(SOURCES_GTKDGL) | sed -e s,srcgl/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDGL) $(DESTDIR)$(prefix)/$(libdir)

install-gtkdsv: sv install-gtkd
	(cd srcsv; echo $(SOURCES_GTKDSV) | sed -e s,srcsv/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDSV) $(DESTDIR)$(prefix)/$(libdir)

install-gda: gda install-gtkd
	(cd srcgda; echo $(SOURCES_GTKDGDA) | sed -e s,srcgda/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GTKDGDA) $(DESTDIR)$(prefix)/$(libdir)

install-gstreamer: gstreamer install-gtkd
	(cd srcgstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,srcgstreamer/,,g | xargs tar c) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)
	install -m 644 $(LIBNAME_GSTREAMERD) $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkd: shared-gtkd install-gtkd
	install -m 644 $(SONAME_GTKD)   $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkdgl: shared-gtkdgl install-gtkdgl
	install -m 644 $(SONAME_GTKDGL)   $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkdsv: shared-sv install-gtkdsv
	install -m 644 $(SONAME_GTKDSV)   $(DESTDIR)$(prefix)/$(libdir)

install-shared-gda: shared-gda install-gtkdsv
	install -m 644 $(SONAME_GTKDGDA)   $(DESTDIR)$(prefix)/$(libdir)

install-shared-gstreamer: shared-gstreamer install-gstreamer
	install -m 644 $(SONAME_GTKDGDA)   $(DESTDIR)$(prefix)/$(libdir)

uninstall: uninstall-gtkdgl uninstall-gtkdsv uninstall-gda uninstall-gstreamer
	$(foreach dir,$(shell ls src)  , rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD)

uninstall-gtkdgl:
	$(foreach dir,$(shell ls srcsv), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL)

uninstall-gtkdsv:
	$(foreach dir,$(shell ls srcgl), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV)

uninstall-gda:
	$(foreach dir,$(shell ls srcgda), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGDA)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA)

uninstall-gstreamer:
	$(foreach dir,$(shell ls srcgstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD)

clean:
	-rm -f $(LIBNAME_GTKD)       $(SONAME_GTKD)       $(OBJECTS_GTKD)       $(PICOBJECTS_GTKD)
	-rm -f $(LIBNAME_GTKDGL)     $(SONAME_GTKDGL)     $(OBJECTS_GTKDGL)     $(PICOBJECTS_GTKDGL)
	-rm -f $(LIBNAME_GTKDSV)     $(SONAME_GTKDSV)     $(OBJECTS_GTKDSV)     $(PICOBJECTS_GTKDSV)
	-rm -f $(LIBNAME_GTKDGDA)    $(SONAME_GTKDGDA)    $(OBJECTS_GTKDGDA)    $(PICOBJECTS_GTKDGDA)
	-rm -f $(LIBNAME_GSTREAMERD) $(SONAME_GSTREAMERD) $(OBJECTS_GSTREAMERD) $(PICOBJECTS_GSTREAMERD)
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)
	-rm -rf .pic 

