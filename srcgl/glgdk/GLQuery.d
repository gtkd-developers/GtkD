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


module glgdk.GLQuery;

private import gdk.Display;
private import glib.Str;
private import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
public struct GLQuery
{

	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 *
	 * In the X Window System, it returns the GLX version.
	 *
	 * In the Microsoft Windows, it returns the Windows version.
	 *
	 * Params:
	 *     major = returns the major version number of the OpenGL extension.
	 *     minor = returns the minor version number of the OpenGL extension.
	 *
	 * Return: FALSE if it fails, TRUE otherwise.
	 */
	public static bool versio(out int major, out int minor)
	{
		return gdk_gl_query_version(&major, &minor) != 0;
	}

	/**
	 * Returns the version numbers of the OpenGL extension to the window system.
	 *
	 * In the X Window System, it returns the GLX version.
	 *
	 * In the Microsoft Windows, it returns the Windows version.
	 *
	 * Params:
	 *     display = the #GdkDisplay where the query is sent to.
	 *     major = returns the major version number of the OpenGL extension.
	 *     minor = returns the minor version number of the OpenGL extension.
	 *
	 * Return: FALSE if it fails, TRUE otherwise.
	 */
	public static bool versionForDisplay(Display display, out int major, out int minor)
	{
		return gdk_gl_query_version_for_display((display is null) ? null : display.getDisplayStruct(), &major, &minor) != 0;
	}

	/**
	 * Returns the address of the OpenGL, GLU, or GLX function.
	 *
	 * Params:
	 *     procName = function name.
	 *
	 * Return: the address of the function named by @proc_name.
	 */
	public static GdkGLProc getProcAddress(string procName)
	{
		return gdk_gl_get_proc_address(Str.toStringz(procName));
	}

	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 *
	 * Return: TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static bool extension()
	{
		return gdk_gl_query_extension() != 0;
	}

	/**
	 * Indicates whether the window system supports the OpenGL extension
	 * (GLX, WGL, etc.).
	 *
	 * Params:
	 *     display = the #GdkDisplay where the query is sent to.
	 *
	 * Return: TRUE if OpenGL is supported, FALSE otherwise.
	 */
	public static bool extensionForDisplay(Display display)
	{
		return gdk_gl_query_extension_for_display((display is null) ? null : display.getDisplayStruct()) != 0;
	}

	/**
	 * Determines whether a given OpenGL extension is supported.
	 *
	 * There must be a valid current rendering context to call
	 * gdk_gl_query_gl_extension().
	 *
	 * gdk_gl_query_gl_extension() returns information about OpenGL extensions
	 * only. This means that window system dependent extensions (for example,
	 * GLX extensions) are not reported by gdk_gl_query_gl_extension().
	 *
	 * Params:
	 *     extension = name of OpenGL extension.
	 *
	 * Return: TRUE if the OpenGL extension is supported, FALSE if not supported.
	 */
	public static bool glExtension(string extension)
	{
		return gdk_gl_query_gl_extension(Str.toStringz(extension)) != 0;
	}
}
