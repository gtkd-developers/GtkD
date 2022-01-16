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


module gtk.AnyFilter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.MultiFilter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkAnyFilter` matches an item when at least one of its filters matches.
 * 
 * To add filters to a `GtkAnyFilter`, use [method@Gtk.MultiFilter.append].
 */
public class AnyFilter : MultiFilter
{
	/** the main Gtk struct */
	protected GtkAnyFilter* gtkAnyFilter;

	/** Get the main Gtk struct */
	public GtkAnyFilter* getAnyFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAnyFilter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAnyFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAnyFilter* gtkAnyFilter, bool ownedRef = false)
	{
		this.gtkAnyFilter = gtkAnyFilter;
		super(cast(GtkMultiFilter*)gtkAnyFilter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_any_filter_get_type();
	}

	/**
	 * Creates a new empty "any" filter.
	 *
	 * Use [method@Gtk.MultiFilter.append] to add filters to it.
	 *
	 * This filter matches an item if any of the filters added to it
	 * matches the item. In particular, this means that if no filter
	 * has been added to it, the filter matches no item.
	 *
	 * Returns: a new `GtkAnyFilter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_any_filter_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAnyFilter*) __p, true);
	}
}
