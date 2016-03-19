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


module gdk.GLContext;

private import gdk.Display;
private import gdk.Window;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gtkc.gdk;
public  import gtkc.gdktypes;


/**
 * #GdkGLContext is an object representing the platform-specific
 * OpenGL drawing context.
 * 
 * #GdkGLContexts are created for a #GdkWindow using
 * gdk_window_create_gl_context(), and the context will match
 * the #GdkVisual of the window.
 * 
 * A #GdkGLContext is not tied to any particular normal framebuffer.
 * For instance, it cannot draw to the #GdkWindow back buffer. The GDK
 * repaint system is in full control of the painting to that. Instead,
 * you can create render buffers or textures and use gdk_cairo_draw_from_gl()
 * in the draw function of your widget to draw them. Then GDK will handle
 * the integration of your rendering with that of other widgets.
 * 
 * Support for #GdkGLContext is platform-specific, context creation
 * can fail, returning %NULL context.
 * 
 * A #GdkGLContext has to be made "current" in order to start using
 * it, otherwise any OpenGL call will be ignored.
 * 
 * ## Creating a new OpenGL context ##
 * 
 * In order to create a new #GdkGLContext instance you need a
 * #GdkWindow, which you typically get during the realize call
 * of a widget.
 * 
 * A #GdkGLContext is not realized until either gdk_gl_context_make_current(),
 * or until it is realized using gdk_gl_context_realize(). It is possible to
 * specify details of the GL context like the OpenGL version to be used, or
 * whether the GL context should have extra state validation enabled after
 * calling gdk_window_create_gl_context() by calling gdk_gl_context_realize().
 * If the realization fails you have the option to change the settings of the
 * #GdkGLContext and try again.
 * 
 * ## Using a GdkGLContext ##
 * 
 * You will need to make the #GdkGLContext the current context
 * before issuing OpenGL calls; the system sends OpenGL commands to
 * whichever context is current. It is possible to have multiple
 * contexts, so you always need to ensure that the one which you
 * want to draw with is the current one before issuing commands:
 * 
 * |[<!-- language="C" -->
 * gdk_gl_context_make_current (context);
 * ]|
 * 
 * You can now perform your drawing using OpenGL commands.
 * 
 * You can check which #GdkGLContext is the current one by using
 * gdk_gl_context_get_current(); you can also unset any #GdkGLContext
 * that is currently set by calling gdk_gl_context_clear_current().
 */
public class GLContext : ObjectG
{
	/** the main Gtk struct */
	protected GdkGLContext* gdkGLContext;

	/** Get the main Gtk struct */
	public GdkGLContext* getGLContextStruct()
	{
		return gdkGLContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkGLContext;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkGLContext = cast(GdkGLContext*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkGLContext* gdkGLContext, bool ownedRef = false)
	{
		this.gdkGLContext = gdkGLContext;
		super(cast(GObject*)gdkGLContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_gl_context_get_type();
	}

	/**
	 * Clears the current #GdkGLContext.
	 *
	 * Any OpenGL call after this function returns will be ignored
	 * until gdk_gl_context_make_current() is called.
	 *
	 * Since: 3.16
	 */
	public static void clearCurrent()
	{
		gdk_gl_context_clear_current();
	}

	/**
	 * Retrieves the current #GdkGLContext.
	 *
	 * Return: the current #GdkGLContext, or %NULL
	 *
	 * Since: 3.16
	 */
	public static GLContext getCurrent()
	{
		auto p = gdk_gl_context_get_current();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) p);
	}

	/**
	 * Retrieves the value set using gdk_gl_context_set_debug_enabled().
	 *
	 * Return: %TRUE if debugging is enabled
	 *
	 * Since: 3.16
	 */
	public bool getDebugEnabled()
	{
		return gdk_gl_context_get_debug_enabled(gdkGLContext) != 0;
	}

