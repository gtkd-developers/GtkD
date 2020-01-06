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


module gtk.FilterListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * #GtkFilterListModel is a list model that filters a given other
 * listmodel.
 * It hides some elements from the other model according to
 * criteria given by a #GtkFilterListModelFilterFunc.
 */
public class FilterListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkFilterListModel* gtkFilterListModel;

	/** Get the main Gtk struct */
	public GtkFilterListModel* getFilterListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkFilterListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkFilterListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkFilterListModel* gtkFilterListModel, bool ownedRef = false)
	{
		this.gtkFilterListModel = gtkFilterListModel;
		super(cast(GObject*)gtkFilterListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkFilterListModel);


	/** */
	public static GType getType()
	{
		return gtk_filter_list_model_get_type();
	}

	/**
	 * Creates a new #GtkFilterListModel that will filter @model using the given
	 * @filter_func.
	 *
	 * Params:
	 *     model = the model to sort
	 *     filterFunc = filter function or %NULL to not filter items
	 *     userData = user data passed to @filter_func
	 *     userDestroy = destroy notifier for @user_data
	 *
	 * Returns: a new #GtkFilterListModel
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, GtkFilterListModelFilterFunc filterFunc, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_filter_list_model_new((model is null) ? null : model.getListModelStruct(), filterFunc, userData, userDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkFilterListModel*) __p, true);
	}

	/**
	 * Creates a new empty filter list model set up to return items of type @item_type.
	 * It is up to the application to set a proper filter function and model to ensure
	 * the item type is matched.
	 *
	 * Params:
	 *     itemType = the type of the items that will be returned
	 *
	 * Returns: a new #GtkFilterListModel
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GType itemType)
	{
		auto __p = gtk_filter_list_model_new_for_type(itemType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_type");
		}

		this(cast(GtkFilterListModel*) __p, true);
	}

	/**
	 * Gets the model currently filtered or %NULL if none.
	 *
	 * Returns: The model that gets filtered
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_filter_list_model_get_model(gtkFilterListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Checks if a filter function is currently set on @self
	 *
	 * Returns: %TRUE if a filter function is set
	 */
	public bool hasFilter()
	{
		return gtk_filter_list_model_has_filter(gtkFilterListModel) != 0;
	}

	/**
	 * Causes @self to refilter all items in the model.
	 *
	 * Calling this function is necessary when data used by the filter
	 * function has changed.
	 */
	public void refilter()
	{
		gtk_filter_list_model_refilter(gtkFilterListModel);
	}

	/**
	 * Sets the function used to filter items. The function will be called for every
	 * item and if it returns %TRUE the item is considered visible.
	 *
	 * Params:
	 *     filterFunc = filter function or %NULL to not filter items
	 *     userData = user data passed to @filter_func
	 *     userDestroy = destroy notifier for @user_data
	 */
	public void setFilterFunc(GtkFilterListModelFilterFunc filterFunc, void* userData, GDestroyNotify userDestroy)
	{
		gtk_filter_list_model_set_filter_func(gtkFilterListModel, filterFunc, userData, userDestroy);
	}

	/**
	 * Sets the model to be filtered.
	 *
	 * Note that GTK makes no effort to ensure that @model conforms to
	 * the item type of @self. It assumes that the caller knows what they
	 * are doing and have set up an appropriate filter function to ensure
	 * that item types match.
	 *
	 * Params:
	 *     model = The model to be filtered
	 */
	public void setModel(ListModelIF model)
	{
		gtk_filter_list_model_set_model(gtkFilterListModel, (model is null) ? null : model.getListModelStruct());
	}
}
