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


module gio.ListModelIF;

private import gio.c.functions;
public  import gio.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * #GListModel is an interface that represents a mutable list of
 * #GObjects. Its main intention is as a model for various widgets in
 * user interfaces, such as list views, but it can also be used as a
 * convenient method of returning lists of data, with support for
 * updates.
 * 
 * Each object in the list may also report changes in itself via some
 * mechanism (normally the #GObject::notify signal).  Taken together
 * with the #GListModel::items-changed signal, this provides for a list
 * that can change its membership, and in which the members can change
 * their individual properties.
 * 
 * A good example would be the list of visible wireless network access
 * points, where each access point can report dynamic properties such as
 * signal strength.
 * 
 * It is important to note that the #GListModel itself does not report
 * changes to the individual items.  It only reports changes to the list
 * membership.  If you want to observe changes to the objects themselves
 * then you need to connect signals to the objects that you are
 * interested in.
 * 
 * All items in a #GListModel are of (or derived from) the same type.
 * g_list_model_get_item_type() returns that type.  The type may be an
 * interface, in which case all objects in the list must implement it.
 * 
 * The semantics are close to that of an array:
 * g_list_model_get_n_items() returns the number of items in the list and
 * g_list_model_get_item() returns an item at a (0-based) position. In
 * order to allow implementations to calculate the list length lazily,
 * you can also iterate over items: starting from 0, repeatedly call
 * g_list_model_get_item() until it returns %NULL.
 * 
 * An implementation may create objects lazily, but must take care to
 * return the same object for a given position until all references to
 * it are gone.
 * 
 * On the other side, a consumer is expected only to hold references on
 * objects that are currently "user visible", in order to facilitate the
 * maximum level of laziness in the implementation of the list and to
 * reduce the required number of signal connections at a given time.
 * 
 * This interface is intended only to be used from a single thread.  The
 * thread in which it is appropriate to use it depends on the particular
 * implementation, but typically it will be from the thread that owns
 * the [thread-default main context][g-main-context-push-thread-default]
 * in effect at the time that the model was created.
 */
public interface ListModelIF{
	/** Get the main Gtk struct */
	public GListModel* getListModelStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_list_model_get_type();
	}

	/**
	 * Get the item at @position.
	 *
	 * If @position is greater than the number of items in @list, %NULL is
	 * returned.
	 *
	 * %NULL is never returned for an index that is smaller than the length
	 * of the list.
	 *
	 * See also: g_list_model_get_n_items()
	 *
	 * Params:
	 *     position = the position of the item to fetch
	 *
	 * Returns: the item at @position.
	 *
	 * Since: 2.44
	 */
	public void* getItem(uint position);

	/**
	 * Gets the type of the items in @list.
	 *
	 * All items returned from g_list_model_get_item() are of the type
	 * returned by this function, or a subtype, or if the type is an
	 * interface, they are an implementation of that interface.
	 *
	 * The item type of a #GListModel can not change during the life of the
	 * model.
	 *
	 * Returns: the #GType of the items contained in @list.
	 *
	 * Since: 2.44
	 */
	public GType getItemType();

	/**
	 * Gets the number of items in @list.
	 *
	 * Depending on the model implementation, calling this function may be
	 * less efficient than iterating the list with increasing values for
	 * @position until g_list_model_get_item() returns %NULL.
	 *
	 * Returns: the number of items in @list.
	 *
	 * Since: 2.44
	 */
	public uint getNItems();

	/**
	 * Get the item at @position.
	 *
	 * If @position is greater than the number of items in @list, %NULL is
	 * returned.
	 *
	 * %NULL is never returned for an index that is smaller than the length
	 * of the list.
	 *
	 * This function is meant to be used by language bindings in place
	 * of g_list_model_get_item().
	 *
	 * See also: g_list_model_get_n_items()
	 *
	 * Params:
	 *     position = the position of the item to fetch
	 *
	 * Returns: the object at @position.
	 *
	 * Since: 2.44
	 */
	public ObjectG getObject(uint position);

	/**
	 * Emits the #GListModel::items-changed signal on @list.
	 *
	 * This function should only be called by classes implementing
	 * #GListModel. It has to be called after the internal representation
	 * of @list has been updated, because handlers connected to this signal
	 * might query the new state of the list.
	 *
	 * Implementations must only make changes to the model (as visible to
	 * its consumer) in places that will not cause problems for that
	 * consumer.  For models that are driven directly by a write API (such
	 * as #GListStore), changes can be reported in response to uses of that
	 * API.  For models that represent remote data, changes should only be
	 * made from a fresh mainloop dispatch.  It is particularly not
	 * permitted to make changes in response to a call to the #GListModel
	 * consumer API.
	 *
	 * Stated another way: in general, it is assumed that code making a
	 * series of accesses to the model via the API, without returning to the
	 * mainloop, and without calling other code, will continue to view the
	 * same contents of the model.
	 *
	 * Params:
	 *     position = the position at which @list changed
	 *     removed = the number of items removed
	 *     added = the number of items added
	 *
	 * Since: 2.44
	 */
	public void itemsChanged(uint position, uint removed, uint added);

	/**
	 * This signal is emitted whenever items were added to or removed
	 * from @list. At @position, @removed items were removed and @added
	 * items were added in their place.
	 *
	 * Note: If `removed != added`, the positions of all later items
	 * in the model change.
	 *
	 * Params:
	 *     position = the position at which @list changed
	 *     removed = the number of items removed
	 *     added = the number of items added
	 *
	 * Since: 2.44
	 */
	gulong addOnItemsChanged(void delegate(uint, uint, uint, ListModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0);
}
