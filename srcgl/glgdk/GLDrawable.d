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
 * inFile  = gtkglext-gdkgldrawable.html
 * outPack = glgdk
 * outFile = GLDrawable
 * strct   = GdkGLDrawable
 * realStrct=
 * ctorStrct=
 * clss    = GLDrawable
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_gl_drawable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glgdk.GLContext
 * 	- glgdk.GLConfig
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * 	- GdkGLContext* -> GLContext
 * 	- GdkGLDrawable* -> GLDrawable
 * module aliases:
 * local aliases:
 */

module glgdk.GLDrawable;

public  import gtkglc.glgdktypes;

private import gtkglc.glgdk;


private import glgdk.GLContext;
private import glgdk.GLConfig;




/**
 * Description
 */
public class GLDrawable
{
	
	/** the main Gtk struct */
	protected GdkGLDrawable* gdkGLDrawable;
	
	
	public GdkGLDrawable* getGLDrawableStruct()
	{
		return gdkGLDrawable;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkGLDrawable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkGLDrawable* gdkGLDrawable)
	{
		if(gdkGLDrawable is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkGLDrawable passed to constructor.");
			else return;
		}
		this.gdkGLDrawable = gdkGLDrawable;
	}
	
	/**
	 */
	
	/**
	 * Attach an OpenGL rendering context to a gldrawable.
	 * Params:
	 * glcontext =  a GdkGLContext.
	 * Returns: TRUE if it is successful, FALSE otherwise.
	 */
	public int makeCurrent(GLContext glcontext)
	{
		// gboolean gdk_gl_drawable_make_current (GdkGLDrawable *gldrawable,  GdkGLContext *glcontext);
		return gdk_gl_drawable_make_current(gdkGLDrawable, (glcontext is null) ? null : glcontext.getGLContextStruct());
	}
	
	/**
	 * Returns whether the gldrawable supports the double-buffered visual.
	 * Returns: TRUE if the double-buffered visual is supported, FALSE otherwise.
	 */
	public int isDoubleBuffered()
	{
		// gboolean gdk_gl_drawable_is_double_buffered  (GdkGLDrawable *gldrawable);
		return gdk_gl_drawable_is_double_buffered(gdkGLDrawable);
	}
	
	/**
	 * Exchange front and back buffers.
	 */
	public void swapBuffers()
	{
		// void gdk_gl_drawable_swap_buffers (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_swap_buffers(gdkGLDrawable);
	}
	
	/**
	 * Complete OpenGL execution prior to subsequent GDK drawing calls.
	 */
	public void waitGl()
	{
		// void gdk_gl_drawable_wait_gl (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_wait_gl(gdkGLDrawable);
	}
	
	/**
	 * Complete GDK drawing execution prior to subsequent OpenGL calls.
	 */
	public void waitGdk()
	{
		// void gdk_gl_drawable_wait_gdk (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_wait_gdk(gdkGLDrawable);
	}
	
	/**
	 * Delimits the begining of the OpenGL execution.
	 * Params:
	 * glcontext =  a GdkGLContext.
	 * Returns: TRUE if it is successful, FALSE otherwise.
	 */
	public int glBegin(GLContext glcontext)
	{
		// gboolean gdk_gl_drawable_gl_begin (GdkGLDrawable *gldrawable,  GdkGLContext *glcontext);
		return gdk_gl_drawable_gl_begin(gdkGLDrawable, (glcontext is null) ? null : glcontext.getGLContextStruct());
	}
	
	/**
	 * Delimits the end of the OpenGL execution.
	 */
	public void glEnd()
	{
		// void gdk_gl_drawable_gl_end (GdkGLDrawable *gldrawable);
		gdk_gl_drawable_gl_end(gdkGLDrawable);
	}
	
	/**
	 * Gets GdkGLConfig with which the gldrawable is configured.
	 * Returns: the GdkGLConfig.
	 */
	public GLConfig getGLConfig()
	{
		// GdkGLConfig* gdk_gl_drawable_get_gl_config (GdkGLDrawable *gldrawable);
		auto p = gdk_gl_drawable_get_gl_config(gdkGLDrawable);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new GLConfig(cast(GdkGLConfig*) p);
	}
	
	/**
	 * Fills *width and *height with the size of GL drawable.
	 * width or height can be NULL if you only want the other one.
	 * Params:
	 * width =  location to store drawable's width, or NULL.
	 * height =  location to store drawable's height, or NULL.
	 */
	public void getSize(int* width, int* height)
	{
		// void gdk_gl_drawable_get_size (GdkGLDrawable *gldrawable,  gint *width,  gint *height);
		gdk_gl_drawable_get_size(gdkGLDrawable, width, height);
	}
	
	/**
	 * Returns the current GdkGLDrawable.
	 * Returns: the current GdkGLDrawable or NULL if there is no current drawable.<<Rendering ContextOpenGL Pixmap>>
	 */
	public static GLDrawable getCurrent()
	{
		// GdkGLDrawable* gdk_gl_drawable_get_current (void);
		auto p = gdk_gl_drawable_get_current();
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new GLDrawable(cast(GdkGLDrawable*) p);
	}
}
