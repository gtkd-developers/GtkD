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


module gtk.SelectionModelT;

public  import gobject.ObjectG;
public  import gobject.Signals;
public  import gtk.Bitset;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import std.algorithm;


/**
 * `GtkSelectionModel` is an interface that add support for selection to list models.
 * 
 * This support is then used by widgets using list models to add the ability
 * to select and unselect various items.
 * 
 * GTK provides default implementations of the most common selection modes such
 * as [class@Gtk.SingleSelection], so you will only need to implement this
 * interface if you want detailed control about how selections should be handled.
 * 
 * A `GtkSelectionModel` supports a single boolean per item indicating if an item is
 * selected or not. This can be queried via [method@Gtk.SelectionModel.is_selected].
 * When the selected state of one or more items changes, the model will emit the
 * [signal@Gtk.SelectionModel::selection-changed] signal by calling the
 * [method@Gtk.SelectionModel.selection_changed] function. The positions given
 * in that signal may have their selection state changed, though that is not a
 * requirement. If new items added to the model via the
 * [signal@Gio.ListModel::items-changed] signal are selected or not is up to the
 * implementation.
 * 
 * Note that items added via [signal@Gio.ListModel::items-changed] may already
 * be selected and no [signal@Gtk.SelectionModel::selection-changed] will be
 * emitted for them. So to track which items are selected, it is necessary to
 * listen to both signals.
 * 
 * Additionally, the interface can expose functionality to select and unselect
 * items. If these functions are implemented, GTK's list widgets will allow users
 * to select and unselect items. However, `GtkSelectionModel`s are free to only
 * implement them partially or not at all. In that case the widgets will not
 * support the unimplemented operations.
 * 
 * When selecting or unselecting is supported by a model, the return values of
 * the selection functions do *not* indicate if selection or unselection happened.
 * They are only meant to indicate complete failure, like when this mode of
 * selecting is not supported by the model.
 * 
 * Selections may happen asynchronously, so the only reliable way to find out
 * when an item was selected is to listen to the signals that indicate selection.
 */
