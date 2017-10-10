#!/bin/sh
echo "MODULES =" > modules.ddoc ;grep -h -e "^module" generated/gtkd/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/sourceview/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/gstreamer/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/vte/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" generated/peas/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

cd generated

dmd -o- -D -Dd../docs  ../modules.ddoc ../docs/candydoc/candy.ddoc \
	gtkd/gtk/*.d gtkd/gtk/c/*.d  gtkd/gtkc/*.d gtkd/gtkd/*.d gtkd/glib/*.d gtkd/glib/c/*.d gtkd/gio/*.d \
	gtkd/gio/c/*.d gtkd/gdk/*.d gtkd/gdk/c/*.d gtkd/gobject/*.d gtkd/gobject/c/*.d \
	gtkd/gthread/*.d gtkd/gthread/c/*.d gtkd/atk/*.d gtkd/atk/c/*.d gtkd/pango/*.d gtkd/pango/c/*.d \
	gtkd/cairo/*.d gtkd/cairo/c/*.d gtkd/gdkpixbuf/*.d gtkd/gdkpixbuf/c/*.d gtkd/rsvg/*.d gtkd/rsvg/c/*.d \
	sourceview/gsv/*.d sourceview/gsv/c/*.d sourceview/gsvc/*.d \
	vte/vtec/*.d  vte/vte/*.d vte/vte/c/*.d \
	gstreamer/gstreamer/*.d gstreamer/gstreamer/c/*.d gstreamer/gstinterfaces/*.d gstreamer/gstinterfaces/c/*.d gstreamer/gstreamerc/*.d \
  gstreamer/gst/mpegts/*.d gstreamer/gst/mpegts/c/*.d gstreamer/gst/base/*.d gstreamer/gst/base/c/*.d gstreamer/gst/app/*.d gstreamer/gst/app/c/*.d \
	peas/peas/*.d peas/peas/c/*.d peas/peasc/*.d -op

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
