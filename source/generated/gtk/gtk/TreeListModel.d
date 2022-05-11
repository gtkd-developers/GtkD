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


module gtk.TreeListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.TreeListRow;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * `GtkTreeListModel` is a list model that can create child models on demand.
 */
public class TreeListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkTreeListModel* gtkTreeListModel;

	/** Get the main Gtk struct */
	public GtkTreeListModel* getTreeListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeListModel* gtkTreeListModel, bool ownedRef = false)
	{
		this.gtkTreeListModel = gtkTreeListModel;
		super(cast(GObject*)gtkTreeListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkTreeListModel);


	/** */
	public static GType getType()
	{
		return gtk_tree_list_model_get_type();
	}

	/**
	 * Creates a new empty `GtkTreeListModel` displaying @root
	 * with all rows collapsed.
	 *
	 * Params:
	 *     root = The `GListModel` to use as root
	 *     passthrough = %TRUE to pass through items from the models
	 *     autoexpand = %TRUE to set the autoexpand property and expand the @root model
	 *     createFunc = Function to call to create the `GListModel` for the children
	 *         of an item
	 *     userData = Data to pass to @create_func
	 *     userDestroy = Function to call to free @user_data
	 *
	 * Returns: a newly created `GtkTreeListModel`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF root, bool passthrough, bool autoexpand, GtkTreeListModelCreateModelFunc createFunc, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_tree_list_model_new((root is null) ? null : root.getListModelStruct(), passthrough, autoexpand, createFunc, userData, userDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTreeListModel*) __p, true);
	}

	/**
	 * Gets whether the model is set to automatically expand new rows
	 * that get added.
	 *
	 * This can be either rows added by changes to the underlying
	 * models or via [method@Gtk.TreeListRow.set_expanded].
	 *
	 * Returns: %TRUE if the model is set to autoexpand
	 */
	public bool getAutoexpand()
	{
		return gtk_tree_list_model_get_autoexpand(gtkTreeListModel) != 0;
	}

	/**
	 * Gets the row item corresponding to the child at index @position for
	 * @self's root model.
	 *
	 * If @position is greater than the number of children in the root model,
	 * %NULL is returned.
	 *
	 * Do not confuse this function with [method@Gtk.TreeListModel.get_row].
	 *
	 * Params:
	 *     position = position of the child to get
	 *
	 * Returns: the child in @position
	 */
	public TreeListRow getChildRow(uint position)
	{
		auto __p = gtk_tree_list_model_get_child_row(gtkTreeListModel, position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeListRow)(cast(GtkTreeListRow*) __p, true);
	}

	/**
	 * Gets the root model that @self was created with.
	 *
	 * Returns: the root model
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_tree_list_model_get_model(gtkTreeListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Gets whether the model is passing through original row items.
	 *
	 * If this function returns %FALSE, the `GListModel` functions for @self
	 * return custom `GtkTreeListRow` objects. You need to call
	 * [method@Gtk.TreeListRow.get_item] on these objects to get the original
	 * item.
	 *
	 * If %TRUE, the values of the child models are passed through in their
	 * original state. You then need to call [method@Gtk.TreeListModel.get_row]
	 * to get the custom `GtkTreeListRow`s.
	 *
	 * Returns: %TRUE if the model is passing through original row items
	 */
	public bool getPassthrough()
	{
		return gtk_tree_list_model_get_passthrough(gtkTreeListModel) != 0;
	}

	/**
	 * Gets the row object for the given row.
	 *
	 * If @position is greater than the number of items in @self,
	 * %NULL is returned.
	 *
	 * The row object can be used to expand and collapse rows as
	 * well as to inspect its position in the tree. See its
	 * documentation for details.
	 *
	 * This row object is persistent and will refer to the current
	 * item as long as the row is present in @self, independent of
	 * other rows being added or removed.
	 *
	 * If @self is set to not be passthrough, this function is
	 * equivalent to calling g_list_model_get_item().
	 *
	 * Do not confuse this function with [method@Gtk.TreeListModel.get_child_row].
	 *
	 * Params:
	 *     position = the position of the row to fetch
	 *
	 * Returns: The row item
	 */
	public TreeListRow getRow(uint position)
	{
		auto __p = gtk_tree_list_model_get_row(gtkTreeListModel, position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeListRow)(cast(GtkTreeListRow*) __p, true);
	}

	/**
	 * Sets whether the model should autoexpand.
	 *
	 * If set to %TRUE, the model will recursively expand all rows that
	 * get added to the model. This can be either rows added by changes
	 * to the underlying models or via [method@Gtk.TreeListRow.set_expanded].
	 *
	 * Params:
	 *     autoexpand = %TRUE to make the model autoexpand its rows
	 */
	public void setAutoexpand(bool autoexpand)
	{
		gtk_tree_list_model_set_autoexpand(gtkTreeListModel, autoexpand);
	}
}
