#makeAll.sh
SHELL=/bin/sh
prefix=/usr/local
libdir=lib

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
    all: libs gda gstreamer test
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

#######################################################################

SO_VERSION=1.6.0

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

$(SONAME_GTKDGSTREAMERD): IMPORTS=-Isrc -Isrcgstreamer
$(SONAME_GTKDGSTREAMERD): $(PICOBJECTS_GTKDGSTREAMERD)
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
	$(if $(wildcard libgtkd.so),,$(if $(wildcard libgtkd.a),,$(MAKE) $(LIBNAME_GTKD)))
	$(if $(wildcard libgtkd.so),$(eval LDFLAGS+= $(LINKERFLAG)-rpath=./))
	$(if $(wildcard libgtkd.so),$(shell ln -s $(SONAME_GTKD) $(SONAME_GTKD).$(call stripBugfix,$(SO_VERSION))))
	$(DC) $(OBJECTS_DEMO) $(output) $(LINKERFLAG)-L. $(LINKERFLAG)-lgtkd $(LDFLAGS)

#######################################################################

%.o : %.d
	$(DC) $(DCFLAGS) $(IMPORTS) -c $< $(output)

%.pic.o : %.d
	$(DC) $(DCFLAGS) $(FPIC) $(IMPORTS) -c $< $(output)

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
	$(install-so)

install-headers-gtkd:
	install -d $(DESTDIR)$(prefix)/include/d
	(cd src;   echo $(SOURCES_GTKD)   | sed -e s,src/,,g   | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)

install-headers-gtkdgl:
	(cd srcgl; echo $(SOURCES_GTKDGL) | sed -e s,srcgl/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)

install-headers-gtkdsv:
	(cd srcsv; echo $(SOURCES_GTKDSV) | sed -e s,srcsv/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)

install-headers-gda:
	(cd srcgda; echo $(SOURCES_GTKDGDA) | sed -e s,srcgda/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)

install-headers-gstreamer:
	(cd srcgstreamer; echo $(SOURCES_GSTREAMERD) | sed -e s,srcgstreamer/,,g | xargs tar cf -) | (cd $(DESTDIR)$(prefix)/include/d; tar xv)

uninstall: uninstall-gtkdgl uninstall-gtkdsv uninstall-gda uninstall-gstreamer
	$(foreach dir,$(shell ls src)  , rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(call stripBugfix,$(SO_VERSION))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKD).$(SO_VERSION)

uninstall-gtkdgl:
	$(foreach dir,$(shell ls srcsv), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(call stripBugfix,$(SO_VERSION))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGL).$(SO_VERSION)

uninstall-gtkdsv:
	$(foreach dir,$(shell ls srcgl), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(call stripBugfix,$(SO_VERSION))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDSV).$(SO_VERSION)

uninstall-gda:
	$(foreach dir,$(shell ls srcgda), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GTKDGDA)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA).$(call stripBugfix,$(SO_VERSION))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GTKDGDA).$(SO_VERSION)

uninstall-gstreamer:
	$(foreach dir,$(shell ls srcgstreamer), rm -rf $(DESTDIR)$(prefix)/include/d/$(dir))
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(LIBNAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION)
	rm -f $(DESTDIR)$(prefix)/$(libdir)/$(SONAME_GSTREAMERD).$(SO_VERSION)

clean:
	-rm -f $(LIBNAME_GTKD)       $(SONAME_GTKD)       $(OBJECTS_GTKD)       $(PICOBJECTS_GTKD)
	-rm -f $(LIBNAME_GTKDGL)     $(SONAME_GTKDGL)     $(OBJECTS_GTKDGL)     $(PICOBJECTS_GTKDGL)
	-rm -f $(LIBNAME_GTKDSV)     $(SONAME_GTKDSV)     $(OBJECTS_GTKDSV)     $(PICOBJECTS_GTKDSV)
	-rm -f $(LIBNAME_GTKDGDA)    $(SONAME_GTKDGDA)    $(OBJECTS_GTKDGDA)    $(PICOBJECTS_GTKDGDA)
	-rm -f $(LIBNAME_GSTREAMERD) $(SONAME_GSTREAMERD) $(OBJECTS_GSTREAMERD) $(PICOBJECTS_GSTREAMERD)
	-rm -f $(BINNAME_DEMO)       $(OBJECTS_DEMO)      $(SONAME_GTKD).$(call stripBugfix,$(SO_VERSION))
	-rm -rf .pic

#######################################################################

space :=
space +=

stripBugfix = $(subst $(space),.,$(strip $(wordlist 1, 2, $(subst ., ,$(1)))))

define make-lib
    $(AR) rcs $@ $(subst $(LIBNAME_GTKD),,$^)
    $(RANLIB) $@
endef

define make-shared-lib
	# Combine all the object files into one file, since some d compilers
	# don't support building a shared lib from multiple object files.
    ld -r $^ -o $@.o
    $(DC) -shared $(output) $(LINKERFLAG)-soname=$@.$(call stripBugfix,$(SO_VERSION)) $@.o
    rm $@.o
endef

define install-so
    install -m 755 $< $(DESTDIR)$(prefix)/$(libdir)/$<.$(call stripBugfix,$(SO_VERSION))
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(call stripBugfix,$(SO_VERSION)) $<.$(SO_VERSION) 
    cd $(DESTDIR)$(prefix)/$(libdir)/; ln -s $<.$(SO_VERSION) $<
endef
