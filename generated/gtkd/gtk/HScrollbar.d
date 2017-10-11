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


module gtk.HScrollbar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Scrollbar;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkHScrollbar widget is a widget arranged horizontally creating a
 * scrollbar. See #GtkScrollbar for details on
 * scrollbars. #GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left %NULL in which case one
 * will be created for you. See #GtkScrollbar for a description of what the
 * fields in an adjustment represent for a scrollbar.
 * 
 * GtkHScrollbar has been deprecated, use #GtkScrollbar instead.
 */
public class HScrollbar : Scrollbar
{
	/** the main Gtk struct */
	protected GtkHScrollbar* gtkHScrollbar;

	/** Get the main Gtk struct */
	public GtkHScrollbar* getHScrollbarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHScrollbar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHScrollbar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHScrollbar* gtkHScrollbar, bool ownedRef = false)
	{
		this.gtkHScrollbar = gtkHScrollbar;
		super(cast(GtkScrollbar*)gtkHScrollbar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_hscrollbar_get_type();
	}

	/**
	 * Creates a new horizontal scrollbar.
	 *
	 * Deprecated: Use gtk_scrollbar_new() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Params:
	 *     adjustment = the #GtkAdjustment to use, or %NULL to create a new adjustment
	 *
	 * Returns: the new #GtkHScrollbar
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment adjustment)
	{
		auto p = gtk_hscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHScrollbar*) p);
	}
}
