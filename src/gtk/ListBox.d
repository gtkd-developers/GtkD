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


module gtk.ListBox;

private import gio.ListModelIF;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Container;
private import gtk.ListBoxRow;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A GtkListBox is a vertical container that contains GtkListBoxRow
 * children. These rows can by dynamically sorted and filtered, and
 * headers can be added dynamically depending on the row content.
 * It also allows keyboard and mouse navigation and selection like
 * a typical list.
 * 
 * Using GtkListBox is often an alternative to #GtkTreeView, especially
 * when the list contents has a more complicated layout than what is allowed
 * by a #GtkCellRenderer, or when the contents is interactive (i.e. has a
 * button in it).
 * 
 * Although a #GtkListBox must have only #GtkListBoxRow children you can
 * add any kind of widget to it via gtk_container_add(), and a #GtkListBoxRow
 * widget will automatically be inserted between the list and the widget.
 * 
 * #GtkListBoxRows can be marked as activatable or selectable. If a row
 * is activatable, #GtkListBox::row-activated will be emitted for it when
 * the user tries to activate it. If it is selectable, the row will be marked
 * as selected when the user tries to select it.
 * 
 * The GtkListBox widget was added in GTK+ 3.10.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * list
 * ╰── row[.activatable]
 * ]|
 * 
 * GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
 * a single CSS node named row. The row nodes get the .activatable
 * style class added when appropriate.
 */
public class ListBox : Container
{
	/** the main Gtk struct */
	protected GtkListBox* gtkListBox;

