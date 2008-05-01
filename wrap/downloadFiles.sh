#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#GLIB
curl http://library.gnome.org/devel/glib/glib-html-2.16.1.tar.gz | tar xvfz -
ln -s glib-html-2.16.1 gthread
ln -s glib-html-2.16.1 glib
#GOBJECT
curl http://library.gnome.org/devel/gobject/gobject-html-2.16.1.tar.gz | tar xvfz -
ln -s gobject-html-2.16.1 gobject
#ATK
curl http://library.gnome.org/devel/atk/atk-html-1.22.0.tar.gz | tar xvfz -
ln -s atk-html-1.22.0 atk
#PANGO
curl http://library.gnome.org/devel/pango/pango-html-1.20.0.tar.gz | tar xvfz -
ln -s pango-html-1.20.0 pango
#GDK-PIXBUF
curl http://library.gnome.org/devel/gdk-pixbuf/gdk-pixbuf-html-2.12.3.tar.gz | tar xvfz -
ln -s gdk-pixbuf-html-2.12.3 gdk-pixbuf
#GDK
curl http://library.gnome.org/devel/gdk/gdk-html-2.12.3.tar.gz | tar xvfz -
ln -s gdk-html-2.12.3 gdk
#GTK
curl http://library.gnome.org/devel/gtk/gtk-html-2.12.3.tar.gz | tar xvfz -
ln -s gtk-html-2.12.3 gtk
#CAIRO
curl http://cairographics.org/releases/cairo-1.6.4.tar.gz | tar xvfz -
ln -s cairo-1.6.4/doc/public/html cairo
#GTKGLEXT
#wget http://downloads.sourceforge.net/gtkglext/gtkglext-1.2.0.tar.bz2
#tar xvfj gtkglext-1.2.0.tar.bz2
curl -L http://downloads.sourceforge.net/gtkglext/gtkglext-1.2.0.tar.bz2 | tar xvfj -
ln -s gtkglext-1.2.0/docs/reference/gtkglext/html glgdk
ln -s gtkglext-1.2.0/docs/reference/gtkglext/html glgtk

#other libraries.
#gda
curl -L http://ftp.gnome.org/pub/GNOME/sources/libgda/1.2/libgda-1.2.4.tar.gz | tar xvfz -
ln -s  libgda-1.2.4/doc/C/html gda

#glade
curl http://library.gnome.org/devel/libglade/libglade-html-2.6.2.tar.gz | tar xvfz -
ln -s libglade-html-2.6.2 glade

#gtkSourceView
curl http://library.gnome.org/devel/gtksourceview-2.0/gtksourceview-2.0-html-2.2.0.tar.gz | tar xvfz -
ln -s gtksourceview-2.0-html-2.2.0 sourceview

#gstreamer
curl http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.12.tar.gz | tar xvfz -
ln -s gstreamer-0.10.12/docs/gst/html gstreamer

