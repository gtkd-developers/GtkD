/*
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 *
 * paths.d  -- list of libraries that will be dynamically linked with gtkD
 *
 * Added:	John Reimer	-- 2004-12-20
 * Updated: 2005-02-21 changed names; added version(linux)
 * Updated: 2005-05-05 updated Linux support
 * Updated: 2008-02-16 Tango support
 */

module gtkd.paths;

/*
 * Define the Libraries that gtkD will be using.
 *   This is a growable list, as long as the programmer
 *   also adds to the importLibs list.
 */

enum LIBRARY
{
	ATK,
	CAIRO,
	GDK,
	GDKPIXBUF,
	GLIB,
	GMODULE,
	GOBJECT,
	GIO,
	GTHREAD,
	GTK,
	PANGO,
	PANGOCAIRO,
	GLGDK,
	GLGTK,
	GDA,
	GSV,
	GSV1,
	GSTREAMER,
	GSTINTERFACES,
	VTE,
	PEAS,
        RSVG,
}

version (Windows)
{
	const string[LIBRARY.max+1] importLibs =
	[
		LIBRARY.ATK:           "libatk-1.0-0.dll",
		LIBRARY.CAIRO:         "libcairo-2.dll",
		LIBRARY.GDK:           "libgdk-3-0.dll",
		LIBRARY.GDKPIXBUF:     "libgdk_pixbuf-2.0-0.dll",
		LIBRARY.GLIB:          "libglib-2.0-0.dll",
		LIBRARY.GMODULE:       "libgmodule-2.0-0.dll",
		LIBRARY.GOBJECT:       "libgobject-2.0-0.dll",
		LIBRARY.GIO:           "libgio-2.0-0.dll",
		LIBRARY.GTHREAD:       "libgthread-2.0-0.dll",
		LIBRARY.GTK:           "libgtk-3-0.dll",
		LIBRARY.PANGO:         "libpango-1.0-0.dll",
		LIBRARY.PANGOCAIRO:    "libpangocairo-1.0-0.dll",
		LIBRARY.GLGDK:         "libgdkglext-3.0-0.dll",
		LIBRARY.GLGTK:         "libgtkglext-3.0-0.dll",
		LIBRARY.GDA:           "libgda-4.0-4.dll",
		LIBRARY.GSV:           "libgtksourceview-3.0-0.dll",
		LIBRARY.GSV1:          "libgtksourceview-3.0-1.dll",
		LIBRARY.GSTREAMER:     "libgstreamer-1.0.dll",
		LIBRARY.GSTINTERFACES: "libgstvideo-1.0.dll",
		LIBRARY.VTE:           "libvte-2.91.dll",
		LIBRARY.PEAS:          "libpeas-1.0.dll",
		LIBRARY.RSVG:          "librsvg-2-2.dll",
	];
}
else version(darwin)
{
	const string[LIBRARY.max+1] importLibs =
	[
		LIBRARY.ATK:           "libatk-1.0.dylib",
		LIBRARY.CAIRO:         "libcairo.dylib",
		LIBRARY.GDK:           "libgdk-3.0.dylib",
		LIBRARY.GDKPIXBUF:     "libgdk_pixbuf-2.0.dylib",
		LIBRARY.GLIB:          "libglib-2.0.dylib",
		LIBRARY.GMODULE:       "libgmodule-2.0.dylib",
		LIBRARY.GOBJECT:       "libgobject-2.0.dylib",
		LIBRARY.GIO:           "libgio-2.0.dylib",
		LIBRARY.GTHREAD:       "libgthread-2.0.dylib",
		LIBRARY.GTK:           "libgtk-3.0.dylib",
		LIBRARY.PANGO:         "libpango-1.0.dylib",
		LIBRARY.PANGOCAIRO:    "libpangocairo-1.0.dylib",
		LIBRARY.GLGDK:         "libgdkglext-3.0.dylib",
		LIBRARY.GLGTK:         "libgtkglext-3.0.dylib",
		LIBRARY.GDA:           "libgda-2.dylib",
		LIBRARY.GSV:           "libgtksourceview-3.0.dylib",
		LIBRARY.GSV1:          "libgtksourceview-3.0.dylib",
		LIBRARY.GSTREAMER:     "libgstreamer-1.0.dylib",
		LIBRARY.GSTINTERFACES: "libgstvideo-1.0.dylib",
		LIBRARY.VTE:           "libvte-2.91.dylib",
		LIBRARY.PEAS:          "libpeas-1.0.dylib",
		LIBRARY.RSVG:          "libpeas-2-2.dylib",
	];
}
else
{
	const string[LIBRARY.max+1] importLibs =
	[
		LIBRARY.ATK:           "libatk-1.0.so.0",
		LIBRARY.CAIRO:         "libcairo.so.2",
		LIBRARY.GDK:           "libgdk-3.so.0",
		LIBRARY.GDKPIXBUF:     "libgdk_pixbuf-2.0.so.0",
		LIBRARY.GLIB:          "libglib-2.0.so.0",
		LIBRARY.GMODULE:       "libgmodule-2.0.so.0",
		LIBRARY.GOBJECT:       "libgobject-2.0.so.0",
		LIBRARY.GIO:           "libgio-2.0.so.0",
		LIBRARY.GTHREAD:       "libgthread-2.0.so.0",
		LIBRARY.GTK:           "libgtk-3.so.0",
		LIBRARY.PANGO:         "libpango-1.0.so.0",
		LIBRARY.PANGOCAIRO:    "libpangocairo-1.0.so.0",
		LIBRARY.GLGDK:         "libgdkglext-3.0.so.0",
		LIBRARY.GLGTK:         "libgtkglext-3.0.so.0",
		LIBRARY.GDA:           "libgda-4.0.so.4",
		LIBRARY.GSV:           "libgtksourceview-3.0.so.0",
		LIBRARY.GSV1:          "libgtksourceview-3.0.so.1",
		LIBRARY.GSTREAMER:     "libgstreamer-1.0.so.0",
		LIBRARY.GSTINTERFACES: "libgstvideo-1.0.so.0",
		LIBRARY.VTE:           "libvte-2.91.so.0",
		LIBRARY.PEAS:          "libpeas-1.0.so.0",
		LIBRARY.RSVG:          "librsvg-2.so.2",
	];
}
