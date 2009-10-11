#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#GLIB
curl http://library.gnome.org/devel/glib/glib-html-2.22.1.tar.gz | tar xvfz -
ln -s glib-html-2.22.1 gthread
ln -s glib-html-2.22.1 glib
#Missing params in 2.20.0 / 2.22.0
cd glib
rm glib-Atomic-Operations.html
wget http://library.gnome.org/devel/glib/2.18/glib-Atomic-Operations.html
cd ..
#GOBJECT
curl http://library.gnome.org/devel/gobject/gobject-html-2.22.2.tar.gz | tar xvfz -
ln -s gobject-html-2.22.2 gobject
#GIO
curl http://library.gnome.org/devel/gio/gio-html-2.22.2.tar.gz | tar xvfz -
ln -s gio-html-2.22.2 gio
#ATK
curl http://library.gnome.org/devel/atk/atk-html-1.28.0.tar.gz | tar xvfz -
ln -s atk-html-1.28.0 atk
#PANGO
curl http://library.gnome.org/devel/pango/pango-html-1.26.0.tar.gz | tar xvfz -
ln -s pango-html-1.26.0 pango
#GDK-PIXBUF
curl http://library.gnome.org/devel/gdk-pixbuf/gdk-pixbuf-html-2.18.2.tar.gz | tar xvfz -
ln -s gdk-pixbuf-html-2.18.2 gdk-pixbuf
#GDK
curl http://library.gnome.org/devel/gdk/gdk-html-2.18.2.tar.gz | tar xvfz -
ln -s gdk-html-2.18.2 gdk
#GTK
curl http://library.gnome.org/devel/gtk/gtk-html-2.18.2.tar.gz | tar xvfz -
ln -s gtk-html-2.18.2 gtk
#CAIRO
curl http://library.gnome.org/devel/cairo/cairo-html-1.8.0.tar.gz | tar xvfz -
ln -s cairo-html-1.8.0 cairo
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
curl http://library.gnome.org/devel/gtksourceview/gtksourceview-html-2.8.1.tar.gz | tar xvfz -
ln -s gtksourceview-html-2.8.1 sourceview

#gstreamer
curl http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.12.tar.gz | tar xvfz -
ln -s gstreamer-0.10.12/docs/gst/html gstreamer
curl http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.12.tar.gz | tar xvfz -
ln -s gst-plugins-base-0.10.12/docs/libs/html gstinterfaces

