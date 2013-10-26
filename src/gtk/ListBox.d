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

/*
 * Conversion parameters:
 * inFile  = GtkListBox.html
 * outPack = gtk
 * outFile = ListBox
 * strct   = GtkListBox
 * realStrct=
 * ctorStrct=
 * clss    = ListBox
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_list_box_
 * omit structs:
 * omit prefixes:
 * 	- gtk_list_box_row_
 * omit code:
 * omit signals:
 * 	- activate
 * imports:
 * 	- gtk.Adjustment
 * 	- gtk.ListBoxRow
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkListBoxRow* -> ListBoxRow
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.ListBox;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;
private import gtk.Adjustment;
private import gtk.ListBoxRow;
private import gtk.Widget;


private import gtk.Container;

/**
 * A GtkListBox is a vertical container that contains GtkListBoxRow
 * children. These rows can by dynamically sorted and filtered, and
 * headers can be added dynamically depending on the row content.
 * It also allows keyboard and mouse navigation and selection like
 * a typical list.
 *
 * Using GtkListBox is often an alternative to GtkTreeView, especially
 * when the list contents has a more complicated layout than what is allowed
 * by a GtkCellRenderer, or when the contents is interactive (i.e. has a
 * button in it).
 *
 * Although a GtkListBox must have only GtkListBoxRow children you can
 * add any kind of widget to it via gtk_container_add(), and a GtkListBoxRow
 * widget will automatically be inserted between the list and the widget.
 *
 * The GtkListBox widget was added in GTK+ 3.10.
 */
public class ListBox : Container
{
	
	/** the main Gtk struct */
	protected GtkListBox* gtkListBox;
	
	
	public GtkListBox* getListBoxStruct()
	{
		return gtkListBox;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkListBox;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkListBox* gtkListBox)
	{
		super(cast(GtkContainer*)gtkListBox);
		this.gtkListBox = gtkListBox;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkListBox = cast(GtkListBox*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(ListBox)[] onActivateCursorRowListeners;
	/**
	 */
	void addOnActivateCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-cursor-row",
			cast(GCallback)&callBackActivateCursorRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-cursor-row"] = 1;
		}
		onActivateCursorRowListeners ~= dlg;
	}
	extern(C) static void callBackActivateCursorRow(GtkListBox* listboxStruct, ListBox _listBox)
	{
		foreach ( void delegate(ListBox) dlg ; _listBox.onActivateCursorRowListeners )
		{
			dlg(_listBox);
		}
	}
	
	void delegate(GtkMovementStep, gint, ListBox)[] onMoveCursorListeners;
	/**
	 */
	void addOnMoveCursor(void delegate(GtkMovementStep, gint, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkListBox* listboxStruct, GtkMovementStep arg1, gint arg2, ListBox _listBox)
	{
		foreach ( void delegate(GtkMovementStep, gint, ListBox) dlg ; _listBox.onMoveCursorListeners )
		{
			dlg(arg1, arg2, _listBox);
		}
	}
	
	void delegate(ListBoxRow, ListBox)[] onRowActivatedListeners;
	/**
	 * The ::row-activated signal is emitted when a row has been activated by
	 * the user.
	 * Since 3.10
	 */
	void addOnRowActivated(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-activated",
			cast(GCallback)&callBackRowActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-activated"] = 1;
		}
		onRowActivatedListeners ~= dlg;
	}
	extern(C) static void callBackRowActivated(GtkListBox* listBoxStruct, GtkListBoxRow* row, ListBox _listBox)
	{
		foreach ( void delegate(ListBoxRow, ListBox) dlg ; _listBox.onRowActivatedListeners )
		{
			dlg(ObjectG.getDObject!(ListBoxRow)(row), _listBox);
		}
	}
	
	void delegate(ListBoxRow, ListBox)[] onRowSelectedListeners;
	/**
	 * The ::row-selected signal is emitted when a new row is selected, or
	 * (with a NULL row) when the selection is cleared.
	 * Since 3.10
	 */
	void addOnRowSelected(void delegate(ListBoxRow, ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-selected" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-selected",
			cast(GCallback)&callBackRowSelected,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-selected"] = 1;
		}
		onRowSelectedListeners ~= dlg;
	}
	extern(C) static void callBackRowSelected(GtkListBox* listBoxStruct, GtkListBoxRow* row, ListBox _listBox)
	{
		foreach ( void delegate(ListBoxRow, ListBox) dlg ; _listBox.onRowSelectedListeners )
		{
			dlg(ObjectG.getDObject!(ListBoxRow)(row), _listBox);
		}
	}
	
