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


module gtk.Scrollbar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Range;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkScrollbar widget is a horizontal or vertical scrollbar,
 * depending on the value of the #GtkOrientable:orientation property.
 * 
 * Its position and movement are controlled by the adjustment that is passed to
 * or created by gtk_scrollbar_new(). See #GtkAdjustment for more details. The
 * #GtkAdjustment:value field sets the position of the thumb and must be between
 * #GtkAdjustment:lower and #GtkAdjustment:upper - #GtkAdjustment:page-size. The
 * #GtkAdjustment:page-size represents the size of the visible scrollable area.
 * The fields #GtkAdjustment:step-increment and #GtkAdjustment:page-increment
 * fields are added to or subtracted from the #GtkAdjustment:value when the user
 * asks to move by a step (using e.g. the cursor arrow keys or, if present, the
 * stepper buttons) or by a page (using e.g. the Page Down/Up keys).
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * scrollbar[.fine-tune]
 * ╰── contents
 * ├── [button.up]
 * ├── [button.down]
 * ├── trough
 * │   ╰── slider
 * ├── [button.up]
 * ╰── [button.down]
 * ]|
 * 
 * GtkScrollbar has a main CSS node with name scrollbar and a subnode for its
 * contents, with subnodes named trough and slider.
 * 
 * The main node gets the style class .fine-tune added when the scrollbar is
 * in 'fine-tuning' mode.
 * 
 * If steppers are enabled, they are represented by up to four additional
 * subnodes with name button. These get the style classes .up and .down to
 * indicate in which direction they are moving.
 * 
 * Other style classes that may be added to scrollbars inside #GtkScrolledWindow
 * include the positional classes (.left, .right, .top, .bottom) and style
 * classes related to overlay scrolling (.overlay-indicator, .dragging, .hovering).
 */
public class Scrollbar : Range
{
	/** the main Gtk struct */
	protected GtkScrollbar* gtkScrollbar;

	/** Get the main Gtk struct */
	public GtkScrollbar* getScrollbarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkScrollbar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrollbar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkScrollbar* gtkScrollbar, bool ownedRef = false)
	{
		this.gtkScrollbar = gtkScrollbar;
		super(cast(GtkRange*)gtkScrollbar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_scrollbar_get_type();
	}

	/**
	 * Creates a new scrollbar with the given orientation.
	 *
	 * Params:
	 *     orientation = the scrollbar’s orientation.
	 *     adjustment = the #GtkAdjustment to use, or %NULL to create a new adjustment.
	 *
	 * Returns: the new #GtkScrollbar.
	 *
	 * Since: 3.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkOrientation orientation, Adjustment adjustment)
	{
		auto p = gtk_scrollbar_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkScrollbar*) p);
	}
}
