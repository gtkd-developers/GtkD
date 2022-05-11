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
private import gtk.ListBoxRow;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkListBox` is a vertical list.
 * 
 * A `GtkListBox` only contains `GtkListBoxRow` children. These rows can
 * by dynamically sorted and filtered, and headers can be added dynamically
 * depending on the row content. It also allows keyboard and mouse navigation
 * and selection like a typical list.
 * 
 * Using `GtkListBox` is often an alternative to `GtkTreeView`, especially
 * when the list contents has a more complicated layout than what is allowed
 * by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
 * button in it).
 * 
 * Although a `GtkListBox` must have only `GtkListBoxRow` children, you can
 * add any kind of widget to it via [method@Gtk.ListBox.prepend],
 * [method@Gtk.ListBox.append] and [method@Gtk.ListBox.insert] and a
 * `GtkListBoxRow` widget will automatically be inserted between the list
 * and the widget.
 * 
 * `GtkListBoxRows` can be marked as activatable or selectable. If a row is
 * activatable, [signal@Gtk.ListBox::row-activated] will be emitted for it when
 * the user tries to activate it. If it is selectable, the row will be marked
 * as selected when the user tries to select it.
 * 
 * # GtkListBox as GtkBuildable
 * 
 * The `GtkListBox` implementation of the `GtkBuildable` interface supports
 * setting a child as the placeholder by specifying “placeholder” as the “type”
 * attribute of a <child> element. See [method@Gtk.ListBox.set_placeholder]
 * for info.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * list[.separators][.rich-list][.navigation-sidebar]
 * ╰── row[.activatable]
 * ]|
 * 
 * `GtkListBox` uses a single CSS node named list. It may carry the .separators
 * style class, when the [property@Gtk.ListBox:show-separators] property is set.
 * Each `GtkListBoxRow` uses a single CSS node named row. The row nodes get the
 * .activatable style class added when appropriate.
 * 
 * The main list node may also carry style classes to select
 * the style of [list presentation](section-list-widget.html#list-styles):
 * .rich-list, .navigation-sidebar or .data-table.
 * 
 * # Accessibility
 * 
 * `GtkListBox` uses the %GTK_ACCESSIBLE_ROLE_LIST role and `GtkListBoxRow` uses
 * the %GTK_ACCESSIBLE_ROLE_LIST_ITEM role.
 */
public class ListBox : Widget
{
	/** the main Gtk struct */
	protected GtkListBox* gtkListBox;

	/** Get the main Gtk struct */
	public GtkListBox* getListBoxStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkListBox;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBox;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkListBox* gtkListBox, bool ownedRef = false)
	{
		this.gtkListBox = gtkListBox;
		super(cast(GtkWidget*)gtkListBox, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_list_box_get_type();
	}

	/**
	 * Creates a new `GtkListBox` container.
	 *
	 * Returns: a new `GtkListBox`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_list_box_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkListBox*) __p);
	}

	/**
	 * Append a widget to the list.
	 *
	 * If a sort function is set, the widget will
	 * actually be inserted at the calculated position.
	 *
	 * Params:
	 *     child = the `GtkWidget` to add
	 */
	public void append(Widget child)
	{
		gtk_list_box_append(gtkListBox, (child is null) ? null : child.getWidgetStruct());
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
	 * [method@Gtk.ListBox.insert]) while @box is bound to a model.
	 *
	 * Note that using a model is incompatible with the filtering and sorting
	 * functionality in `GtkListBox`. When using a model, filtering and sorting
	 * should be implemented by the model.
	 *
	 * Params:
	 *     model = the `GListModel` to be bound to @box
	 *     createWidgetFunc = a function that creates widgets for items
	 *         or %NULL in case you also passed %NULL as @model
	 *     userData = user data passed to @create_widget_func
	 *     userDataFreeFunc = function for freeing @user_data
	 */
	public void bindModel(ListModelIF model, GtkListBoxCreateWidgetFunc createWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc)
	{
		gtk_list_box_bind_model(gtkListBox, (model is null) ? null : model.getListModelStruct(), createWidgetFunc, userData, userDataFreeFunc);
	}

	/**
	 * Add a drag highlight to a row.
	 *
	 * This is a helper function for implementing DnD onto a `GtkListBox`.
	 * The passed in @row will be highlighted by setting the
	 * %GTK_STATE_FLAG_DROP_ACTIVE state and any previously highlighted
	 * row will be unhighlighted.
	 *
	 * The row will also be unhighlighted when the widget gets
	 * a drag leave event.
	 *
	 * Params:
	 *     row = a `GtkListBoxRow`
	 */
	public void dragHighlightRow(ListBoxRow row)
	{
		gtk_list_box_drag_highlight_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}

	/**
	 * If a row has previously been highlighted via gtk_list_box_drag_highlight_row(),
	 * it will have the highlight removed.
	 */
	public void dragUnhighlightRow()
	{
		gtk_list_box_drag_unhighlight_row(gtkListBox);
	}

	/**
	 * Returns whether rows activate on single clicks.
	 *
	 * Returns: %TRUE if rows are activated on single click, %FALSE otherwise
	 */
	public bool getActivateOnSingleClick()
	{
		return gtk_list_box_get_activate_on_single_click(gtkListBox) != 0;
	}

	/**
	 * Gets the adjustment (if any) that the widget uses to
	 * for vertical scrolling.
	 *
	 * Returns: the adjustment
	 */
	public Adjustment getAdjustment()
	{
		auto __p = gtk_list_box_get_adjustment(gtkListBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Gets the n-th child in the list (not counting headers).
	 *
	 * If @index_ is negative or larger than the number of items in the
	 * list, %NULL is returned.
	 *
	 * Params:
	 *     index = the index of the row
	 *
	 * Returns: the child `GtkWidget`
	 */
	public ListBoxRow getRowAtIndex(int index)
	{
		auto __p = gtk_list_box_get_row_at_index(gtkListBox, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) __p);
	}

	/**
	 * Gets the row at the @y position.
	 *
	 * Params:
	 *     y = position
	 *
	 * Returns: the row
	 */
	public ListBoxRow getRowAtY(int y)
	{
		auto __p = gtk_list_box_get_row_at_y(gtkListBox, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) __p);
	}

	/**
	 * Gets the selected row, or %NULL if no rows are selected.
	 *
	 * Note that the box may allow multiple selection, in which
	 * case you should use [method@Gtk.ListBox.selected_foreach] to
	 * find all selected rows.
	 *
	 * Returns: the selected row
	 */
	public ListBoxRow getSelectedRow()
	{
		auto __p = gtk_list_box_get_selected_row(gtkListBox);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) __p);
	}

	/**
	 * Creates a list of all selected children.
	 *
	 * Returns: A `GList` containing the `GtkWidget` for each selected child.
	 *     Free with g_list_free() when done.
	 */
	public ListG getSelectedRows()
	{
		auto __p = gtk_list_box_get_selected_rows(gtkListBox);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the selection mode of the listbox.
	 *
	 * Returns: a `GtkSelectionMode`
	 */
	public GtkSelectionMode getSelectionMode()
	{
		return gtk_list_box_get_selection_mode(gtkListBox);
	}

	/**
	 * Returns whether the list box should show separators
	 * between rows.
	 *
	 * Returns: %TRUE if the list box shows separators
	 */
	public bool getShowSeparators()
	{
		return gtk_list_box_get_show_separators(gtkListBox) != 0;
	}

	/**
	 * Insert the @child into the @box at @position.
	 *
	 * If a sort function is
	 * set, the widget will actually be inserted at the calculated position.
	 *
	 * If @position is -1, or larger than the total number of items in the
	 * @box, then the @child will be appended to the end.
	 *
	 * Params:
	 *     child = the `GtkWidget` to add
	 *     position = the position to insert @child in
	 */
	public void insert(Widget child, int position)
	{
		gtk_list_box_insert(gtkListBox, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Update the filtering for all rows.
	 *
	 * Call this when result
	 * of the filter function on the @box is changed due
	 * to an external factor. For instance, this would be used
	 * if the filter function just looked for a specific search
	 * string and the entry with the search string has changed.
	 */
	public void invalidateFilter()
	{
		gtk_list_box_invalidate_filter(gtkListBox);
	}

	/**
	 * Update the separators for all rows.
	 *
	 * Call this when result
	 * of the header function on the @box is changed due
	 * to an external factor.
	 */
	public void invalidateHeaders()
	{
		gtk_list_box_invalidate_headers(gtkListBox);
	}

	/**
	 * Update the sorting for all rows.
	 *
	 * Call this when result
	 * of the sort function on the @box is changed due
	 * to an external factor.
	 */
	public void invalidateSort()
	{
		gtk_list_box_invalidate_sort(gtkListBox);
	}

	/**
	 * Prepend a widget to the list.
	 *
	 * If a sort function is set, the widget will
	 * actually be inserted at the calculated position.
	 *
	 * Params:
	 *     child = the `GtkWidget` to add
	 */
	public void prepend(Widget child)
	{
		gtk_list_box_prepend(gtkListBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Removes a child from @box.
	 *
	 * Params:
	 *     child = the child to remove
	 */
	public void remove(Widget child)
	{
		gtk_list_box_remove(gtkListBox, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Select all children of @box, if the selection mode allows it.
	 */
	public void selectAll()
	{
		gtk_list_box_select_all(gtkListBox);
	}

	/**
	 * Make @row the currently selected row.
	 *
	 * Params:
	 *     row = The row to select
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
	 */
	public void setActivateOnSingleClick(bool single)
	{
		gtk_list_box_set_activate_on_single_click(gtkListBox, single);
	}

	/**
	 * Sets the adjustment (if any) that the widget uses to
	 * for vertical scrolling.
	 *
	 * For instance, this is used to get the page size for
	 * PageUp/Down key handling.
	 *
	 * In the normal case when the @box is packed inside
	 * a `GtkScrolledWindow` the adjustment from that will
	 * be picked up automatically, so there is no need
	 * to manually do that.
	 *
	 * Params:
	 *     adjustment = the adjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_list_box_set_adjustment(gtkListBox, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * By setting a filter function on the @box one can decide dynamically which
	 * of the rows to show.
	 *
	 * For instance, to implement a search function on a list that
	 * filters the original list to only show the matching rows.
	 *
	 * The @filter_func will be called for each row after the call, and
	 * it will continue to be called each time a row changes (via
	 * [method@Gtk.ListBoxRow.changed]) or when [method@Gtk.ListBox.invalidate_filter]
	 * is called.
	 *
	 * Note that using a filter function is incompatible with using a model
	 * (see [method@Gtk.ListBox.bind_model]).
	 *
	 * Params:
	 *     filterFunc = callback that lets you filter which rows to show
	 *     userData = user data passed to @filter_func
	 *     destroy = destroy notifier for @user_data
	 */
	public void setFilterFunc(GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_list_box_set_filter_func(gtkListBox, filterFunc, userData, destroy);
	}

	/**
	 * Sets a header function.
	 *
	 * By setting a header function on the @box one can dynamically add headers
	 * in front of rows, depending on the contents of the row and its position
	 * in the list.
	 *
	 * For instance, one could use it to add headers in front of the first item
	 * of a new kind, in a list sorted by the kind.
	 *
	 * The @update_header can look at the current header widget using
	 * [method@Gtk.ListBoxRow.get_header] and either update the state of the widget
	 * as needed, or set a new one using [method@Gtk.ListBoxRow.set_header]. If no
	 * header is needed, set the header to %NULL.
	 *
	 * Note that you may get many calls @update_header to this for a particular
	 * row when e.g. changing things that don’t affect the header. In this case
	 * it is important for performance to not blindly replace an existing header
	 * with an identical one.
	 *
	 * The @update_header function will be called for each row after the call,
	 * and it will continue to be called each time a row changes (via
	 * [method@Gtk.ListBoxRow.changed]) and when the row before changes (either
	 * by [method@Gtk.ListBoxRow.changed] on the previous row, or when the previous
	 * row becomes a different row). It is also called for all rows when
	 * [method@Gtk.ListBox.invalidate_headers] is called.
	 *
	 * Params:
	 *     updateHeader = callback that lets you add row headers
	 *     userData = user data passed to @update_header
	 *     destroy = destroy notifier for @user_data
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
	 *     placeholder = a `GtkWidget`
	 */
	public void setPlaceholder(Widget placeholder)
	{
		gtk_list_box_set_placeholder(gtkListBox, (placeholder is null) ? null : placeholder.getWidgetStruct());
	}

	/**
	 * Sets how selection works in the listbox.
	 *
	 * Params:
	 *     mode = The `GtkSelectionMode`
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		gtk_list_box_set_selection_mode(gtkListBox, mode);
	}

	/**
	 * Sets whether the list box should show separators
	 * between rows.
	 *
	 * Params:
	 *     showSeparators = %TRUE to show separators
	 */
	public void setShowSeparators(bool showSeparators)
	{
		gtk_list_box_set_show_separators(gtkListBox, showSeparators);
	}

	/**
	 * Sets a sort function.
	 *
	 * By setting a sort function on the @box one can dynamically reorder
	 * the rows of the list, based on the contents of the rows.
	 *
	 * The @sort_func will be called for each row after the call, and will
	 * continue to be called each time a row changes (via
	 * [method@Gtk.ListBoxRow.changed]) and when [method@Gtk.ListBox.invalidate_sort]
	 * is called.
	 *
	 * Note that using a sort function is incompatible with using a model
	 * (see [method@Gtk.ListBox.bind_model]).
	 *
	 * Params:
	 *     sortFunc = the sort function
	 *     userData = user data passed to @sort_func
	 *     destroy = destroy notifier for @user_data
	 */
	public void setSortFunc(GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		gtk_list_box_set_sort_func(gtkListBox, sortFunc, userData, destroy);
	}

	/**
	 * Unselect all children of @box, if the selection mode allows it.
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
	 */
	public void unselectRow(ListBoxRow row)
	{
		gtk_list_box_unselect_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}

	/** */
	gulong addOnActivateCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-cursor-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnMoveCursor(void delegate(GtkMovementStep, int, bool, bool, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a row has been activated by the user.
	 *
	 * Params:
	 *     row = the activated row
	 */
	gulong addOnRowActivated(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a new row is selected, or (with a %NULL @row)
	 * when the selection is cleared.
	 *
	 * When the @box is using %GTK_SELECTION_MULTIPLE, this signal will not
	 * give you the full picture of selection changes, and you should use
	 * the [signal@Gtk.ListBox::selected-rows-changed] signal instead.
	 *
	 * Params:
	 *     row = the selected row
	 */
	gulong addOnRowSelected(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-selected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to select all children of the box, if the selection
	 * mode permits it.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is <kbd>Ctrl</kbd>-<kbd>a</kbd>.
	 */
	gulong addOnSelectAll(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the set of selected rows changes.
	 */
	gulong addOnSelectedRowsChanged(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selected-rows-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnToggleCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted to unselect all children of the box, if the selection
	 * mode permits it.
	 *
	 * This is a [keybinding signal](class.SignalAction.html).
	 *
	 * The default binding for this signal is
	 * <kbd>Ctrl</kbd>-<kbd>Shift</kbd>-<kbd>a</kbd>.
	 */
	gulong addOnUnselectAll(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unselect-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
