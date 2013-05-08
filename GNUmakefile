SHELL=/bin/sh
prefix=/usr/local
libdir=lib
datadir=$(prefix)/share

OS=$(shell uname || uname -s)
ARCH=$(shell arch || uname -m)

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

# make gtkD libs and test
.DEFAULT_GOAL = default-goal

default-goal: libs test
shared: shared-libs

ifneq (,$(findstring ldc,$(DC)))
    all: libs shared-libs gda gstreamer shared-gda shared-gstreamer test
else
    all: libs gtkdgl gda gstreamer test
endif

ifeq ("$(DC)","gdc")
    DCFLAGS=-O2
    LINKERFLAG=-Xlinker 
    DDOCFLAGS=-fsyntax-only -c -fdoc -fdoc-file=$@
    DDOCINC=-fdoc-inc=
    output=-o $@
else
    DCFLAGS=-O
    LINKERFLAG=-L
    DDOCFLAGS=-o- -Df$@
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

#######################################################################

GTKD_VERSION=2.2.0
SO_VERSION=0

MAJOR =  $(word 1,$(subst ., ,$(GTKD_VERSION)))
MINOR =  $(word 2,$(subst ., ,$(GTKD_VERSION)))
BUGFIX = $(word 3,$(subst ., ,$(GTKD_VERSION)))

LIBNAME_GTKD = libgtkd-$(MAJOR).a
SONAME_GTKD = libgtkd-$(MAJOR).so
SOURCES_GTKD = $(wildcard src/*/*.d)
OBJECTS_GTKD = $(patsubst %.d,%.o,$(SOURCES_GTKD))
PICOBJECTS_GTKD = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKD))

LIBNAME_GTKDGL = libgtkdgl-$(MAJOR).a
SONAME_GTKDGL = libgtkdgl-$(MAJOR).so
SOURCES_GTKDGL = $(wildcard srcgl/*/*.d)
OBJECTS_GTKDGL = $(patsubst %.d,%.o,$(SOURCES_GTKDGL))
PICOBJECTS_GTKDGL = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDGL))

LIBNAME_GTKDSV = libgtkdsv-$(MAJOR).a
SONAME_GTKDSV = libgtkdsv-$(MAJOR).so
SOURCES_GTKDSV = $(wildcard srcsv/*/*.d)
OBJECTS_GTKDSV = $(patsubst %.d,%.o,$(SOURCES_GTKDSV))
PICOBJECTS_GTKDSV = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDSV))

LIBNAME_GTKDGDA = libgtkdgda-$(MAJOR).a
SONAME_GTKDGDA = libgtkdgda-$(MAJOR).so
SOURCES_GTKDGDA = $(wildcard srcgda/*/*.d)
OBJECTS_GTKDGDA = $(patsubst %.d,%.o,$(SOURCES_GTKDGDA))
PICOBJECTS_GTKDGDA = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDGDA))

