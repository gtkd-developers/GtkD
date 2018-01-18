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


module glgdk.GLWindow;

private import gdk.Window;
private import glgdk.GLConfig;
private import glgdk.GLDrawableIF;
private import glgdk.GLDrawableT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
public class GLWindow : ObjectG, GLDrawableIF
{
	/** the main Gtk struct */
	protected GdkGLWindow* gdkGLWindow;

	/** Get the main Gtk struct */
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
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkGLWindow* gdkGLWindow, bool ownedRef = false)
	{
		this.gdkGLWindow = gdkGLWindow;
		super(cast(GObject*)gdkGLWindow, ownedRef);
	}

	// add the GLDrawable capabilities
	mixin GLDrawableT!(GdkGLWindow);


	/** */
	public static GType getType()
	{
		return gdk_gl_window_get_type();
	}

	/**
	 * Creates an on-screen rendering area.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None). See GLX 1.3 spec.
	 *
	 * Params:
	 *     glconfig = a #GdkGLConfig.
	 *     window = the #GdkWindow to be used as the rendering area.
	 *     attribList = this must be set to NULL or empty (first attribute of None).
	 *
	 * Return: the new #GdkGLWindow.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLConfig glconfig, Window window, int* attribList)
	{
		auto p = gdk_gl_window_new((glconfig is null) ? null : glconfig.getGLConfigStruct(), (window is null) ? null : window.getWindowStruct(), attribList);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GdkGLWindow*) p, true);
	}

	/**
	 * Returns the #GdkGLWindow held by the @window.
	 *
	 * Params:
	 *     window = a #GdkWindow.
	 *
	 * Return: the #GdkGLWindow.
	 */
	public static GLWindow getGlWindow(Window window)
	{
		auto p = gdk_window_get_gl_window((window is null) ? null : window.getWindowStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLWindow)(cast(GdkGLWindow*) p);
	}

	/**
	 * Returns whether the @window is OpenGL-capable.
	 *
	 * Params:
	 *     window = a #GdkWindow.
	 *
	 * Return: TRUE if the @window is OpenGL-capable, FALSE otherwise.
	 */
	public static bool isGlCapable(Window window)
	{
		return gdk_window_is_gl_capable((window is null) ? null : window.getWindowStruct()) != 0;
	}

	/**
	 * Set the OpenGL-capability to the @window.
	 * This function creates a new #GdkGLWindow held by the @window.
	 * attrib_list is currently unused. This must be set to NULL or empty
	 * (first attribute of None).
	 *
	 * Params:
	 *     window = the #GdkWindow to be used as the rendering area.
	 *     glconfig = a #GdkGLConfig.
	 *     attribList = this must be set to NULL or empty (first attribute of None).
	 *
	 * Return: the #GdkGLWindow used by the @window if it is successful, NULL otherwise.
	 */
	public static GLWindow setGlCapability(Window window, GLConfig glconfig, int* attribList)
	{
		auto p = gdk_window_set_gl_capability((window is null) ? null : window.getWindowStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), attribList);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLWindow)(cast(GdkGLWindow*) p);
	}

	/**
	 * Unset the OpenGL-capability of the @window.
	 * This function destroys the #GdkGLWindow held by the @window.
	 *
	 * Params:
	 *     window = a #GdkWindow.
	 */
	public static void unsetGlCapability(Window window)
	{
		gdk_window_unset_gl_capability((window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Returns the #GdkWindow associated with @glwindow.
	 *
	 * Return: the #GdkWindow associated with @glwindow.
	 */
	public Window getWindow()
	{
		auto p = gdk_gl_window_get_window(gdkGLWindow);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
}
