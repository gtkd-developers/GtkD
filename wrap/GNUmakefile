SHELL=/bin/sh
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

#######################################################################

.DEFAULT_GOAL = $(BINNAME)

SOURCES = $(wildcard src/*.d)
BINNAME = gtkwrap

$(BINNAME): $(SOURCES)
	$(DC) $^ $(output) $(DCFLAGS) $(LDFLAGS)
	rm -f *.o

clean:
	-rm -f $(BINNAME)

