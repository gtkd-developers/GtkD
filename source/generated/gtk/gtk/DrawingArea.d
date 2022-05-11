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


module gtk.DrawingArea;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkDrawingArea` is a widget that allows drawing with cairo.
 * 
 * ![An example GtkDrawingArea](drawingarea.png)
 * 
 * It’s essentially a blank widget; you can draw on it. After
 * creating a drawing area, the application may want to connect to:
 * 
 * - The [signal@Gtk.Widget::realize] signal to take any necessary actions
 * when the widget is instantiated on a particular display.
 * (Create GDK resources in response to this signal.)
 * 
 * - The [signal@Gtk.DrawingArea::resize] signal to take any necessary
 * actions when the widget changes size.
 * 
 * - Call [method@Gtk.DrawingArea.set_draw_func] to handle redrawing the
 * contents of the widget.
 * 
 * The following code portion demonstrates using a drawing
 * area to display a circle in the normal widget foreground
 * color.
 * 
 * ## Simple GtkDrawingArea usage
 * 
 * ```c
 * static void
 * draw_function (GtkDrawingArea *area,
 * cairo_t        *cr,
 * int             width,
 * int             height,
 * gpointer        data)
 * {
 * GdkRGBA color;
 * GtkStyleContext *context;
 * 
 * context = gtk_widget_get_style_context (GTK_WIDGET (area));
 * 
 * cairo_arc (cr,
 * width / 2.0, height / 2.0,
 * MIN (width, height) / 2.0,
 * 0, 2 * G_PI);
 * 
 * gtk_style_context_get_color (context,
 * &color);
 * gdk_cairo_set_source_rgba (cr, &color);
 * 
 * cairo_fill (cr);
 * }
 * 
 * int
 * main (int argc, char **argv)
 * {
 * gtk_init ();
 * 
 * GtkWidget *area = gtk_drawing_area_new ();
 * gtk_drawing_area_set_content_width (GTK_DRAWING_AREA (area), 100);
 * gtk_drawing_area_set_content_height (GTK_DRAWING_AREA (area), 100);
 * gtk_drawing_area_set_draw_func (GTK_DRAWING_AREA (area),
 * draw_function,
 * NULL, NULL);
 * return 0;
 * }
 * ```
 * 
 * The draw function is normally called when a drawing area first comes
 * onscreen, or when it’s covered by another window and then uncovered.
 * You can also force a redraw by adding to the “damage region” of the
 * drawing area’s window using [method@Gtk.Widget.queue_draw].
 * This will cause the drawing area to call the draw function again.
 * 
 * The available routines for drawing are documented in the
 * [Cairo documentation](https://www.cairographics.org/manual/); GDK
 * offers additional API to integrate with Cairo, like [func@Gdk.cairo_set_source_rgba]
 * or [func@Gdk.cairo_set_source_pixbuf].
 * 
 * To receive mouse events on a drawing area, you will need to use
 * event controllers. To receive keyboard events, you will need to set
 * the “can-focus” property on the drawing area, and you should probably
 * draw some user-visible indication that the drawing area is focused.
 * 
 * If you need more complex control over your widget, you should consider
 * creating your own `GtkWidget` subclass.
 */
public class DrawingArea : Widget
{
	/** the main Gtk struct */
	protected GtkDrawingArea* gtkDrawingArea;

	/** Get the main Gtk struct */
	public GtkDrawingArea* getDrawingAreaStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkDrawingArea;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkDrawingArea;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkDrawingArea* gtkDrawingArea, bool ownedRef = false)
	{
		this.gtkDrawingArea = gtkDrawingArea;
		super(cast(GtkWidget*)gtkDrawingArea, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_drawing_area_get_type();
	}

	/**
	 * Creates a new drawing area.
	 *
	 * Returns: a new `GtkDrawingArea`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_drawing_area_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkDrawingArea*) __p);
	}

	/**
	 * Retrieves the content height of the `GtkDrawingArea`.
	 *
	 * Returns: The height requested for content of the drawing area
	 */
	public int getContentHeight()
	{
		return gtk_drawing_area_get_content_height(gtkDrawingArea);
	}

	/**
	 * Retrieves the content width of the `GtkDrawingArea`.
	 *
	 * Returns: The width requested for content of the drawing area
	 */
	public int getContentWidth()
	{
		return gtk_drawing_area_get_content_width(gtkDrawingArea);
	}

	/**
	 * Sets the desired height of the contents of the drawing area.
	 *
	 * Note that because widgets may be allocated larger sizes than they
	 * requested, it is possible that the actual height passed to your draw
	 * function is larger than the height set here. You can use
	 * [method@Gtk.Widget.set_valign] to avoid that.
	 *
	 * If the height is set to 0 (the default), the drawing area may disappear.
	 *
	 * Params:
	 *     height = the height of contents
	 */
	public void setContentHeight(int height)
	{
		gtk_drawing_area_set_content_height(gtkDrawingArea, height);
	}

	/**
	 * Sets the desired width of the contents of the drawing area.
	 *
	 * Note that because widgets may be allocated larger sizes than they
	 * requested, it is possible that the actual width passed to your draw
	 * function is larger than the width set here. You can use
	 * [method@Gtk.Widget.set_halign] to avoid that.
	 *
	 * If the width is set to 0 (the default), the drawing area may disappear.
	 *
	 * Params:
	 *     width = the width of contents
	 */
	public void setContentWidth(int width)
	{
		gtk_drawing_area_set_content_width(gtkDrawingArea, width);
	}

	/**
	 * Setting a draw function is the main thing you want to do when using
	 * a drawing area.
	 *
	 * The draw function is called whenever GTK needs to draw the contents
	 * of the drawing area to the screen.
	 *
	 * The draw function will be called during the drawing stage of GTK.
	 * In the drawing stage it is not allowed to change properties of any
	 * GTK widgets or call any functions that would cause any properties
	 * to be changed. You should restrict yourself exclusively to drawing
	 * your contents in the draw function.
	 *
	 * If what you are drawing does change, call [method@Gtk.Widget.queue_draw]
	 * on the drawing area. This will cause a redraw and will call @draw_func again.
	 *
	 * Params:
	 *     drawFunc = callback that lets you draw
	 *         the drawing area's contents
	 *     userData = user data passed to @draw_func
	 *     destroy = destroy notifier for @user_data
	 */
	public void setDrawFunc(GtkDrawingAreaDrawFunc drawFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_drawing_area_set_draw_func(gtkDrawingArea, drawFunc, userData, destroy);
	}

	/**
	 * Emitted once when the widget is realized, and then each time the widget
	 * is changed while realized.
	 *
	 * This is useful in order to keep state up to date with the widget size,
	 * like for instance a backing surface.
	 *
	 * Params:
	 *     width = the width of the viewport
	 *     height = the height of the viewport
	 */
	gulong addOnResize(void delegate(int, int, DrawingArea) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "resize", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
