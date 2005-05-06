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

module ggl.GLDrawable;

private import ggl.Types;
private import ggl.GLContext;
private import ggl.GLConfig;

private:
extern(C)
{
	gboolean gdk_gl_drawable_make_current(GdkGLDrawable * gldrawable, GdkGLContext * glcontext);
	gboolean gdk_gl_drawable_is_double_buffered(GdkGLDrawable * gldrawable);
	void gdk_gl_drawable_swap_buffers(GdkGLDrawable * gldrawable);
	void gdk_gl_drawable_wait_gl(GdkGLDrawable * gldrawable);
	void gdk_gl_drawable_wait_gdk(GdkGLDrawable * gldrawable);
	gboolean gdk_gl_drawable_gl_begin(GdkGLDrawable * gldrawable, GdkGLContext * glcontext);
	void gdk_gl_drawable_gl_end(GdkGLDrawable * gldrawable);
	GdkGLConfig * gdk_gl_drawable_get_gl_config(GdkGLDrawable * gldrawable);
	void gdk_gl_drawable_get_size(GdkGLDrawable * gldrawable, gint * width, gint * height);
	GdkGLDrawable * gdk_gl_drawable_get_current();
};

/**
 * OpenGL rendering surface interface
 */
public:
class GLDrawable
{

	GdkGLDrawable* drawable;
	
	this(GdkGLDrawable* drawable)
	{
		this.drawable = drawable;
	}

	public:

	static GLDrawable getCurrent()
	{
		return new GLDrawable(gdk_gl_drawable_get_current());
	}
	
	/**
	 * Gets the GdkGLDrawable for this GLDrawable
	 */
	GdkGLDrawable* ggl()
	{
		return drawable;
	}
	
	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Drawable";
	}

	/**
	 * Sets this as the current GL drawable
	 * @param gldrawable
	 * @param glcontext
	 */
	bit makeCurrent(GLDrawable gldrawable, GLContext glcontext)
	{
		return gdk_gl_drawable_make_current(gldrawable.ggl(), glcontext.ggl()) == 0 ? false : true;
	}
		
	/**
	 * Checks if this drawable is double buffered
	 * @return true if this drawable is double buffered
	 */
	bit isDoubleBuffered()
	{
		return gdk_gl_drawable_is_double_buffered(ggl()) == 0 ? false : true;
	}

	/**
	 * Swap the buffers on this double buffered draawable
	 */
	void swapBuffers()
	{
		gdk_gl_drawable_swap_buffers(ggl());
	}

	/**
	 * Complete OpenGL execution prior to subsequent GDK drawing calls.
	 */
	void waitGL()
	{
		gdk_gl_drawable_wait_gl(ggl());
	}

	/**
	 * Complete GDK drawing execution prior to subsequent OpenGL calls.
	 */
	void waitGDK()
	{
		gdk_gl_drawable_wait_gdk(ggl());
	}

	/**
	 * Delimits the begining of the OpenGL execution.
	 * @param glcontext
	 */
	bit begin(GLContext glcontext)
	{
		return gdk_gl_drawable_gl_begin(ggl(),glcontext.ggl()) == 0 ? false : true;
	}
	
	/**
	 * Delimits the end of the OpenGL execution.
	 */
	void end()
	{
		gdk_gl_drawable_gl_end(ggl());
	}

	/**
	 * Gets a new GLConfig for this GL
	 * @return a new GLConfig
	 */
	GLConfig getGLConfig()
	{
		return new GLConfig(gdk_gl_drawable_get_gl_config(ggl()));
	}
	
	/**
	 * Gets the size
	 * @param width
	 * @param height
	 */
	void getSize(gint* width, gint* height)
	{
		gdk_gl_drawable_get_size(ggl(), width, height);
	}
}
