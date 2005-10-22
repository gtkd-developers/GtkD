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

module ggl.GLWidget;

private import ggl.Types;
private import dui.Widget;
private import ggl.GLConfig;
private import ggl.GLContext;
private import ggl.GLDrawable;
private import ggl.GLWindow;

private import lib.gdkglext;

/+
private:
extern(C)
{
	gboolean gtk_widget_set_gl_capability(GtkWidget * widget, GdkGLConfig * glconfig, GdkGLContext * share_list, gboolean direct, int render_type);
	gboolean gtk_widget_is_gl_capable(GtkWidget * widget);
	GdkGLConfig * gtk_widget_get_gl_config(GtkWidget * widget);
	GdkGLContext * gtk_widget_create_gl_context(GtkWidget * widget, GdkGLContext * share_list, gboolean direct, int render_type);
	GdkGLContext * gtk_widget_get_gl_context(GtkWidget * widget);
	GdkGLWindow * gtk_widget_get_gl_window(GtkWidget * widget);
	//#define gtk_widget_get_gl_drawable(widget)  this is macro that casts the result of gtk_widget_get_gl_window to GdkGLDrawable.
};
+/
/**
 * Functions for font rendering in OpenGL
 */
public:
class GLWidget
{
	
	this()
	{
	}

	public:

	/**
	 * Gets an object identification
	 * @return a string that identifies the object (or the class)
	 */
	char[] toString()
	{
		return "OpenGL Widget";
	}

	/**
	 * Sets GL capabilities for the widget
	 * @param widget
	 * @param glconfig
	 * @param share_list GLContext
	 * @param direct
	 * @param render_type
	 */
	public static bit setGLCapability(Widget widget, GLConfig glconfig, GLContext share_list, bit direct, int render_type)
	{
		GdkGLContext* sl = null;
		if ( share_list !is null )
		{
			sl = share_list.ggl();
		}
		return gtk_widget_set_gl_capability(
			widget.gtkW(), glconfig.ggl(), sl, direct, render_type
			) == 0 ? false : true;
			
	}
	
	/**
	 * Checks if this widget is GL capable
	 * @param widget
	 * @return true if the widget is gl capable
	 */
	static bit isGLCapable(Widget widget)
	{
		return gtk_widget_is_gl_capable(widget.gtkW()) == 0 ? false : true;
	}
	
	/**
	 * Gets the GLConfig from the widget
	 * @param widget
	 * @return a new GLConfig
	 */
	static GLConfig getGLConfig(Widget widget)
	{
		return new GLConfig(gtk_widget_get_gl_config(widget.gtkW()));
	}
	
	/**
	 * Creates a new GLConext for (from???) the widget
	 * @param widget
	 * @param share_list GLContext
	 * @param direct
	 * @param render_type
	 */
	static GLContext createGLContext(Widget widget, GLContext share_list, bit direct, int render_type)
	{
		GdkGLContext* sl = null;
		if ( share_list !is null )
		{
			sl = share_list.ggl();
		}
		return new GLContext(gtk_widget_create_gl_context(widget.gtkW(), sl, direct, render_type));
	}

	/**
	 * Gets the GLContext for (from???) the widget
	 * @param widget
	 * @return a new GLContext
	 */
	static GLContext getGLContext(Widget widget)
	{
		//widget.dump();
		//GtkWidget* w = widget.gtkW();
		//GdkGLContext* d = gtk_widget_get_gl_context(w);
		//GLContext c = new GLContext(d);
		//return c;
		return new GLContext(gtk_widget_get_gl_context(widget.gtkW()));
	}

	/**
	 * Gets the gl winddow for (from???) the widget
	 * @param widget
	 * @return a new GLWindow
	 */
	static GLWindow getGLWindow(Widget widget)
	{
		return new GLWindow(gtk_widget_get_gl_window(widget.gtkW()));
	}	

	/**
	 * Gets the GL Frawable for (from???) the widget
	 * @param widget
	 * @return a new GLDrawable
	 */
	static GLDrawable getGLDrawable(Widget widget)
	{
		return new GLDrawable(cast(GdkGLDrawable*)gtk_widget_get_gl_window(widget.gtkW()));
	}	

}
