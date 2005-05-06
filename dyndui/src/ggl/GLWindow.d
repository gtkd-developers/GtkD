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

module ggl.GLWindow;

private import ggl.Types;
private import ggl.GLConfig;
private import ddi.Drawable;
private import ddi.WindowG;

private:
extern(C)
{
	GdkGLWindow * gdk_gl_window_new(GdkGLConfig * glconfig, GdkWindow * window, int * attrib_list);
	void gdk_gl_window_destroy(GdkGLWindow * glwindow);
	GdkWindow * gdk_gl_window_get_window(GdkGLWindow * glwindow);
	GdkGLWindow * gdk_window_set_gl_capability(GdkWindow * window, GdkGLConfig * glconfig, int * attrib_list);
	void gdk_window_unset_gl_capability(GdkWindow * window);
	gboolean gdk_window_is_gl_capable(GdkWindow * window);
	GdkGLWindow * gdk_window_get_gl_window(GdkWindow * window);
	//#define gdk_window_get_gl_drawable(window)  this is macro that casts the result of gdk_window_get_gl_window to GdkGLDrawable.
};

/**
 * OpenGL window which is located on-screen
 */
public:
class GLWindow :
		Drawable
{

	package:
	this(GdkGLWindow * gdkGLWindow)
	{
		super(cast(GObject *) gdkGLWindow);
	}

	public:

	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Window";
	}

	/**
	 * Creates a new GLWindow
	 */
	this(GLConfig glconfig, WindowG window, int[] attrib_list)
	{
		this(gdk_gl_window_new(glconfig.ggl(), window.gdkW(), cast(int*)attrib_list));
	}
	
	/**
	 * Destroy this GLWindow
	 */
	void destroy()
	{
		gdk_gl_window_destroy(cast(GdkGLWindow*)obj());
	}
	
	/**
	 * Gets the WindowG from this GLWindow
	 * @return the WindowG
	 */
	WindowG getWindow()
	{
		return new WindowG(gdk_gl_window_get_window(cast(GdkGLWindow*)obj()));
	}
	
	/**
	 * Sets GL capabilities for a WindowG
	 * @param window
	 * @param glconfig
	 * @param attrib_list
	 * @return the new GLWindow
	 */
	GLWindow setGLCapability(WindowG windowG, GLConfig glconfig, int[] attrib_list)
	{
		return new GLWindow(gdk_window_set_gl_capability(windowG.gdkW(), glconfig.ggl(), cast(int*)attrib_list));
	}
	
	
	/**
	 * Removes GL Capabilities fro the window
	 */
	static void unsetGLCapability(WindowG windowG)
	{
		gdk_window_unset_gl_capability(windowG.gdkW());
	}
	
	/**
	 * Checks if the window is GL capable
	 * @param windowG
	 * @return true if true
	 */
	static bit isGLCapable(WindowG windowG)
	{
		return gdk_window_is_gl_capable(windowG.gdkW()) == 0 ? false : true;
	}
	
	/**
	 * Gets the GLWindow from the WindowG
	 * @param windowG
	 * @return a new GLWindow
	 */
	static GLWindow getGLWindow(WindowG windowG)
	{
		return new GLWindow(gdk_window_get_gl_window(windowG.gdkW()));
	}
	
	//#define gdk_window_get_gl_drawable(window)  this is macro that casts the result of gdk_window_get_gl_window to GdkGLDrawable.

}
