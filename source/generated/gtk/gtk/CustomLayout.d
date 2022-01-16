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


module gtk.CustomLayout;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.LayoutManager;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkCustomLayout` uses closures for size negotiation.
 * 
 * A `GtkCustomLayout `uses closures matching to the old `GtkWidget`
 * virtual functions for size negotiation, as a convenience API to
 * ease the porting towards the corresponding `GtkLayoutManager
 * virtual functions.
 */
public class CustomLayout : LayoutManager
{
	/** the main Gtk struct */
	protected GtkCustomLayout* gtkCustomLayout;

	/** Get the main Gtk struct */
	public GtkCustomLayout* getCustomLayoutStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCustomLayout;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCustomLayout;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCustomLayout* gtkCustomLayout, bool ownedRef = false)
	{
		this.gtkCustomLayout = gtkCustomLayout;
		super(cast(GtkLayoutManager*)gtkCustomLayout, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_custom_layout_get_type();
	}

	/**
	 * Creates a new legacy layout manager.
	 *
	 * Legacy layout managers map to the old `GtkWidget` size negotiation
	 * virtual functions, and are meant to be used during the transition
	 * from layout containers to layout manager delegates.
	 *
	 * Params:
	 *     requestMode = a function to retrieve
	 *         the `GtkSizeRequestMode` of the widget using the layout; the
	 *         default request mode is %GTK_SIZE_REQUEST_CONSTANT_SIZE
	 *     measure = a function to measure the widget using the layout manager
	 *     allocate = a function to allocate the children of the widget using
	 *         the layout manager
	 *
	 * Returns: the newly created `GtkCustomLayout`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkCustomRequestModeFunc requestMode, GtkCustomMeasureFunc measure, GtkCustomAllocateFunc allocate)
	{
		auto __p = gtk_custom_layout_new(requestMode, measure, allocate);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCustomLayout*) __p, true);
	}
}
