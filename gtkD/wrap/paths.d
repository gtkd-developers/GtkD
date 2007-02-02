/*
 * This file is part of gtkD. Adapted from:
 *
 * paths.d  -- list of libraries that will be dynamically linked with DUI
 *
 * Added:	John Reimer	-- 2004-12-20
 * Updated: 2005-02-21 changed names; added version(linux)
 * Updated: 2005-05-05 updated Linux support
 */

module gtkc.paths;

/* 
 * Define the Libraries that gtkD will be using.
 *   This is a growable list, as long as the programmer
 *   also adds to the importLibs list.
 */

enum LIBRARY
{
	ATK,
	CAIROLIB,
	GDK,
	GDKPIXBUF,
	GLIB,
	GMODULE,
	GOBJECT,
	GTHREAD,
	GTK,
	PANGO,
	GLGDK,
	GLGTK,
	GL,
	GLU,
	GLEXT,
	GDA
}

version (Windows)
{
const char[][LIBRARY.max+1] importLibs = 
	[
	LIBRARY.ATK:		"libatk-1.0-0.dll",
	LIBRARY.CAIROLIB:	"libcairo-1.0-0.dll",
	LIBRARY.GDK: 		"libgdk-win32-2.0-0.dll",
	LIBRARY.GDKPIXBUF:	"libgdk_pixbuf-2.0-0.dll",
	LIBRARY.GLIB: 		"libglib-2.0-0.dll",
	LIBRARY.GMODULE: 	"libgmodule-2.0-0.dll",
	LIBRARY.GOBJECT:		"libgobject-2.0-0.dll",
	LIBRARY.GTHREAD:		"libgthread-2.0-0.dll",
	LIBRARY.GTK:		"libgtk-win32-2.0-0.dll",
	LIBRARY.PANGO:		"libpango-1.0-0.dll",
	LIBRARY.GLGDK:		"libgdkglext-win32-1.0-0.dll",
	LIBRARY.GLGTK:		"libgtkglext-win32-1.0-0.dll",
	LIBRARY.GL:			"opengl32.dll",
	LIBRARY.GLU:		"glu32.dll",
	LIBRARY.GDA:		"libgda-2.dll"
	];
}

version(linux) 
{
const char[][LIBRARY.max+1] importLibs =
	[
	LIBRARY.ATK:		"libatk-1.0.so",
	LIBRARY.CAIROLIB:	"libcairo.so.2",
	LIBRARY.GDK:		"libgdk-x11-2.0.so",
	LIBRARY.GDKPIXBUF:	"libgdk_pixbuf-2.0.so",
	LIBRARY.GLIB:		"libglib-2.0.so",
	LIBRARY.GMODULE:		"libgmodule-2.0.so",
	LIBRARY.GOBJECT:		"libgobject-2.0.so",
	LIBRARY.GTHREAD:		"libgthread-2.0.so",
	LIBRARY.GTK:		"libgtk-x11-2.0.so",
	LIBRARY.PANGO:		"libpango-1.0.so",
	LIBRARY.GLGDK:		"libgdkglext-x11-1.0.so",
	LIBRARY.GLGTK:		"libgtkglext-x11-1.0.so",
	LIBRARY.GL:			"libGL.so",
	LIBRARY.GLU:		"libGLU.so",
	LIBRARY.GLEXT:		"libGL.so",
	LIBRARY.GDA:		"libgda-2.so.3"
	];
}

// Specify the default path for the DUI dll's

version(Windows) const char[] libPath = "\\Program Files\\Common Files\\GTK\\2.0\\bin\\";

//   empty for linux because default path is known by ld

version(linux)   const char[] libPath = "";

