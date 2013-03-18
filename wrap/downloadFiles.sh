#!/bin/sh
mkdir gtkdocs
cd gtkdocs

#GLIB
curl https://developer.gnome.org/glib/glib-html-2.36.0.tar.gz | tar xvfz -
ln -s glib-html-2.36.0 gthread
ln -s glib-html-2.36.0 glib
#GOBJECT
curl https://developer.gnome.org/gobject/gobject-html-2.36.0.tar.gz | tar xvfz -
ln -s gobject-html-2.36.0 gobject
#GIO
curl https://developer.gnome.org/gio/gio-html-2.36.0.tar.gz | tar xvfz -
ln -s gio-html-2.36.0 gio
#ATK
curl https://developer.gnome.org/atk/atk-html-2.8.0.tar.gz | tar xvfz -
ln -s atk-html-2.8.0 atk
#PANGO
curl https://developer.gnome.org/pango/pango-html-1.34.0.tar.gz | tar xvfz -
ln -s pango-html-1.34.0 pango
#GDK-PIXBUF
curl https://developer.gnome.org/gdk-pixbuf/gdk-pixbuf-html-2.28.0.tar.gz | tar xvfz -
ln -s gdk-pixbuf-html-2.28.0 gdk-pixbuf
#GDK
curl https://developer.gnome.org/gdk3/gdk3-html-3.8.0.tar.gz | tar xvfz -
ln -s gdk3-html-3.8.0 gdk
#GTK
curl https://developer.gnome.org/gtk3/gtk3-html-3.8.0.tar.gz | tar xvfz -
ln -s gtk3-html-3.8.0 gtk
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
curl https://developer.gnome.org/gtksourceview/gtksourceview-html-3.8.0.tar.gz | tar xvfz -
ln -s gtksourceview-html-3.8.0 sourceview

#gstreamer
curl https://developer.gnome.org/gstreamer/gstreamer-html-1.0.5.tar.gz | tar xvfz -
ln -s gstreamer-html-1.0.5 gstreamer
curl http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-1.0.5.tar.xz | tar xvfJ -
ln -s gst-plugins-base-1.0.5/docs/libs/html gstinterfaces

