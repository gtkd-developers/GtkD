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


module gtk.EveryFilter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.MultiFilter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkEveryFilter` matches an item when each of its filters matches.
 * 
 * To add filters to a `GtkEveryFilter`, use [method@Gtk.MultiFilter.append].
 */
public class EveryFilter : MultiFilter
{
	/** the main Gtk struct */
	protected GtkEveryFilter* gtkEveryFilter;

	/** Get the main Gtk struct */
	public GtkEveryFilter* getEveryFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkEveryFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkEveryFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkEveryFilter* gtkEveryFilter, bool ownedRef = false)
	{
		this.gtkEveryFilter = gtkEveryFilter;
		super(cast(GtkMultiFilter*)gtkEveryFilter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_every_filter_get_type();
	}

	/**
	 * Creates a new empty "every" filter.
	 *
	 * Use [method@Gtk.MultiFilter.append] to add filters to it.
	 *
	 * This filter matches an item if each of the filters added to it
	 * matches the item. In particular, this means that if no filter
	 * has been added to it, the filter matches every item.
	 *
	 * Returns: a new `GtkEveryFilter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_every_filter_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkEveryFilter*) __p, true);
	}
}
