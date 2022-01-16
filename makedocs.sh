#!/bin/sh
echo "MODULES =" > modules.ddoc
grep -h -e "^module" source/linker/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/adw/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/atk/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/cairo/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/gdk/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/gdkpixbuf/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/gio/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/glib/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/graphene/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/gsk/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
#grep -h -e "^module" source/generated/gstreamer/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/gtk/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/harfbuzz/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/pango/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/rsvg/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/shumate/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/soup/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc
grep -h -e "^module" source/generated/sourceview/* -r | sort -u | sed 's/;//' | sed 's/\r//' |  sed 's/module \(.*\)$/\t$(MODULE \1)/' >> modules.ddoc

cd source/generated

dmd -o- -D -Dd../../docs  ../../modules.ddoc ../../docs/candydoc/candy.ddoc \
	gtk/gtk/*.d gtk/gtk/c/*.d glib/glib/*.d glib/glib/c/*.d gio/gio/*.d \
	gio/gio/c/*.d gdk/gdk/*.d gdk/gdk/c/*.d glib/gobject/*.d glib/gobject/c/*.d \
	glib/gthread/*.d glib/gthread/c/*.d atk/atk/*.d atk/atk/c/*.d pango/pango/*.d pango/pango/c/*.d \
	cairo/cairo/*.d cairo/cairo/c/*.d gdkpixbuf/gdkpixbuf/*.d gdkpixbuf/gdkpixbuf/c/*.d rsvg/rsvg/*.d rsvg/rsvg/c/*.d \
	sourceview/sourceview/*.d sourceview/sourceview/c/*.d harfbuzz/harfbuzz/*.d harfbuzz/harfbuzz/c/*.d \
	adw/adw/*.d adw/adw/c/*.d soup/soup/*.d soup/soup/c/*.d graphene/graphene/*.d graphene/graphene/c/*.d \
  shumate/shumate/*.d shumate/shumate/c/*.d gsk/gsk/*.d gsk/gsk/c/*.d ../linker/*.d -op

cd ../../docs

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
