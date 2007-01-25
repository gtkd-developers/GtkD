#!/bin/sh

curl http://developer.gnome.org/doc/API/glib-2.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/gobject-2.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/atk-1.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/pango-1.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/gdk-pixbuf-2.0-docs.tar.gz | tar xvfz -
ln -s gdk-pixbuf gdkpixbuf
curl http://developer.gnome.org/doc/API/gdk-2.0-docs.tar.gz | tar xvfz -
curl http://developer.gnome.org/doc/API/gtk-2.0-docs.tar.gz | tar xvfz -
curl http://cairographics.org/releases/cairo-1.2.6.tar.gz | tar xvfz -
ln -s cairo-1.2.6/doc/public/html cairo
curl http://nchc.dl.sourceforge.net/sourceforge/gtkglext/gtkglext-1.2.0.tar.gz | tar xvfz -
ln -s gtkglext-1.2.0/docs/reference/gtkglext/html glgtk
