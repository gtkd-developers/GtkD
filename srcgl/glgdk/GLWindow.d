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
 * inFile  = gtkglext-gdkglwindow.html
 * outPack = glgdk
 * outFile = GLWindow
 * strct   = GdkGLWindow
 * realStrct=
 * ctorStrct=
 * clss    = GLWindow
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- GLDrawableIF
 * prefixes:
 * 	- gdk_gl_window_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gdk.Window
 * 	- glgdk.GLConfig
 * 	- glgdk.GLDrawableT
 * 	- glgdk.GLDrawableIF
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * 	- GdkGLWindow* -> GLWindow
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLWindow;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gdk.Window;
private import glgdk.GLConfig;
private import glgdk.GLDrawableT;
private import glgdk.GLDrawableIF;



private import gobject.ObjectG;

/**
 * Description
 */
public class GLWindow : ObjectG, GLDrawableIF
{
	
	/** the main Gtk struct */
	protected GdkGLWindow* gdkGLWindow;
	
	
	public GdkGLWindow* getGLWindowStruct()
	{
		return gdkGLWindow;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGLWindow;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLWindow* gdkGLWindow)
	{
		super(cast(GObject*)gdkGLWindow);
		this.gdkGLWindow = gdkGLWindow;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkGLWindow = cast(GdkGLWindow*)obj;
	}
	
	// add the GLDrawable capabilities
	mixin GLDrawableT!(GdkGLWindow);
	
	/**
	 * Description
	 */
	
	/**
	 * Creates an on-screen rendering area.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None). See GLX 1.3 spec.
	 * Params:
	 * glconfig = a GdkGLConfig.
	 * window = the GdkWindow to be used as the rendering area.
	 * attribList = this must be set to NULL or empty (first attribute of None).
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GLConfig glconfig, Window window, int* attribList)
	{
		// GdkGLWindow * gdk_gl_window_new (GdkGLConfig *glconfig,  GdkWindow *window,  const int *attrib_list);
		auto p = gdk_gl_window_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (window is null) ? null : window.getWindowStruct(), attribList);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_window_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (window is null) ? null : window.getWindowStruct(), attribList)");
		}
		this(cast(GdkGLWindow*) p);
	}
	
	/**
	 * Returns the GdkWindow associated with glwindow.
	 * Returns: the GdkWindow associated with glwindow.
	 */
	public Window getWindow()
	{
		// GdkWindow * gdk_gl_window_get_window (GdkGLWindow *glwindow);
		auto p = gdk_gl_window_get_window(gdkGLWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Set the OpenGL-capability to the window.
	 * This function creates a new GdkGLWindow held by the window.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None).
	 * Params:
	 * window = the GdkWindow to be used as the rendering area.
	 * glconfig = a GdkGLConfig.
	 * attribList = this must be set to NULL or empty (first attribute of None).
	 * Returns: the GdkGLWindow used by the window if it is successful, NULL otherwise.
	 */
	public static GLWindow gdkWindowSetGLCapability(Window window, GLConfig glconfig, int* attribList)
	{
		// GdkGLWindow * gdk_window_set_gl_capability (GdkWindow *window,  GdkGLConfig *glconfig,  const int *attrib_list);
		auto p = gdk_window_set_gl_capability((window is null) ? null : window.getWindowStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), attribList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLWindow)(cast(GdkGLWindow*) p);
	}
	
	/**
	 * Unset the OpenGL-capability of the window.
	 * This function destroys the GdkGLWindow held by the window.
	 * Params:
	 * window = a GdkWindow.
	 */
	public static void gdkWindowUnsetGLCapability(Window window)
	{
		// void gdk_window_unset_gl_capability (GdkWindow *window);
		gdk_window_unset_gl_capability((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Returns whether the window is OpenGL-capable.
	 * Params:
	 * window = a GdkWindow.
	 * Returns: TRUE if the window is OpenGL-capable, FALSE otherwise.
	 */
	public static int gdkWindowIsGLCapable(Window window)
	{
		// gboolean gdk_window_is_gl_capable (GdkWindow *window);
		return gdk_window_is_gl_capable((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Returns the GdkGLWindow held by the window.
	 * Params:
	 * window = a GdkWindow.
	 * Returns: the GdkGLWindow.
	 */
	public static GLWindow gdkWindowGetGLWindow(Window window)
	{
		// GdkGLWindow * gdk_window_get_gl_window (GdkWindow *window);
		auto p = gdk_window_get_gl_window((window is null) ? null : window.getWindowStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLWindow)(cast(GdkGLWindow*) p);
	}
}
