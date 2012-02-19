#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#GLIB
curl http://developer.gnome.org/glib/glib-html-2.28.7.tar.gz | tar xvfz -
ln -s glib-html-2.28.7 gthread
ln -s glib-html-2.28.7 glib
#Missing params in 2.28
cd glib
rm glib-Spawning-Processes.html
wget http://developer.gnome.org/glib/2.26/glib-Spawning-Processes.html
cd ..
#GOBJECT
curl http://developer.gnome.org/gobject/gobject-html-2.28.7.tar.gz | tar xvfz -
ln -s gobject-html-2.28.7 gobject
#GIO
curl http://developer.gnome.org/gio/gio-html-2.28.7.tar.gz | tar xvfz -
ln -s gio-html-2.28.7 gio
#ATK
curl http://developer.gnome.org/atk/atk-html-1.32.0.tar.gz | tar xvfz -
ln -s atk-html-1.32.0 atk
#PANGO
curl http://library.gnome.org/devel/pango/pango-html-1.28.0.tar.gz | tar xvfz -
ln -s pango-html-1.28.0 pango
#GDK-PIXBUF
curl http://developer.gnome.org/gdk-pixbuf/gdk-pixbuf-html-2.22.1.tar.gz | tar xvfz -
ln -s gdk-pixbuf-html-2.22.1 gdk-pixbuf
#GDK
curl http://developer.gnome.org/gdk/gdk-html-2.22.1.tar.gz | tar xvfz -
ln -s gdk-html-2.22.1 gdk
#GTK
curl http://developer.gnome.org/gtk/gtk-html-2.22.1.tar.gz | tar xvfz -
ln -s gtk-html-2.22.1 gtk
#CAIRO
curl http://cairographics.org/releases/cairo-1.10.2.tar.gz | tar xvfz -
ln -s cairo-1.10.2/doc/public/html cairo
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
curl http://library.gnome.org/devel/gtksourceview/gtksourceview-html-2.10.3.tar.gz | tar xvfz -
ln -s gtksourceview-html-2.10.3 sourceview

#gstreamer
curl http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.14.tar.gz | tar xvfz -
ln -s gstreamer-0.10.14/docs/gst/html gstreamer
curl http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.14.tar.gz | tar xvfz -
ln -s gst-plugins-base-0.10.14/docs/libs/html gstinterfaces

