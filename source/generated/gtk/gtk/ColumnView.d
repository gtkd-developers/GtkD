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


module gtk.ColumnView;

private import gio.ListModelIF;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.ColumnViewColumn;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.SelectionModelIF;
private import gtk.Sorter;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkColumnView` presents a large dynamic list of items using multiple columns
 * with headers.
 * 
 * `GtkColumnView` uses the factories of its columns to generate a cell widget for
 * each column, for each visible item and displays them together as the row for
 * this item.
 * 
 * The [property@Gtk.ColumnView:show-row-separators] and
 * [property@Gtk.ColumnView:show-column-separators] properties offer a simple way
 * to display separators between the rows or columns.
 * 
 * `GtkColumnView` allows the user to select items according to the selection
 * characteristics of the model. For models that allow multiple selected items,
 * it is possible to turn on *rubberband selection*, using
 * [property@Gtk.ColumnView:enable-rubberband].
 * 
 * The column view supports sorting that can be customized by the user by
 * clicking on column headers. To set this up, the `GtkSorter` returned by
 * [method@Gtk.ColumnView.get_sorter] must be attached to a sort model for the
 * data that the view is showing, and the columns must have sorters attached to
 * them by calling [method@Gtk.ColumnViewColumn.set_sorter]. The initial sort
 * order can be set with [method@Gtk.ColumnView.sort_by_column].
 * 
 * The column view also supports interactive resizing and reordering of
 * columns, via Drag-and-Drop of the column headers. This can be enabled or
 * disabled with the [property@Gtk.ColumnView:reorderable] and
 * [property@Gtk.ColumnViewColumn:resizable] properties.
 * 
 * To learn more about the list widget framework, see the
 * [overview](section-list-widget.html).
 * 
 * # CSS nodes
 * 
 * ```
 * columnview[.column-separators][.rich-list][.navigation-sidebar][.data-table]
 * ├── header
 * │   ├── <column header>
 * ┊   ┊
 * │   ╰── <column header>
 * │
 * ├── listview
 * │
 * ┊
 * ╰── [rubberband]
 * ```
 * 
 * `GtkColumnView` uses a single CSS node named columnview. It may carry the
 * .column-separators style class, when [property@Gtk.ColumnView:show-column-separators]
 * property is set. Header widgets appear below a node with name header.
 * The rows are contained in a `GtkListView` widget, so there is a listview
 * node with the same structure as for a standalone `GtkListView` widget.
 * If [property@Gtk.ColumnView:show-row-separators] is set, it will be passed
 * on to the list view, causing its CSS node to carry the .separators style class.
 * For rubberband selection, a node with name rubberband is used.
 * 
 * The main columnview node may also carry style classes to select
 * the style of [list presentation](section-list-widget.html#list-styles):
 * .rich-list, .navigation-sidebar or .data-table.
 * 
 * # Accessibility
 * 
 * `GtkColumnView` uses the %GTK_ACCESSIBLE_ROLE_TREE_GRID role, header title
 * widgets are using the %GTK_ACCESSIBLE_ROLE_COLUMN_HEADER role. The row widgets
 * are using the %GTK_ACCESSIBLE_ROLE_ROW role, and individual cells are using
 * the %GTK_ACCESSIBLE_ROLE_GRID_CELL role
 */
public class ColumnView : Widget, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkColumnView* gtkColumnView;

	/** Get the main Gtk struct */
	public GtkColumnView* getColumnViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkColumnView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkColumnView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkColumnView* gtkColumnView, bool ownedRef = false)
	{
		this.gtkColumnView = gtkColumnView;
		super(cast(GtkWidget*)gtkColumnView, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkColumnView);


	/** */
	public static GType getType()
	{
		return gtk_column_view_get_type();
	}

	/**
	 * Creates a new `GtkColumnView`.
	 *
	 * You most likely want to call [method@Gtk.ColumnView.append_column]
	 * to add columns next.
	 *
	 * Params:
	 *     model = the list model to use
	 *
	 * Returns: a new `GtkColumnView`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SelectionModelIF model)
	{
		auto __p = gtk_column_view_new((model is null) ? null : model.getSelectionModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkColumnView*) __p);
	}

	/**
	 * Appends the @column to the end of the columns in @self.
	 *
	 * Params:
	 *     column = a `GtkColumnViewColumn` that hasn't been added to a
	 *         `GtkColumnView` yet
	 */
	public void appendColumn(ColumnViewColumn column)
	{
		gtk_column_view_append_column(gtkColumnView, (column is null) ? null : column.getColumnViewColumnStruct());
	}

	/**
	 * Gets the list of columns in this column view.
	 *
	 * This list is constant over the lifetime of @self and can be used to
	 * monitor changes to the columns of @self by connecting to the
	 * ::items-changed signal.
	 *
	 * Returns: The list managing the columns
	 */
	public ListModelIF getColumns()
	{
		auto __p = gtk_column_view_get_columns(gtkColumnView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
	}

	/**
	 * Returns whether rows can be selected by dragging with the mouse.
	 *
	 * Returns: %TRUE if rubberband selection is enabled
	 */
	public bool getEnableRubberband()
	{
		return gtk_column_view_get_enable_rubberband(gtkColumnView) != 0;
	}

	/**
	 * Gets the model that's currently used to read the items displayed.
	 *
	 * Returns: The model in use
	 */
	public SelectionModelIF getModel()
	{
		auto __p = gtk_column_view_get_model(gtkColumnView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SelectionModelIF)(cast(GtkSelectionModel*) __p);
	}

	/**
	 * Returns whether columns are reorderable.
	 *
	 * Returns: %TRUE if columns are reorderable
	 */
	public bool getReorderable()
	{
		return gtk_column_view_get_reorderable(gtkColumnView) != 0;
	}

	/**
	 * Returns whether the list should show separators
	 * between columns.
	 *
	 * Returns: %TRUE if the list shows column separators
	 */
	public bool getShowColumnSeparators()
	{
		return gtk_column_view_get_show_column_separators(gtkColumnView) != 0;
	}

	/**
	 * Returns whether the list should show separators
	 * between rows.
	 *
	 * Returns: %TRUE if the list shows separators
	 */
	public bool getShowRowSeparators()
	{
		return gtk_column_view_get_show_row_separators(gtkColumnView) != 0;
	}

	/**
	 * Returns whether rows will be activated on single click and
	 * selected on hover.
	 *
	 * Returns: %TRUE if rows are activated on single click
	 */
	public bool getSingleClickActivate()
	{
		return gtk_column_view_get_single_click_activate(gtkColumnView) != 0;
	}

	/**
	 * Returns a special sorter that reflects the users sorting
	 * choices in the column view.
	 *
	 * To allow users to customizable sorting by clicking on column
	 * headers, this sorter needs to be set on the sort model underneath
	 * the model that is displayed by the view.
	 *
	 * See [method@Gtk.ColumnViewColumn.set_sorter] for setting up
	 * per-column sorting.
	 *
	 * Here is an example:
	 * ```c
	 * gtk_column_view_column_set_sorter (column, sorter);
	 * gtk_column_view_append_column (view, column);
	 * sorter = g_object_ref (gtk_column_view_get_sorter (view)));
	 * model = gtk_sort_list_model_new (store, sorter);
	 * selection = gtk_no_selection_new (model);
	 * gtk_column_view_set_model (view, selection);
	 * ```
	 *
	 * Returns: the `GtkSorter` of @self
	 */
	public Sorter getSorter()
	{
		auto __p = gtk_column_view_get_sorter(gtkColumnView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Sorter)(cast(GtkSorter*) __p);
	}

	/**
	 * Inserts a column at the given position in the columns of @self.
	 *
	 * If @column is already a column of @self, it will be repositioned.
	 *
	 * Params:
	 *     position = the position to insert @column at
	 *     column = the `GtkColumnViewColumn` to insert
	 */
	public void insertColumn(uint position, ColumnViewColumn column)
	{
		gtk_column_view_insert_column(gtkColumnView, position, (column is null) ? null : column.getColumnViewColumnStruct());
	}

	/**
	 * Removes the @column from the list of columns of @self.
	 *
	 * Params:
	 *     column = a `GtkColumnViewColumn` that's part of @self
	 */
	public void removeColumn(ColumnViewColumn column)
	{
		gtk_column_view_remove_column(gtkColumnView, (column is null) ? null : column.getColumnViewColumnStruct());
	}

	/**
	 * Sets whether selections can be changed by dragging with the mouse.
	 *
	 * Params:
	 *     enableRubberband = %TRUE to enable rubberband selection
	 */
	public void setEnableRubberband(bool enableRubberband)
	{
		gtk_column_view_set_enable_rubberband(gtkColumnView, enableRubberband);
	}

	/**
	 * Sets the model to use.
	 *
	 * This must be a [iface@Gtk.SelectionModel].
	 *
	 * Params:
	 *     model = the model to use
	 */
	public void setModel(SelectionModelIF model)
	{
		gtk_column_view_set_model(gtkColumnView, (model is null) ? null : model.getSelectionModelStruct());
	}

	/**
	 * Sets whether columns should be reorderable by dragging.
	 *
	 * Params:
	 *     reorderable = whether columns should be reorderable
	 */
	public void setReorderable(bool reorderable)
	{
		gtk_column_view_set_reorderable(gtkColumnView, reorderable);
	}

	/**
	 * Sets whether the list should show separators
	 * between columns.
	 *
	 * Params:
	 *     showColumnSeparators = %TRUE to show column separators
	 */
	public void setShowColumnSeparators(bool showColumnSeparators)
	{
		gtk_column_view_set_show_column_separators(gtkColumnView, showColumnSeparators);
	}

	/**
	 * Sets whether the list should show separators
	 * between rows.
	 *
	 * Params:
	 *     showRowSeparators = %TRUE to show row separators
	 */
	public void setShowRowSeparators(bool showRowSeparators)
	{
		gtk_column_view_set_show_row_separators(gtkColumnView, showRowSeparators);
	}

	/**
	 * Sets whether rows should be activated on single click and
	 * selected on hover.
	 *
	 * Params:
	 *     singleClickActivate = %TRUE to activate items on single click
	 */
	public void setSingleClickActivate(bool singleClickActivate)
	{
		gtk_column_view_set_single_click_activate(gtkColumnView, singleClickActivate);
	}

	/**
	 * Sets the sorting of the view.
	 *
	 * This function should be used to set up the initial sorting.
	 * At runtime, users can change the sorting of a column view
	 * by clicking on the list headers.
	 *
	 * This call only has an effect if the sorter returned by
	 * [method@Gtk.ColumnView.get_sorter] is set on a sort model,
	 * and [method@Gtk.ColumnViewColumn.set_sorter] has been called
	 * on @column to associate a sorter with the column.
	 *
	 * If @column is %NULL, the view will be unsorted.
	 *
	 * Params:
	 *     column = the `GtkColumnViewColumn` to sort by
	 *     direction = the direction to sort in
	 */
	public void sortByColumn(ColumnViewColumn column, GtkSortType direction)
	{
		gtk_column_view_sort_by_column(gtkColumnView, (column is null) ? null : column.getColumnViewColumnStruct(), direction);
	}

	/**
	 * Emitted when a row has been activated by the user, usually via activating
	 * the GtkListBase|list.activate-item action.
	 *
	 * This allows for a convenient way to handle activation in a columnview.
	 * See [method@Gtk.ListItem.set_activatable] for details on how to use this
	 * signal.
	 *
	 * Params:
	 *     position = position of item to activate
	 */
	gulong addOnActivate(void delegate(uint, ColumnView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
