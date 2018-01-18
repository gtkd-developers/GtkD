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


module gtk.Layout;

private import gdk.Window;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Container;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * #GtkLayout is similar to #GtkDrawingArea in that it’s a “blank slate” and
 * doesn’t do anything except paint a blank background by default. It’s
 * different in that it supports scrolling natively due to implementing
 * #GtkScrollable, and can contain child widgets since it’s a #GtkContainer.
 * 
 * If you just want to draw, a #GtkDrawingArea is a better choice since it has
 * lower overhead. If you just need to position child widgets at specific
 * points, then #GtkFixed provides that functionality on its own.
 * 
 * When handling expose events on a #GtkLayout, you must draw to the #GdkWindow
 * returned by gtk_layout_get_bin_window(), rather than to the one returned by
 * gtk_widget_get_window() as you would for a #GtkDrawingArea.
 */
public class Layout : Container, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkLayout* gtkLayout;

	/** Get the main Gtk struct */
	public GtkLayout* getLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkLayout* gtkLayout, bool ownedRef = false)
	{
		this.gtkLayout = gtkLayout;
		super(cast(GtkContainer*)gtkLayout, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkLayout);


	/** */
	public static GType getType()
	{
		return gtk_layout_get_type();
	}

	/**
	 * Creates a new #GtkLayout. Unless you have a specific adjustment
	 * you’d like the layout to use for scrolling, pass %NULL for
	 * @hadjustment and @vadjustment.
	 *
	 * Params:
	 *     hadjustment = horizontal scroll adjustment, or %NULL
	 *     vadjustment = vertical scroll adjustment, or %NULL
	 *
	 * Returns: a new #GtkLayout
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment hadjustment, Adjustment vadjustment)
	{
		auto p = gtk_layout_new((hadjustment is null) ? null : hadjustment.getAdjustmentStruct(), (vadjustment is null) ? null : vadjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkLayout*) p);
	}

	/**
	 * Retrieve the bin window of the layout used for drawing operations.
	 *
	 * Returns: a #GdkWindow
	 *
	 * Since: 2.14
	 */
	public Window getBinWindow()
	{
		auto p = gtk_layout_get_bin_window(gtkLayout);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * This function should only be called after the layout has been
	 * placed in a #GtkScrolledWindow or otherwise configured for
	 * scrolling. It returns the #GtkAdjustment used for communication
	 * between the horizontal scrollbar and @layout.
	 *
	 * See #GtkScrolledWindow, #GtkScrollbar, #GtkAdjustment for details.
	 *
	 * Deprecated: Use gtk_scrollable_get_hadjustment()
	 *
	 * Returns: horizontal scroll adjustment
	 */
	public Adjustment getHadjustment()
	{
		auto p = gtk_layout_get_hadjustment(gtkLayout);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the size that has been set on the layout, and that determines
	 * the total extents of the layout’s scrollbar area. See
	 * gtk_layout_set_size ().
	 *
	 * Params:
	 *     width = location to store the width set on
	 *         @layout, or %NULL
	 *     height = location to store the height set on
	 *         @layout, or %NULL
	 */
	public void getSize(out uint width, out uint height)
	{
		gtk_layout_get_size(gtkLayout, &width, &height);
	}

	/**
	 * This function should only be called after the layout has been
	 * placed in a #GtkScrolledWindow or otherwise configured for
	 * scrolling. It returns the #GtkAdjustment used for communication
	 * between the vertical scrollbar and @layout.
	 *
	 * See #GtkScrolledWindow, #GtkScrollbar, #GtkAdjustment for details.
	 *
	 * Deprecated: Use gtk_scrollable_get_vadjustment()
	 *
	 * Returns: vertical scroll adjustment
	 */
	public Adjustment getVadjustment()
	{
		auto p = gtk_layout_get_vadjustment(gtkLayout);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Moves a current child of @layout to a new position.
	 *
	 * Params:
	 *     childWidget = a current child of @layout
	 *     x = X position to move to
	 *     y = Y position to move to
	 */
	public void move(Widget childWidget, int x, int y)
	{
		gtk_layout_move(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}

	/**
	 * Adds @child_widget to @layout, at position (@x,@y).
	 * @layout becomes the new parent container of @child_widget.
	 *
	 * Params:
	 *     childWidget = child widget
	 *     x = X position of child widget
	 *     y = Y position of child widget
	 */
	public void put(Widget childWidget, int x, int y)
	{
		gtk_layout_put(gtkLayout, (childWidget is null) ? null : childWidget.getWidgetStruct(), x, y);
	}

	/**
	 * Sets the horizontal scroll adjustment for the layout.
	 *
	 * See #GtkScrolledWindow, #GtkScrollbar, #GtkAdjustment for details.
	 *
	 * Deprecated: Use gtk_scrollable_set_hadjustment()
	 *
	 * Params:
	 *     adjustment = new scroll adjustment
	 */
	public void setHadjustment(Adjustment adjustment)
	{
		gtk_layout_set_hadjustment(gtkLayout, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Sets the size of the scrollable area of the layout.
	 *
	 * Params:
	 *     width = width of entire scrollable area
	 *     height = height of entire scrollable area
	 */
	public void setSize(uint width, uint height)
	{
		gtk_layout_set_size(gtkLayout, width, height);
	}

	/**
	 * Sets the vertical scroll adjustment for the layout.
	 *
	 * See #GtkScrolledWindow, #GtkScrollbar, #GtkAdjustment for details.
	 *
	 * Deprecated: Use gtk_scrollable_set_vadjustment()
	 *
	 * Params:
	 *     adjustment = new scroll adjustment
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		gtk_layout_set_vadjustment(gtkLayout, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
}
