/*
 * This file is part of gtkD.
 *
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
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtkglext-gdkglquery.html
 * outPack = glgdk
 * outFile = GLQuery
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLQuery
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_query_
 * 	- gdk_gl_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * structWrap:
 * 	- GdkDisplay* -> Display
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLQuery;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Display;




/**
 * Description
 */
public class GLQuery
{
	
	/**
	 */
	
	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 * Returns: TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static int extension()
	{
		// gboolean gdk_gl_query_extension (void);
		return gdk_gl_query_extension();
	}
	
	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 * Params:
	 * display = the GdkDisplay where the query is sent to.
	 * Returns: TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static int extensionForDisplay(Display display)
	{
		// gboolean gdk_gl_query_extension_for_display (GdkDisplay *display);
		return gdk_gl_query_extension_for_display((display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 * In the X Window System, it returns the GLX version.
	 * In the Microsoft Windows, it returns the Windows version.
	 * Params:
	 * major = returns the major version number of the OpenGL extension.
	 * minor = returns the minor version number of the OpenGL extension.
	 * Returns: FALSE if it fails, TRUE otherwise.
	 */
	public static int versio(out int major, out int minor)
	{
		// gboolean gdk_gl_query_version (int *major,  int *minor);
		return gdk_gl_query_version(&major, &minor);
	}
	
	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 * In the X Window System, it returns the GLX version.
	 * In the Microsoft Windows, it returns the Windows version.
	 * Params:
	 * display = the GdkDisplay where the query is sent to.
	 * major = returns the major version number of the OpenGL extension.
	 * minor = returns the minor version number of the OpenGL extension.
	 * Returns: FALSE if it fails, TRUE otherwise.
	 */
	public static int versionForDisplay(Display display, out int major, out int minor)
	{
		// gboolean gdk_gl_query_version_for_display (GdkDisplay *display,  int *major,  int *minor);
		return gdk_gl_query_version_for_display((display is null) ? null : display.getDisplayStruct(), &major, &minor);
	}
	
	/**
	 * Determines whether a given OpenGL extension is supported.
	 * There must be a valid current rendering context to call
	 * gdk_gl_query_gl_extension().
	 * gdk_gl_query_gl_extension() returns information about OpenGL extensions
	 * only. This means that window system dependent extensions (for example,
	 * GLX extensions) are not reported by gdk_gl_query_gl_extension().
	 * Params:
	 * extension = name of OpenGL extension.
	 * Returns: TRUE if the OpenGL extension is supported, FALSE if not supported.
	 */
	public static int glExtension(string extension)
	{
		// gboolean gdk_gl_query_gl_extension (const char *extension);
		return gdk_gl_query_gl_extension(Str.toStringz(extension));
	}
	
	/**
	 * Returns the address of the OpenGL, GLU, or GLX function.
	 * Params:
	 * procName = function name.
	 * Returns: the address of the function named by proc_name.
	 */
	public static GdkGLProc getProcAddress(string procName)
	{
		// GdkGLProc gdk_gl_get_proc_address (const char *proc_name);
		return gdk_gl_get_proc_address(Str.toStringz(procName));
	}
}
