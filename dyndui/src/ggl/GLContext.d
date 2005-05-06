/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module ggl.GLContext;

private import ggl.Types;
private import dui.ObjectG;
private import ggl.GLDrawable;
private import ggl.GLConfig;

private:
extern(C)
{
	GdkGLContext * gdk_gl_context_new(GdkGLDrawable * gldrawable, GdkGLContext * share_list, gboolean direct, int render_type);
	void gdk_gl_context_destroy(GdkGLContext * glcontext);
	gboolean gdk_gl_context_copy(GdkGLContext * glcontext, GdkGLContext * src, ulong mask);
	GdkGLDrawable * gdk_gl_context_get_gl_drawable(GdkGLContext * glcontext);
	GdkGLConfig * gdk_gl_context_get_gl_config(GdkGLContext * glcontext);
	GdkGLContext * gdk_gl_context_get_share_list(GdkGLContext * glcontext);
	gboolean gdk_gl_context_is_direct(GdkGLContext * glcontext);
	int gdk_gl_context_get_render_type(GdkGLContext * glcontext);
	GdkGLContext * gdk_gl_context_get_current();
};

/**
 * OpenGL rendering context object
 */
public:
class GLContext :
		ObjectG
{

	package:
	this(GdkGLContext * gdkGLContext)
	{
		super(cast(GObject *) gdkGLContext);
	}

	public:

	GdkGLContext* ggl()
	{
		return cast(GdkGLContext*)obj();
	}
	
	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Context";
	}

	/**
	 * Creates a new GLContext
	 * @param drawable
	 * @param share_list GLContext
	 * @param direct
	 * @param render_type
	 */
	this(GLDrawable drawable, GLContext share_list, gboolean direct, int render_type)
	{
		GdkGLContext* sl = null;
		if ( share_list !== null )
		{
			sl = share_list.ggl();
		}
		this(gdk_gl_context_new(drawable.ggl(), sl, direct, render_type));
	}
	
	/**
	 * Destroy
	 */
	void destroy()
	{
		gdk_gl_context_destroy(ggl());
	}
	
	/**
	 * Copy a GLContext into this one
	 * @param src sourceGLContext
	 * @param mask
	 * @return true if sucessefuly
	 */
	bit copy(GLContext src, ulong mask)
	{
		return gdk_gl_context_copy(ggl(), src.ggl(), mask) == 0 ? false : true;
	}
	
	/**
	 * Gets a new GLDrawable from this context
	 * @return the GLDrawable
	 */
	GLDrawable getGLDrawable()
	{
		return new GLDrawable(gdk_gl_context_get_gl_drawable(ggl()));
	}
	
	/**
	 * Gets a new GLConfig from the context
	 * @return the new GLConfig
	 */
	GLConfig getGLConfig()
	{
		return new GLConfig(gdk_gl_context_get_gl_config(ggl()));
	}
	
	/**
	 * Gets GdkGLContext with which the glcontext shares the display lists and texture objects.
	 * @return the new GLContext
	 */
	GLContext getGLShareList()
	{
		return new GLContext(gdk_gl_context_get_share_list(ggl()));
	}
	
	/**
	 * Returns whether the glcontext is a direct rendering context.
	 * @return  TRUE if the glcontext is a direct rendering contest.
	 */
	bit isDirected()
	{
		return gdk_gl_context_is_direct(ggl()) == 0 ? false : true;
	}
	
	/**
	 * Gets render_type of the glcontext.
	 * @return  GDK_GL_RGBA_TYPE or GDK_GL_COLOR_INDEX_TYPE.
	 */
	int getRenderType()
	{
		return gdk_gl_context_get_render_type(ggl());
	}
	
	/**
	 * Returns the current GdkGLContext.
	 * @return Returns :  the current GdkGLContext or NULL if there is no current context.
	 */
	static GLContext getCurrent()
	{
		return new GLContext(gdk_gl_context_get_current());
	}

}