	/**
	 * Retrieves the #GdkDisplay the @context is created for
	 *
	 * Return: a #GdkDisplay or %NULL
	 *
	 * Since: 3.16
	 */
	public Display getDisplay()
	{
		auto p = gdk_gl_context_get_display(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Retrieves the value set using gdk_gl_context_set_forward_compatible().
	 *
	 * Return: %TRUE if the context should be forward compatible
	 *
	 * Since: 3.16
	 */
	public bool getForwardCompatible()
	{
		return gdk_gl_context_get_forward_compatible(gdkGLContext) != 0;
	}

	/**
	 * Retrieves the major and minor version requested by calling
	 * gdk_gl_context_set_required_version().
	 *
	 * Params:
	 *     major = return location for the major version to request
	 *     minor = return location for the minor version to request
	 *
	 * Since: 3.16
	 */
	public void getRequiredVersion(out int major, out int minor)
	{
		gdk_gl_context_get_required_version(gdkGLContext, &major, &minor);
	}

	/**
	 * Retrieves the #GdkGLContext that this @context share data with.
	 *
	 * Return: a #GdkGLContext or %NULL
	 *
	 * Since: 3.16
	 */
	public GLContext getSharedContext()
	{
		auto p = gdk_gl_context_get_shared_context(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) p);
	}

	/**
	 * Retrieves the OpenGL version of the @context.
	 *
	 * The @context must be realized prior to calling this function.
	 *
	 * Params:
	 *     major = return location for the major version
	 *     minor = return location for the minor version
	 *
	 * Since: 3.16
	 */
	public void getVersion(out int major, out int minor)
	{
		gdk_gl_context_get_version(gdkGLContext, &major, &minor);
	}

	/**
	 * Retrieves the #GdkWindow used by the @context.
	 *
	 * Return: a #GdkWindow or %NULL
	 *
	 * Since: 3.16
	 */
	public Window getWindow()
	{
		auto p = gdk_gl_context_get_window(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Whether the #GdkGLContext is in legacy mode or not.
	 *
	 * The #GdkGLContext must be realized before calling this function.
	 *
	 * When realizing a GL context, GDK will try to use the OpenGL 3.2 core
	 * profile; this profile removes all the OpenGL API that was deprecated
	 * prior to the 3.2 version of the specification. If the realization is
	 * successful, this function will return %FALSE.
	 *
	 * If the underlying OpenGL implementation does not support core profiles,
	 * GDK will fall back to a pre-3.2 compatibility profile, and this function
	 * will return %TRUE.
	 *
	 * You can use the value returned by this function to decide which kind
	 * of OpenGL API to use, or whether to do extension discovery, or what
	 * kind of shader programs to load.
	 *
	 * Return: %TRUE if the GL context is in legacy mode
	 *
	 * Since: 3.20
	 */
	public bool isLegacy()
	{
		return gdk_gl_context_is_legacy(gdkGLContext) != 0;
	}

	/**
	 * Makes the @context the current one.
	 *
	 * Since: 3.16
	 */
	public void makeCurrent()
	{
		gdk_gl_context_make_current(gdkGLContext);
	}

	/**
	 * Realizes the given #GdkGLContext.
	 *
	 * It is safe to call this function on a realized #GdkGLContext.
	 *
	 * Return: %TRUE if the context is realized
	 *
	 * Since: 3.16
	 *
	 * Throws: GException on failure.
	 */
	public bool realize()
	{
		GError* err = null;
		
		auto p = gdk_gl_context_realize(gdkGLContext, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Sets whether the #GdkGLContext should perform extra validations and
	 * run time checking. This is useful during development, but has
	 * additional overhead.
	 *
	 * The #GdkGLContext must not be realized or made current prior to
	 * calling this function.
	 *
	 * Params:
	 *     enabled = whether to enable debugging in the context
	 *
	 * Since: 3.16
	 */
	public void setDebugEnabled(bool enabled)
	{
		gdk_gl_context_set_debug_enabled(gdkGLContext, enabled);
	}

	/**
	 * Sets whether the #GdkGLContext should be forward compatible.
	 *
	 * Forward compatibile contexts must not support OpenGL functionality that
	 * has been marked as deprecated in the requested version; non-forward
	 * compatible contexts, on the other hand, must support both deprecated and
	 * non deprecated functionality.
	 *
	 * The #GdkGLContext must not be realized or made current prior to calling
	 * this function.
	 *
	 * Params:
	 *     compatible = whether the context should be forward compatible
	 *
	 * Since: 3.16
	 */
	public void setForwardCompatible(bool compatible)
	{
		gdk_gl_context_set_forward_compatible(gdkGLContext, compatible);
	}

	/**
	 * Sets the major and minor version of OpenGL to request.
	 *
	 * Setting @major and @minor to zero will use the default values.
	 *
	 * The #GdkGLContext must not be realized or made current prior to calling
	 * this function.
	 *
	 * Params:
	 *     major = the major version to request
	 *     minor = the minor version to request
	 *
	 * Since: 3.16
	 */
	public void setRequiredVersion(int major, int minor)
	{
		gdk_gl_context_set_required_version(gdkGLContext, major, minor);
	}
}
