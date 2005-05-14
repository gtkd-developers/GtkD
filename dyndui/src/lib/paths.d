/*
 * paths.d  -- list of libraries that will be dynamically linked with DUI
 *
 * Added:	John Reimer	-- 2004-12-20
 * Updated: 2005-02-21 changed names; added version(linux)
 * Updated: 2005-05-05 updated Linux support
 */

module lib.paths;

/* 
 * Define the Libraries that DUI will be using.
 *   This is a growable list, as long as the programmer
 *   also adds to the importLibs list.
 */

enum LIBRARY
{
	ATK,
	GDK,
	GDK_PIXBUF,
	GLIB,
	GMODULE,
	GOBJECT,
	GTHREAD,
	GTK,
	PANGO,
	GTK_GLEXT,
	GDK_GLEXT
}

version (Windows)
{
const char[][LIBRARY.max+1] importLibs = 
	[
	LIBRARY.ATK:		"libatk-1.0-0",
	LIBRARY.GDK: 		"libgdk-win32-2.0-0",
	LIBRARY.GDK_PIXBUF:	"libgdk_pixbuf-2.0-0",
	LIBRARY.GLIB: 		"libglib-2.0-0",
	LIBRARY.GMODULE: 	"libgmodule-2.0-0",
	LIBRARY.GOBJECT:	"libgobject-2.0-0",
	LIBRARY.GTHREAD:	"libgthread-2.0-0",
	LIBRARY.GTK:		"libgtk-win32-2.0-0",
	LIBRARY.PANGO:		"libpango-1.0-0",
	LIBRARY.GTK_GLEXT:	"libgtkglext-win32-1.0-0",
	LIBRARY.GDK_GLEXT:	"libgdkglext-win32-1.0-0"
	];
}

version(linux) 
{
const char[][LIBRARY.max+1] importLibs =
	[
	LIBRARY.ATK:		"libatk-1.0",
	LIBRARY.GDK:		"libgdk-x11-2.0",
	LIBRARY.GDK_PIXBUF: "libgdk_pixbuf-2.0",
	LIBRARY.GLIB:		"libglib-2.0",
	LIBRARY.GMODULE:	"libgmodule-2.0",
	LIBRARY.GOBJECT:	"libgobject-2.0",
	LIBRARY.GTHREAD:	"libgthread-2.0",
	LIBRARY.GTK:		"libgtk-x11-2.0",
	LIBRARY.PANGO:		"libpango-1.0",
	LIBRARY.GTK_GLEXT:	"libgtkglext-x11-1.0",
	LIBRARY.GDK_GLEXT:  "libgdkglext-x11-1.0",
	];
}

// Specify the default path for the DUI dll's

version(Windows) const char[] libPath = r"\Program Files\Common Files\GTK\2.0\bin\";

//   empty for linux because default path is known by ld

version(linux)   const char[] libPath = "";
