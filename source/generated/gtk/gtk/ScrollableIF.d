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


module gtk.ScrollableIF;

private import glib.MemorySlice;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Border;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkScrollable` is an interface for widgets with native scrolling ability.
 * 
 * To implement this interface you should override the
 * [property@Gtk.Scrollable:hadjustment] and
 * [property@Gtk.Scrollable:vadjustment] properties.
 * 
 * ## Creating a scrollable widget
 * 
 * All scrollable widgets should do the following.
 * 
 * - When a parent widget sets the scrollable child widget’s adjustments,
 * the widget should connect to the [signal@Gtk.Adjustment::value-changed]
 * signal. The child widget should then populate the adjustments’ properties
 * as soon as possible, which usually means queueing an allocation right away
 * and populating the properties in the [vfunc@Gtk.Widget.size_allocate]
 * implementation.
 * 
 * - Because its preferred size is the size for a fully expanded widget,
 * the scrollable widget must be able to cope with underallocations.
 * This means that it must accept any value passed to its
 * [vfunc@Gtk.Widget.size_allocate] implementation.
 * 
 * - When the parent allocates space to the scrollable child widget,
 * the widget must ensure the adjustments’ property values are correct and up
 * to date, for example using [method@Gtk.Adjustment.configure].
 * 
 * - When any of the adjustments emits the [signal@Gtk.Adjustment::value-changed]
 * signal, the scrollable widget should scroll its contents.
 */
public interface ScrollableIF{
	/** Get the main Gtk struct */
	public GtkScrollable* getScrollableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return gtk_scrollable_get_type();
	}

	/**
	 * Returns the size of a non-scrolling border around the
	 * outside of the scrollable.
	 *
	 * An example for this would be treeview headers. GTK can use
	 * this information to display overlaid graphics, like the
	 * overshoot indication, at the right position.
	 *
	 * Params:
	 *     border = return location for the results
	 *
	 * Returns: %TRUE if @border has been set
	 */
	public bool getBorder(out Border border);

	/**
	 * Retrieves the `GtkAdjustment` used for horizontal scrolling.
	 *
	 * Returns: horizontal `GtkAdjustment`.
	 */
	public Adjustment getHadjustment();

	/**
	 * Gets the horizontal `GtkScrollablePolicy`.
	 *
	 * Returns: The horizontal `GtkScrollablePolicy`.
	 */
	public GtkScrollablePolicy getHscrollPolicy();

	/**
	 * Retrieves the `GtkAdjustment` used for vertical scrolling.
	 *
	 * Returns: vertical `GtkAdjustment`.
	 */
	public Adjustment getVadjustment();

	/**
	 * Gets the vertical `GtkScrollablePolicy`.
	 *
	 * Returns: The vertical `GtkScrollablePolicy`.
	 */
	public GtkScrollablePolicy getVscrollPolicy();

	/**
	 * Sets the horizontal adjustment of the `GtkScrollable`.
	 *
	 * Params:
	 *     hadjustment = a `GtkAdjustment`
	 */
	public void setHadjustment(Adjustment hadjustment);

	/**
	 * Sets the `GtkScrollablePolicy`.
	 *
	 * The policy determines whether horizontal scrolling should start
	 * below the minimum width or below the natural width.
	 *
	 * Params:
	 *     policy = the horizontal `GtkScrollablePolicy`
	 */
	public void setHscrollPolicy(GtkScrollablePolicy policy);

	/**
	 * Sets the vertical adjustment of the `GtkScrollable`.
	 *
	 * Params:
	 *     vadjustment = a `GtkAdjustment`
	 */
	public void setVadjustment(Adjustment vadjustment);

	/**
	 * Sets the `GtkScrollablePolicy`.
	 *
	 * The policy determines whether vertical scrolling should start
	 * below the minimum height or below the natural height.
	 *
	 * Params:
	 *     policy = the vertical `GtkScrollablePolicy`
	 */
	public void setVscrollPolicy(GtkScrollablePolicy policy);
}
