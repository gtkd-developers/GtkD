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

module gtkc.paths;

//version(Tango) private alias char[] string;
version(Tango) import gtkc.glibtypes;

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
	GSTINTERFACES
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
	LIBRARY.GSTINTERFACES: "libgstvideo-1.0.dll"
	];
}
else version(darwin)
{
const string DIRECTORY = "/opt/local/lib/";

const string[LIBRARY.max+1] importLibs =
	[
	LIBRARY.ATK:           DIRECTORY~"libatk-1.0.dylib",
	LIBRARY.CAIRO:         DIRECTORY~"libcairo.dylib",
	LIBRARY.GDK:           DIRECTORY~"libgdk-3.0.dylib",
	LIBRARY.GDKPIXBUF:     DIRECTORY~"libgdk_pixbuf-2.0.dylib",
	LIBRARY.GLIB:          DIRECTORY~"libglib-2.0.dylib",
	LIBRARY.GMODULE:       DIRECTORY~"libgmodule-2.0.dylib",
	LIBRARY.GOBJECT:       DIRECTORY~"libgobject-2.0.dylib",
	LIBRARY.GIO:           DIRECTORY~"libgio-2.0.dylib",
	LIBRARY.GTHREAD:       DIRECTORY~"libgthread-2.0.dylib",
	LIBRARY.GTK:           DIRECTORY~"libgtk-3.0.dylib",
	LIBRARY.PANGO:         DIRECTORY~"libpango-1.0.dylib",
	LIBRARY.PANGOCAIRO:    DIRECTORY~"libpangocairo-1.0.dylib",
	LIBRARY.GLGDK:         DIRECTORY~"libgdkglext-3.0.dylib",
	LIBRARY.GLGTK:         DIRECTORY~"libgtkglext-3.0.dylib",
	LIBRARY.GDA:           DIRECTORY~"libgda-2.dylib",
	LIBRARY.GSV:           DIRECTORY~"libgtksourceview-3.0.dylib",
	LIBRARY.GSV1:          DIRECTORY~"libgtksourceview-3.0.dylib",
	LIBRARY.GSTREAMER:     DIRECTORY~"libgstreamer-1.0.dylib",
	LIBRARY.GSTINTERFACES: DIRECTORY~"libgstvideo-1.0.dylib"
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
	LIBRARY.GSTINTERFACES: "libgstvideo-1.0.so.0"
	];
}