	void delegate(ListBox)[] onToggleCursorRowListeners;
	/**
	 */
	void addOnToggleCursorRow(void delegate(ListBox) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-cursor-row",
			cast(GCallback)&callBackToggleCursorRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-cursor-row"] = 1;
		}
		onToggleCursorRowListeners ~= dlg;
	}
	extern(C) static void callBackToggleCursorRow(GtkListBox* listboxStruct, ListBox _listBox)
	{
		foreach ( void delegate(ListBox) dlg ; _listBox.onToggleCursorRowListeners )
		{
			dlg(_listBox);
		}
	}
	
	
	/**
	 * Creates a new GtkListBox container.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_list_box_new (void);
		auto p = gtk_list_box_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_list_box_new()");
		}
		this(cast(GtkListBox*) p);
	}
	
	/**
	 * Prepend a widget to the list. If a sort function is set, the widget will
	 * actually be inserted at the calculated position and this function has the
	 * same effect of gtk_container_add().
	 * Params:
	 * child = the GtkWidget to add
	 * Since 3.10
	 */
	public void prepend(Widget child)
	{
		// void gtk_list_box_prepend (GtkListBox *list_box,  GtkWidget *child);
		gtk_list_box_prepend(gtkListBox, (child is null) ? null : child.getWidgetStruct());
	}
	
	/**
	 * Insert the child into the list_box at position. If a sort function is
	 * set, the widget will actually be inserted at the calculated position and
	 * this function has the same effect of gtk_container_add().
	 * If position is -1, or larger than the total number of items in the
	 * list_box, then the child will be appended to the end.
	 * Params:
	 * child = the GtkWidget to add
	 * position = the position to insert child in
	 * Since 3.10
	 */
	public void insert(Widget child, int position)
	{
		// void gtk_list_box_insert (GtkListBox *list_box,  GtkWidget *child,  gint position);
		gtk_list_box_insert(gtkListBox, (child is null) ? null : child.getWidgetStruct(), position);
	}
	
	/**
	 * Make row the currently selected row.
	 * Params:
	 * row = The row to select or NULL. [allow-none]
	 * Since 3.10
	 */
	public void selectRow(ListBoxRow row)
	{
		// void gtk_list_box_select_row (GtkListBox *list_box,  GtkListBoxRow *row);
		gtk_list_box_select_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}
	
	/**
	 * Gets the selected row.
	 * Returns: the selected GtkWidget. [transfer none] Since 3.10
	 */
	public ListBoxRow getSelectedRow()
	{
		// GtkListBoxRow * gtk_list_box_get_selected_row (GtkListBox *list_box);
		auto p = gtk_list_box_get_selected_row(gtkListBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}
	
	/**
	 * Sets how selection works in the listbox.
	 * See GtkSelectionMode for details.
	 * Note: GtkListBox does not support GTK_SELECTION_MULTIPLE.
	 * Params:
	 * mode = The GtkSelectionMode
	 * Since 3.10
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		// void gtk_list_box_set_selection_mode (GtkListBox *list_box,  GtkSelectionMode mode);
		gtk_list_box_set_selection_mode(gtkListBox, mode);
	}
	
	/**
	 * Gets the selection mode of the listbox.
	 * Returns: a GtkSelectionMode Since 3.10
	 */
	public GtkSelectionMode getSelectionMode()
	{
		// GtkSelectionMode gtk_list_box_get_selection_mode (GtkListBox *list_box);
		return gtk_list_box_get_selection_mode(gtkListBox);
	}
	
	/**
	 * If single is TRUE, rows will be activated when you click on them,
	 * otherwise you need to double-click.
	 * Params:
	 * single = a boolean
	 * Since 3.10
	 */
	public void setActivateOnSingleClick(int single)
	{
		// void gtk_list_box_set_activate_on_single_click  (GtkListBox *list_box,  gboolean single);
		gtk_list_box_set_activate_on_single_click(gtkListBox, single);
	}
	
	/**
	 * Returns whether rows activate on single clicks.
	 * Returns: TRUE if rows are activated on single click, FALSE otherwise Since 3.10
	 */
	public int getActivateOnSingleClick()
	{
		// gboolean gtk_list_box_get_activate_on_single_click  (GtkListBox *list_box);
		return gtk_list_box_get_activate_on_single_click(gtkListBox);
	}
	
	/**
	 * Gets the adjustment (if any) that the widget uses to
	 * for vertical scrolling.
	 * Returns: the adjustment. [transfer none] Since 3.10
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment * gtk_list_box_get_adjustment (GtkListBox *list_box);
		auto p = gtk_list_box_get_adjustment(gtkListBox);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Sets the adjustment (if any) that the widget uses to
	 * for vertical scrolling. For instance, this is used
	 * to get the page size for PageUp/Down key handling.
	 * In the normal case when the list_box is packed inside
	 * a GtkScrolledWindow the adjustment from that will
	 * be picked up automatically, so there is no need
	 * to manually do that.
	 * Params:
	 * adjustment = the adjustment, or NULL. [allow-none]
	 * Since 3.10
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_list_box_set_adjustment (GtkListBox *list_box,  GtkAdjustment *adjustment);
		gtk_list_box_set_adjustment(gtkListBox, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Sets the placeholder widget that is shown in the list when
	 * it doesn't display any visible children.
	 * Params:
	 * placeholder = a GtkWidget or NULL. [allow-none]
	 * Since 3.10
	 */
	public void setPlaceholder(Widget placeholder)
	{
		// void gtk_list_box_set_placeholder (GtkListBox *list_box,  GtkWidget *placeholder);
		gtk_list_box_set_placeholder(gtkListBox, (placeholder is null) ? null : placeholder.getWidgetStruct());
	}
	
	/**
	 * Gets the n:th child in the list (not counting headers).
	 * Params:
	 * index = the index of the row
	 * Returns: the child GtkWidget. [transfer none] Since 3.10
	 */
	public ListBoxRow getRowAtIndex(int index)
	{
		// GtkListBoxRow * gtk_list_box_get_row_at_index (GtkListBox *list_box,  gint index_);
		auto p = gtk_list_box_get_row_at_index(gtkListBox, index);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}
	
	/**
	 * Gets the row at the y position.
	 * Params:
	 * y = position
	 * Returns: the row. [transfer none] Since 3.10
	 */
	public ListBoxRow getRowAtY(int y)
	{
		// GtkListBoxRow * gtk_list_box_get_row_at_y (GtkListBox *list_box,  gint y);
		auto p = gtk_list_box_get_row_at_y(gtkListBox, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListBoxRow)(cast(GtkListBoxRow*) p);
	}
	
	/**
	 * Update the filtering for all rows. Call this when result
	 * of the filter function on the list_box is changed due
	 * to an external factor. For instance, this would be used
	 * if the filter function just looked for a specific search
	 * string and the entry with the search string has changed.
	 */
	public void invalidateFilter()
	{
		// void gtk_list_box_invalidate_filter (GtkListBox *list_box);
		gtk_list_box_invalidate_filter(gtkListBox);
	}
	
	/**
	 * Update the separators for all rows. Call this when result
	 * of the header function on the list_box is changed due
	 * to an external factor.
	 */
	public void invalidateHeaders()
	{
		// void gtk_list_box_invalidate_headers (GtkListBox *list_box);
		gtk_list_box_invalidate_headers(gtkListBox);
	}
	
	/**
	 * Update the sorting for all rows. Call this when result
	 * of the sort function on the list_box is changed due
	 * to an external factor.
	 */
	public void invalidateSort()
	{
		// void gtk_list_box_invalidate_sort (GtkListBox *list_box);
		gtk_list_box_invalidate_sort(gtkListBox);
	}
	
	/**
	 * By setting a filter function on the list_box one can decide dynamically which
	 * of the rows to show. For instance, to implement a search function on a list that
	 * filters the original list to only show the matching rows.
	 * The filter_func will be called for each row after the call, and it will
	 * continue to be called each time a row changes (via gtk_list_box_row_changed()) or
	 * when gtk_list_box_invalidate_filter() is called.
	 * Params:
	 * filterFunc = callback that lets you filter which rows to show. [closure user_data][allow-none]
	 * userData = user data passed to filter_func
	 * destroy = destroy notifier for user_data
	 * Since 3.10
	 */
	public void setFilterFunc(GtkListBoxFilterFunc filterFunc, void* userData, GDestroyNotify destroy)
	{
		// void gtk_list_box_set_filter_func (GtkListBox *list_box,  GtkListBoxFilterFunc filter_func,  gpointer user_data,  GDestroyNotify destroy);
		gtk_list_box_set_filter_func(gtkListBox, filterFunc, userData, destroy);
	}
	
	/**
	 * By setting a header function on the list_box one can dynamically add headers
	 * in front of rows, depending on the contents of the row and its position in the list.
	 * For instance, one could use it to add headers in front of the first item of a
	 * new kind, in a list sorted by the kind.
	 * The update_header can look at the current header widget using gtk_list_box_row_get_header()
	 * and either update the state of the widget as needed, or set a new one using
	 * gtk_list_box_row_set_header(). If no header is needed, set the header to NULL.
	 * Note that you may get many calls update_header to this for a particular row when e.g.
	 * changing things that don't affect the header. In this case it is important for performance
	 * to not blindly replace an exisiting header widh an identical one.
	 * The update_header function will be called for each row after the call, and it will
	 * continue to be called each time a row changes (via gtk_list_box_row_changed()) and when
	 * the row before changes (either by gtk_list_box_row_changed() on the previous row, or when
	 * the previous row becomes a different row). It is also called for all rows when
	 * gtk_list_box_invalidate_headers() is called.
	 * Params:
	 * updateHeader = callback that lets you add row headers. [closure user_data][allow-none]
	 * userData = user data passed to update_header
	 * destroy = destroy notifier for user_data
	 * Since 3.10
	 */
	public void setHeaderFunc(GtkListBoxUpdateHeaderFunc updateHeader, void* userData, GDestroyNotify destroy)
	{
		// void gtk_list_box_set_header_func (GtkListBox *list_box,  GtkListBoxUpdateHeaderFunc update_header,  gpointer user_data,  GDestroyNotify destroy);
		gtk_list_box_set_header_func(gtkListBox, updateHeader, userData, destroy);
	}
	
	/**
	 * By setting a sort function on the list_box one can dynamically reorder the rows
	 * of the list, based on the contents of the rows.
	 * The sort_func will be called for each row after the call, and will continue to
	 * be called each time a row changes (via gtk_list_box_row_changed()) and when
	 * gtk_list_box_invalidate_sort() is called.
	 * Params:
	 * sortFunc = the sort function. [closure user_data][allow-none]
	 * userData = user data passed to sort_func
	 * destroy = destroy notifier for user_data
	 * Since 3.10
	 */
	public void setSortFunc(GtkListBoxSortFunc sortFunc, void* userData, GDestroyNotify destroy)
	{
		// void gtk_list_box_set_sort_func (GtkListBox *list_box,  GtkListBoxSortFunc sort_func,  gpointer user_data,  GDestroyNotify destroy);
		gtk_list_box_set_sort_func(gtkListBox, sortFunc, userData, destroy);
	}
	
	/**
	 * This is a helper function for implementing DnD onto a GtkListBox.
	 * The passed in row will be highlighted via gtk_drag_highlight(),
	 * and any previously highlighted row will be unhighlighted.
	 * The row will also be unhighlighted when the widget gets
	 * a drag leave event.
	 * Params:
	 * row = a GtkListBoxRow
	 * Since 3.10
	 */
	public void dragHighlightRow(ListBoxRow row)
	{
		// void gtk_list_box_drag_highlight_row (GtkListBox *list_box,  GtkListBoxRow *row);
		gtk_list_box_drag_highlight_row(gtkListBox, (row is null) ? null : row.getListBoxRowStruct());
	}
	
	/**
	 * If a row has previously been highlighted via gtk_list_box_drag_highlight_row()
	 * it will have the highlight removed.
	 */
	public void dragUnhighlightRow()
	{
		// void gtk_list_box_drag_unhighlight_row (GtkListBox *list_box);
		gtk_list_box_drag_unhighlight_row(gtkListBox);
	}
}
