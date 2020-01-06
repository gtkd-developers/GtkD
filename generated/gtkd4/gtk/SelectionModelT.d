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

public  import gobject.Signals;
public  import gtk.c.functions;
public  import gtk.c.types;
public  import std.algorithm;


/**
 * #GtkSelectionModel is an interface that extends the #GListModel interface by adding
 * support for selections. This support is then used by widgets using list models to add
 * the ability to select and unselect various items.
 * 
 * GTK provides default implementations of the mode common selection modes such as
 * #GtkSingleSelection, so you will only need to implement this interface if you want
 * detailed control about how selections should be handled.
 * 
 * A #GtkSelectionModel supports a single boolean per row indicating if a row is selected
 * or not. This can be queried via gtk_selection_model_is_selected(). When the selected
 * state of one or more rows changes, the model will emit the
 * #GtkSelectionModel::selection-changed signal by calling the
 * gtk_selection_model_selection_changed() function. The positions given in that signal
 * may have their selection state changed, though that is not a requirement.
 * If new items added to the model via the #GListModel::items-changed signal are selected
 * or not is up to the implementation.
 * 
 * Additionally, the interface can expose functionality to select and unselect items.
 * If these functions are implemented, GTK's list widgets will allow users to select and
 * unselect items. However, #GtkSelectionModels are free to only implement them
 * partially or not at all. In that case the widgets will not support the unimplemented
 * operations.
 * 
 * When selecting or unselecting is supported by a model, the return values of the
 * selection functions do NOT indicate if selection or unselection happened. They are
 * only meant to indicate complete failure, like when this mode of selecting is not
 * supported by the model.
 * 
 * Selections may happen asynchronously, so the only reliable way to find out when an
 * item was selected is to listen to the signals that indicate selection.
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
	 * This function allows to query the selection status of multiple elements at once.
	 * It is passed a position and returns a range of elements of uniform selection status.
	 *
	 * If @position is greater than the number of items in @model, @n_items is set to 0.
	 * Otherwise the returned range is guaranteed to include the passed-in position, so
	 * @n_items will be >= 1.
	 *
	 * Positions directly adjacent to the returned range may have the same selection
	 * status as the returned range.
	 *
	 * This is an optimization function to make iterating over a model faster when few
	 * items are selected. However, it is valid behavior for implementations to use a
	 * naive implementation that only ever returns a single element.
	 *
	 * Params:
	 *     position = the position inside the range
	 *     startRange = returns the position of the first element of the range
	 *     nItems = returns the size of the range
	 *     selected = returns whether items in @range are selected
	 */
	public void queryRange(uint position, out uint startRange, out uint nItems, out bool selected)
	{
		int outselected;

		gtk_selection_model_query_range(getSelectionModelStruct(), position, &startRange, &nItems, &outselected);

		selected = (outselected == 1);
	}

	/**
	 * Requests to select all items in the model.
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
	 *     exclusive = whether previously selected items should be unselected
	 */
	public bool selectItem(uint position, bool exclusive)
	{
		return gtk_selection_model_select_item(getSelectionModelStruct(), position, exclusive) != 0;
	}

	/**
	 * Requests to select a range of items in the model.
	 *
	 * Params:
	 *     position = the first item to select
	 *     nItems = the number of items to select
	 *     exclusive = whether previously selected items should be unselected
	 */
	public bool selectRange(uint position, uint nItems, bool exclusive)
	{
		return gtk_selection_model_select_range(getSelectionModelStruct(), position, nItems, exclusive) != 0;
	}

	/**
	 * Helper function for implementations of #GtkSelectionModel.
	 * Call this when a the selection changes to emit the ::selection-changed
	 * signal.
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
	 * Requests to unselect all items in the model.
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
	 */
	public bool unselectRange(uint position, uint nItems)
	{
		return gtk_selection_model_unselect_range(getSelectionModelStruct(), position, nItems) != 0;
	}

	/**
	 * Emitted when the selection state of some of the items in @model changes.
	 *
	 * Note that this signal does not specify the new selection state of the items,
	 * they need to be queried manually.
	 * It is also not necessary for a model to change the selection state of any of
	 * the items in the selection model, though it would be rather useless to emit
	 * such a signal.
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
