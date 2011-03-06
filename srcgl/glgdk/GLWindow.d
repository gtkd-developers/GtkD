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
 * omit signals:
 * imports:
 * 	- glgdk.GLConfig
 * 	- gdk.Window
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


private import glgdk.GLConfig;
private import gdk.Window;



private import gdk.Drawable;

/**
 * Description
 */
public class GLWindow : Drawable
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
		if(gdkGLWindow is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkGLWindow);
		if( ptr !is null )
		{
			this = cast(GLWindow)ptr;
			return;
		}
		super(cast(GdkDrawable*)gdkGLWindow);
		this.gdkGLWindow = gdkGLWindow;
	}
	
	/**
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
		// GdkGLWindow* gdk_gl_window_new (GdkGLConfig *glconfig,  GdkWindow *window,  const int *attrib_list);
		auto p = gdk_gl_window_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (window is null) ? null : window.getWindowStruct(), attribList);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_window_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (window is null) ? null : window.getWindowStruct(), attribList)");
		}
		this(cast(GdkGLWindow*) p);
	}
	
	/**
	 * Destroys the OpenGL resources associated with glwindow and
	 * decrements glwindow's reference count.
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
	 * Returns: the GdkWindow associated with glwindow.
	 */
	public Window getWindow()
	{
		// GdkWindow* gdk_gl_window_get_window (GdkGLWindow *glwindow);
		auto p = gdk_gl_window_get_window(gdkGLWindow);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
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
		// GdkGLWindow* gdk_window_set_gl_capability (GdkWindow *window,  GdkGLConfig *glconfig,  const int *attrib_list);
		auto p = gdk_window_set_gl_capability((window is null) ? null : window.getWindowStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), attribList);
		if(p is null)
		{
			return null;
		}
		return new GLWindow(cast(GdkGLWindow*) p);
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
		// GdkGLWindow* gdk_window_get_gl_window (GdkWindow *window);
		auto p = gdk_window_get_gl_window((window is null) ? null : window.getWindowStruct());
		if(p is null)
		{
			return null;
		}
		return new GLWindow(cast(GdkGLWindow*) p);
	}
}
