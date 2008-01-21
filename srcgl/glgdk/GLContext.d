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
 * omit signals:
 * imports:
 * 	- glgdk.GLDrawable
 * structWrap:
 * 	- GdkGLDrawable* -> GLDrawable
 * module aliases:
 * local aliases:
 */

module glgdk.GLContext;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;


private import glgdk.GLDrawable;



private import gobject.ObjectG;

/**
 * Description
 */
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
		if(gdkGLContext is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkGLContext passed to constructor.");
			else return;
		}
		super(cast(GObject*)gdkGLContext);
		this.gdkGLContext = gdkGLContext;
	}
	
	/**
	 */
	
	/**
	 * Creates a new OpenGL rendering context.
	 * Params:
	 * gldrawable =  a GdkGLDrawable.
	 * shareList =  the GdkGLContext with which to share display lists and texture
	 *  objects. NULL indicates that no sharing is to take place.
	 * direct =  whether rendering is to be done with a direct connection to
	 *  the graphics system.
	 * renderType =  GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE (currently not
	 *  used).
	 */
	public this (GLDrawable gldrawable, GdkGLContext* shareList, int direct, int renderType)
	{
		// GdkGLContext* gdk_gl_context_new (GdkGLDrawable *gldrawable,  GdkGLContext *share_list,  gboolean direct,  int render_type);
		auto p = gdk_gl_context_new((gldrawable is null) ? null : gldrawable.getGLDrawableStruct(), shareList, direct, renderType);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GdkGLContext*) p);
	}
	
	/**
	 * Destroys the OpenGL resources associated with glcontext and
	 * decrements glcontext's reference count.
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
	 * Params:
	 * src =  the source context.
	 * Returns: FALSE if it fails, TRUE otherwise.
	 */
	public int copy(GdkGLContext* src, ulong mask)
	{
		// gboolean gdk_gl_context_copy (GdkGLContext *glcontext,  GdkGLContext *src,  unsigned long mask);
		return gdk_gl_context_copy(gdkGLContext, src, mask);
	}
	
	/**
	 * Gets GdkGLDrawable to which the glcontext is bound.
	 * Returns: the GdkGLDrawable or NULL if no GdkGLDrawable is bound.
	 */
	public GLDrawable getGLDrawable()
	{
		// GdkGLDrawable* gdk_gl_context_get_gl_drawable  (GdkGLContext *glcontext);
		auto p = gdk_gl_context_get_gl_drawable(gdkGLContext);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new GLDrawable(cast(GdkGLDrawable*) p);
	}
	
	/**
	 * Gets GdkGLConfig with which the glcontext is configured.
	 * Returns: the GdkGLConfig.
	 */
	public GdkGLConfig* getGLConfig()
	{
		// GdkGLConfig* gdk_gl_context_get_gl_config (GdkGLContext *glcontext);
		return gdk_gl_context_get_gl_config(gdkGLContext);
	}
	
	/**
	 * Gets GdkGLContext with which the glcontext shares the display lists and
	 * texture objects.
	 * Returns: the GdkGLContext.
	 */
	public GdkGLContext* getShareList()
	{
		// GdkGLContext* gdk_gl_context_get_share_list (GdkGLContext *glcontext);
		return gdk_gl_context_get_share_list(gdkGLContext);
	}
	
	/**
	 * Returns whether the glcontext is a direct rendering context.
	 * Returns: TRUE if the glcontext is a direct rendering contest.
	 */
	public int isDirect()
	{
		// gboolean gdk_gl_context_is_direct (GdkGLContext *glcontext);
		return gdk_gl_context_is_direct(gdkGLContext);
	}
	
	/**
	 * Gets render_type of the glcontext.
	 * Returns: GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE.
	 */
	public int getRenderType()
	{
		// int gdk_gl_context_get_render_type (GdkGLContext *glcontext);
		return gdk_gl_context_get_render_type(gdkGLContext);
	}
	
	/**
	 * Returns the current GdkGLContext.
	 * Returns: the current GdkGLContext or NULL if there is no current context.<<Frame Buffer ConfigurationRendering Surface>>
	 */
	public static GdkGLContext* getCurrent()
	{
		// GdkGLContext* gdk_gl_context_get_current (void);
		return gdk_gl_context_get_current();
	}
}
