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
 * inFile  = gtkglext-gtkglwidget.html
 * outPack = glgtk
 * outFile = GLWidget
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = GLWidget
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_widget_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- glgdk.GLDrawable
 * 	- glgdk.GLConfig
 * 	- glgdk.GLContext
 * 	- glgdk.GLWindow
 * structWrap:
 * 	- GdkGLConfig* -> GLConfig
 * 	- GdkGLContext* -> GLContext
 * 	- GdkGLDrawable* -> Drawable
 * 	- GdkGLWindow* -> GLWindow
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module glgtk.GLWidget;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkglc.glgtktypes;

private import gtkglc.glgtk;


private import gtk.Widget;
private import glgdk.GLDrawable;
private import glgdk.GLConfig;
private import glgdk.GLContext;
private import glgdk.GLWindow;




/**
 * Description
 * GtkGLExt is an extension to GTK which adds OpenGL capabilities to
 * GtkWidget. Its use is quite simple: use gtk_widget_set_gl_capability
 * to add OpenGL support to a widget, it will create a OpenGL drawable
 * (GdkGLDrawable) for the widget, which can be obtained via
 * gtk_widget_get_gl_drawable. OpenGL rendering context (GdkGLContext)
 * can also be obtained via gtk_widget_get_gl_context.
 * With GdkGLDrawable and GdkGLContext, gdk_gl_drawable_gl_begin and
 * gdk_gl_drawable_gl_end can be called, and OpenGL function calls can
 * be made between those two functions.
 */
public class GLWidget
{
	
	/**
	 * Gets the GL Frawable for (from???) the widget
	 * @param widget
	 * @return a new GLDrawable
	 */
	static GLDrawable getGLDrawable(Widget widget)
	{
		return new GLDrawable(cast(GdkGLDrawable*)gtk_widget_get_gl_window((widget is null) ? null : widget.getWidgetStruct()));
	}
	
	/**
	 */
	
	/**
	 * Set the OpenGL-capability to the widget.
	 * This function prepares the widget for its use with OpenGL.
	 * widget:
	 *  the GtkWidget to be used as the rendering area.
	 * glconfig:
	 *  a GdkGLConfig.
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
	 *  TRUE if it is successful, FALSE otherwise.
	 */
	public static int setGLCapability(Widget widget, GLConfig glconfig, GLContext shareList, int direct, int renderType)
	{
		// gboolean gtk_widget_set_gl_capability (GtkWidget *widget,  GdkGLConfig *glconfig,  GdkGLContext *share_list,  gboolean direct,  int render_type);
		return gtk_widget_set_gl_capability((widget is null) ? null : widget.getWidgetStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType);
	}
	
	/**
	 * Returns whether the widget is OpenGL-capable.
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  TRUE if the widget is OpenGL-capable, FALSE otherwise.
	 */
	public static int isGLCapable(Widget widget)
	{
		// gboolean gtk_widget_is_gl_capable (GtkWidget *widget);
		return gtk_widget_is_gl_capable((widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns the GdkGLConfig referred by the widget.
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  the GdkGLConfig.
	 */
	public static GLConfig getGLConfig(Widget widget)
	{
		// GdkGLConfig* gtk_widget_get_gl_config (GtkWidget *widget);
		return new GLConfig( gtk_widget_get_gl_config((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * Creates a new GdkGLContext with the appropriate GdkGLDrawable
	 * for this widget. The GL context must be freed when you're
	 * finished with it. See also gtk_widget_get_gl_context().
	 * widget:
	 *  a GtkWidget.
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
	public static GLContext createGLContext(Widget widget, GLContext shareList, int direct, int renderType)
	{
		// GdkGLContext* gtk_widget_create_gl_context (GtkWidget *widget,  GdkGLContext *share_list,  gboolean direct,  int render_type);
		return new GLContext( gtk_widget_create_gl_context((widget is null) ? null : widget.getWidgetStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType) );
	}
	
	/**
	 * Returns the GdkGLContext with the appropriate GdkGLDrawable
	 * for this widget. Unlike the GL context returned by
	 * gtk_widget_create_gl_context(), this context is owned by the widget.
	 * GdkGLContext is needed for the function gdk_gl_drawable_begin,
	 * or for sharing display lists (see gtk_widget_set_gl_capability()).
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  the GdkGLContext.
	 */
	public static GLContext getGLContext(Widget widget)
	{
		// GdkGLContext* gtk_widget_get_gl_context (GtkWidget *widget);
		return new GLContext( gtk_widget_get_gl_context((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
	/**
	 * Returns the GdkGLWindow owned by the widget.
	 * widget:
	 *  a GtkWidget.
	 * Returns:
	 *  the GdkGLWindow.
	 */
	public static GLWindow getGLWindow(Widget widget)
	{
		// GdkGLWindow* gtk_widget_get_gl_window (GtkWidget *widget);
		return new GLWindow( gtk_widget_get_gl_window((widget is null) ? null : widget.getWidgetStruct()) );
	}
	
}
