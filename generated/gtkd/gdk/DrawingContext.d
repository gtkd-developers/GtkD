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


module gdk.DrawingContext;

private import cairo.Context;
private import cairo.Region;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;
public  import gtkc.gdktypes;


/**
 * #GdkDrawingContext is an object that represents the current drawing
 * state of a #GdkWindow.
 * 
 * It's possible to use a #GdkDrawingContext to draw on a #GdkWindow
 * via rendering API like Cairo or OpenGL.
 * 
 * A #GdkDrawingContext can only be created by calling gdk_window_begin_draw_frame()
 * and will be valid until a call to gdk_window_end_draw_frame().
 * 
 * #GdkDrawingContext is available since GDK 3.22
 */
public class DrawingContext : ObjectG
{
	/** the main Gtk struct */
	protected GdkDrawingContext* gdkDrawingContext;

	/** Get the main Gtk struct */
	public GdkDrawingContext* getDrawingContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDrawingContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDrawingContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDrawingContext* gdkDrawingContext, bool ownedRef = false)
	{
		this.gdkDrawingContext = gdkDrawingContext;
		super(cast(GObject*)gdkDrawingContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_drawing_context_get_type();
	}

	/**
	 * Retrieves a Cairo context to be used to draw on the #GdkWindow
	 * that created the #GdkDrawingContext.
	 *
	 * The returned context is guaranteed to be valid as long as the
	 * #GdkDrawingContext is valid, that is between a call to
	 * gdk_window_begin_draw_frame() and gdk_window_end_draw_frame().
	 *
	 * Returns: a Cairo context to be used to draw
	 *     the contents of the #GdkWindow. The context is owned by the
	 *     #GdkDrawingContext and should not be destroyed
	 *
	 * Since: 3.22
	 */
	public Context getCairoContext()
	{
		auto p = gdk_drawing_context_get_cairo_context(gdkDrawingContext);

		if(p is null)
		{
			return null;
		}

		return new Context(cast(cairo_t*) p);
	}

	/**
	 * Retrieves a copy of the clip region used when creating the @context.
	 *
	 * Returns: a Cairo region
	 *
	 * Since: 3.22
	 */
	public Region getClip()
	{
		auto p = gdk_drawing_context_get_clip(gdkDrawingContext);

		if(p is null)
		{
			return null;
		}

		return new Region(cast(cairo_region_t*) p);
	}

	/**
	 * Retrieves the window that created the drawing @context.
	 *
	 * Returns: a #GdkWindow
	 *
	 * Since: 3.22
	 */
	public Window getWindow()
	{
		auto p = gdk_drawing_context_get_window(gdkDrawingContext);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Checks whether the given #GdkDrawingContext is valid.
	 *
	 * Returns: %TRUE if the context is valid
	 *
	 * Since: 3.22
	 */
	public bool isValid()
	{
		return gdk_drawing_context_is_valid(gdkDrawingContext) != 0;
	}
}
