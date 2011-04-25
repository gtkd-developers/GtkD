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
 * 	- glgdk.GLConfig
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * 	- GdkGLContext* -> GLContext
 * 	- GdkGLDrawable* -> GLDrawable
 * module aliases:
 * local aliases:
 * overrides:
 */

module glgdk.GLContext;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;
private import glib.ConstructionException;


private import glgdk.GLDrawable;
private import glgdk.GLConfig;



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
	protected override void* getStruct()
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
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkGLContext);
		if( ptr !is null )
		{
			this = cast(GLContext)ptr;
			return;
		}
		super(cast(GObject*)gdkGLContext);
		this.gdkGLContext = gdkGLContext;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkGLContext = cast(GdkGLContext*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new OpenGL rendering context.
	 * Params:
	 * gldrawable = a GdkGLDrawable.
	 * shareList = the GdkGLContext with which to share display lists and texture
	 *  objects. NULL indicates that no sharing is to take place.
	 * direct = whether rendering is to be done with a direct connection to
	 *  the graphics system.
	 * renderType = GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE (currently not
	 *  used).
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GLDrawable gldrawable, GLContext shareList, int direct, int renderType)
	{
		// GdkGLContext* gdk_gl_context_new (GdkGLDrawable *gldrawable,  GdkGLContext *share_list,  gboolean direct,  int render_type);
		auto p = gdk_gl_context_new((gldrawable is null) ? null : gldrawable.getGLDrawableStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_gl_context_new((gldrawable is null) ? null : gldrawable.getGLDrawableStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType)");
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
	 * src = the source context.
	 * Returns: FALSE if it fails, TRUE otherwise.
	 */
	public int copy(GLContext src, ulong mask)
	{
		// gboolean gdk_gl_context_copy (GdkGLContext *glcontext,  GdkGLContext *src,  unsigned long mask);
		return gdk_gl_context_copy(gdkGLContext, (src is null) ? null : src.getGLContextStruct(), mask);
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
			return null;
		}
		return new GLDrawable(cast(GdkGLDrawable*) p);
	}
	
	/**
	 * Gets GdkGLConfig with which the glcontext is configured.
	 * Returns: the GdkGLConfig.
	 */
	public GLConfig getGLConfig()
	{
		// GdkGLConfig* gdk_gl_context_get_gl_config (GdkGLContext *glcontext);
		auto p = gdk_gl_context_get_gl_config(gdkGLContext);
		if(p is null)
		{
			return null;
		}
		return new GLConfig(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Gets GdkGLContext with which the glcontext shares the display lists and
	 * texture objects.
	 * Returns: the GdkGLContext.
	 */
	public GLContext getShareList()
	{
		// GdkGLContext* gdk_gl_context_get_share_list (GdkGLContext *glcontext);
		auto p = gdk_gl_context_get_share_list(gdkGLContext);
		if(p is null)
		{
			return null;
		}
		return new GLContext(cast(GdkGLContext*) p);
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
	public static GLContext getCurrent()
	{
		// GdkGLContext* gdk_gl_context_get_current (void);
		auto p = gdk_gl_context_get_current();
		if(p is null)
		{
			return null;
		}
		return new GLContext(cast(GdkGLContext*) p);
	}
}
