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
 * inFile  = gtkglext-gdkglcontext.html
 * outPack = glgdk
 * outFile = GLContext
 * strct   = GdkGLContext
 * realStrct=
 * ctorStrct=
 * clss    = GLContext
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_context_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glgdk.GLDrawable
 * structWrap:
 * 	- GdkGLDrawable* -> GLDrawable
 * module aliases:
 * local aliases:
 */

module glgdk.GLContext;

private import gtkglc.glgdktypes;

private import gtkglc.glgdk;

private import glgdk.GLDrawable;



/**
 * Description
 */
private import gobject.ObjectG;
public class GLContext : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkGLContext* gdkGLContext;
	
	
	public GdkGLContext* getGLContextStruct()
	{
		return gdkGLContext;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkGLContext;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLContext* gdkGLContext)
	{
		super(cast(GObject*)gdkGLContext);
		this.gdkGLContext = gdkGLContext;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new OpenGL rendering context.
	 * gldrawable:
	 *  a GdkGLDrawable.
	 * share_list:
	 *  the GdkGLContext with which to share display lists and texture
	 *  objects. NULL indicates that no sharing is to take place.
	 * direct:
	 *  whether rendering is to be done with a direct connection to
	 *  the graphics system.
	 * render_type:
	 *  GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE (currently not
	 *  used).
	 * Returns:
	 *  the new GdkGLContext.
	 */
	public this (GLDrawable gldrawable, GdkGLContext* shareList, int direct, int renderType)
	{
		// GdkGLContext* gdk_gl_context_new (GdkGLDrawable *gldrawable,  GdkGLContext *share_list,  gboolean direct,  int render_type);
		this(cast(GdkGLContext*)gdk_gl_context_new((gldrawable is null) ? null : gldrawable.getGLDrawableStruct(), shareList, direct, renderType) );
	}
	
	/**
	 * Destroys the OpenGL resources associated with glcontext and
	 * decrements glcontext's reference count.
	 * glcontext:
	 *  a GdkGLContext.
	 */
	public void destroy()
	{
		// void gdk_gl_context_destroy (GdkGLContext *glcontext);
		gdk_gl_context_destroy(gdkGLContext);
	}
	
	/**
	 * Copy state from src rendering context to glcontext.
	 * mask contains the bitwise-OR of the same symbolic names that are passed to
	 * the glPushAttrib() function. You can use GL_ALL_ATTRIB_BITS to copy all the
	 * rendering state information.
	 * glcontext:
	 *  a GdkGLContext.
	 * src:
	 *  the source context.
	 * Param3:
	 * Returns:
	 *  FALSE if it fails, TRUE otherwise.
	 */
	public int copy(GdkGLContext* src, ulong mask)
	{
		// gboolean gdk_gl_context_copy (GdkGLContext *glcontext,  GdkGLContext *src,  unsigned long mask);
		return gdk_gl_context_copy(gdkGLContext, src, mask);
	}
	
	/**
	 * Gets GdkGLDrawable to which the glcontext is bound.
	 * glcontext:
	 *  a GdkGLContext.
	 * Returns:
	 *  the GdkGLDrawable or NULL if no GdkGLDrawable is bound.
	 */
	public GLDrawable getGLDrawable()
	{
		// GdkGLDrawable* gdk_gl_context_get_gl_drawable  (GdkGLContext *glcontext);
		return new GLDrawable( gdk_gl_context_get_gl_drawable(gdkGLContext) );
	}
	
	/**
	 * Gets GdkGLConfig with which the glcontext is configured.
	 * glcontext:
	 *  a GdkGLContext.
	 * Returns:
	 *  the GdkGLConfig.
	 */
	public GdkGLConfig* getGLConfig()
	{
		// GdkGLConfig* gdk_gl_context_get_gl_config (GdkGLContext *glcontext);
		return gdk_gl_context_get_gl_config(gdkGLContext);
	}
	
	/**
	 * Gets GdkGLContext with which the glcontext shares the display lists and
	 * texture objects.
	 * glcontext:
	 *  a GdkGLContext.
	 * Returns:
	 *  the GdkGLContext.
	 */
	public GdkGLContext* getShareList()
	{
		// GdkGLContext* gdk_gl_context_get_share_list (GdkGLContext *glcontext);
		return gdk_gl_context_get_share_list(gdkGLContext);
	}
	
	/**
	 * Returns whether the glcontext is a direct rendering context.
	 * glcontext:
	 *  a GdkGLContext.
	 * Returns:
	 *  TRUE if the glcontext is a direct rendering contest.
	 */
	public int isDirect()
	{
		// gboolean gdk_gl_context_is_direct (GdkGLContext *glcontext);
		return gdk_gl_context_is_direct(gdkGLContext);
	}
	
	/**
	 * Gets render_type of the glcontext.
	 * glcontext:
	 *  a GdkGLContext.
	 * Returns:
	 *  GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE.
	 */
	public int getRenderType()
	{
		// int gdk_gl_context_get_render_type (GdkGLContext *glcontext);
		return gdk_gl_context_get_render_type(gdkGLContext);
	}
	
	/**
	 * Returns the current GdkGLContext.
	 * Returns:
	 *  the current GdkGLContext or NULL if there is no current
	 *  context.
	 * <<Frame Buffer Configuration
	 * Rendering Surface>>
	 */
	public static GdkGLContext* getCurrent()
	{
		// GdkGLContext* gdk_gl_context_get_current (void);
		return gdk_gl_context_get_current();
	}
}
