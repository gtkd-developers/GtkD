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


module gtk.MultiSorter;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkMultiSorter` combines multiple sorters by trying them
 * in turn.
 * 
 * If the first sorter compares two items as equal,
 * the second is tried next, and so on.
 */
public class MultiSorter : Sorter, ListModelIF, BuildableIF
{
	/** the main Gtk struct */
	protected GtkMultiSorter* gtkMultiSorter;

	/** Get the main Gtk struct */
	public GtkMultiSorter* getMultiSorterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMultiSorter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMultiSorter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMultiSorter* gtkMultiSorter, bool ownedRef = false)
	{
		this.gtkMultiSorter = gtkMultiSorter;
		super(cast(GtkSorter*)gtkMultiSorter, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkMultiSorter);

	// add the Buildable capabilities
	mixin BuildableT!(GtkMultiSorter);


	/** */
	public static GType getType()
	{
		return gtk_multi_sorter_get_type();
	}

	/**
	 * Creates a new multi sorter.
	 *
	 * This sorter compares items by trying each of the sorters
	 * in turn, until one returns non-zero. In particular, if
	 * no sorter has been added to it, it will always compare
	 * items as equal.
	 *
	 * Returns: a new `GtkMultiSorter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_multi_sorter_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMultiSorter*) __p, true);
	}

	/**
	 * Add @sorter to @self to use for sorting at the end.
	 *
	 * @self will consult all existing sorters before it will
	 * sort with the given @sorter.
	 *
	 * Params:
	 *     sorter = a sorter to add
	 */
	public void append(Sorter sorter)
	{
		gtk_multi_sorter_append(gtkMultiSorter, (sorter is null) ? null : sorter.getSorterStruct());
	}

	/**
	 * Removes the sorter at the given @position from the list of sorter
	 * used by @self.
	 *
	 * If @position is larger than the number of sorters, nothing happens.
	 *
	 * Params:
	 *     position = position of sorter to remove
	 */
	public void remove(uint position)
	{
		gtk_multi_sorter_remove(gtkMultiSorter, position);
	}
}
