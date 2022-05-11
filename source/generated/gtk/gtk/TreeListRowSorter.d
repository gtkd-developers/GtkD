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


module gtk.TreeListRowSorter;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Sorter;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkTreeListRowSorter` is a special-purpose sorter that will apply a given
 * sorter to the levels in a tree.
 * 
 * Here is an example for setting up a column view with a tree model and
 * a `GtkTreeListSorter`:
 * 
 * ```c
 * column_sorter = gtk_column_view_get_sorter (view);
 * sorter = gtk_tree_list_row_sorter_new (g_object_ref (column_sorter));
 * sort_model = gtk_sort_list_model_new (tree_model, sorter);
 * selection = gtk_single_selection_new (sort_model);
 * gtk_column_view_set_model (view, G_LIST_MODEL (selection));
 * ```
 */
public class TreeListRowSorter : Sorter
{
	/** the main Gtk struct */
	protected GtkTreeListRowSorter* gtkTreeListRowSorter;

	/** Get the main Gtk struct */
	public GtkTreeListRowSorter* getTreeListRowSorterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeListRowSorter;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeListRowSorter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeListRowSorter* gtkTreeListRowSorter, bool ownedRef = false)
	{
		this.gtkTreeListRowSorter = gtkTreeListRowSorter;
		super(cast(GtkSorter*)gtkTreeListRowSorter, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_tree_list_row_sorter_get_type();
	}

	/**
	 * Create a special-purpose sorter that applies the sorting
	 * of @sorter to the levels of a `GtkTreeListModel`.
	 *
	 * Note that this sorter relies on [property@Gtk.TreeListModel:passthrough]
	 * being %FALSE as it can only sort [class@Gtk.TreeListRow]s.
	 *
	 * Params:
	 *     sorter = a `GtkSorter`
	 *
	 * Returns: a new `GtkTreeListRowSorter`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Sorter sorter)
	{
		auto __p = gtk_tree_list_row_sorter_new((sorter is null) ? null : sorter.getSorterStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTreeListRowSorter*) __p, true);
	}

	/**
	 * Returns the sorter used by @self.
	 *
	 * Returns: the sorter used
	 */
	public Sorter getSorter()
	{
		auto __p = gtk_tree_list_row_sorter_get_sorter(gtkTreeListRowSorter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sorter)(cast(GtkSorter*) __p);
	}

	/**
	 * Sets the sorter to use for items with the same parent.
	 *
	 * This sorter will be passed the [property@Gtk.TreeListRow:item] of
	 * the tree list rows passed to @self.
	 *
	 * Params:
	 *     sorter = The sorter to use
	 */
	public void setSorter(Sorter sorter)
	{
		gtk_tree_list_row_sorter_set_sorter(gtkTreeListRowSorter, (sorter is null) ? null : sorter.getSorterStruct());
	}
}
