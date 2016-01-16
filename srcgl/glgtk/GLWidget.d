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


module glgtk.GLWidget;

private import glgdk.GLConfig;
private import glgdk.GLContext;
private import glgdk.GLWindow;
private import gobject.ObjectG;
private import gtk.Widget;
private import gtkglc.glgtk;
public  import gtkglc.glgtktypes;


/** */

/** */
public bool beginGl(Widget widget)
{
	return gtk_widget_begin_gl((widget is null) ? null : widget.getWidgetStruct()) != 0;
}

/**
 * Creates a new #GdkGLContext with the appropriate #GdkGLDrawable
 * for this widget. The GL context must be freed when you're
 * finished with it. See also gtk_widget_get_gl_context().
 *
 * Params:
 *     widget = a #GtkWidget.
 *     shareList = the #GdkGLContext with which to share display lists and texture objects. NULL indicates that no sharing is to take place.
 *     direct = whether rendering is to be done with a direct connection to the graphics system.
 *     renderType = GDK_GL_RGBA_TYPE.
 *
 * Return: the new #GdkGLContext.
 */
public GLContext createGlContext(Widget widget, GLContext shareList, bool direct, int renderType)
{
	auto p = gtk_widget_create_gl_context((widget is null) ? null : widget.getWidgetStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType);
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) p);
}

/** */
public void widgetEndGl(Widget widget, bool doSwap)
{
	gtk_widget_end_gl((widget is null) ? null : widget.getWidgetStruct(), doSwap);
}

/**
 * Returns the #GdkGLConfig referred by the @widget.
 *
 * Params:
 *     widget = a #GtkWidget.
 *
 * Return: the #GdkGLConfig.
 */
public GLConfig getGlConfig(Widget widget)
{
	auto p = gtk_widget_get_gl_config((widget is null) ? null : widget.getWidgetStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(GLConfig)(cast(GdkGLConfig*) p);
}

/**
 * Returns the #GdkGLContext with the appropriate #GdkGLDrawable
 * for this widget. Unlike the GL context returned by
 * gtk_widget_create_gl_context(),  this context is owned by the widget.
 *
 * #GdkGLContext is needed for the function gdk_gl_drawable_begin,
 * or for sharing display lists (see gtk_widget_set_gl_capability()).
 *
 * Params:
 *     widget = a #GtkWidget.
 *
 * Return: the #GdkGLContext.
 */
public GLContext getGlContext(Widget widget)
{
	auto p = gtk_widget_get_gl_context((widget is null) ? null : widget.getWidgetStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) p);
}

/**
 * Returns the #GdkGLWindow owned by the @widget.
 *
 * Params:
 *     widget = a #GtkWidget.
 *
 * Return: the #GdkGLWindow.
 */
public GLWindow getGlWindow(Widget widget)
{
	auto p = gtk_widget_get_gl_window((widget is null) ? null : widget.getWidgetStruct());
	
	if(p is null)
	{
		return null;
	}
	
	return ObjectG.getDObject!(GLWindow)(cast(GdkGLWindow*) p);
}

/**
 * Returns whether the @widget is OpenGL-capable.
 *
 * Params:
 *     widget = a #GtkWidget.
 *
 * Return: TRUE if the @widget is OpenGL-capable, FALSE otherwise.
 */
public bool isGlCapable(Widget widget)
{
	return gtk_widget_is_gl_capable((widget is null) ? null : widget.getWidgetStruct()) != 0;
}

/**
 * Set the OpenGL-capability to the @widget.
 * This function prepares the widget for its use with OpenGL.
 *
 * Params:
 *     widget = the #GtkWidget to be used as the rendering area.
 *     glconfig = a #GdkGLConfig.
 *     shareList = the #GdkGLContext with which to share display lists and texture objects. NULL indicates that no sharing is to take place.
 *     direct = whether rendering is to be done with a direct connection to the graphics system.
 *     renderType = GDK_GL_RGBA_TYPE.
 *
 * Return: TRUE if it is successful, FALSE otherwise.
 */
public bool setGlCapability(Widget widget, GLConfig glconfig, GLContext shareList, bool direct, int renderType)
{
	return gtk_widget_set_gl_capability((widget is null) ? null : widget.getWidgetStruct(), (glconfig is null) ? null : glconfig.getGLConfigStruct(), (shareList is null) ? null : shareList.getGLContextStruct(), direct, renderType) != 0;
}
