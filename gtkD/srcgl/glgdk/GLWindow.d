/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gtkglext-gdkglwindow.html
 * outPack = glgdk
 * outFile = GLWindow
 * strct   = GdkGLWindow
 * realStrct=
 * ctorStrct=
 * clss    = GLWindow
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_window_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glgdk.GLConfig
 * structWrap:
 * 	- GdkGLCondif* -> GLConfig
 * module aliases:
 * local aliases:
 */

module glgdk.GLWindow;

private import gtkglc.glgdktypes;

private import gtkglc.glgdk;


private import glgdk.GLConfig;




/**
 * Description
 */
private import gdk.Drawable;
public class GLWindow : Drawable
{
	
	/** the main Gtk struct */
	protected GdkGLWindow* gdkGLWindow;
	
	
	public GdkGLWindow* getGLWindowStruct()
	{
		return gdkGLWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkGLWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLWindow* gdkGLWindow)
	{
		super(cast(GdkDrawable*)gdkGLWindow);
		this.gdkGLWindow = gdkGLWindow;
	}
	
	/**
	 */
	
	
	/**
	 * Creates an on-screen rendering area.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None). See GLX 1.3 spec.
	 * glconfig:
	 *  a GdkGLConfig.
	 * window:
	 *  the GdkWindow to be used as the rendering area.
	 * attrib_list:
	 *  this must be set to NULL or empty (first attribute of None).
	 * Returns:
	 *  the new GdkGLWindow.
	 */
	public this (GdkGLConfig* glconfig, GdkWindow* window, int* attribList)
	{
		// GdkGLWindow* gdk_gl_window_new (GdkGLConfig *glconfig,  GdkWindow *window,  const int *attrib_list);
		this(cast(GdkGLWindow*)gdk_gl_window_new(glconfig, window, attribList) );
	}
	
	/**
	 * Destroys the OpenGL resources associated with glwindow and
	 * decrements glwindow's reference count.
	 * glwindow:
	 *  a GdkGLWindow.
	 */
	public void destroy()
	{
		// void gdk_gl_window_destroy (GdkGLWindow *glwindow);
		gdk_gl_window_destroy(gdkGLWindow);
	}
	
	/**
	 * Returns the GdkWindow associated with glwindow.
	 * Notice that GdkGLWindow is not GdkWindow, but another
	 * GdkDrawable which have an associated GdkWindow.
	 * glwindow:
	 *  a GdkGLWindow.
	 * Returns:
	 *  the GdkWindow associated with glwindow.
	 */
	public GdkWindow* getWindow()
	{
		// GdkWindow* gdk_gl_window_get_window (GdkGLWindow *glwindow);
		return gdk_gl_window_get_window(gdkGLWindow);
	}
	
	/**
	 * Set the OpenGL-capability to the window.
	 * This function creates a new GdkGLWindow held by the window.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None).
	 * window:
	 *  the GdkWindow to be used as the rendering area.
	 * glconfig:
	 *  a GdkGLConfig.
	 * attrib_list:
	 *  this must be set to NULL or empty (first attribute of None).
	 * Returns:
	 *  the GdkGLWindow used by the window if it is successful,
	 *  NULL otherwise.
	 */
	public static GdkGLWindow* gdkWindowSetGLCapability(GdkWindow* window, GdkGLConfig* glconfig, int* attribList)
	{
		// GdkGLWindow* gdk_window_set_gl_capability (GdkWindow *window,  GdkGLConfig *glconfig,  const int *attrib_list);
		return gdk_window_set_gl_capability(window, glconfig, attribList);
	}
	
	/**
	 * Unset the OpenGL-capability of the window.
	 * This function destroys the GdkGLWindow held by the window.
	 * window:
	 *  a GdkWindow.
	 */
	public static void gdkWindowUnsetGLCapability(GdkWindow* window)
	{
		// void gdk_window_unset_gl_capability (GdkWindow *window);
		gdk_window_unset_gl_capability(window);
	}
	
	/**
	 * Returns whether the window is OpenGL-capable.
	 * window:
	 *  a GdkWindow.
	 * Returns:
	 *  TRUE if the window is OpenGL-capable, FALSE otherwise.
	 */
	public static int gdkWindowIsGLCapable(GdkWindow* window)
	{
		// gboolean gdk_window_is_gl_capable (GdkWindow *window);
		return gdk_window_is_gl_capable(window);
	}
	
	/**
	 * Returns the GdkGLWindow held by the window.
	 * window:
	 *  a GdkWindow.
	 * Returns:
	 *  the GdkGLWindow.
	 */
	public static GdkGLWindow* gdkWindowGetGLWindow(GdkWindow* window)
	{
		// GdkGLWindow* gdk_window_get_gl_window (GdkWindow *window);
		return gdk_window_get_gl_window(window);
	}
	
}
