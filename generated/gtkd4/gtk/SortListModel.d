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


module gtk.SortListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * #GtkSortListModel is a list model that takes a list model and
 * sorts its elements according to a compare function.
 * 
 * #GtkSortListModel is a generic model and because of that it
 * cannot take advantage of any external knowledge when sorting.
 * If you run into performance issues with #GtkSortListModel, it
 * is strongly recommended that you write your own sorting list
 * model.
 */
public class SortListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkSortListModel* gtkSortListModel;

	/** Get the main Gtk struct */
	public GtkSortListModel* getSortListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSortListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSortListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSortListModel* gtkSortListModel, bool ownedRef = false)
	{
		this.gtkSortListModel = gtkSortListModel;
		super(cast(GObject*)gtkSortListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkSortListModel);


	/** */
	public static GType getType()
	{
		return gtk_sort_list_model_get_type();
	}

	/**
	 * Creates a new sort list model that uses the @sort_func to sort @model.
	 *
	 * Params:
	 *     model = the model to sort
	 *     sortFunc = sort function or %NULL to not sort items
	 *     userData = user data passed to @sort_func
	 *     userDestroy = destroy notifier for @user_data
	 *
	 * Returns: a new #GtkSortListModel
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_sort_list_model_new((model is null) ? null : model.getListModelStruct(), sortFunc, userData, userDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSortListModel*) __p, true);
	}

	/**
	 * Creates a new empty sort list model set up to return items of type @item_type.
	 * It is up to the application to set a proper sort function and model to ensure
	 * the item type is matched.
	 *
	 * Params:
	 *     itemType = the type of the items that will be returned
	 *
	 * Returns: a new #GtkSortListModel
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType itemType)
	{
		auto __p = gtk_sort_list_model_new_for_type(itemType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_type");
		}

		this(cast(GtkSortListModel*) __p, true);
	}

	/**
	 * Gets the model currently sorted or %NULL if none.
	 *
	 * Returns: The model that gets sorted
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_sort_list_model_get_model(gtkSortListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Checks if a sort function is currently set on @self
	 *
	 * Returns: %TRUE if a sort function is set
	 */
	public bool hasSort()
	{
		return gtk_sort_list_model_has_sort(gtkSortListModel) != 0;
	}

	/**
	 * Causes @self to resort all items in the model.
	 *
	 * Calling this function is necessary when data used by the sort
	 * function has changed.
	 */
	public void resort()
	{
		gtk_sort_list_model_resort(gtkSortListModel);
	}

	/**
	 * Sets the model to be sorted. The @model's item type must conform to
	 * the item type of @self.
	 *
	 * Params:
	 *     model = The model to be sorted
	 */
	public void setModel(ListModelIF model)
	{
		gtk_sort_list_model_set_model(gtkSortListModel, (model is null) ? null : model.getListModelStruct());
	}

	/**
	 * Sets the function used to sort items. The function will be called for every
	 * item and must return an integer less than, equal to, or greater than zero if
	 * for two items from the model if the first item is considered to be respectively
	 * less than, equal to, or greater than the second.
	 *
	 * Params:
	 *     sortFunc = sort function or %NULL to not sort items
	 *     userData = user data passed to @sort_func
	 *     userDestroy = destroy notifier for @user_data
	 */
	public void setSortFunc(GCompareDataFunc sortFunc, void* userData, GDestroyNotify userDestroy)
	{
		gtk_sort_list_model_set_sort_func(gtkSortListModel, sortFunc, userData, userDestroy);
	}
}
