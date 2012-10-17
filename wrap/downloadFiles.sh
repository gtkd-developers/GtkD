#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#GLIB
curl http://developer.gnome.org/glib/glib-html-2.34.0.tar.gz | tar xvfz -
ln -s glib-html-2.34.0 gthread
ln -s glib-html-2.34.0 glib
#GOBJECT
curl http://developer.gnome.org/gobject/gobject-html-2.34.0.tar.gz | tar xvfz -
ln -s gobject-html-2.34.0 gobject
#GIO
curl http://developer.gnome.org/gio/gio-html-2.34.0.tar.gz | tar xvfz -
ln -s gio-html-2.34.0 gio
#ATK
curl http://developer.gnome.org/atk/atk-html-2.6.0.tar.gz | tar xvfz -
ln -s atk-html-2.6.0 atk
#PANGO
curl http://developer.gnome.org/pango/pango-html-1.32.1.tar.gz | tar xvfz -
ln -s pango-html-1.32.1 pango
#GDK-PIXBUF
curl http://developer.gnome.org/gdk-pixbuf/gdk-pixbuf-html-2.26.4.tar.gz | tar xvfz -
ln -s gdk-pixbuf-html-2.26.4 gdk-pixbuf
#GDK
curl http://developer.gnome.org/gdk3/gdk3-html-3.6.0.tar.gz | tar xvfz -
ln -s gdk3-html-3.6.0 gdk
#GTK
curl http://developer.gnome.org/gtk3/gtk3-html-3.6.0.tar.gz | tar xvfz -
ln -s gtk3-html-3.6.0 gtk
#CAIRO
curl http://cairographics.org/releases/cairo-1.12.2.tar.xz | tar xvfJ -
ln -s cairo-1.12.2/doc/public/html cairo
cd cairo
wget http://cairographics.org/manual-1.10.2/cairo-Version-Information.html
cd ..

#GTKGLEXT
#ln -s /usr/share/gtk-doc/html/gtkglext/ glgdk
#ln -s /usr/share/gtk-doc/html/gtkglext/ glgtk

#other libraries.
#gda
curl -L http://ftp.gnome.org/pub/GNOME/sources/libgda/1.2/libgda-1.2.4.tar.gz | tar xvfz -
ln -s  libgda-1.2.4/doc/C/html gda

#gtkSourceView
curl http://developer.gnome.org/gtksourceview/gtksourceview-html-3.6.0.tar.gz | tar xvfz -
ln -s gtksourceview-html-3.6.0 sourceview

#gstreamer
curl http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-0.10.14.tar.gz | tar xvfz -
ln -s gstreamer-0.10.14/docs/gst/html gstreamer
curl http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.14.tar.gz | tar xvfz -
ln -s gst-plugins-base-0.10.14/docs/libs/html gstinterfaces

