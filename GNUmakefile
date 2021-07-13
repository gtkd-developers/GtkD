SHELL=/bin/sh
prefix?=/usr/local
pkgconfigdir?=$(libdir)/pkgconfig
girdir?=
PKG_CONFIG?=pkg-config

OS=$(shell uname || uname -s)
ARCH=$(shell uname -m || arch)

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
    DCFLAGS?=-O2
    LINKERFLAG?=-Xlinker
    DDOCFLAGS=-fsyntax-only -c -fdoc -fdoc-file=$@
    DDOCINC=-fdoc-inc=
    output=-o $@
else
    DCFLAGS?=-O
    LINKERFLAG?=-L
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

ADRDOX?=doc2

#######################################################################

GTKD_VERSION=4.0.0
SO_VERSION=0

MAJOR =  $(word 1,$(subst ., ,$(GTKD_VERSION)))
MINOR =  $(word 2,$(subst ., ,$(GTKD_VERSION)))
BUGFIX = $(word 3,$(subst ., ,$(GTKD_VERSION)))

LIBNAME_GTKD = libgtkd-$(MAJOR).a
SONAME_GTKD = libgtkd-$(MAJOR).$(SO_POSTFIX)
SOURCES_GTKD = $(wildcard generated/gtkd/*/*.d) $(wildcard generated/gtkd/*/c/*.d)
OBJECTS_GTKD = $(patsubst %.d,%.o,$(SOURCES_GTKD))
PICOBJECTS_GTKD = $(patsubst %.o,%.pic.o,$(OBJECTS_GTKD))

LIBNAME_GSTREAMERD = libgstreamerd-$(MAJOR).a
SONAME_GSTREAMERD = libgstreamerd-$(MAJOR).$(SO_POSTFIX)
SOURCES_GSTREAMERD = $(wildcard generated/gstreamer/*/*.d) $(wildcard generated/gstreamer/*/c/*.d) $(wildcard generated/gstreamer/gst/*/*.d) $(wildcard generated/gstreamer/gst/*/c/*.d)
OBJECTS_GSTREAMERD = $(patsubst %.d,%.o,$(SOURCES_GSTREAMERD))
PICOBJECTS_GSTREAMERD = $(patsubst %.o,%.pic.o,$(OBJECTS_GSTREAMERD))

#######################################################################

USE_RUNTIME_LINKER = $(shell grep "Linker" generated/gtkd/atk/c/functions.d)

ifeq ($(USE_RUNTIME_LINKER),)
    SOFLAGS_GTKD = $(shell ${PKG_CONFIG} --libs-only-l --libs-only-L gtk+-3.0 librsvg-2.0 gmodule-2.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
    SOFLAGS_GSTREAMERD = $(LINKERFLAG)-L. $(LINKERFLAG)./libgtkd-$(MAJOR).$(SO_POSTFIX) $(shell ${PKG_CONFIG} --libs-only-l --libs-only-L gstreamer-base-1.0 | sed 's/-[lL]/$(LINKERFLAG)&/g')
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
ifndef girdir
	$(GIRTOD) --use-runtime-linker -i src/ -o generated/
else
	$(GIRTOD) --use-runtime-linker -i src/ -o generated/ -g $(girdir)
endif

generate-compiletime: $(GIRTOD)
ifndef girdir
	$(GIRTOD) -i src -o generated/
else
	$(GIRTOD) -i src -o generated/ -g $(girdir)
endif

$(GIRTOD):
	$(if $(findstring "./wrap/girtod","$(GIRTOD)"),$(MAKE) -C wrap)

#######################################################################

.PHONY: docs
docs:
	$(ADRDOX) --genSearchIndex --skeleton=docs/adrdox/skeleton.html --directory=docs/api/ --special-preprocessor=gtk generated/
	cp -f docs/adrdox/style.css docs/api/
	cp -f docs/adrdox/Logo.png docs/api/

#######################################################################

# -Isrc

ifeq ("$(OS)","Darwin")
    libs: gtkd
    shared-libs: shared-gtkd
else
    libs: gtkd gstreamer
    shared-libs: shared-gtkd shared-gstreamer
endif

gtkd:      $(LIBNAME_GTKD)
gstreamer: $(LIBNAME_GSTREAMERD)

shared-gtkd:      $(SONAME_GTKD)
shared-gstreamer: $(SONAME_GSTREAMERD)

#######################################################################

$(LIBNAME_GTKD): IMPORTS=-Igenerated/gtkd
$(LIBNAME_GTKD): $(OBJECTS_GTKD)
	$(make-lib)

$(LIBNAME_GSTREAMERD): IMPORTS=-Igenerated/gtkd -Igenerated/gstreamer
$(LIBNAME_GSTREAMERD): $(LIBNAME_GTKD) $(OBJECTS_GSTREAMERD)
	$(make-lib)

#######################################################################

$(SONAME_GTKD): IMPORTS=-Igenerated/gtkd 
$(SONAME_GTKD): $(PICOBJECTS_GTKD)
	$(call make-shared-lib,$(SOFLAGS_GTKD))

$(SONAME_GSTREAMERD): IMPORTS=-Igenerated/gtkd -Igenerated/gstreamer
$(SONAME_GSTREAMERD): $(SONAME_GTKD) $(PICOBJECTS_GSTREAMERD)
	$(call make-shared-lib,$(SOFLAGS_GSTREAMERD))

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

pkgconfig: pkgconfig-gtkd

pkgconfig-gtkd:      gtkd-$(MAJOR).pc
pkgconfig-gstreamer: gstreamerd-$(MAJOR).pc

gtkd-$(MAJOR).pc:
	echo Name: GtkD > $@
	echo Description: A D binding and OO wrapper for GTK+. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-L$(prefix)/$(libdir)/ $(LINKERFLAG)-lgtkd-$(MAJOR) $(LINKERFLAG)-ldl >> $@
	echo Cflags: -I$(prefix)/include/d/gtkd-$(MAJOR)/ >> $@
	echo Requires: gtk+-4.0, atk, pango, cairo, cairo-gobject, pangocairo, librsvg-2.0, gio-2.0, glib-2.0, gobject-2.0 >> $@

gstreamerd-$(MAJOR).pc:
	echo Name: GstreamerD > $@
	echo Description: A D binding and OO wrapper for Gstreamer. >> $@
	echo Version: $(GTKD_VERSION) >> $@
	echo Libs: $(LINKERFLAG)-lgstreamerd-$(MAJOR) >> $@
	echo Requires: gtkd-$(MAJOR), gstreamer-1.0, gstreamer-base-1.0 >> $@

#######################################################################

ifeq ("$(OS)","Darwin")
    install: install-gtkd
    install-headers: install-headers-gtkd
    install-shared: install-shared-gtkd
else
    install: install-gtkd install-gstreamer
    install-headers: install-headers-gtkd install-headers-gstreamer
    install-shared: install-shared-gtkd install-shared-gstreamer
endif

install-gtkd: $(LIBNAME_GTKD) install-headers-gtkd
	install -d $(DESTDIR)$(prefix)/$(libdir)
	install -m 644 $(LIBNAME_GTKD)   $(DESTDIR)$(prefix)/$(libdir)

install-gstreamer: $(LIBNAME_GSTREAMERD) install-gtkd install-headers-gstreamer
	install -m 644 $(LIBNAME_GSTREAMERD) $(DESTDIR)$(prefix)/$(libdir)

install-shared-gtkd: $(SONAME_GTKD)
	install -d $(DESTDIR)$(prefix)/$(libdir)
	$(install-so)

install-shared-gstreamer: $(SONAME_GSTREAMERD) install-shared-gtkd
	$(install-so)

install-headers-gtkd: gtkd-$(MAJOR).pc
	install -d $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)
	install -d $(DESTDIR)$(prefix)/$(pkgconfigdir)
	(cd generated/gtkd;   echo $(SOURCES_GTKD)   | sed -e s,generated/gtkd/,,g   | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xvf -)
	install -m 644 gtkd-$(MAJOR).pc $(DESTDIR)$(prefix)/$(pkgconfigdir)

install-headers-gstreamer: gstreamerd-$(MAJOR).pc install-headers-gtkd
	(cd generated/gstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,generated/gstreamer/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR); tar xvf -)
	install -m 644 gstreamerd-$(MAJOR).pc $(DESTDIR)$(prefix)/$(pkgconfigdir)

uninstall: uninstall-gstreamer
	$(foreach dir,$(shell ls generated/gtkd)  , rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(pkgconfigdir)/gtkd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION).$(MINOR).$(BUGFIX)

uninstall-gstreamer:
	$(foreach dir,$(shell ls generated/gstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/gtkd-$(MAJOR)/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(pkgconfigdir)/gstreamerd-$(MAJOR).pc
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION).$(MINOR).$(BUGFIX)

clean:
	-rm -f $(LIBNAME_GTKD)       $(SONAME_GTKD)       gtkd-$(MAJOR).pc        $(OBJECTS_GTKD)       $(PICOBJECTS_GTKD)
	-rm -f $(LIBNAME_GSTREAMERD) $(SONAME_GSTREAMERD) gstreamerd-$(MAJOR).pc  $(OBJECTS_GSTREAMERD) $(PICOBJECTS_GSTREAMERD)
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)      $(SONAME_GTKD).$(SO_VERSION)
	-$(MAKE) -C wrap clean

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
