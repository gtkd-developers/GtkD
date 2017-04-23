#!/bin/sh
echo "MODULES =" > modules.ddoc ;grep -h -e "^module" generated/gtkd/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/gtkdgl/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/sourceview/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/gstreamer/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/vte/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/peas/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

cd generated

dmd -o- -D -Dd../docs  ../modules.ddoc ../docs/candydoc/candy.ddoc \
	gtkd/gtk/*  gtkd/gtkc/* gtkd/gtkd/* gtkd/glib/* gtkd/gio/* gtkd/gdk/* \
	gtkd/gobject/* gtkd/gthread/* gtkd/atk/* \
	gtkd/pango/* gtkd/cairo/* gtkd/gdkpixbuf/* \
	gtkdgl/glgdk/*  gtkdgl/glgtk/*  gtkdgl/gtkglc/* \
	gstreamer/gstinterfaces/*  gstreamer/gstreamer/*  gstreamer/gstreamerc/* \
	sourceview/gsv/*  sourceview/gsvc/* \
	vte/vtec/* vte/vte/* \
	peas/peasc/* peas/peas/* -op

cd ../docs

echo Escaping gtk.Builder tags.
for file in */*/*.html;
do
  sed -i 's/<template\([^>]*\)>/\&lt;template\1\&gt;/g' "$file"
  sed -i 's/<\/template>/\&lt;\/template\&gt;/g' "$file"
  sed -i 's/<interface\([^>]*\)>/\&lt;interface\1\&gt;/g' "$file"
  sed -i 's/<\/interface>/\&lt;\/interface\&gt;/g' "$file"
  sed -i 's/<object\([^>]*\)>/\&lt;object\1\&gt;/g' "$file"
  sed -i 's/<\/object>/\&lt;\/object\&gt;/g' "$file"
  sed -i 's/<child\([^>]*\)>/\&lt;child\1\&gt;/g' "$file"
  sed -i 's/<\/child>/\&lt;\/child\&gt;/g' "$file"
  sed -i 's/<property\([^>]*\)>/\&lt;property\1\&gt;/g' "$file"
  sed -i 's/<\/property>/\&lt;\/property\&gt;/g' "$file"
done
