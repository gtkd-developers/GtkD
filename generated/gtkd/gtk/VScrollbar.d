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


module gtk.VScrollbar;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Scrollbar;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkVScrollbar widget is a widget arranged vertically creating a
 * scrollbar. See #GtkScrollbar for details on
 * scrollbars. #GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left %NULL in which case one
 * will be created for you. See #GtkScrollbar for a description of what the
 * fields in an adjustment represent for a scrollbar.
 * 
 * GtkVScrollbar has been deprecated, use #GtkScrollbar instead.
 */
public class VScrollbar : Scrollbar
{
	/** the main Gtk struct */
	protected GtkVScrollbar* gtkVScrollbar;

	/** Get the main Gtk struct */
	public GtkVScrollbar* getVScrollbarStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkVScrollbar;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVScrollbar;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkVScrollbar* gtkVScrollbar, bool ownedRef = false)
	{
		this.gtkVScrollbar = gtkVScrollbar;
		super(cast(GtkScrollbar*)gtkVScrollbar, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_vscrollbar_get_type();
	}

	/**
	 * Creates a new vertical scrollbar.
	 *
	 * Deprecated: Use gtk_scrollbar_new() with %GTK_ORIENTATION_VERTICAL instead
	 *
	 * Params:
	 *     adjustment = the #GtkAdjustment to use, or %NULL to create a new adjustment
	 *
	 * Returns: the new #GtkVScrollbar
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment adjustment)
	{
		auto p = gtk_vscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkVScrollbar*) p);
	}
}
