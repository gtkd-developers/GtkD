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


module gtk.CustomFilter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Filter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkCustomFilter` determines whether to include items with a callback.
 */
public class CustomFilter : Filter
{
	/** the main Gtk struct */
	protected GtkCustomFilter* gtkCustomFilter;

	/** Get the main Gtk struct */
	public GtkCustomFilter* getCustomFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkCustomFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCustomFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkCustomFilter* gtkCustomFilter, bool ownedRef = false)
	{
		this.gtkCustomFilter = gtkCustomFilter;
		super(cast(GtkFilter*)gtkCustomFilter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_custom_filter_get_type();
	}

	/**
	 * Creates a new filter using the given @match_func to filter
	 * items.
	 *
	 * If @match_func is %NULL, the filter matches all items.
	 *
	 * If the filter func changes its filtering behavior,
	 * gtk_filter_changed() needs to be called.
	 *
	 * Params:
	 *     matchFunc = function to filter items
	 *     userData = user data to pass to @match_func
	 *     userDestroy = destroy notify for @user_data
	 *
	 * Returns: a new `GtkCustomFilter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_custom_filter_new(matchFunc, userData, userDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkCustomFilter*) __p, true);
	}

	/**
	 * Sets the function used for filtering items.
	 *
	 * If @match_func is %NULL, the filter matches all items.
	 *
	 * If the filter func changes its filtering behavior,
	 * gtk_filter_changed() needs to be called.
	 *
	 * If a previous function was set, its @user_destroy will be
	 * called now.
	 *
	 * Params:
	 *     matchFunc = function to filter items
	 *     userData = user data to pass to @match_func
	 *     userDestroy = destroy notify for @user_data
	 */
	public void setFilterFunc(GtkCustomFilterFunc matchFunc, void* userData, GDestroyNotify userDestroy)
	{
		gtk_custom_filter_set_filter_func(gtkCustomFilter, matchFunc, userData, userDestroy);
	}
}
