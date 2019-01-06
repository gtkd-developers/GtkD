SHELL=/bin/sh
prefix?=/usr/local
PKG_CONFIG?=pkg-config

OS=$(shell uname || uname -s)
ARCH=$(shell uname -m || arch)

datadir?=$(prefix)/share
ifeq (, $(shell which dpkg-architecture 2>/dev/null))
	libdir?=lib/
else
	libdir?=lib/$(shell dpkg-architecture -qDEB_HOST_MULTIARCH)
endif

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

all: libs shared-libs test

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

ifeq ("$(OS)","Darwin")
    SO_POSTFIX=$(SO_VERSION).dylib
    SONAME=$(LINKERFLAG)-dylib_install_name $(LINKERFLAG)"$@" $(LINKERFLAG)-dylib_current_version $(LINKERFLAG)$(GTKD_VERSION) $(LINKERFLAG)-dylib_compatibility_version $(LINKERFLAG)$(MAJOR).0
else
    SO_POSTFIX=so
    SONAME=$(LINKERFLAG)-soname=$@.$(SO_VERSION)
endif

AR=ar
RANLIB=ranlib

ifndef GIRTOD
    ifneq ($(strip $(shell which girtod 2>/dev/null)),)
        GIRTOD=girtod
    else
        GIRTOD=./wrap/girtod
    endif
endif

#######################################################################

GTKD_VERSION=3.8.5
SO_VERSION=0

MAJOR =  $(word 1,$(subst ., ,$(GTKD_VERSION)))
MINOR =  $(word 2,$(subst ., ,$(GTKD_VERSION)))
BUGFIX = $(word 3,$(subst ., ,$(GTKD_VERSION)))

