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


module glgdk.GLContext;

private import glgdk.GLConfig;
private import glgdk.GLDrawableIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtkglc.glgdk;
public  import gtkglc.glgdktypes;


/** */
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
	 * Creates a new OpenGL rendering context.
	 *
	 * Params:
	 *     gldrawable = a #GdkGLDrawable.
	 *     shareList = the #GdkGLContext with which to share display lists and texture objects. NULL indicates that no sharing is to take place.
	 *     direct = whether rendering is to be done with a direct connection to the graphics system.
	 *     renderType = GDK_GL_RGBA_TYPE.
	 *
	 * Return: the new #GdkGLContext.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GLDrawableIF gldrawable, GLContext shareList, bool direct, int renderType)
	{
		auto p = gdk_gl_context_new((gldrawable is null) ? null : gldrawable.getGLDrawableStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GdkGLContext*) p, true);
	}

	/**
	 * Returns the current #GdkGLContext.
	 *
	 * Return: the current #GdkGLContext or NULL if there is no current context.
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
	 * Releases the current #GdkGLContext.
	 */
	public static void releaseCurrent()
	{
		gdk_gl_context_release_current();
	}

	/**
	 * Copy state from @src rendering context to @glcontext.
	 *
	 * @mask contains the bitwise-OR of the same symbolic names that are passed to
	 * the glPushAttrib() function. You can use GL_ALL_ATTRIB_BITS to copy all the
	 * rendering state information.
	 *
	 * Params:
	 *     src = the source context.
	 *     mask = which portions of @src state are to be copied to @glcontext.
	 *
	 * Return: FALSE if it fails, TRUE otherwise.
	 */
	public bool copy(GLContext src, ulong mask)
	{
		return gdk_gl_context_copy(gdkGLContext, (src is null) ? null : src.getGLContextStruct(), mask) != 0;
	}

	/**
	 * Gets #GdkGLConfig with which the @glcontext is configured.
	 *
	 * Return: the #GdkGLConfig.
	 */
	public GLConfig getGlConfig()
	{
		auto p = gdk_gl_context_get_gl_config(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLConfig)(cast(GdkGLConfig*) p);
	}

	/**
	 * Gets #GdkGLDrawable to which the @glcontext is bound.
	 *
	 * Return: the #GdkGLDrawable or NULL if no #GdkGLDrawable is bound.
	 */
	public GLDrawableIF getGlDrawable()
	{
		auto p = gdk_gl_context_get_gl_drawable(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLDrawableIF)(cast(GdkGLDrawable*) p);
	}

	/**
	 * Gets render_type of the @glcontext.
	 *
	 * Return: GDK_GL_RGBA_TYPE.
	 */
	public int getRenderType()
	{
		return gdk_gl_context_get_render_type(gdkGLContext);
	}

	/**
	 * Gets #GdkGLContext with which the @glcontext shares the display lists and
	 * texture objects.
	 *
	 * Return: the #GdkGLContext.
	 */
	public GLContext getShareList()
	{
		auto p = gdk_gl_context_get_share_list(gdkGLContext);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) p);
	}

	/**
	 * Returns whether the @glcontext is a direct rendering context.
	 *
	 * Return: TRUE if the @glcontext is a direct rendering contest.
	 */
	public bool isDirect()
	{
		return gdk_gl_context_is_direct(gdkGLContext) != 0;
	}

	/** */
	public bool makeCurrent(GLDrawableIF draw, GLDrawableIF read)
	{
		return gdk_gl_context_make_current(gdkGLContext, (draw is null) ? null : draw.getGLDrawableStruct(), (read is null) ? null : read.getGLDrawableStruct()) != 0;
	}
}