LIBNAME_GSTREAMERD = libgstreamerd-$(MAJOR).a
SONAME_GSTREAMERD = libgstreamerd-$(MAJOR).so
SOURCES_GSTREAMERD = $(wildcard srcgstreamer/*/*.d)
OBJECTS_GSTREAMERD = $(patsubst %.d,%.o,$(SOURCES_GSTREAMERD))
PICOBJECTS_GSTREAMERD = $(patsubst %.o,%.pic.o,$(OBJECTS_GSTREAMERD))

#######################################################################

BINNAME_DEMO = TestWindow
SOURCES_DEMO = $(shell find \
        demos/gtkD/TestWindow \
        -name '*.d' )
OBJECTS_DEMO = $(shell echo $(SOURCES_DEMO) | sed -e 's/\.d/\.o/g') 

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

$(SONAME_GTKD): IMPORTS=-Isrc
$(SONAME_GTKD): $(PICOBJECTS_GTKD)
	$(make-shared-lib)

$(SONAME_GTKDGL): IMPORTS=-Isrc -Isrcgl
$(SONAME_GTKDGL): $(PICOBJECTS_GTKDGL)
	$(make-shared-lib)

$(SONAME_GTKDSV): IMPORTS=-Isrc -Isrcsv
$(SONAME_GTKDSV): $(PICOBJECTS_GTKDSV)
	$(make-shared-lib)

$(SONAME_GTKDGDA): IMPORTS=-Isrc -Isrcgda
$(SONAME_GTKDGDA): $(PICOBJECTS_GTKDGDA)
	$(make-shared-lib)

$(SONAME_GSTREAMERD): IMPORTS=-Isrc -Isrcgstreamer
$(SONAME_GSTREAMERD): $(PICOBJECTS_GSTREAMERD)
	$(make-shared-lib)

#######################################################################

# -Idemos

test: $(BINNAME_DEMO)

# Build libgtkd.a when neigther neither libgtkd.so and libgtkd.a are pressend.

# Use -rpath for the demo so that the shard libs don't need to
# be installed for it to run. 

# Create a versioned symlink so the demo is able to load it.

$(BINNAME_DEMO): IMPORTS=-Isrc -Idemos/gtkD/TestWindow
$(BINNAME_DEMO): $(OBJECTS_DEMO)
	$(if $(wildcard $(SONAME_GTKD)),,$(if $(wildcard $(LIBNAME_GTKD)),,$(MAKE) $(LIBNAME_GTKD)))
	$(if $(wildcard $(SONAME_GTKD)),$(eval LDFLAGS+= $(LINKERFLAG)-rpath=./))
	$(if $(wildcard $(SONAME_GTKD)),$(if $(wildcard $(SONAME_GTKD).$(SO_VERSION)),,$(shell ln -s $(SONAME_GTKD) $(SONAME_GTKD).$(SO_VERSION))))
	$(DC) $(OBJECTS_DEMO) $(output) $(LINKERFLAG)-L. $(LINKERFLAG)-lgtkd-$(MAJOR) $(LDFLAGS)

#######################################################################

%.o : %.d
	$(DC) $(DCFLAGS) $(IMPORTS) -c $< $(output)

%.pic.o : %.d
	$(DC) $(DCFLAGS) $(FPIC) $(IMPORTS) -c $< $(output)

#######################################################################

ifeq ("$(OS)","Darwin")
    pkgconfig: pkgconfig-gtkd
else
    pkgconfig: pkgconfig-gtkd pkgconfig-gtkdgl pkgconfig-sv
endif

pkgconfig-gtkd:      gtkd-$(MAJOR).pc
pkgconfig-gtkdgl:    gtkdgl-$(MAJOR).pc
pkgconfig-sv:        gtkdsv-$(MAJOR).pc
pkgconfig-gda:       gtkdgda-$(MAJOR).pc
pkgconfig-gstreamer: gstreamerd-$(MAJOR).pc

gtkd-$(MAJOR).pc:
	echo Name: GtkD > $@
	echo Description: A D binding and OO wrapper for GTK+. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-L$(prefix)/lib/ $(LINKERFLAG)-lgtkd-$(MAJOR) $(LINKERFLAG)-ldl >> $@
	echo Cflags: -I$(prefix)/include/d/gtkd-$(MAJOR)/ >> $@

gtkdgl-$(MAJOR).pc:
	echo Name: GtkDGL > $@
	echo Description: OpenGL capabilities for GtkD. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgtkdgl-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

gtkdsv-$(MAJOR).pc:
	echo Name: GtkD SourceView > $@
	echo Description: A D binding and OO wrapper for GtkSourceView. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgtkdsv-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

gtkdgda-$(MAJOR).pc:
	echo Name: GdaD > $@
	echo Description: A D binding and OO wrapper for Gda. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgtkdgda-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

gstreamerd-$(MAJOR).pc:
	echo Name: GstreamerD > $@
	echo Description: A D binding and OO wrapper for Gstreamer. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgstreamerd-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

#######################################################################

ifeq ("$(OS)","Darwin")
    install: install-gtkd
    install-headers: install-headers-gtkd
    install-shared: install-shared-gtkd
else
    install: install-gtkd install-gtkdgl install-gtkdsv
    install-headers: install-headers-gtkd install-headers-gtkdgl install-headers-gtkdsv
    install-shared: install-shared-gtkd install-shared-gtkdgl install-shared-gtkdsv
endif

install-gtkd: $(LIBNAME_GTKD) install-headers-gtkd
	install -d $(DESTDIR)$(prefix)/$(libdir)
	install -m 644 $(LIBNAME_GTKD)   $(DESTDIR)$(prefix)/$(libdir)

install-gtkdgl: $(LIBNAME_GTKDGL) install-gtkd install-headers-gtkdgl
	install -m 644 $(LIBNAME_GTKDGL) $(DESTDIR)$(prefix)/$(libdir)

install-gtkdsv: $(LIBNAME_GTKDSV) install-gtkd install-headers-gtkdsv
	install -m 644 $(LIBNAME_GTKDSV) $(DESTDIR)$(prefix)/$(libdir)

install-gda: $(LIBNAME_GTKDGDA) install-gtkd install-headers-gda
	install -m 644 $(LIBNAME_GTKDGDA) $(DESTDIR)$(prefix)/$(libdir)

install-gstreamer: $(LIBNAME_GSTREAMERD) install-gtkd install-headers-gstreamer
	install -m 644 $(LIBNAME_GSTREAMERD) $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkd: $(SONAME_GTKD)
	install -d $(DESTDIR)$(prefix)/$(libdir)
	$(install-so)

install-shared-gtkdgl: $(SONAME_GTKDGL) install-shared-gtkd
	$(install-so)

install-shared-gtkdsv: $(SONAME_GTKDSV) install-shared-gtkd
	$(install-so)

install-shared-gda: $(SONAME_GTKDGDA) install-shared-gtkd
	$(install-so)

install-shared-gstreamer: $(SONAME_GSTREAMERD) install-shared-gtkd
	install -m 755 $< $(DESTDIR)$(prefix)/$(libdir)/$<.$(SO_VERSION).7.0
	cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(SO_VERSION).7.0 $<.$(SO_VERSION)
	cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(SO_VERSION) $<

install-headers-gtkd: gtkd-$(MAJOR).pc
	install -d $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)
	install -d $(DESTDIR)$(datadir)/pkgconfig
	(cd src;   echo $(SOURCES_GTKD)   | sed -e s,src/,,g   | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkd-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gtkdgl: gtkdgl-$(MAJOR).pc install-headers-gtkd
	(cd srcgl; echo $(SOURCES_GTKDGL) | sed -e s,srcgl/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkdgl-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gtkdsv: gtkdsv-$(MAJOR).pc install-headers-gtkd
	(cd srcsv; echo $(SOURCES_GTKDSV) | sed -e s,srcsv/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkdsv-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gda: gtkdgda-$(MAJOR).pc install-headers-gtkd
	(cd srcgda; echo $(SOURCES_GTKDGDA) | sed -e s,srcgda/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkdgda-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gstreamer: gstreamerd-$(MAJOR).pc install-headers-gtkd
	(cd srcgstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,srcgstreamer/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gstreamerd-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

uninstall: uninstall-gtkdgl uninstall-gtkdsv uninstall-gda uninstall-gstreamer
	$(foreach dir,$(shell ls src)  , rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gtkdgl:
	$(foreach dir,$(shell ls srcsv), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkdgl-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gtkdsv:
	$(foreach dir,$(shell ls srcgl), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkdsv-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gda:
	$(foreach dir,$(shell ls srcgda), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkdgda-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGDA)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gstreamer:
	$(foreach dir,$(shell ls srcgstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gstreamerd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION).$(MINOR).$(BUGFIX)

clean:
	-rm -f $(LIBNAME_GTKD)       $(SONAME_GTKD)       gtkd-$(MAJOR).pc     $(OBJECTS_GTKD)       $(PICOBJECTS_GTKD)
	-rm -f $(LIBNAME_GTKDGL)     $(SONAME_GTKDGL)     gtkdgl-$(MAJOR).pc   $(OBJECTS_GTKDGL)     $(PICOBJECTS_GTKDGL)
	-rm -f $(LIBNAME_GTKDSV)     $(SONAME_GTKDSV)     gtkdsv-$(MAJOR).pc   $(OBJECTS_GTKDSV)     $(PICOBJECTS_GTKDSV)
	-rm -f $(LIBNAME_GTKDGDA)    $(SONAME_GTKDGDA)    gtkdgda-$(MAJOR).pc  $(OBJECTS_GTKDGDA)    $(PICOBJECTS_GTKDGDA)
	-rm -f $(LIBNAME_GSTREAMERD) $(SONAME_GSTREAMERD) gstreamerd-$(MAJOR).pc      $(OBJECTS_GSTREAMERD) $(PICOBJECTS_GSTREAMERD)
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)      $(SONAME_GTKD).$(SO_VERSION)
	-rm -rf .pic

#######################################################################

define make-lib
    $(AR) rcs $@ $(subst $(LIBNAME_GTKD),,$^)
    $(RANLIB) $@
endef

define make-shared-lib
	#Remove this line when phobos #1280 is merged.
	$(if $(findstring "dmd","$(DC)"),$(eval LDFLAGS+=-defaultlib=phobos2so))
 
	$(DC) -shared $(output) $(LDFLAGS) $(LINKERFLAG)-soname=$@.$(SO_VERSION) $^
endef

define install-so
    install -m 755 $< $(DESTDIR)$(prefix)/$(libdir)/$<.$(SO_VERSION).$(MINOR).$(BUGFIX)
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(SO_VERSION).$(MINOR).$(BUGFIX) $<.$(SO_VERSION) 
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(SO_VERSION) $<
endef