LIBNAME_GTKD = libgtkd-$(MAJOR).a
SONAME_GTKD = libgtkd-$(MAJOR).$(SO_POSTFIX)
SOURCES_GTKD = $(wildcard generated/gtkd/*/*.d) $(wildcard generated/gtkd/*/c/*.d)
OBJECTS_GTKD = $(patsubst %.d,%.o,$(SOURCES_GTKD))
PICOBJECTS_GTKD = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKD))

LIBNAME_GTKDGL = libgtkdgl-$(MAJOR).a
SONAME_GTKDGL = libgtkdgl-$(MAJOR).$(SO_POSTFIX)
SOURCES_GTKDGL = $(wildcard generated/gtkdgl/*/*.d) $(wildcard generated/gtkdgl/*/c/*.d)
OBJECTS_GTKDGL = $(patsubst %.d,%.o,$(SOURCES_GTKDGL))
PICOBJECTS_GTKDGL = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDGL))

LIBNAME_GTKDSV = libgtkdsv-$(MAJOR).a
SONAME_GTKDSV = libgtkdsv-$(MAJOR).$(SO_POSTFIX)
SOURCES_GTKDSV = $(wildcard generated/sourceview/*/*.d) $(wildcard generated/sourceview/*/c/*.d)
OBJECTS_GTKDSV = $(patsubst %.d,%.o,$(SOURCES_GTKDSV))
PICOBJECTS_GTKDSV = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKDSV))

LIBNAME_GSTREAMERD = libgstreamerd-$(MAJOR).a
SONAME_GSTREAMERD = libgstreamerd-$(MAJOR).$(SO_POSTFIX)
SOURCES_GSTREAMERD = $(wildcard generated/gstreamer/*/*.d) $(wildcard generated/gstreamer/*/c/*.d) $(wildcard generated/gstreamer/gst/*/*.d) $(wildcard generated/gstreamer/gst/*/c/*.d)
OBJECTS_GSTREAMERD = $(patsubst %.d,%.o,$(SOURCES_GSTREAMERD))
PICOBJECTS_GSTREAMERD = $(patsubst %.o,%.pic.o,$(OBJECTS_GSTREAMERD))

LIBNAME_VTED = libvted-$(MAJOR).a
SONAME_VTED = libvted-$(MAJOR).$(SO_POSTFIX)
SOURCES_VTED = $(wildcard generated/vte/*/*.d) $(wildcard generated/vte/*/c/*.d)
OBJECTS_VTED = $(patsubst %.d,%.o,$(SOURCES_VTED))
PICOBJECTS_VTED = $(patsubst %.o,%.pic.o,$(OBJECTS_VTED))

LIBNAME_PEASD = libpeasd-$(MAJOR).a
SONAME_PEASD = libpeasd-$(MAJOR).$(SO_POSTFIX)
SOURCES_PEASD = $(wildcard generated/peas/*/*.d) $(wildcard generated/peas/*/c/*.d)
OBJECTS_PEASD = $(patsubst %.d,%.o,$(SOURCES_PEASD))
PICOBJECTS_PEASD = $(patsubst %.o,%.pic.o,$(OBJECTS_PEASD))

#######################################################################

USE_RUNTIME_LINKER = $(shell grep "Linker" generated/gtkd/atk/c/functions.d)

ifeq ($(USE_RUNTIME_LINKER),)
    SOFLAGS_GTKD = $(shell ${PKG_CONFIG} --libs gtk+-3.0 librsvg-2.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_GTKDGL = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs gtkglext-3.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_GTKDSV = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs gtksourceview-3.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_GSTREAMERD = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs gstreamer-base-1.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_VTED = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs vte-2.91 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_PEASD = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs-only-l libpeas-1.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
endif

#######################################################################

BINNAME_DEMO = TestWindow
SOURCES_DEMO = $(shell find \
        demos/gtkD/TestWindow \
        -name '*.d' )
OBJECTS_DEMO = $(shell echo $(SOURCES_DEMO) | sed -e 's/\.d/\.o/g') 

#######################################################################

generate: generate-runtime

generate-runtime: $(GIRTOD)
	$(GIRTOD) -i src --use-runtime-linker --use-bind-dir

generate-compiletime: $(GIRTOD)
	$(GIRTOD) -i src --use-bind-dir

$(GIRTOD):
	$(if $(findstring "./wrap/girtod","$(GIRTOD)"),$(MAKE) -C wrap)

#######################################################################

# -Isrc

ifeq ("$(OS)","Darwin")
    libs: gtkd
    shared-libs: shared-gtkd
else
    libs: gtkd sv gstreamer vte peas
    shared-libs: shared-gtkd shared-sv shared-gstreamer shared-vte shared-peas
endif

gtkd:      $(LIBNAME_GTKD)
gtkdgl:    $(LIBNAME_GTKDGL)
sv:        $(LIBNAME_GTKDSV)
gstreamer: $(LIBNAME_GSTREAMERD)
vte:       $(LIBNAME_VTED)
peas:      $(LIBNAME_PEASD)

shared-gtkd:      $(SONAME_GTKD)
shared-gtkdgl:    $(SONAME_GTKDGL)
shared-sv:        $(SONAME_GTKDSV)
shared-gstreamer: $(SONAME_GSTREAMERD)
shared-vte:       $(SONAME_VTED)
shared-peas:      $(SONAME_PEASD)

#######################################################################

$(LIBNAME_GTKD): IMPORTS=-Igenerated/gtkd
$(LIBNAME_GTKD): $(OBJECTS_GTKD)
	$(make-lib)

$(LIBNAME_GTKDGL): IMPORTS=-Igenerated/gtkd -Igenerated/gtkdgl
$(LIBNAME_GTKDGL): $(LIBNAME_GTKD) $(OBJECTS_GTKDGL)
	$(make-lib)

$(LIBNAME_GTKDSV): IMPORTS=-Igenerated/gtkd -Igenerated/sourceview
$(LIBNAME_GTKDSV): $(LIBNAME_GTKD) $(OBJECTS_GTKDSV)
	$(make-lib)

$(LIBNAME_GSTREAMERD): IMPORTS=-Igenerated/gtkd -Igenerated/gstreamer
$(LIBNAME_GSTREAMERD): $(LIBNAME_GTKD) $(OBJECTS_GSTREAMERD)
	$(make-lib)

$(LIBNAME_VTED): IMPORTS=-Igenerated/gtkd -Igenerated/vte
$(LIBNAME_VTED): $(LIBNAME_GTKD) $(OBJECTS_VTED)
	$(make-lib)

$(LIBNAME_PEASD): IMPORTS=-Igenerated/gtkd -Igenerated/peas
$(LIBNAME_PEASD): $(LIBNAME_GTKD) $(OBJECTS_PEASD)
	$(make-lib)

#######################################################################

$(SONAME_GTKD): IMPORTS=-Igenerated/gtkd 
$(SONAME_GTKD): $(PICOBJECTS_GTKD)
	$(call make-shared-lib,$(SOFLAGS_GTKD))

$(SONAME_GTKDGL): IMPORTS=-Igenerated/gtkd -Igenerated/gtkdgl
$(SONAME_GTKDGL): $(SONAME_GTKD) $(PICOBJECTS_GTKDGL)
	$(call make-shared-lib,$(SOFLAGS_GTKDGL))

$(SONAME_GTKDSV): IMPORTS=-Igenerated/gtkd -Igenerated/sourceview
$(SONAME_GTKDSV): $(SONAME_GTKD) $(PICOBJECTS_GTKDSV)
	$(call make-shared-lib,$(SOFLAGS_GTKDSV))

$(SONAME_GSTREAMERD): IMPORTS=-Igenerated/gtkd -Igenerated/gstreamer
$(SONAME_GSTREAMERD): $(SONAME_GTKD) $(PICOBJECTS_GSTREAMERD)
	$(call make-shared-lib,$(SOFLAGS_GSTREAMERD))

$(SONAME_VTED): IMPORTS=-Igenerated/gtkd -Igenerated/vte
$(SONAME_VTED): $(SONAME_GTKD) $(PICOBJECTS_VTED)
	$(call make-shared-lib,$(SOFLAGS_VTED))

$(SONAME_PEASD): IMPORTS=-Igenerated/gtkd -Igenerated/peas
$(SONAME_PEASD): $(SONAME_GTKD) $(PICOBJECTS_PEASD)
	$(call make-shared-lib,$(SOFLAGS_PEASD))

#######################################################################

# -Idemos

test: $(BINNAME_DEMO)

# Build libgtkd.a when neigther neither libgtkd.so and libgtkd.a are pressend.

# Use -rpath for the demo so that the shard libs don't need to
# be installed for it to run. 

# Create a versioned symlink so the demo is able to load it.

$(BINNAME_DEMO): IMPORTS=-Igenerated/gtkd -Idemos/gtkD/TestWindow
$(BINNAME_DEMO): $(OBJECTS_DEMO)
	$(if $(wildcard $(SONAME_GTKD)),,$(if $(wildcard $(LIBNAME_GTKD)),,$(MAKE) $(LIBNAME_GTKD)))
	$(if $(wildcard $(SONAME_GTKD)),$(eval LDFLAGS+= $(LINKERFLAG)-rpath=./))
	$(if $(wildcard $(SONAME_GTKD)),$(if $(findstring "gdc","$(DC)"),$(eval LDFLAGS+=-shared-libphobos)))
	$(if $(wildcard $(SONAME_GTKD)),$(if $(wildcard $(SONAME_GTKD).$(SO_VERSION)),,$(shell ln -s $(SONAME_GTKD) $(SONAME_GTKD).$(SO_VERSION))))
	$(DC) $(OBJECTS_DEMO) $(output) $(if $(wildcard $(SONAME_GTKD)),$(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX),$(LINKERFLAG)./libgtkd-$(MAJOR).a) $(LDFLAGS)

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
pkgconfig-gstreamer: gstreamerd-$(MAJOR).pc
pkgconfig-vte:       vted-$(MAJOR).pc
pkgconfig-peas:      peasd-$(MAJOR).pc

gtkd-$(MAJOR).pc:
	echo Name: GtkD > $@
	echo Description: A D binding and OO wrapper for GTK+. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-L$(prefix)/$(libdir)/ $(LINKERFLAG)-lgtkd-$(MAJOR) $(LINKERFLAG)-ldl >> $@
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

gstreamerd-$(MAJOR).pc:
	echo Name: GstreamerD > $@
	echo Description: A D binding and OO wrapper for Gstreamer. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgstreamerd-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

vted-$(MAJOR).pc:
	echo Name: VteD > $@
	echo Description: A D binding and OO wrapper for Vte. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lvted-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

peasd-$(MAJOR).pc:
	echo Name: PeasD > $@
	echo Description: A D binding and OO wrapper for Peas. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lpeasd-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR) >> $@

#######################################################################

ifeq ("$(OS)","Darwin")
    install: install-gtkd
    install-headers: install-headers-gtkd
    install-shared: install-shared-gtkd
else
    install: install-gtkd install-gtkdsv install-gstreamer install-vte install-peas
    install-headers: install-headers-gtkd install-headers-gtkdsv install-shared-gstreamer install-shared-vte install-shared-peas
    install-shared: install-shared-gtkd install-shared-gtkdsv install-shared-gstreamer install-shared-vte install-shared-peas
endif

install-gtkd: $(LIBNAME_GTKD) install-headers-gtkd
	install -d $(DESTDIR)$(prefix)/$(libdir)
	install -m 644 $(LIBNAME_GTKD)   $(DESTDIR)$(prefix)/$(libdir)

install-gtkdgl: $(LIBNAME_GTKDGL) install-gtkd install-headers-gtkdgl
	install -m 644 $(LIBNAME_GTKDGL) $(DESTDIR)$(prefix)/$(libdir)

install-gtkdsv: $(LIBNAME_GTKDSV) install-gtkd install-headers-gtkdsv
	install -m 644 $(LIBNAME_GTKDSV) $(DESTDIR)$(prefix)/$(libdir)

install-gstreamer: $(LIBNAME_GSTREAMERD) install-gtkd install-headers-gstreamer
	install -m 644 $(LIBNAME_GSTREAMERD) $(DESTDIR)$(prefix)/$(libdir)

install-vte: $(LIBNAME_VTED) install-gtkd install-headers-vte
	install -m 644 $(LIBNAME_VTED) $(DESTDIR)$(prefix)/$(libdir)

install-peas: $(LIBNAME_PEASD) install-gtkd install-headers-peas
	install -m 644 $(LIBNAME_PEASD) $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkd: $(SONAME_GTKD)
	install -d $(DESTDIR)$(prefix)/$(libdir)
	$(install-so)

install-shared-gtkdgl: $(SONAME_GTKDGL) install-shared-gtkd
	$(install-so)

install-shared-gtkdsv: $(SONAME_GTKDSV) install-shared-gtkd
	$(install-so)

install-shared-gstreamer: $(SONAME_GSTREAMERD) install-shared-gtkd
	$(install-so)

install-shared-vte: $(SONAME_VTED) install-shared-gtkd
	$(install-so)

install-shared-peas: $(SONAME_PEASD) install-shared-gtkd
	$(install-so)

install-headers-gtkd: gtkd-$(MAJOR).pc
	install -d $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)
	install -d $(DESTDIR)$(datadir)/pkgconfig
	(cd generated/gtkd;   echo $(SOURCES_GTKD)   | sed -e s,generated/gtkd/,,g   | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkd-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gtkdgl: gtkdgl-$(MAJOR).pc install-headers-gtkd
	(cd generated/gtkdgl; echo $(SOURCES_GTKDGL) | sed -e s,generated/gtkdgl/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkdgl-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gtkdsv: gtkdsv-$(MAJOR).pc install-headers-gtkd
	(cd generated/sourceview; echo $(SOURCES_GTKDSV) | sed -e s,generated/sourceview/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gtkdsv-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-gstreamer: gstreamerd-$(MAJOR).pc install-headers-gtkd
	(cd generated/gstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,generated/gstreamer/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 gstreamerd-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-vte: vted-$(MAJOR).pc install-headers-gtkd
	(cd generated/vte; echo $(SOURCES_VTED) | sed -e s,generated/vte/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 vted-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

install-headers-peas: peasd-$(MAJOR).pc install-headers-gtkd
	(cd generated/peas; echo $(SOURCES_PEASD) | sed -e s,generated/peas/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xv)
	install -m 644 peasd-$(MAJOR).pc $(DESTDIR)$(datadir)/pkgconfig

uninstall: uninstall-gtkdgl uninstall-gtkdsv uninstall-gstreamer uninstall-vte uninstall-peas
	$(foreach dir,$(shell ls generated/gtkd)  , rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gtkdgl:
	$(foreach dir,$(shell ls generated/gtkdgl), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkdgl-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gtkdsv:
	$(foreach dir,$(shell ls generated/sourceview), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gtkdsv-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gstreamer:
	$(foreach dir,$(shell ls generated/gstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/gstreamerd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-vte:
	$(foreach dir,$(shell ls generated/vte), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/vted-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_VTED)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_VTED)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_VTED).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_VTED).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-peas:
	$(foreach dir,$(shell ls generated/peas), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(datadir)/pkgconfig/peasd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_PEASD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_PEASD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_PEASD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_PEASD).$(SO_VERSION).$(MINOR).$(BUGFIX)

clean:
	-rm -f $(LIBNAME_GTKD)       $(SONAME_GTKD)       gtkd-$(MAJOR).pc     $(OBJECTS_GTKD)       $(PICOBJECTS_GTKD)
	-rm -f $(LIBNAME_GTKDGL)     $(SONAME_GTKDGL)     gtkdgl-$(MAJOR).pc   $(OBJECTS_GTKDGL)     $(PICOBJECTS_GTKDGL)
	-rm -f $(LIBNAME_GTKDSV)     $(SONAME_GTKDSV)     gtkdsv-$(MAJOR).pc   $(OBJECTS_GTKDSV)     $(PICOBJECTS_GTKDSV)
	-rm -f $(LIBNAME_GSTREAMERD) $(SONAME_GSTREAMERD) gstreamerd-$(MAJOR).pc      $(OBJECTS_GSTREAMERD) $(PICOBJECTS_GSTREAMERD)
	-rm -f $(LIBNAME_VTED)       $(SONAME_VTED)       vted-$(MAJOR).pc     $(OBJECTS_VTED)       $(PICOBJECTS_VTED)
	-rm -f $(LIBNAME_PEASD)      $(SONAME_PEASD)      peasd-$(MAJOR).pc    $(OBJECTS_PEASD)      $(PICOBJECTS_PEASD)
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)      $(SONAME_GTKD).$(SO_VERSION)
	$(MAKE) -C wrap clean

#######################################################################

define make-lib
    $(AR) rcs $@ $(subst $(LIBNAME_GTKD),,$^)
    $(RANLIB) $@
endef

define make-shared-lib
	$(if $(filter-out "Darwin","$(OS)"), $(if $(findstring "dmd","$(DC)"),$(eval LDFLAGS+=-defaultlib=:libphobos2.so)))
	$(if $(findstring "gdc","$(DC)"),$(eval LDFLAGS+=-shared-libphobos))
	$(if $(findstring "ldc","$(DC)"),$(eval LDFLAGS+=-link-defaultlib-shared))

	$(DC) -shared $(output) $(LDFLAGS) $1 $(SONAME) $(subst $(SONAME_GTKD),,$^)
endef

define install-so
    install -m 755 $< $(DESTDIR)$(prefix)/$(libdir)/$<.$(SO_VERSION).$(MINOR).$(BUGFIX)
	ldconfig -n $(DESTDIR)$(prefix)/$(libdir)/
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -sf $<.$(SO_VERSION).$(MINOR).$(BUGFIX) $<.$(SO_VERSION) 
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -sf $<.$(SO_VERSION) $<
endef
