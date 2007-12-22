#!/bin/sh
echo "MODULES =" > modules.ddoc ;grep -h -e "^module" src/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" srcgl/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

dmd -o- -D -Dddocs  modules.ddoc docs/candy.ddoc \
	src/gtk/*  src/gtkc/* src/glib/* src/gdk/* \
	src/gobject/* src/gthread/* src/atk/* \
	src/pango/* src/cairoLib/* \
	srcgl/glgdk/*  srcgl/glgtk/*  srcgl/gtkglc/* -op


