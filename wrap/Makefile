VPATH =  utils
OBJS =  HTODConvert.o WrapperIF.o funct.o DefReader.o \
	    GtkWrapper.o HtmlStrip.o IndentedStringBuilder.o convparms.o GtkDClass.o
DSRC := $(OBJS:%.o=%.d)
DTARG = gtkwrap
CC = gcc
DC = dmd

CFLAGS += $(PATH_INCLUDE) 
DFLAGS += 

default:$(DTARG) 

$(OBJS): $(DSRC)
	rm -rf obj
	${DC} ${DFLAGS} $^ -c

$(DTARG): $(OBJS)
	$(DC) $^ -of$(DTARG) $(LDFLAGS)
	mkdir obj
	mv *.o ./obj

clean: 
	rm -rf obj ${DTARG} 

	
##########################################################
#
# Automatically grab the html from the tarballs
# Cairo and gtkglext full sources need to be somewhere.

TMPDIR = tmp
CAIROROOT = /opt/cairo
GTKGLEXTROOT = /opt/gtkglext
GZROOT = /opt/gtkdocs
INSTALLDIR = gtkdocs
GZBALLS = atk-1.0-docs.tar.gz gdk-2.0-docs.tar.gz gdk-pixbuf-2.0-docs.tar.gz glib-2.0-docs.tar.gz \
	  gobject-2.0-docs.tar.gz gtk-2.0-docs.tar.gz pango-1.0-docs.tar.gz
TAR = tar -xzvf
CAIRODIR = doc/public
GTKGLEXTDIR = docs/reference/gtkglext

prephtml:
	rm -rf tmp
	mkdir $(TMPDIR)
	for i in $(GZBALLS); do \
	$(TAR) $(GZROOT)/$$i -C $(TMPDIR); \
	done
	ln -s glib $(TMPDIR)/gthread
	cp -Ra  $(CAIROROOT)/$(CAIRODIR)/html $(TMPDIR)/cairo
	cp -Ra  $(GTKGLEXTROOT)/$(GTKGLEXTDIR)/html $(TMPDIR)/glgdk
	ln -s glgdk $(TMPDIR)/glgtk
	mv $(TMPDIR) $(INSTALLDIR)
	 
	#Copy cairo html 
	#copy gtkglext html
	#ln -s glgdk glgtk
