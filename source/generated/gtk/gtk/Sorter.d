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


module gtk.Sorter;

private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkSorter` is an object to describe sorting criteria.
 * 
 * Its primary user is [class@Gtk.SortListModel]
 * 
 * The model will use a sorter to determine the order in which
 * its items should appear by calling [method@Gtk.Sorter.compare]
 * for pairs of items.
 * 
 * Sorters may change their sorting behavior through their lifetime.
 * In that case, they will emit the [signal@Gtk.Sorter::changed] signal
 * to notify that the sort order is no longer valid and should be updated
 * by calling gtk_sorter_compare() again.
 * 
 * GTK provides various pre-made sorter implementations for common sorting
 * operations. [class@Gtk.ColumnView] has built-in support for sorting lists
 * via the [property@Gtk.ColumnViewColumn:sorter] property, where the user can
 * change the sorting by clicking on list headers.
 * 
 * Of course, in particular for large lists, it is also possible to subclass
 * `GtkSorter` and provide one's own sorter.
 */
public class Sorter : ObjectG
{
	/** the main Gtk struct */
	protected GtkSorter* gtkSorter;

	/** Get the main Gtk struct */
	public GtkSorter* getSorterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSorter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSorter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSorter* gtkSorter, bool ownedRef = false)
	{
		this.gtkSorter = gtkSorter;
		super(cast(GObject*)gtkSorter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_sorter_get_type();
	}

	/**
	 * Notifies all users of the sorter that it has changed.
	 *
	 * This emits the [signal@Gtk.Sorter::changed] signal. Users
	 * of the sorter should then update the sort order via
	 * [method@Gtk.Sorter.compare].
	 *
	 * Depending on the @change parameter, it may be possible to
	 * update the sort order without a full resorting. Refer to
	 * the [enum@Gtk.SorterChange] documentation for details.
	 *
	 * This function is intended for implementors of `GtkSorter`
	 * subclasses and should not be called from other functions.
	 *
	 * Params:
	 *     change = How the sorter changed
	 */
	public void changed(GtkSorterChange change)
	{
		gtk_sorter_changed(gtkSorter, change);
	}

	/**
	 * Compares two given items according to the sort order implemented
	 * by the sorter.
	 *
	 * Sorters implement a partial order:
	 *
	 * * It is reflexive, ie a = a
	 * * It is antisymmetric, ie if a < b and b < a, then a = b
	 * * It is transitive, ie given any 3 items with a ≤ b and b ≤ c,
	 * then a ≤ c
	 *
	 * The sorter may signal it conforms to additional constraints
	 * via the return value of [method@Gtk.Sorter.get_order].
	 *
	 * Params:
	 *     item1 = first item to compare
	 *     item2 = second item to compare
	 *
	 * Returns: %GTK_ORDERING_EQUAL if @item1 == @item2,
	 *     %GTK_ORDERING_SMALLER if @item1 < @item2,
	 *     %GTK_ORDERING_LARGER if @item1 > @item2
	 */
	public GtkOrdering compare(ObjectG item1, ObjectG item2)
	{
		return gtk_sorter_compare(gtkSorter, (item1 is null) ? null : item1.getObjectGStruct(), (item2 is null) ? null : item2.getObjectGStruct());
	}

	/**
	 * Gets the order that @self conforms to.
	 *
	 * See [enum@Gtk.SorterOrder] for details
	 * of the possible return values.
	 *
	 * This function is intended to allow optimizations.
	 *
	 * Returns: The order
	 */
	public GtkSorterOrder getOrder()
	{
		return gtk_sorter_get_order(gtkSorter);
	}

	/**
	 * Emitted whenever the sorter changed.
	 *
	 * Users of the sorter should then update the sort order
	 * again via gtk_sorter_compare().
	 *
	 * [class@Gtk.SortListModel] handles this signal automatically.
	 *
	 * Depending on the @change parameter, it may be possible to update
	 * the sort order without a full resorting. Refer to the
	 * [enum@Gtk.SorterChange] documentation for details.
	 *
	 * Params:
	 *     change = how the sorter changed
	 */
	gulong addOnChanged(void delegate(GtkSorterChange, Sorter) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
