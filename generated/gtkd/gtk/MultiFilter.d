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


module gtk.MultiFilter;

private import gio.ListModelIF;
private import gio.ListModelT;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Filter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMultiFilter` is the base class for filters that combine multiple filters.
 */
public class MultiFilter : Filter, ListModelIF, BuildableIF
{
	/** the main Gtk struct */
	protected GtkMultiFilter* gtkMultiFilter;

	/** Get the main Gtk struct */
	public GtkMultiFilter* getMultiFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMultiFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMultiFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMultiFilter* gtkMultiFilter, bool ownedRef = false)
	{
		this.gtkMultiFilter = gtkMultiFilter;
		super(cast(GtkFilter*)gtkMultiFilter, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkMultiFilter);

	// add the Buildable capabilities
	mixin BuildableT!(GtkMultiFilter);


	/** */
	public static GType getType()
	{
		return gtk_multi_filter_get_type();
	}

	/**
	 * Adds a @filter to @self to use for matching.
	 *
	 * Params:
	 *     filter = A new filter to use
	 */
	public void append(Filter filter)
	{
		gtk_multi_filter_append(gtkMultiFilter, (filter is null) ? null : filter.getFilterStruct());
	}

	/**
	 * Removes the filter at the given @position from the list of filters used
	 * by @self.
	 *
	 * If @position is larger than the number of filters, nothing happens and
	 * the function returns.
	 *
	 * Params:
	 *     position = position of filter to remove
	 */
	public void remove(uint position)
	{
		gtk_multi_filter_remove(gtkMultiFilter, position);
	}
}
