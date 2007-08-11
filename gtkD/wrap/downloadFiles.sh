#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#main gtk libs doc
curl http://developer.gnome.org/doc/API/glib-2.0-docs.tar.gz | tar xvfz -
ln -s glib gthread
curl http://developer.gnome.org/doc/API/gobject-2.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/atk-1.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/pango-1.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/gdk-pixbuf-2.0-docs.tar.gz | tar xvfz -
ln -s gdk-pixbuf gdkpixbuf
curl http://developer.gnome.org/doc/API/gdk-2.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/gtk-2.0-docs.tar.gz | tar xvfz -
curl http://cairographics.org/releases/cairo-1.2.6.tar.gz | tar xvfz -
ln -s cairo-1.2.6/doc/public/html cairo
wget http://downloads.sourceforge.net/gtkglext/gtkglext-1.2.0.tar.bz2
tar xvfj gtkglext-1.2.0.tar.bz2
ln -s gtkglext-1.2.0/docs/reference/gtkglext/html glgdk
ln -s gtkglext-1.2.0/docs/reference/gtkglext/html glgtk

#other libraries.
#gda
curl http://ftp.gnome.org/pub/GNOME/sources/libgda/1.2/libgda-1.2.4.tar.gz | tar xvfz -
ln -s  libgda-1.2.4/doc/C/html gda

#glade
curl http://developer.gnome.org/doc/API/libglade-2.0-docs.tar.gz | tar xvfz -
ln -s libglade glade

#gtkSourceView
curl http://gtksourceview.sourceforge.net/gtksourceview-1.6-docs.tar.gz | tar xvfz -
mv html sourceview

#gstreamer
curl http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.12.tar.gz | tar xvfz -
ln -s gstreamer-0.10.12/docs/gst/html gstreamer

