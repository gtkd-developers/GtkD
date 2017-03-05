#!/bin/sh
echo "MODULES =" > modules.ddoc ;grep -h -e "^module" generated/gtkd/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/gtkdgl/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/sourceview/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/vte/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

dmd -o- -D -Dddocs  modules.ddoc docs/candy.ddoc \
	generated/gtkd/gtk/*  generated/gtkd/gtkc/* generated/gtkd/glib/* generated/gtkd/gio/* generated/gtkd/gdk/* \
	generated/gtkd/gobject/* generated/gtkd/gthread/* generated/gtkd/atk/* \
	generated/gtkd/pango/* generated/gtkd/cairo/* generated/gtkd/gdkpixbuf/* \
	generated/gtkdgl/glgdk/*  generated/gtkdgl/glgtk/*  generated/gtkdgl/gtkglc/* \
	generated/sourceview/gsv/*  generated/sourceview/gsvc/* \
	generated/vte/vtec/* generated/vte/vte/* -op