	/** Get the main Gtk struct */
	public GtkListBox* getListBoxStruct()
	{
		return gtkListBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBox;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkListBox = cast(GtkListBox*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListBox* gtkListBox, bool ownedRef = false)
	{
		this.gtkListBox = gtkListBox;
		super(cast(GtkContainer*)gtkListBox, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_list_box_get_type();
	}

	/**
	 * Creates a new #GtkListBox container.
	 *
	 * Return: a new #GtkListBox
	 *
	 * Since: 3.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_list_box_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GtkListBox*) p);
	}

	/**
	 * Binds @model to @box.
	 *
	 * If @box was already bound to a model, that previous binding is
	 * destroyed.
	 *
	 * The contents of @box are cleared and then filled with widgets that
	 * represent items from @model. @box is updated whenever @model changes.
	 * If @model is %NULL, @box is left empty.
	 *
	 * It is undefined to add or remove widgets directly (for example, with
	 * gtk_list_box_insert() or gtk_container_add()) while @box is bound to a
	 * model.
	 *
	 * Note that using a model is incompatible with the filtering and sorting
	 * functionality in GtkListBox. When using a model, filtering and sorting
	 * should be implemented by the model.
	 *
	 * Params:
	 *     model = the #GListModel to be bound to @box
	 *     createWidgetFunc = a function that creates widgets for items
	 *         or %NULL in case you also passed %NULL as @model
	 *     userData = user data passed to @create_widget_func
	 *     userDataFreeFunc = function for freeing @user_data
	 *
	 * Since: 3.16
	 */
	public void bindModel(ListModelIF model, GtkListBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc)
	{
		gtk_list_box_bind_model(gtkListBox, (model is null) ? null : model.getListModelStruct(), createWidgetFunc, userData, userDataFreeFunc);
	}

	/**
	 * This is a helper function for implementing DnD onto a #GtkListBox.
	 * The passed in @row will be highlighted via gtk_drag_highlight(),
	 * and any previously highlighted row will be unhighlighted.
	 *
	 * The row will also be unhighlighted when the widget gets
	 * a drag leave event.
	 *
	 * Params:
	 *     row = a #GtkListBoxRow
	 *
	 * Since: 3.10
	 */
	public void dragHighlightRow(ListBoxRow row)
	{
		gtk_list_box_drag_highlight_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}

	/**
	 * If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
	 * it will have the highlight removed.
	 *
	 * Since: 3.10
	 */
	public void dragUnhighlightRow()
	{
		gtk_list_box_drag_unhighlight_row(gtkListBox);
	}

	/**
	 * Returns whether rows activate on single clicks.
	 *
	 * Return: %TRUE if rows are activated on single click, %FALSE otherwise
	 *
	 * Since: 3.10
	 */
	public bool getActivateOnSingleClick()
	{
		return gtk_list_box_get_activate_on_single_click(gtkListBox) != 0;
	}

	/**
	 * Gets the adjustment (if any) that the widget uses to
	 * for vertical scrolling.
	 *
	 * Return: the adjustment
	 *
	 * Since: 3.10
	 */
	public Adjustment getAdjustment()
	{
		auto p = gtk_list_box_get_adjustment(gtkListBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the n-th child in the list (not counting headers).
	 * If @_index is negative or larger than the number of items in the
	 * list, %NULL is returned.
	 *
	 * Params:
	 *     index = the index of the row
	 *
	 * Return: the child #GtkWidget or %NULL
	 *
	 * Since: 3.10
	 */
	public ListBoxRow getRowAtIndex(int index)
	{
		auto p = gtk_list_box_get_row_at_index(gtkListBox, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}

	/**
	 * Gets the row at the @y position.
	 *
	 * Params:
	 *     y = position
	 *
	 * Return: the row or %NULL
	 *     in case no row exists for the given y coordinate.
	 *
	 * Since: 3.10
	 */
	public ListBoxRow getRowAtY(int y)
	{
		auto p = gtk_list_box_get_row_at_y(gtkListBox, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}

	/**
	 * Gets the selected row.
	 *
	 * Note that the box may allow multiple selection, in which
	 * case you should use gtk_list_box_selected_foreach() to
	 * find all selected rows.
	 *
	 * Return: the selected row
	 *
	 * Since: 3.10
	 */
	public ListBoxRow getSelectedRow()
	{
		auto p = gtk_list_box_get_selected_row(gtkListBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}

	/**
	 * Creates a list of all selected children.
	 *
	 * Return: A #GList containing the #GtkWidget for each selected child.
	 *     Free with g_list_free() when done.
	 *
	 * Since: 3.14
	 */
	public ListG getSelectedRows()
	{
		auto p = gtk_list_box_get_selected_rows(gtkListBox);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the selection mode of the listbox.
	 *
	 * Return: a #GtkSelectionMode
	 *
	 * Since: 3.10
	 */
	public GtkSelectionMode getSelectionMode()
	{
		return gtk_list_box_get_selection_mode(gtkListBox);
	}

	/**
	 * Insert the @child into the @box at @position. If a sort function is
	 * set, the widget will actually be inserted at the calculated position and
	 * this function has the same effect of gtk_container_add().
	 *
	 * If @position is -1, or larger than the total number of items in the
	 * @box, then the @child will be appended to the end.
	 *
	 * Params:
	 *     child = the #GtkWidget to add
	 *     position = the position to insert @child in
	 *
	 * Since: 3.10
	 */
	public void insert(Widget child, int position)
	{
		gtk_list_box_insert(gtkListBox, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Update the filtering for all rows. Call this when result
	 * of the filter function on the @box is changed due
	 * to an external factor. For instance, this would be used
	 * if the filter function just looked for a specific search
	 * string and the entry with the search string has changed.
	 *
	 * Since: 3.10
	 */
	public void invalidateFilter()
	{
		gtk_list_box_invalidate_filter(gtkListBox);
	}

	/**
	 * Update the separators for all rows. Call this when result
	 * of the header function on the @box is changed due
	 * to an external factor.
	 *
	 * Since: 3.10
	 */
	public void invalidateHeaders()
	{
		gtk_list_box_invalidate_headers(gtkListBox);
	}

	/**
	 * Update the sorting for all rows. Call this when result
	 * of the sort function on the @box is changed due
	 * to an external factor.
	 *
	 * Since: 3.10
	 */
	public void invalidateSort()
	{
		gtk_list_box_invalidate_sort(gtkListBox);
	}

	/**
	 * Prepend a widget to the list. If a sort function is set, the widget will
	 * actually be inserted at the calculated position and this function has the
	 * same effect of gtk_container_add().
	 *
	 * Params:
	 *     child = the #GtkWidget to add
	 *
	 * Since: 3.10
	 */
	public void prepend(Widget child)
	{
		gtk_list_box_prepend(gtkListBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Select all children of @box, if the selection mode allows it.
	 *
	 * Since: 3.14
	 */
	public void selectAll()
	{
		gtk_list_box_select_all(gtkListBox);
	}

	/**
	 * Make @row the currently selected row.
	 *
	 * Params:
	 *     row = The row to select or %NULL
	 *
	 * Since: 3.10
	 */
	public void selectRow(ListBoxRow row)
	{
		gtk_list_box_select_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}

	/**
	 * Calls a function for each selected child.
	 *
	 * Note that the selection cannot be modified from within this function.
	 *
	 * Params:
	 *     func = the function to call for each selected child
	 *     data = user data to pass to the function
	 *
	 * Since: 3.14
	 */
	public void selectedForeach(GtkListBoxForeachFunc func, void* data)
	{
		gtk_list_box_selected_foreach(gtkListBox, func, data);
	}

	/**
	 * If @single is %TRUE, rows will be activated when you click on them,
	 * otherwise you need to double-click.
	 *
	 * Params:
	 *     single = a boolean
	 *
	 * Since: 3.10
	 */
	public void setActivateOnSingleClick(bool single)
	{
		gtk_list_box_set_activate_on_single_click(gtkListBox, single);
	}

	/**
	 * Sets the adjustment (if any) that the widget uses to
	 * for vertical scrolling. For instance, this is used
	 * to get the page size for PageUp/Down key handling.
	 *
	 * In the normal case when the @box is packed inside
	 * a #GtkScrolledWindow the adjustment from that will
	 * be picked up automatically, so there is no need
	 * to manually do that.
	 *
	 * Params:
	 *     adjustment = the adjustment, or %NULL
	 *
	 * Since: 3.10
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_list_box_set_adjustment(gtkListBox, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * By setting a filter function on the @box one can decide dynamically which
	 * of the rows to show. For instance, to implement a search function on a list that
	 * filters the original list to only show the matching rows.
	 *
	 * The @filter_func will be called for each row after the call, and it will
	 * continue to be called each time a row changes (via gtk_list_box_row_changed()) or
	 * when gtk_list_box_invalidate_filter() is called.
	 *
	 * Note that using a filter function is incompatible with using a model
	 * (see gtk_list_box_bind_model()).
	 *
	 * Params:
	 *     filterFunc = callback that lets you filter which rows to show
	 *     userData = user data passed to @filter_func
	 *     destroy = destroy notifier for @user_data
	 *
	 * Since: 3.10
	 */
	public void setFilterFunc(GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_list_box_set_filter_func(gtkListBox, filterFunc, userData, destroy);
	}

	/**
	 * By setting a header function on the @box one can dynamically add headers
	 * in front of rows, depending on the contents of the row and its position in the list.
	 * For instance, one could use it to add headers in front of the first item of a
	 * new kind, in a list sorted by the kind.
	 *
	 * The @update_header can look at the current header widget using gtk_list_box_row_get_header()
	 * and either update the state of the widget as needed, or set a new one using
	 * gtk_list_box_row_set_header(). If no header is needed, set the header to %NULL.
	 *
	 * Note that you may get many calls @update_header to this for a particular row when e.g.
	 * changing things that don’t affect the header. In this case it is important for performance
	 * to not blindly replace an existing header with an identical one.
	 *
	 * The @update_header function will be called for each row after the call, and it will
	 * continue to be called each time a row changes (via gtk_list_box_row_changed()) and when
	 * the row before changes (either by gtk_list_box_row_changed() on the previous row, or when
	 * the previous row becomes a different row). It is also called for all rows when
	 * gtk_list_box_invalidate_headers() is called.
	 *
	 * Params:
	 *     updateHeader = callback that lets you add row headers
	 *     userData = user data passed to @update_header
	 *     destroy = destroy notifier for @user_data
	 *
	 * Since: 3.10
	 */
	public void setHeaderFunc(GtkListBoxUpdateHeaderFunc updateHeader, void* userData, GDestroyNotify destroy)
	{
		gtk_list_box_set_header_func(gtkListBox, updateHeader, userData, destroy);
	}

	/**
	 * Sets the placeholder widget that is shown in the list when
	 * it doesn't display any visible children.
	 *
	 * Params:
	 *     placeholder = a #GtkWidget or %NULL
	 *
	 * Since: 3.10
	 */
	public void setPlaceholder(Widget placeholder)
	{
		gtk_list_box_set_placeholder(gtkListBox, (placeholder is null) ? null : placeholder.getWidgetStruct());
	}

	/**
	 * Sets how selection works in the listbox.
	 * See #GtkSelectionMode for details.
	 *
	 * Params:
	 *     mode = The #GtkSelectionMode
	 *
	 * Since: 3.10
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		gtk_list_box_set_selection_mode(gtkListBox, mode);
	}

	/**
	 * By setting a sort function on the @box one can dynamically reorder the rows
	 * of the list, based on the contents of the rows.
	 *
	 * The @sort_func will be called for each row after the call, and will continue to
	 * be called each time a row changes (via gtk_list_box_row_changed()) and when
	 * gtk_list_box_invalidate_sort() is called.
	 *
	 * Note that using a sort function is incompatible with using a model
	 * (see gtk_list_box_bind_model()).
	 *
	 * Params:
	 *     sortFunc = the sort function
	 *     userData = user data passed to @sort_func
	 *     destroy = destroy notifier for @user_data
	 *
	 * Since: 3.10
	 */
	public void setSortFunc(GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_list_box_set_sort_func(gtkListBox, sortFunc, userData, destroy);
	}

	/**
	 * Unselect all children of @box, if the selection mode allows it.
	 *
	 * Since: 3.14
	 */
	public void unselectAll()
	{
		gtk_list_box_unselect_all(gtkListBox);
	}

	/**
	 * Unselects a single row of @box, if the selection mode allows it.
	 *
	 * Params:
	 *     row = the row to unselected
	 *
	 * Since: 3.14
	 */
	public void unselectRow(ListBoxRow row)
	{
		gtk_list_box_unselect_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}

	protected class OnActivateCursorRowDelegateWrapper
	{
		void delegate(ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnActivateCursorRowDelegateWrapper[] onActivateCursorRowListeners;

	/** */
	gulong addOnActivateCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onActivateCursorRowListeners ~= new OnActivateCursorRowDelegateWrapper(dlg, 0, connectFlags);
		onActivateCursorRowListeners[onActivateCursorRowListeners.length - 1].handlerId = Signals.connectData(
			this,
			"activate-cursor-row",
			cast(GCallback)&callBackActivateCursorRow,
			cast(void*)onActivateCursorRowListeners[onActivateCursorRowListeners.length - 1],
			cast(GClosureNotify)&callBackActivateCursorRowDestroy,
			connectFlags);
		return onActivateCursorRowListeners[onActivateCursorRowListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackActivateCursorRow(GtkListBox* listboxStruct,OnActivateCursorRowDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackActivateCursorRowDestroy(OnActivateCursorRowDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnActivateCursorRow(wrapper);
	}

	protected void internalRemoveOnActivateCursorRow(OnActivateCursorRowDelegateWrapper source)
	{
		foreach(index, wrapper; onActivateCursorRowListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onActivateCursorRowListeners[index] = null;
				onActivateCursorRowListeners = std.algorithm.remove(onActivateCursorRowListeners, index);
				break;
			}
		}
	}
	

	protected class OnMoveCursorDelegateWrapper
	{
		void delegate(GtkMovementStep, int, ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(GtkMovementStep, int, ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMoveCursorDelegateWrapper[] onMoveCursorListeners;

	/** */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMoveCursorListeners ~= new OnMoveCursorDelegateWrapper(dlg, 0, connectFlags);
		onMoveCursorListeners[onMoveCursorListeners.length - 1].handlerId = Signals.connectData(
			this,
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)onMoveCursorListeners[onMoveCursorListeners.length - 1],
			cast(GClosureNotify)&callBackMoveCursorDestroy,
			connectFlags);
		return onMoveCursorListeners[onMoveCursorListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMoveCursor(GtkListBox* listboxStruct, GtkMovementStep object, int p0,OnMoveCursorDelegateWrapper wrapper)
	{
		wrapper.dlg(object, p0, wrapper.outer);
	}
	
	extern(C) static void callBackMoveCursorDestroy(OnMoveCursorDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMoveCursor(wrapper);
	}

	protected void internalRemoveOnMoveCursor(OnMoveCursorDelegateWrapper source)
	{
		foreach(index, wrapper; onMoveCursorListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMoveCursorListeners[index] = null;
				onMoveCursorListeners = std.algorithm.remove(onMoveCursorListeners, index);
				break;
			}
		}
	}
	

	protected class OnRowActivatedDelegateWrapper
	{
		void delegate(ListBoxRow, ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBoxRow, ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRowActivatedDelegateWrapper[] onRowActivatedListeners;

	/**
	 * The ::row-activated signal is emitted when a row has been activated by the user.
	 *
	 * Params:
	 *     row = the activated row
	 *
	 * Since: 3.10
	 */
	gulong addOnRowActivated(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRowActivatedListeners ~= new OnRowActivatedDelegateWrapper(dlg, 0, connectFlags);
		onRowActivatedListeners[onRowActivatedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"row-activated",
			cast(GCallback)&callBackRowActivated,
			cast(void*)onRowActivatedListeners[onRowActivatedListeners.length - 1],
			cast(GClosureNotify)&callBackRowActivatedDestroy,
			connectFlags);
		return onRowActivatedListeners[onRowActivatedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRowActivated(GtkListBox* listboxStruct, GtkListBoxRow* row,OnRowActivatedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(ListBoxRow)(row), wrapper.outer);
	}
	
	extern(C) static void callBackRowActivatedDestroy(OnRowActivatedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRowActivated(wrapper);
	}

	protected void internalRemoveOnRowActivated(OnRowActivatedDelegateWrapper source)
	{
		foreach(index, wrapper; onRowActivatedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRowActivatedListeners[index] = null;
				onRowActivatedListeners = std.algorithm.remove(onRowActivatedListeners, index);
				break;
			}
		}
	}
	

	protected class OnRowSelectedDelegateWrapper
	{
		void delegate(ListBoxRow, ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBoxRow, ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRowSelectedDelegateWrapper[] onRowSelectedListeners;

	/**
	 * The ::row-selected signal is emitted when a new row is selected, or
	 * (with a %NULL @row) when the selection is cleared.
	 *
	 * When the @box is using #GTK_SELECTION_MULTIPLE, this signal will not
	 * give you the full picture of selection changes, and you should use
	 * the #GtkListBox::selected-rows-changed signal instead.
	 *
	 * Params:
	 *     row = the selected row
	 *
	 * Since: 3.10
	 */
	gulong addOnRowSelected(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRowSelectedListeners ~= new OnRowSelectedDelegateWrapper(dlg, 0, connectFlags);
		onRowSelectedListeners[onRowSelectedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"row-selected",
			cast(GCallback)&callBackRowSelected,
			cast(void*)onRowSelectedListeners[onRowSelectedListeners.length - 1],
			cast(GClosureNotify)&callBackRowSelectedDestroy,
			connectFlags);
		return onRowSelectedListeners[onRowSelectedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRowSelected(GtkListBox* listboxStruct, GtkListBoxRow* row,OnRowSelectedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(ListBoxRow)(row), wrapper.outer);
	}
	
	extern(C) static void callBackRowSelectedDestroy(OnRowSelectedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRowSelected(wrapper);
	}

	protected void internalRemoveOnRowSelected(OnRowSelectedDelegateWrapper source)
	{
		foreach(index, wrapper; onRowSelectedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRowSelectedListeners[index] = null;
				onRowSelectedListeners = std.algorithm.remove(onRowSelectedListeners, index);
				break;
			}
		}
	}
	

	protected class OnSelectAllDelegateWrapper
	{
		void delegate(ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSelectAllDelegateWrapper[] onSelectAllListeners;

	/**
	 * The ::select-all signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted to select all children of the box, if the selection
	 * mode permits it.
	 *
	 * The default bindings for this signal is Ctrl-a.
	 *
	 * Since: 3.14
	 */
	gulong addOnSelectAll(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSelectAllListeners ~= new OnSelectAllDelegateWrapper(dlg, 0, connectFlags);
		onSelectAllListeners[onSelectAllListeners.length - 1].handlerId = Signals.connectData(
			this,
			"select-all",
			cast(GCallback)&callBackSelectAll,
			cast(void*)onSelectAllListeners[onSelectAllListeners.length - 1],
			cast(GClosureNotify)&callBackSelectAllDestroy,
			connectFlags);
		return onSelectAllListeners[onSelectAllListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSelectAll(GtkListBox* listboxStruct,OnSelectAllDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSelectAllDestroy(OnSelectAllDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSelectAll(wrapper);
	}

	protected void internalRemoveOnSelectAll(OnSelectAllDelegateWrapper source)
	{
		foreach(index, wrapper; onSelectAllListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSelectAllListeners[index] = null;
				onSelectAllListeners = std.algorithm.remove(onSelectAllListeners, index);
				break;
			}
		}
	}
	

	protected class OnSelectedRowsChangedDelegateWrapper
	{
		void delegate(ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSelectedRowsChangedDelegateWrapper[] onSelectedRowsChangedListeners;

	/**
	 * The ::selected-rows-changed signal is emitted when the
	 * set of selected rows changes.
	 *
	 * Since: 3.14
	 */
	gulong addOnSelectedRowsChanged(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSelectedRowsChangedListeners ~= new OnSelectedRowsChangedDelegateWrapper(dlg, 0, connectFlags);
		onSelectedRowsChangedListeners[onSelectedRowsChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"selected-rows-changed",
			cast(GCallback)&callBackSelectedRowsChanged,
			cast(void*)onSelectedRowsChangedListeners[onSelectedRowsChangedListeners.length - 1],
			cast(GClosureNotify)&callBackSelectedRowsChangedDestroy,
			connectFlags);
		return onSelectedRowsChangedListeners[onSelectedRowsChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSelectedRowsChanged(GtkListBox* listboxStruct,OnSelectedRowsChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackSelectedRowsChangedDestroy(OnSelectedRowsChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSelectedRowsChanged(wrapper);
	}

	protected void internalRemoveOnSelectedRowsChanged(OnSelectedRowsChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onSelectedRowsChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSelectedRowsChangedListeners[index] = null;
				onSelectedRowsChangedListeners = std.algorithm.remove(onSelectedRowsChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnToggleCursorRowDelegateWrapper
	{
		void delegate(ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnToggleCursorRowDelegateWrapper[] onToggleCursorRowListeners;

	/** */
	gulong addOnToggleCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onToggleCursorRowListeners ~= new OnToggleCursorRowDelegateWrapper(dlg, 0, connectFlags);
		onToggleCursorRowListeners[onToggleCursorRowListeners.length - 1].handlerId = Signals.connectData(
			this,
			"toggle-cursor-row",
			cast(GCallback)&callBackToggleCursorRow,
			cast(void*)onToggleCursorRowListeners[onToggleCursorRowListeners.length - 1],
			cast(GClosureNotify)&callBackToggleCursorRowDestroy,
			connectFlags);
		return onToggleCursorRowListeners[onToggleCursorRowListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackToggleCursorRow(GtkListBox* listboxStruct,OnToggleCursorRowDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackToggleCursorRowDestroy(OnToggleCursorRowDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnToggleCursorRow(wrapper);
	}

	protected void internalRemoveOnToggleCursorRow(OnToggleCursorRowDelegateWrapper source)
	{
		foreach(index, wrapper; onToggleCursorRowListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onToggleCursorRowListeners[index] = null;
				onToggleCursorRowListeners = std.algorithm.remove(onToggleCursorRowListeners, index);
				break;
			}
		}
	}
	

	protected class OnUnselectAllDelegateWrapper
	{
		void delegate(ListBox) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(ListBox) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnUnselectAllDelegateWrapper[] onUnselectAllListeners;

	/**
	 * The ::unselect-all signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted to unselect all children of the box, if the selection
	 * mode permits it.
	 *
	 * The default bindings for this signal is Ctrl-Shift-a.
	 *
	 * Since: 3.14
	 */
	gulong addOnUnselectAll(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onUnselectAllListeners ~= new OnUnselectAllDelegateWrapper(dlg, 0, connectFlags);
		onUnselectAllListeners[onUnselectAllListeners.length - 1].handlerId = Signals.connectData(
			this,
			"unselect-all",
			cast(GCallback)&callBackUnselectAll,
			cast(void*)onUnselectAllListeners[onUnselectAllListeners.length - 1],
			cast(GClosureNotify)&callBackUnselectAllDestroy,
			connectFlags);
		return onUnselectAllListeners[onUnselectAllListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackUnselectAll(GtkListBox* listboxStruct,OnUnselectAllDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackUnselectAllDestroy(OnUnselectAllDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnUnselectAll(wrapper);
	}

	protected void internalRemoveOnUnselectAll(OnUnselectAllDelegateWrapper source)
	{
		foreach(index, wrapper; onUnselectAllListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onUnselectAllListeners[index] = null;
				onUnselectAllListeners = std.algorithm.remove(onUnselectAllListeners, index);
				break;
			}
		}
	}
	
}
