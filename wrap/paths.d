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
	LIBRARY.GLGDK:         "libgdkglext-win32-3.0-0.dll",
	LIBRARY.GLGTK:         "libgtkglext-win32-3.0-0.dll",
	LIBRARY.GDA:           "libgda-4.0-4.dll",
	LIBRARY.GSV:           "libgtksourceview-3.0-0.dll",
	LIBRARY.GSTREAMER:     "libgstreamer-0.10.dll",
	LIBRARY.GSTINTERFACES: "libgstinterfaces-0.10.dll"
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
	LIBRARY.GSTREAMER:     DIRECTORY~"libgstreamer-0.10.dylib",
	LIBRARY.GSTINTERFACES: DIRECTORY~"libgstinterfaces-0.10.dylib"
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
	LIBRARY.GSTREAMER:     "libgstreamer-0.10.so.0",
	LIBRARY.GSTINTERFACES: "libgstinterfaces-0.10.so.0"
	];
}

version(Windows)
{
	//version(Phobos)
	version(Tango){} else
	{
		import std.windows.registry;
		import std.stdio;
	}

	extern (Windows)
	{
		private uint GetEnvironmentVariableA(char*, char*, uint);
	}

	//Based on tango.sys.Environment.Environment.get
	static string GetEnvironmentVariable(string variable)
	{
		char[] var = variable ~ "\0".dup;
		uint size = GetEnvironmentVariableA(var.ptr, cast(char*)null, 0);
	
		if (size == 0) return "";

		char[] buf = new char[size];
		size = GetEnvironmentVariableA(var.ptr, buf.ptr, size);

		if (size == 0) return "";

		return cast(string)buf[0 .. size];
	}

	string libPath()
	{
		string libPath;

		libPath = GetEnvironmentVariable("GTK_BASEPATH");

		if ( libPath.length > 5 )
		{
			if ( libPath[$-5..$] == "\\bin\\" )
				return libPath;
			else if ( libPath[$-4..$] == "\\bin" )
				return libPath ~ "\\";
			else
				return libPath ~ "\\bin\\";
		}

		// Returns the found location or an empty string
		// to load the libraries from the path.
		// see http://msdn2.microsoft.com/en-us/library/ms682586(VS.85).aspx
		return libPath;
	}
}
else
{
	// empty for Linux, Unix and Mac because default path is known by ld
	string libPath()
	{
		return "";
	}
}
