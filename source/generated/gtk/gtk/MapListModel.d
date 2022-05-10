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


module gtk.MapListModel;

private import gio.ListModelIF;
private import gio.ListModelT;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.c.functions;
public  import gtk.c.types;


/**
 * A `GtkMapListModel` maps the items in a list model to different items.
 * 
 * `GtkMapListModel` uses a [callback@Gtk.MapListModelMapFunc].
 * 
 * Example: Create a list of `GtkEventControllers`
 * ```c
 * static gpointer
 * map_to_controllers (gpointer widget,
 * gpointer data)
 * {
 * gpointer result = gtk_widget_observe_controllers (widget);
 * g_object_unref (widget);
 * return result;
 * }
 * 
 * widgets = gtk_widget_observe_children (widget);
 * 
 * controllers = gtk_map_list_model_new (widgets,
 * map_to_controllers,
 * NULL, NULL);
 * 
 * model = gtk_flatten_list_model_new (GTK_TYPE_EVENT_CONTROLLER,
 * controllers);
 * ```
 * 
 * `GtkMapListModel` will attempt to discard the mapped objects as soon as
 * they are no longer needed and recreate them if necessary.
 */
public class MapListModel : ObjectG, ListModelIF
{
	/** the main Gtk struct */
	protected GtkMapListModel* gtkMapListModel;

	/** Get the main Gtk struct */
	public GtkMapListModel* getMapListModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkMapListModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkMapListModel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkMapListModel* gtkMapListModel, bool ownedRef = false)
	{
		this.gtkMapListModel = gtkMapListModel;
		super(cast(GObject*)gtkMapListModel, ownedRef);
	}

	// add the ListModel capabilities
	mixin ListModelT!(GtkMapListModel);


	/** */
	public static GType getType()
	{
		return gtk_map_list_model_get_type();
	}

	/**
	 * Creates a new `GtkMapListModel` for the given arguments.
	 *
	 * Params:
	 *     model = The model to map
	 *     mapFunc = map function
	 *     userData = user data passed to @map_func
	 *     userDestroy = destroy notifier for @user_data
	 *
	 * Returns: a new `GtkMapListModel`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListModelIF model, GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy)
	{
		auto __p = gtk_map_list_model_new((model is null) ? null : model.getListModelStruct(), mapFunc, userData, userDestroy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkMapListModel*) __p, true);
	}

	/**
	 * Gets the model that is currently being mapped or %NULL if none.
	 *
	 * Returns: The model that gets mapped
	 */
	public ListModelIF getModel()
	{
		auto __p = gtk_map_list_model_get_model(gtkMapListModel);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Checks if a map function is currently set on @self.
	 *
	 * Returns: %TRUE if a map function is set
	 */
	public bool hasMap()
	{
		return gtk_map_list_model_has_map(gtkMapListModel) != 0;
	}

	/**
	 * Sets the function used to map items.
	 *
	 * The function will be called whenever an item needs to be mapped
	 * and must return the item to use for the given input item.
	 *
	 * Note that `GtkMapListModel` may call this function multiple times
	 * on the same item, because it may delete items it doesn't need anymore.
	 *
	 * GTK makes no effort to ensure that @map_func conforms to the item type
	 * of @self. It assumes that the caller knows what they are doing and the map
	 * function returns items of the appropriate type.
	 *
	 * Params:
	 *     mapFunc = map function
	 *     userData = user data passed to @map_func
	 *     userDestroy = destroy notifier for @user_data
	 */
	public void setMapFunc(GtkMapListModelMapFunc mapFunc, void* userData, GDestroyNotify userDestroy)
	{
		gtk_map_list_model_set_map_func(gtkMapListModel, mapFunc, userData, userDestroy);
	}

	/**
	 * Sets the model to be mapped.
	 *
	 * GTK makes no effort to ensure that @model conforms to the item type
	 * expected by the map function. It assumes that the caller knows what
	 * they are doing and have set up an appropriate map function.
	 *
	 * Params:
	 *     model = The model to be mapped
	 */
	public void setModel(ListModelIF model)
	{
		gtk_map_list_model_set_model(gtkMapListModel, (model is null) ? null : model.getListModelStruct());
	}
}