public template SelectionModelT(TStruct)
{
	/** Get the main Gtk struct */
	public GtkSelectionModel* getSelectionModelStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GtkSelectionModel*)getStruct();
	}


	/**
	 * Gets the set containing all currently selected items in the model.
	 *
	 * This function may be slow, so if you are only interested in single item,
	 * consider using [method@Gtk.SelectionModel.is_selected] or if you are only
	 * interested in a few, consider [method@Gtk.SelectionModel.get_selection_in_range].
	 *
	 * Returns: a `GtkBitset` containing all the values currently
	 *     selected in @model. If no items are selected, the bitset is empty.
	 *     The bitset must not be modified.
	 */
	public Bitset getSelection()
	{
		auto __p = gtk_selection_model_get_selection(getSelectionModelStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bitset)(cast(GtkBitset*) __p, true);
	}

	/**
	 * Gets the set of selected items in a range.
	 *
	 * This function is an optimization for
	 * [method@Gtk.SelectionModel.get_selection] when you are only
	 * interested in part of the model's selected state. A common use
	 * case is in response to the [signal@Gtk.SelectionModel::selection-changed]
	 * signal.
	 *
	 * Params:
	 *     position = start of the queired range
	 *     nItems = number of items in the queried range
	 *
	 * Returns: A `GtkBitset` that matches the selection state
	 *     for the given range with all other values being undefined.
	 *     The bitset must not be modified.
	 */
	public Bitset getSelectionInRange(uint position, uint nItems)
	{
		auto __p = gtk_selection_model_get_selection_in_range(getSelectionModelStruct(), position, nItems);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Bitset)(cast(GtkBitset*) __p, true);
	}

	/**
	 * Checks if the given item is selected.
	 *
	 * Params:
	 *     position = the position of the item to query
	 *
	 * Returns: %TRUE if the item is selected
	 */
	public bool isSelected(uint position)
	{
		return gtk_selection_model_is_selected(getSelectionModelStruct(), position) != 0;
	}

	/**
	 * Requests to select all items in the model.
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean that all items are now selected.
	 */
	public bool selectAll()
	{
		return gtk_selection_model_select_all(getSelectionModelStruct()) != 0;
	}

	/**
	 * Requests to select an item in the model.
	 *
	 * Params:
	 *     position = the position of the item to select
	 *     unselectRest = whether previously selected items should be unselected
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean the item was selected.
	 */
	public bool selectItem(uint position, bool unselectRest)
	{
		return gtk_selection_model_select_item(getSelectionModelStruct(), position, unselectRest) != 0;
	}

	/**
	 * Requests to select a range of items in the model.
	 *
	 * Params:
	 *     position = the first item to select
	 *     nItems = the number of items to select
	 *     unselectRest = whether previously selected items should be unselected
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean the range was selected.
	 */
	public bool selectRange(uint position, uint nItems, bool unselectRest)
	{
		return gtk_selection_model_select_range(getSelectionModelStruct(), position, nItems, unselectRest) != 0;
	}

	/**
	 * Helper function for implementations of `GtkSelectionModel`.
	 *
	 * Call this when a the selection changes to emit the
	 * [signal@Gtk.SelectionModel::selection-changed] signal.
	 *
	 * Params:
	 *     position = the first changed item
	 *     nItems = the number of changed items
	 */
	public void selectionChanged(uint position, uint nItems)
	{
		gtk_selection_model_selection_changed(getSelectionModelStruct(), position, nItems);
	}

	/**
	 * Make selection changes.
	 *
	 * This is the most advanced selection updating method that allows
	 * the most fine-grained control over selection changes. If you can,
	 * you should try the simpler versions, as implementations are more
	 * likely to implement support for those.
	 *
	 * Requests that the selection state of all positions set in @mask
	 * be updated to the respective value in the @selected bitmask.
	 *
	 * In pseudocode, it would look something like this:
	 *
	 * ```c
	 * for (i = 0; i < n_items; i++)
	 * {
	 * // don't change values not in the mask
	 * if (!gtk_bitset_contains (mask, i))
	 * continue;
	 *
	 * if (gtk_bitset_contains (selected, i))
	 * select_item (i);
	 * else
	 * unselect_item (i);
	 * }
	 *
	 * gtk_selection_model_selection_changed (model,
	 * first_changed_item,
	 * n_changed_items);
	 * ```
	 *
	 * @mask and @selected must not be modified. They may refer to the
	 * same bitset, which would mean that every item in the set should
	 * be selected.
	 *
	 * Params:
	 *     selected = bitmask specifying if items should be selected or unselected
	 *     mask = bitmask specifying which items should be updated
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean that all items were updated according
	 *     to the inputs.
	 */
	public bool setSelection(Bitset selected, Bitset mask)
	{
		return gtk_selection_model_set_selection(getSelectionModelStruct(), (selected is null) ? null : selected.getBitsetStruct(), (mask is null) ? null : mask.getBitsetStruct()) != 0;
	}

	/**
	 * Requests to unselect all items in the model.
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean that all items are now unselected.
	 */
	public bool unselectAll()
	{
		return gtk_selection_model_unselect_all(getSelectionModelStruct()) != 0;
	}

	/**
	 * Requests to unselect an item in the model.
	 *
	 * Params:
	 *     position = the position of the item to unselect
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean the item was unselected.
	 */
	public bool unselectItem(uint position)
	{
		return gtk_selection_model_unselect_item(getSelectionModelStruct(), position) != 0;
	}

	/**
	 * Requests to unselect a range of items in the model.
	 *
	 * Params:
	 *     position = the first item to unselect
	 *     nItems = the number of items to unselect
	 *
	 * Returns: %TRUE if this action was supported and no fallback should be
	 *     tried. This does not mean the range was unselected.
	 */
	public bool unselectRange(uint position, uint nItems)
	{
		return gtk_selection_model_unselect_range(getSelectionModelStruct(), position, nItems) != 0;
	}

	/**
	 * Emitted when the selection state of some of the items in @model changes.
	 *
	 * Note that this signal does not specify the new selection state of the
	 * items, they need to be queried manually. It is also not necessary for
	 * a model to change the selection state of any of the items in the selection
	 * model, though it would be rather useless to emit such a signal.
	 *
	 * Params:
	 *     position = The first item that may have changed
	 *     nItems = number of items with changes
	 */
	gulong addOnSelectionChanged(void delegate(uint, uint, SelectionModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
