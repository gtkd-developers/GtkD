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


module gtk.TreeListRow;

private import gio.ListModelIF;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkTreeListRow` is used by `GtkTreeListModel` to represent items.
 * 
 * It allows navigating the model as a tree and modify the state of rows.
 * 
 * `GtkTreeListRow` instances are created by a `GtkTreeListModel` only
 * when the [property@Gtk.TreeListModel:passthrough] property is not set.
 * 
 * There are various support objects that can make use of `GtkTreeListRow`
 * objects, such as the [class@Gtk.TreeExpander] widget that allows displaying
 * an icon to expand or collapse a row or [class@Gtk.TreeListRowSorter] that
 * makes it possible to sort trees properly.
 */
public class TreeListRow : ObjectG
{
	/** the main Gtk struct */
	protected GtkTreeListRow* gtkTreeListRow;

	/** Get the main Gtk struct */
	public GtkTreeListRow* getTreeListRowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeListRow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeListRow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeListRow* gtkTreeListRow, bool ownedRef = false)
	{
		this.gtkTreeListRow = gtkTreeListRow;
		super(cast(GObject*)gtkTreeListRow, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_tree_list_row_get_type();
	}

	/**
	 * If @self is not expanded or @position is greater than the
	 * number of children, %NULL is returned.
	 *
	 * Params:
	 *     position = position of the child to get
	 *
	 * Returns: the child in @position
	 */
	public TreeListRow getChildRow(uint position)
	{
		auto __p = gtk_tree_list_row_get_child_row(gtkTreeListRow, position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeListRow)(cast(GtkTreeListRow*) __p, true);
	}

	/**
	 * If the row is expanded, gets the model holding the children of @self.
	 *
	 * This model is the model created by the
	 * [callback@Gtk.TreeListModelCreateModelFunc]
	 * and contains the original items, no matter what value
	 * [property@Gtk.TreeListModel:passthrough] is set to.
	 *
	 * Returns: The model containing the children
	 */
	public ListModelIF getChildren()
	{
		auto __p = gtk_tree_list_row_get_children(gtkTreeListRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Gets the depth of this row.
	 *
	 * Rows that correspond to items in the root model have a depth
	 * of zero, rows corresponding to items of models of direct children
	 * of the root model have a depth of 1 and so on.
	 *
	 * The depth of a row never changes until the row is destroyed.
	 *
	 * Returns: The depth of this row
	 */
	public uint getDepth()
	{
		return gtk_tree_list_row_get_depth(gtkTreeListRow);
	}

	/**
	 * Gets if a row is currently expanded.
	 *
	 * Returns: %TRUE if the row is expanded
	 */
	public bool getExpanded()
	{
		return gtk_tree_list_row_get_expanded(gtkTreeListRow) != 0;
	}

	/**
	 * Gets the item corresponding to this row,
	 *
	 * The value returned by this function never changes until the
	 * row is destroyed.
	 *
	 * Returns: The item
	 *     of this row or %NULL when the row was destroyed
	 */
	public ObjectG getItem()
	{
		auto __p = gtk_tree_list_row_get_item(gtkTreeListRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p, true);
	}

	/**
	 * Gets the row representing the parent for @self.
	 *
	 * That is the row that would need to be collapsed
	 * to make this row disappear.
	 *
	 * If @self is a row corresponding to the root model,
	 * %NULL is returned.
	 *
	 * The value returned by this function never changes
	 * until the row is destroyed.
	 *
	 * Returns: The parent of @self
	 */
	public TreeListRow getParent()
	{
		auto __p = gtk_tree_list_row_get_parent(gtkTreeListRow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeListRow)(cast(GtkTreeListRow*) __p, true);
	}

	/**
	 * Returns the position in the `GtkTreeListModel` that @self occupies
	 * at the moment.
	 *
	 * Returns: The position in the model
	 */
	public uint getPosition()
	{
		return gtk_tree_list_row_get_position(gtkTreeListRow);
	}

	/**
	 * Checks if a row can be expanded.
	 *
	 * This does not mean that the row is actually expanded,
	 * this can be checked with [method@Gtk.TreeListRow.get_expanded].
	 *
	 * If a row is expandable never changes until the row is destroyed.
	 *
	 * Returns: %TRUE if the row is expandable
	 */
	public bool isExpandable()
	{
		return gtk_tree_list_row_is_expandable(gtkTreeListRow) != 0;
	}

	/**
	 * Expands or collapses a row.
	 *
	 * If a row is expanded, the model of calling the
	 * [callback@Gtk.TreeListModelCreateModelFunc] for the row's
	 * item will be inserted after this row. If a row is collapsed,
	 * those items will be removed from the model.
	 *
	 * If the row is not expandable, this function does nothing.
	 *
	 * Params:
	 *     expanded = %TRUE if the row should be expanded
	 */
	public void setExpanded(bool expanded)
	{
		gtk_tree_list_row_set_expanded(gtkTreeListRow, expanded);
	}
}
