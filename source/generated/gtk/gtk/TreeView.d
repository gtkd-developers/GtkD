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


module gtk.TreeView;

private import gdk.ContentFormats;
private import gdk.PaintableIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellRenderer;
private import gtk.EditableIF;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Tooltip;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.TreeSelection;
private import gtk.TreeViewColumn;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A widget for displaying both trees and lists
 * 
 * Widget that displays any object that implements the [iface@Gtk.TreeModel] interface.
 * 
 * Please refer to the [tree widget conceptual overview](section-tree-widget.html)
 * for an overview of all the objects and data types related to the tree
 * widget and how they work together.
 * 
 * ## Coordinate systems in GtkTreeView API
 * 
 * Several different coordinate systems are exposed in the `GtkTreeView` API.
 * These are:
 * 
 * ![](tree-view-coordinates.png)
 * 
 * - Widget coordinates: Coordinates relative to the widget (usually `widget->window`).
 * 
 * - Bin window coordinates: Coordinates relative to the window that GtkTreeView renders to.
 * 
 * - Tree coordinates: Coordinates relative to the entire scrollable area of GtkTreeView. These
 * coordinates start at (0, 0) for row 0 of the tree.
 * 
 * Several functions are available for converting between the different
 * coordinate systems.  The most common translations are between widget and bin
 * window coordinates and between bin window and tree coordinates. For the
 * former you can use [method@Gtk.TreeView.convert_widget_to_bin_window_coords]
 * (and vice versa), for the latter [method@Gtk.TreeView.convert_bin_window_to_tree_coords]
 * (and vice versa).
 * 
 * ## `GtkTreeView` as `GtkBuildable`
 * 
 * The `GtkTreeView` implementation of the `GtkBuildable` interface accepts
 * [class@Gtk.TreeViewColumn] objects as `<child>` elements and exposes the
 * internal [class@Gtk.TreeSelection] in UI definitions.
 * 
 * An example of a UI definition fragment with `GtkTreeView`:
 * 
 * ```xml
 * <object class="GtkTreeView" id="treeview">
 * <property name="model">liststore1</property>
 * <child>
 * <object class="GtkTreeViewColumn" id="test-column">
 * <property name="title">Test</property>
 * <child>
 * <object class="GtkCellRendererText" id="test-renderer"/>
 * <attributes>
 * <attribute name="text">1</attribute>
 * </attributes>
 * </child>
 * </object>
 * </child>
 * <child internal-child="selection">
 * <object class="GtkTreeSelection" id="selection">
 * <signal name="changed" handler="on_treeview_selection_changed"/>
 * </object>
 * </child>
 * </object>
 * ```
 * 
 * ## CSS nodes
 * 
 * ```
 * treeview.view
 * ├── header
 * │   ├── button
 * │   │   ╰── [sort-indicator]
 * ┊   ┊
 * │   ╰── button
 * │       ╰── [sort-indicator]
 * │
 * ├── [rubberband]
 * ╰── [dndtarget]
 * ```
 * 
 * `GtkTreeView` has a main CSS node with name `treeview` and style class `.view`.
 * It has a subnode with name `header`, which is the parent for all the column
 * header widgets' CSS nodes.
 * 
 * Each column header consists of a `button`, which among other content, has a
 * child with name `sort-indicator`, which carries the `.ascending` or `.descending`
 * style classes when the column header should show a sort indicator. The CSS
 * is expected to provide a suitable image using the `-gtk-icon-source` property.
 * 
 * For rubberband selection, a subnode with name `rubberband` is used.
 * 
 * For the drop target location during DND, a subnode with name `dndtarget` is used.
 */
public class TreeView : Widget, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkTreeView* gtkTreeView;

	/** Get the main Gtk struct */
	public GtkTreeView* getTreeViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeView* gtkTreeView, bool ownedRef = false)
	{
		this.gtkTreeView = gtkTreeView;
		super(cast(GtkWidget*)gtkTreeView, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkTreeView);


	/** */
	public static GType getType()
	{
		return gtk_tree_view_get_type();
	}

	/**
	 * Creates a new `GtkTreeView` widget.
	 *
	 * Returns: A newly created `GtkTreeView` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_tree_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTreeView*) __p);
	}

	/**
	 * Creates a new `GtkTreeView` widget with the model initialized to @model.
	 *
	 * Params:
	 *     model = the model.
	 *
	 * Returns: A newly created `GtkTreeView` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF model)
	{
		auto __p = gtk_tree_view_new_with_model((model is null) ? null : model.getTreeModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_model");
		}

		this(cast(GtkTreeView*) __p);
	}

	/**
	 * Appends @column to the list of columns. If @tree_view has “fixed_height”
	 * mode enabled, then @column must have its “sizing” property set to be
	 * GTK_TREE_VIEW_COLUMN_FIXED.
	 *
	 * Params:
	 *     column = The `GtkTreeViewColumn` to add.
	 *
	 * Returns: The number of columns in @tree_view after appending.
	 */
	public int appendColumn(TreeViewColumn column)
	{
		return gtk_tree_view_append_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}

	/**
	 * Recursively collapses all visible, expanded nodes in @tree_view.
	 */
	public void collapseAll()
	{
		gtk_tree_view_collapse_all(gtkTreeView);
	}

	/**
	 * Collapses a row (hides its child rows, if they exist).
	 *
	 * Params:
	 *     path = path to a row in the @tree_view
	 *
	 * Returns: %TRUE if the row was collapsed.
	 */
	public bool collapseRow(TreePath path)
	{
		return gtk_tree_view_collapse_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct()) != 0;
	}

	/**
	 * Resizes all columns to their optimal width. Only works after the
	 * treeview has been realized.
	 */
	public void columnsAutosize()
	{
		gtk_tree_view_columns_autosize(gtkTreeView);
	}

	/**
	 * Converts bin_window coordinates to coordinates for the
	 * tree (the full scrollable area of the tree).
	 *
	 * Params:
	 *     bx = X coordinate relative to bin_window
	 *     by = Y coordinate relative to bin_window
	 *     tx = return location for tree X coordinate
	 *     ty = return location for tree Y coordinate
	 */
	public void convertBinWindowToTreeCoords(int bx, int by, out int tx, out int ty)
	{
		gtk_tree_view_convert_bin_window_to_tree_coords(gtkTreeView, bx, by, &tx, &ty);
	}

	/**
	 * Converts bin_window coordinates to widget relative coordinates.
	 *
	 * Params:
	 *     bx = bin_window X coordinate
	 *     by = bin_window Y coordinate
	 *     wx = return location for widget X coordinate
	 *     wy = return location for widget Y coordinate
	 */
	public void convertBinWindowToWidgetCoords(int bx, int by, out int wx, out int wy)
	{
		gtk_tree_view_convert_bin_window_to_widget_coords(gtkTreeView, bx, by, &wx, &wy);
	}

	/**
	 * Converts tree coordinates (coordinates in full scrollable area of the tree)
	 * to bin_window coordinates.
	 *
	 * Params:
	 *     tx = tree X coordinate
	 *     ty = tree Y coordinate
	 *     bx = return location for X coordinate relative to bin_window
	 *     by = return location for Y coordinate relative to bin_window
	 */
	public void convertTreeToBinWindowCoords(int tx, int ty, out int bx, out int by)
	{
		gtk_tree_view_convert_tree_to_bin_window_coords(gtkTreeView, tx, ty, &bx, &by);
	}

	/**
	 * Converts tree coordinates (coordinates in full scrollable area of the tree)
	 * to widget coordinates.
	 *
	 * Params:
	 *     tx = X coordinate relative to the tree
	 *     ty = Y coordinate relative to the tree
	 *     wx = return location for widget X coordinate
	 *     wy = return location for widget Y coordinate
	 */
	public void convertTreeToWidgetCoords(int tx, int ty, out int wx, out int wy)
	{
		gtk_tree_view_convert_tree_to_widget_coords(gtkTreeView, tx, ty, &wx, &wy);
	}

	/**
	 * Converts widget coordinates to coordinates for the bin_window.
	 *
	 * Params:
	 *     wx = X coordinate relative to the widget
	 *     wy = Y coordinate relative to the widget
	 *     bx = return location for bin_window X coordinate
	 *     by = return location for bin_window Y coordinate
	 */
	public void convertWidgetToBinWindowCoords(int wx, int wy, out int bx, out int by)
	{
		gtk_tree_view_convert_widget_to_bin_window_coords(gtkTreeView, wx, wy, &bx, &by);
	}

	/**
	 * Converts widget coordinates to coordinates for the
	 * tree (the full scrollable area of the tree).
	 *
	 * Params:
	 *     wx = X coordinate relative to the widget
	 *     wy = Y coordinate relative to the widget
	 *     tx = return location for tree X coordinate
	 *     ty = return location for tree Y coordinate
	 */
	public void convertWidgetToTreeCoords(int wx, int wy, out int tx, out int ty)
	{
		gtk_tree_view_convert_widget_to_tree_coords(gtkTreeView, wx, wy, &tx, &ty);
	}

	/**
	 * Creates a `cairo_surface_t` representation of the row at @path.
	 * This image is used for a drag icon.
	 *
	 * Params:
	 *     path = a `GtkTreePath` in @tree_view
	 *
	 * Returns: a newly-allocated surface of the drag icon.
	 */
	public PaintableIF createRowDragIcon(TreePath path)
	{
		auto __p = gtk_tree_view_create_row_drag_icon(gtkTreeView, (path is null) ? null : path.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}

	/**
	 * Turns @tree_view into a drop destination for automatic DND. Calling
	 * this method sets `GtkTreeView`:reorderable to %FALSE.
	 *
	 * Params:
	 *     formats = the target formats that the drag will support
	 *     actions = the bitmask of possible actions for a drag from this
	 *         widget
	 */
	public void enableModelDragDest(ContentFormats formats, GdkDragAction actions)
	{
		gtk_tree_view_enable_model_drag_dest(gtkTreeView, (formats is null) ? null : formats.getContentFormatsStruct(), actions);
	}

	/**
	 * Turns @tree_view into a drag source for automatic DND. Calling this
	 * method sets `GtkTreeView`:reorderable to %FALSE.
	 *
	 * Params:
	 *     startButtonMask = Mask of allowed buttons to start drag
	 *     formats = the target formats that the drag will support
	 *     actions = the bitmask of possible actions for a drag from this
	 *         widget
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, ContentFormats formats, GdkDragAction actions)
	{
		gtk_tree_view_enable_model_drag_source(gtkTreeView, startButtonMask, (formats is null) ? null : formats.getContentFormatsStruct(), actions);
	}

	/**
	 * Recursively expands all nodes in the @tree_view.
	 */
	public void expandAll()
	{
		gtk_tree_view_expand_all(gtkTreeView);
	}

	/**
	 * Opens the row so its children are visible.
	 *
	 * Params:
	 *     path = path to a row
	 *     openAll = whether to recursively expand, or just expand immediate children
	 *
	 * Returns: %TRUE if the row existed and had children
	 */
	public bool expandRow(TreePath path, bool openAll)
	{
		return gtk_tree_view_expand_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), openAll) != 0;
	}

	/**
	 * Expands the row at @path. This will also expand all parent rows of
	 * @path as necessary.
	 *
	 * Params:
	 *     path = path to a row.
	 */
	public void expandToPath(TreePath path)
	{
		gtk_tree_view_expand_to_path(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Gets the setting set by gtk_tree_view_set_activate_on_single_click().
	 *
	 * Returns: %TRUE if row-activated will be emitted on a single click
	 */
	public bool getActivateOnSingleClick()
	{
		return gtk_tree_view_get_activate_on_single_click(gtkTreeView) != 0;
	}

	/**
	 * Fills the bounding rectangle in bin_window coordinates for the cell at the
	 * row specified by @path and the column specified by @column.  If @path is
	 * %NULL, or points to a node not found in the tree, the @y and @height fields of
	 * the rectangle will be filled with 0. If @column is %NULL, the @x and @width
	 * fields will be filled with 0.  The returned rectangle is equivalent to the
	 * @background_area passed to gtk_cell_renderer_render().  These background
	 * areas tile to cover the entire bin window.  Contrast with the @cell_area,
	 * returned by gtk_tree_view_get_cell_area(), which returns only the cell
	 * itself, excluding surrounding borders and the tree expander area.
	 *
	 * Params:
	 *     path = a `GtkTreePath` for the row, or %NULL to get only horizontal coordinates
	 *     column = a `GtkTreeViewColumn` for the column, or %NULL to get only vertical coordinates
	 *     rect = rectangle to fill with cell background rect
	 */
	public void getBackgroundArea(TreePath path, TreeViewColumn column, out GdkRectangle rect)
	{
		gtk_tree_view_get_background_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), &rect);
	}

	/**
	 * Fills the bounding rectangle in bin_window coordinates for the cell at the
	 * row specified by @path and the column specified by @column.  If @path is
	 * %NULL, or points to a path not currently displayed, the @y and @height fields
	 * of the rectangle will be filled with 0. If @column is %NULL, the @x and @width
	 * fields will be filled with 0.  The sum of all cell rects does not cover the
	 * entire tree; there are extra pixels in between rows, for example. The
	 * returned rectangle is equivalent to the @cell_area passed to
	 * gtk_cell_renderer_render().  This function is only valid if @tree_view is
	 * realized.
	 *
	 * Params:
	 *     path = a `GtkTreePath` for the row, or %NULL to get only horizontal coordinates
	 *     column = a `GtkTreeViewColumn` for the column, or %NULL to get only vertical coordinates
	 *     rect = rectangle to fill with cell rect
	 */
	public void getCellArea(TreePath path, TreeViewColumn column, out GdkRectangle rect)
	{
		gtk_tree_view_get_cell_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), &rect);
	}

	/**
	 * Gets the `GtkTreeViewColumn` at the given position in the #tree_view.
	 *
	 * Params:
	 *     n = The position of the column, counting from 0.
	 *
	 * Returns: The `GtkTreeViewColumn`, or %NULL if the
	 *     position is outside the range of columns.
	 */
	public TreeViewColumn getColumn(int n)
	{
		auto __p = gtk_tree_view_get_column(gtkTreeView, n);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeViewColumn)(cast(GtkTreeViewColumn*) __p);
	}

	/**
	 * Returns a `GList` of all the `GtkTreeViewColumn`s currently in @tree_view.
	 * The returned list must be freed with g_list_free ().
	 *
	 * Returns: A list of `GtkTreeViewColumn`s
	 */
	public ListG getColumns()
	{
		auto __p = gtk_tree_view_get_columns(gtkTreeView);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Fills in @path and @focus_column with the current path and focus column.  If
	 * the cursor isn’t currently set, then *@path will be %NULL.  If no column
	 * currently has focus, then *@focus_column will be %NULL.
	 *
	 * The returned `GtkTreePath` must be freed with gtk_tree_path_free() when
	 * you are done with it.
	 *
	 * Params:
	 *     path = A pointer to be
	 *         filled with the current cursor path
	 *     focusColumn = A
	 *         pointer to be filled with the current focus column
	 */
	public void getCursor(out TreePath path, out TreeViewColumn focusColumn)
	{
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outfocusColumn = null;

		gtk_tree_view_get_cursor(gtkTreeView, &outpath, &outfocusColumn);

		path = ObjectG.getDObject!(TreePath)(outpath);
		focusColumn = ObjectG.getDObject!(TreeViewColumn)(outfocusColumn);
	}

	/**
	 * Determines the destination row for a given position.  @drag_x and
	 * @drag_y are expected to be in widget coordinates.  This function is only
	 * meaningful if @tree_view is realized.  Therefore this function will always
	 * return %FALSE if @tree_view is not realized or does not have a model.
	 *
	 * Params:
	 *     dragX = the position to determine the destination row for
	 *     dragY = the position to determine the destination row for
	 *     path = Return location for the path of
	 *         the highlighted row
	 *     pos = Return location for the drop position, or
	 *         %NULL
	 *
	 * Returns: whether there is a row at the given position, %TRUE if this
	 *     is indeed the case.
	 */
	public bool getDestRowAtPos(int dragX, int dragY, out TreePath path, out GtkTreeViewDropPosition pos)
	{
		GtkTreePath* outpath = null;

		auto __p = gtk_tree_view_get_dest_row_at_pos(gtkTreeView, dragX, dragY, &outpath, &pos) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);

		return __p;
	}

	/**
	 * Gets information about the row that is highlighted for feedback.
	 *
	 * Params:
	 *     path = Return location for the path of the highlighted row
	 *     pos = Return location for the drop position
	 */
	public void getDragDestRow(out TreePath path, out GtkTreeViewDropPosition pos)
	{
		GtkTreePath* outpath = null;

		gtk_tree_view_get_drag_dest_row(gtkTreeView, &outpath, &pos);

		path = ObjectG.getDObject!(TreePath)(outpath);
	}

	/**
	 * Returns whether or not the tree allows to start interactive searching
	 * by typing in text.
	 *
	 * Returns: whether or not to let the user search interactively
	 */
	public bool getEnableSearch()
	{
		return gtk_tree_view_get_enable_search(gtkTreeView) != 0;
	}

	/**
	 * Returns whether or not tree lines are drawn in @tree_view.
	 *
	 * Returns: %TRUE if tree lines are drawn in @tree_view, %FALSE
	 *     otherwise.
	 */
	public bool getEnableTreeLines()
	{
		return gtk_tree_view_get_enable_tree_lines(gtkTreeView) != 0;
	}

	/**
	 * Returns the column that is the current expander column,
	 * or %NULL if none has been set.
	 * This column has the expander arrow drawn next to it.
	 *
	 * Returns: The expander column.
	 */
	public TreeViewColumn getExpanderColumn()
	{
		auto __p = gtk_tree_view_get_expander_column(gtkTreeView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeViewColumn)(cast(GtkTreeViewColumn*) __p);
	}

	/**
	 * Returns whether fixed height mode is turned on for @tree_view.
	 *
	 * Returns: %TRUE if @tree_view is in fixed height mode
	 */
	public bool getFixedHeightMode()
	{
		return gtk_tree_view_get_fixed_height_mode(gtkTreeView) != 0;
	}

	/**
	 * Returns which grid lines are enabled in @tree_view.
	 *
	 * Returns: a `GtkTreeView`GridLines value indicating which grid lines
	 *     are enabled.
	 */
	public GtkTreeViewGridLines getGridLines()
	{
		return gtk_tree_view_get_grid_lines(gtkTreeView);
	}

	/**
	 * Returns whether all header columns are clickable.
	 *
	 * Returns: %TRUE if all header columns are clickable, otherwise %FALSE
	 */
	public bool getHeadersClickable()
	{
		return gtk_tree_view_get_headers_clickable(gtkTreeView) != 0;
	}

	/**
	 * Returns %TRUE if the headers on the @tree_view are visible.
	 *
	 * Returns: Whether the headers are visible or not.
	 */
	public bool getHeadersVisible()
	{
		return gtk_tree_view_get_headers_visible(gtkTreeView) != 0;
	}

	/**
	 * Returns whether hover expansion mode is turned on for @tree_view.
	 *
	 * Returns: %TRUE if @tree_view is in hover expansion mode
	 */
	public bool getHoverExpand()
	{
		return gtk_tree_view_get_hover_expand(gtkTreeView) != 0;
	}

	/**
	 * Returns whether hover selection mode is turned on for @tree_view.
	 *
	 * Returns: %TRUE if @tree_view is in hover selection mode
	 */
	public bool getHoverSelection()
	{
		return gtk_tree_view_get_hover_selection(gtkTreeView) != 0;
	}

	/**
	 * Returns the amount, in pixels, of extra indentation for child levels
	 * in @tree_view.
	 *
	 * Returns: the amount of extra indentation for child levels in
	 *     @tree_view.  A return value of 0 means that this feature is disabled.
	 */
	public int getLevelIndentation()
	{
		return gtk_tree_view_get_level_indentation(gtkTreeView);
	}

	/**
	 * Returns the model the `GtkTreeView` is based on.  Returns %NULL if the
	 * model is unset.
	 *
	 * Returns: A `GtkTreeModel`
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_tree_view_get_model(gtkTreeView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Queries the number of columns in the given @tree_view.
	 *
	 * Returns: The number of columns in the @tree_view
	 */
	public uint getNColumns()
	{
		return gtk_tree_view_get_n_columns(gtkTreeView);
	}

	/**
	 * Finds the path at the point (@x, @y), relative to bin_window coordinates.
	 * That is, @x and @y are relative to an events coordinates. Widget-relative
	 * coordinates must be converted using
	 * gtk_tree_view_convert_widget_to_bin_window_coords(). It is primarily for
	 * things like popup menus. If @path is non-%NULL, then it will be filled
	 * with the `GtkTreePath` at that point.  This path should be freed with
	 * gtk_tree_path_free().  If @column is non-%NULL, then it will be filled
	 * with the column at that point.  @cell_x and @cell_y return the coordinates
	 * relative to the cell background (i.e. the @background_area passed to
	 * gtk_cell_renderer_render()).  This function is only meaningful if
	 * @tree_view is realized.  Therefore this function will always return %FALSE
	 * if @tree_view is not realized or does not have a model.
	 *
	 * For converting widget coordinates (eg. the ones you get from
	 * GtkWidget::query-tooltip), please see
	 * gtk_tree_view_convert_widget_to_bin_window_coords().
	 *
	 * Params:
	 *     x = The x position to be identified (relative to bin_window).
	 *     y = The y position to be identified (relative to bin_window).
	 *     path = A pointer to a `GtkTreePath`
	 *         pointer to be filled in
	 *     column = A pointer to
	 *         a `GtkTreeViewColumn` pointer to be filled in
	 *     cellX = A pointer where the X coordinate
	 *         relative to the cell can be placed
	 *     cellY = A pointer where the Y coordinate
	 *         relative to the cell can be placed
	 *
	 * Returns: %TRUE if a row exists at that coordinate.
	 */
	public bool getPathAtPos(int x, int y, out TreePath path, out TreeViewColumn column, out int cellX, out int cellY)
	{
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outcolumn = null;

		auto __p = gtk_tree_view_get_path_at_pos(gtkTreeView, x, y, &outpath, &outcolumn, &cellX, &cellY) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);
		column = ObjectG.getDObject!(TreeViewColumn)(outcolumn);

		return __p;
	}

	/**
	 * Retrieves whether the user can reorder the tree via drag-and-drop. See
	 * gtk_tree_view_set_reorderable().
	 *
	 * Returns: %TRUE if the tree can be reordered.
	 */
	public bool getReorderable()
	{
		return gtk_tree_view_get_reorderable(gtkTreeView) != 0;
	}

	/**
	 * Returns the current row separator function.
	 *
	 * Returns: the current row separator function.
	 */
	public GtkTreeViewRowSeparatorFunc getRowSeparatorFunc()
	{
		return gtk_tree_view_get_row_separator_func(gtkTreeView);
	}

	/**
	 * Returns whether rubber banding is turned on for @tree_view.  If the
	 * selection mode is %GTK_SELECTION_MULTIPLE, rubber banding will allow the
	 * user to select multiple rows by dragging the mouse.
	 *
	 * Returns: %TRUE if rubber banding in @tree_view is enabled.
	 */
	public bool getRubberBanding()
	{
		return gtk_tree_view_get_rubber_banding(gtkTreeView) != 0;
	}

	/**
	 * Gets the column searched on by the interactive search code.
	 *
	 * Returns: the column the interactive search code searches in.
	 */
	public int getSearchColumn()
	{
		return gtk_tree_view_get_search_column(gtkTreeView);
	}

	/**
	 * Returns the `GtkEntry` which is currently in use as interactive search
	 * entry for @tree_view.  In case the built-in entry is being used, %NULL
	 * will be returned.
	 *
	 * Returns: the entry currently in use as search entry.
	 */
	public EditableIF getSearchEntry()
	{
		auto __p = gtk_tree_view_get_search_entry(gtkTreeView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EditableIF)(cast(GtkEditable*) __p);
	}

	/**
	 * Returns the compare function currently in use.
	 *
	 * Returns: the currently used compare function for the search code.
	 */
	public GtkTreeViewSearchEqualFunc getSearchEqualFunc()
	{
		return gtk_tree_view_get_search_equal_func(gtkTreeView);
	}

	/**
	 * Gets the `GtkTreeSelection` associated with @tree_view.
	 *
	 * Returns: A `GtkTreeSelection` object.
	 */
	public TreeSelection getSelection()
	{
		auto __p = gtk_tree_view_get_selection(gtkTreeView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeSelection)(cast(GtkTreeSelection*) __p);
	}

	/**
	 * Returns whether or not expanders are drawn in @tree_view.
	 *
	 * Returns: %TRUE if expanders are drawn in @tree_view, %FALSE
	 *     otherwise.
	 */
	public bool getShowExpanders()
	{
		return gtk_tree_view_get_show_expanders(gtkTreeView) != 0;
	}

	/**
	 * Returns the column of @tree_view’s model which is being used for
	 * displaying tooltips on @tree_view’s rows.
	 *
	 * Returns: the index of the tooltip column that is currently being
	 *     used, or -1 if this is disabled.
	 */
	public int getTooltipColumn()
	{
		return gtk_tree_view_get_tooltip_column(gtkTreeView);
	}

	/**
	 * This function is supposed to be used in a ::query-tooltip
	 * signal handler for `GtkTreeView`. The @x, @y and @keyboard_tip values
	 * which are received in the signal handler, should be passed to this
	 * function without modification.
	 *
	 * The return value indicates whether there is a tree view row at the given
	 * coordinates (%TRUE) or not (%FALSE) for mouse tooltips. For keyboard
	 * tooltips the row returned will be the cursor row. When %TRUE, then any of
	 * @model, @path and @iter which have been provided will be set to point to
	 * that row and the corresponding model. @x and @y will always be converted
	 * to be relative to @tree_view’s bin_window if @keyboard_tooltip is %FALSE.
	 *
	 * Params:
	 *     x = the x coordinate (relative to widget coordinates)
	 *     y = the y coordinate (relative to widget coordinates)
	 *     keyboardTip = whether this is a keyboard tooltip or not
	 *     model = a pointer to
	 *         receive a `GtkTreeModel`
	 *     path = a pointer to receive a `GtkTreePath`
	 *     iter = a pointer to receive a `GtkTreeIter`
	 *
	 * Returns: whether or not the given tooltip context points to a row
	 */
	public bool getTooltipContext(int x, int y, bool keyboardTip, out TreeModelIF model, out TreePath path, out TreeIter iter)
	{
		GtkTreeModel* outmodel = null;
		GtkTreePath* outpath = null;
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_tree_view_get_tooltip_context(gtkTreeView, x, y, keyboardTip, &outmodel, &outpath, outiter) != 0;

		model = ObjectG.getDObject!(TreeModelIF)(outmodel);
		path = ObjectG.getDObject!(TreePath)(outpath);
		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Sets @start_path and @end_path to be the first and last visible path.
	 * Note that there may be invisible paths in between.
	 *
	 * The paths should be freed with gtk_tree_path_free() after use.
	 *
	 * Params:
	 *     startPath = Return location for start of region
	 *     endPath = Return location for end of region
	 *
	 * Returns: %TRUE, if valid paths were placed in @start_path and @end_path.
	 */
	public bool getVisibleRange(out TreePath startPath, out TreePath endPath)
	{
		GtkTreePath* outstartPath = null;
		GtkTreePath* outendPath = null;

		auto __p = gtk_tree_view_get_visible_range(gtkTreeView, &outstartPath, &outendPath) != 0;

		startPath = ObjectG.getDObject!(TreePath)(outstartPath);
		endPath = ObjectG.getDObject!(TreePath)(outendPath);

		return __p;
	}

	/**
	 * Fills @visible_rect with the currently-visible region of the
	 * buffer, in tree coordinates. Convert to bin_window coordinates with
	 * gtk_tree_view_convert_tree_to_bin_window_coords().
	 * Tree coordinates start at 0,0 for row 0 of the tree, and cover the entire
	 * scrollable area of the tree.
	 *
	 * Params:
	 *     visibleRect = rectangle to fill
	 */
	public void getVisibleRect(out GdkRectangle visibleRect)
	{
		gtk_tree_view_get_visible_rect(gtkTreeView, &visibleRect);
	}

	/**
	 * This inserts the @column into the @tree_view at @position.  If @position is
	 * -1, then the column is inserted at the end. If @tree_view has
	 * “fixed_height” mode enabled, then @column must have its “sizing” property
	 * set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 *
	 * Params:
	 *     column = The `GtkTreeViewColumn` to be inserted.
	 *     position = The position to insert @column in.
	 *
	 * Returns: The number of columns in @tree_view after insertion.
	 */
	public int insertColumn(TreeViewColumn column, int position)
	{
		return gtk_tree_view_insert_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct(), position);
	}

	/**
	 * Convenience function that inserts a new column into the `GtkTreeView`
	 * with the given cell renderer and a `GtkTreeCellDataFunc` to set cell renderer
	 * attributes (normally using data from the model). See also
	 * gtk_tree_view_column_set_cell_data_func(), gtk_tree_view_column_pack_start().
	 * If @tree_view has “fixed_height” mode enabled, then the new column will have its
	 * “sizing” property set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 *
	 * Params:
	 *     position = Position to insert, -1 for append
	 *     title = column title
	 *     cell = cell renderer for column
	 *     func = function to set attributes of cell renderer
	 *     data = data for @func
	 *     dnotify = destroy notifier for @data
	 *
	 * Returns: number of columns in the tree view post-insert
	 */
	public int insertColumnWithDataFunc(int position, string title, CellRenderer cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify)
	{
		return gtk_tree_view_insert_column_with_data_func(gtkTreeView, position, Str.toStringz(title), (cell is null) ? null : cell.getCellRendererStruct(), func, data, dnotify);
	}

	/**
	 * Determine whether the point (@x, @y) in @tree_view is blank, that is no
	 * cell content nor an expander arrow is drawn at the location. If so, the
	 * location can be considered as the background. You might wish to take
	 * special action on clicks on the background, such as clearing a current
	 * selection, having a custom context menu or starting rubber banding.
	 *
	 * The @x and @y coordinate that are provided must be relative to bin_window
	 * coordinates.  Widget-relative coordinates must be converted using
	 * gtk_tree_view_convert_widget_to_bin_window_coords().
	 *
	 * For converting widget coordinates (eg. the ones you get from
	 * GtkWidget::query-tooltip), please see
	 * gtk_tree_view_convert_widget_to_bin_window_coords().
	 *
	 * The @path, @column, @cell_x and @cell_y arguments will be filled in
	 * likewise as for gtk_tree_view_get_path_at_pos().  Please see
	 * gtk_tree_view_get_path_at_pos() for more information.
	 *
	 * Params:
	 *     x = The x position to be identified (relative to bin_window)
	 *     y = The y position to be identified (relative to bin_window)
	 *     path = A pointer to a `GtkTreePath` pointer to
	 *         be filled in
	 *     column = A pointer to a
	 *         `GtkTreeViewColumn` pointer to be filled in
	 *     cellX = A pointer where the X coordinate relative to the
	 *         cell can be placed
	 *     cellY = A pointer where the Y coordinate relative to the
	 *         cell can be placed
	 *
	 * Returns: %TRUE if the area at the given coordinates is blank,
	 *     %FALSE otherwise.
	 */
	public bool isBlankAtPos(int x, int y, out TreePath path, out TreeViewColumn column, out int cellX, out int cellY)
	{
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outcolumn = null;

		auto __p = gtk_tree_view_is_blank_at_pos(gtkTreeView, x, y, &outpath, &outcolumn, &cellX, &cellY) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);
		column = ObjectG.getDObject!(TreeViewColumn)(outcolumn);

		return __p;
	}

	/**
	 * Returns whether a rubber banding operation is currently being done
	 * in @tree_view.
	 *
	 * Returns: %TRUE if a rubber banding operation is currently being
	 *     done in @tree_view.
	 */
	public bool isRubberBandingActive()
	{
		return gtk_tree_view_is_rubber_banding_active(gtkTreeView) != 0;
	}

	/**
	 * Calls @func on all expanded rows.
	 *
	 * Params:
	 *     func = A function to be called
	 *     data = User data to be passed to the function.
	 */
	public void mapExpandedRows(GtkTreeViewMappingFunc func, void* data)
	{
		gtk_tree_view_map_expanded_rows(gtkTreeView, func, data);
	}

	/**
	 * Moves @column to be after to @base_column.  If @base_column is %NULL, then
	 * @column is placed in the first position.
	 *
	 * Params:
	 *     column = The `GtkTreeViewColumn` to be moved.
	 *     baseColumn = The `GtkTreeViewColumn` to be moved relative to
	 */
	public void moveColumnAfter(TreeViewColumn column, TreeViewColumn baseColumn)
	{
		gtk_tree_view_move_column_after(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct(), (baseColumn is null) ? null : baseColumn.getTreeViewColumnStruct());
	}

	/**
	 * Removes @column from @tree_view.
	 *
	 * Params:
	 *     column = The `GtkTreeViewColumn` to remove.
	 *
	 * Returns: The number of columns in @tree_view after removing.
	 */
	public int removeColumn(TreeViewColumn column)
	{
		return gtk_tree_view_remove_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}

	/**
	 * Activates the cell determined by @path and @column.
	 *
	 * Params:
	 *     path = The `GtkTreePath` to be activated.
	 *     column = The `GtkTreeViewColumn` to be activated.
	 */
	public void rowActivated(TreePath path, TreeViewColumn column)
	{
		gtk_tree_view_row_activated(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct());
	}

	/**
	 * Returns %TRUE if the node pointed to by @path is expanded in @tree_view.
	 *
	 * Params:
	 *     path = A `GtkTreePath` to test expansion state.
	 *
	 * Returns: %TRUE if #path is expanded.
	 */
	public bool rowExpanded(TreePath path)
	{
		return gtk_tree_view_row_expanded(gtkTreeView, (path is null) ? null : path.getTreePathStruct()) != 0;
	}

	/**
	 * Moves the alignments of @tree_view to the position specified by @column and
	 * @path.  If @column is %NULL, then no horizontal scrolling occurs.  Likewise,
	 * if @path is %NULL no vertical scrolling occurs.  At a minimum, one of @column
	 * or @path need to be non-%NULL.  @row_align determines where the row is
	 * placed, and @col_align determines where @column is placed.  Both are expected
	 * to be between 0.0 and 1.0. 0.0 means left/top alignment, 1.0 means
	 * right/bottom alignment, 0.5 means center.
	 *
	 * If @use_align is %FALSE, then the alignment arguments are ignored, and the
	 * tree does the minimum amount of work to scroll the cell onto the screen.
	 * This means that the cell will be scrolled to the edge closest to its current
	 * position.  If the cell is currently visible on the screen, nothing is done.
	 *
	 * This function only works if the model is set, and @path is a valid row on the
	 * model.  If the model changes before the @tree_view is realized, the centered
	 * path will be modified to reflect this change.
	 *
	 * Params:
	 *     path = The path of the row to move to
	 *     column = The `GtkTreeViewColumn` to move horizontally to
	 *     useAlign = whether to use alignment arguments, or %FALSE.
	 *     rowAlign = The vertical alignment of the row specified by @path.
	 *     colAlign = The horizontal alignment of the column specified by @column.
	 */
	public void scrollToCell(TreePath path, TreeViewColumn column, bool useAlign, float rowAlign, float colAlign)
	{
		gtk_tree_view_scroll_to_cell(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), useAlign, rowAlign, colAlign);
	}

	/**
	 * Scrolls the tree view such that the top-left corner of the visible
	 * area is @tree_x, @tree_y, where @tree_x and @tree_y are specified
	 * in tree coordinates.  The @tree_view must be realized before
	 * this function is called.  If it isn't, you probably want to be
	 * using gtk_tree_view_scroll_to_cell().
	 *
	 * If either @tree_x or @tree_y are -1, then that direction isn’t scrolled.
	 *
	 * Params:
	 *     treeX = X coordinate of new top-left pixel of visible area, or -1
	 *     treeY = Y coordinate of new top-left pixel of visible area, or -1
	 */
	public void scrollToPoint(int treeX, int treeY)
	{
		gtk_tree_view_scroll_to_point(gtkTreeView, treeX, treeY);
	}

	/**
	 * Cause the `GtkTreeView`::row-activated signal to be emitted
	 * on a single click instead of a double click.
	 *
	 * Params:
	 *     single = %TRUE to emit row-activated on a single click
	 */
	public void setActivateOnSingleClick(bool single)
	{
		gtk_tree_view_set_activate_on_single_click(gtkTreeView, single);
	}

	/**
	 * Sets a user function for determining where a column may be dropped when
	 * dragged.  This function is called on every column pair in turn at the
	 * beginning of a column drag to determine where a drop can take place.  The
	 * arguments passed to @func are: the @tree_view, the `GtkTreeViewColumn` being
	 * dragged, the two `GtkTreeViewColumn`s determining the drop spot, and
	 * @user_data.  If either of the `GtkTreeViewColumn` arguments for the drop spot
	 * are %NULL, then they indicate an edge.  If @func is set to be %NULL, then
	 * @tree_view reverts to the default behavior of allowing all columns to be
	 * dropped everywhere.
	 *
	 * Params:
	 *     func = A function to determine which columns are reorderable
	 *     userData = User data to be passed to @func
	 *     destroy = Destroy notifier for @user_data
	 */
	public void setColumnDragFunction(GtkTreeViewColumnDropFunc func, void* userData, GDestroyNotify destroy)
	{
		gtk_tree_view_set_column_drag_function(gtkTreeView, func, userData, destroy);
	}

	/**
	 * Sets the current keyboard focus to be at @path, and selects it.  This is
	 * useful when you want to focus the user’s attention on a particular row.  If
	 * @focus_column is not %NULL, then focus is given to the column specified by
	 * it. Additionally, if @focus_column is specified, and @start_editing is
	 * %TRUE, then editing should be started in the specified cell.
	 * This function is often followed by @gtk_widget_grab_focus (@tree_view)
	 * in order to give keyboard focus to the widget.  Please note that editing
	 * can only happen when the widget is realized.
	 *
	 * If @path is invalid for @model, the current cursor (if any) will be unset
	 * and the function will return without failing.
	 *
	 * Params:
	 *     path = A `GtkTreePath`
	 *     focusColumn = A `GtkTreeViewColumn`
	 *     startEditing = %TRUE if the specified cell should start being edited.
	 */
	public void setCursor(TreePath path, TreeViewColumn focusColumn, bool startEditing)
	{
		gtk_tree_view_set_cursor(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (focusColumn is null) ? null : focusColumn.getTreeViewColumnStruct(), startEditing);
	}

	/**
	 * Sets the current keyboard focus to be at @path, and selects it.  This is
	 * useful when you want to focus the user’s attention on a particular row.  If
	 * @focus_column is not %NULL, then focus is given to the column specified by
	 * it. If @focus_column and @focus_cell are not %NULL, and @focus_column
	 * contains 2 or more editable or activatable cells, then focus is given to
	 * the cell specified by @focus_cell. Additionally, if @focus_column is
	 * specified, and @start_editing is %TRUE, then editing should be started in
	 * the specified cell.  This function is often followed by
	 * @gtk_widget_grab_focus (@tree_view) in order to give keyboard focus to the
	 * widget.  Please note that editing can only happen when the widget is
	 * realized.
	 *
	 * If @path is invalid for @model, the current cursor (if any) will be unset
	 * and the function will return without failing.
	 *
	 * Params:
	 *     path = A `GtkTreePath`
	 *     focusColumn = A `GtkTreeViewColumn`
	 *     focusCell = A `GtkCellRenderer`
	 *     startEditing = %TRUE if the specified cell should start being edited.
	 */
	public void setCursorOnCell(TreePath path, TreeViewColumn focusColumn, CellRenderer focusCell, bool startEditing)
	{
		gtk_tree_view_set_cursor_on_cell(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (focusColumn is null) ? null : focusColumn.getTreeViewColumnStruct(), (focusCell is null) ? null : focusCell.getCellRendererStruct(), startEditing);
	}

	/**
	 * Sets the row that is highlighted for feedback.
	 * If @path is %NULL, an existing highlight is removed.
	 *
	 * Params:
	 *     path = The path of the row to highlight
	 *     pos = Specifies whether to drop before, after or into the row
	 */
	public void setDragDestRow(TreePath path, GtkTreeViewDropPosition pos)
	{
		gtk_tree_view_set_drag_dest_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), pos);
	}

	/**
	 * If @enable_search is set, then the user can type in text to search through
	 * the tree interactively (this is sometimes called "typeahead find").
	 *
	 * Note that even if this is %FALSE, the user can still initiate a search
	 * using the “start-interactive-search” key binding.
	 *
	 * Params:
	 *     enableSearch = %TRUE, if the user can search interactively
	 */
	public void setEnableSearch(bool enableSearch)
	{
		gtk_tree_view_set_enable_search(gtkTreeView, enableSearch);
	}

	/**
	 * Sets whether to draw lines interconnecting the expanders in @tree_view.
	 * This does not have any visible effects for lists.
	 *
	 * Params:
	 *     enabled = %TRUE to enable tree line drawing, %FALSE otherwise.
	 */
	public void setEnableTreeLines(bool enabled)
	{
		gtk_tree_view_set_enable_tree_lines(gtkTreeView, enabled);
	}

	/**
	 * Sets the column to draw the expander arrow at. It must be in @tree_view.
	 * If @column is %NULL, then the expander arrow is always at the first
	 * visible column.
	 *
	 * If you do not want expander arrow to appear in your tree, set the
	 * expander column to a hidden column.
	 *
	 * Params:
	 *     column = %NULL, or the column to draw the expander arrow at.
	 */
	public void setExpanderColumn(TreeViewColumn column)
	{
		gtk_tree_view_set_expander_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}

	/**
	 * Enables or disables the fixed height mode of @tree_view.
	 * Fixed height mode speeds up `GtkTreeView` by assuming that all
	 * rows have the same height.
	 * Only enable this option if all rows are the same height and all
	 * columns are of type %GTK_TREE_VIEW_COLUMN_FIXED.
	 *
	 * Params:
	 *     enable = %TRUE to enable fixed height mode
	 */
	public void setFixedHeightMode(bool enable)
	{
		gtk_tree_view_set_fixed_height_mode(gtkTreeView, enable);
	}

	/**
	 * Sets which grid lines to draw in @tree_view.
	 *
	 * Params:
	 *     gridLines = a `GtkTreeView`GridLines value indicating which grid lines to
	 *         enable.
	 */
	public void setGridLines(GtkTreeViewGridLines gridLines)
	{
		gtk_tree_view_set_grid_lines(gtkTreeView, gridLines);
	}

	/**
	 * Allow the column title buttons to be clicked.
	 *
	 * Params:
	 *     setting = %TRUE if the columns are clickable.
	 */
	public void setHeadersClickable(bool setting)
	{
		gtk_tree_view_set_headers_clickable(gtkTreeView, setting);
	}

	/**
	 * Sets the visibility state of the headers.
	 *
	 * Params:
	 *     headersVisible = %TRUE if the headers are visible
	 */
	public void setHeadersVisible(bool headersVisible)
	{
		gtk_tree_view_set_headers_visible(gtkTreeView, headersVisible);
	}

	/**
	 * Enables or disables the hover expansion mode of @tree_view.
	 * Hover expansion makes rows expand or collapse if the pointer
	 * moves over them.
	 *
	 * Params:
	 *     expand = %TRUE to enable hover selection mode
	 */
	public void setHoverExpand(bool expand)
	{
		gtk_tree_view_set_hover_expand(gtkTreeView, expand);
	}

	/**
	 * Enables or disables the hover selection mode of @tree_view.
	 * Hover selection makes the selected row follow the pointer.
	 * Currently, this works only for the selection modes
	 * %GTK_SELECTION_SINGLE and %GTK_SELECTION_BROWSE.
	 *
	 * Params:
	 *     hover = %TRUE to enable hover selection mode
	 */
	public void setHoverSelection(bool hover)
	{
		gtk_tree_view_set_hover_selection(gtkTreeView, hover);
	}

	/**
	 * Sets the amount of extra indentation for child levels to use in @tree_view
	 * in addition to the default indentation.  The value should be specified in
	 * pixels, a value of 0 disables this feature and in this case only the default
	 * indentation will be used.
	 * This does not have any visible effects for lists.
	 *
	 * Params:
	 *     indentation = the amount, in pixels, of extra indentation in @tree_view.
	 */
	public void setLevelIndentation(int indentation)
	{
		gtk_tree_view_set_level_indentation(gtkTreeView, indentation);
	}

	/**
	 * Sets the model for a `GtkTreeView`.  If the @tree_view already has a model
	 * set, it will remove it before setting the new model.  If @model is %NULL,
	 * then it will unset the old model.
	 *
	 * Params:
	 *     model = The model.
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_tree_view_set_model(gtkTreeView, (model is null) ? null : model.getTreeModelStruct());
	}

	/**
	 * This function is a convenience function to allow you to reorder
	 * models that support the `GtkTreeDragSourceIface` and the
	 * `GtkTreeDragDestIface`.  Both `GtkTreeStore` and `GtkListStore` support
	 * these.  If @reorderable is %TRUE, then the user can reorder the
	 * model by dragging and dropping rows. The developer can listen to
	 * these changes by connecting to the model’s `GtkTreeModel::row-inserted`
	 * and `GtkTreeModel::row-deleted` signals. The reordering is implemented
	 * by setting up the tree view as a drag source and destination.
	 * Therefore, drag and drop can not be used in a reorderable view for any
	 * other purpose.
	 *
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed.  If more control is needed, you should probably
	 * handle drag and drop manually.
	 *
	 * Params:
	 *     reorderable = %TRUE, if the tree can be reordered.
	 */
	public void setReorderable(bool reorderable)
	{
		gtk_tree_view_set_reorderable(gtkTreeView, reorderable);
	}

	/**
	 * Sets the row separator function, which is used to determine
	 * whether a row should be drawn as a separator. If the row separator
	 * function is %NULL, no separators are drawn. This is the default value.
	 *
	 * Params:
	 *     func = a `GtkTreeView`RowSeparatorFunc
	 *     data = user data to pass to @func
	 *     destroy = destroy notifier for @data
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy)
	{
		gtk_tree_view_set_row_separator_func(gtkTreeView, func, data, destroy);
	}

	/**
	 * Enables or disables rubber banding in @tree_view.  If the selection mode
	 * is %GTK_SELECTION_MULTIPLE, rubber banding will allow the user to select
	 * multiple rows by dragging the mouse.
	 *
	 * Params:
	 *     enable = %TRUE to enable rubber banding
	 */
	public void setRubberBanding(bool enable)
	{
		gtk_tree_view_set_rubber_banding(gtkTreeView, enable);
	}

	/**
	 * Sets @column as the column where the interactive search code should
	 * search in for the current model.
	 *
	 * If the search column is set, users can use the “start-interactive-search”
	 * key binding to bring up search popup. The enable-search property controls
	 * whether simply typing text will also start an interactive search.
	 *
	 * Note that @column refers to a column of the current model. The search
	 * column is reset to -1 when the model is changed.
	 *
	 * Params:
	 *     column = the column of the model to search in, or -1 to disable searching
	 */
	public void setSearchColumn(int column)
	{
		gtk_tree_view_set_search_column(gtkTreeView, column);
	}

	/**
	 * Sets the entry which the interactive search code will use for this
	 * @tree_view.  This is useful when you want to provide a search entry
	 * in our interface at all time at a fixed position.  Passing %NULL for
	 * @entry will make the interactive search code use the built-in popup
	 * entry again.
	 *
	 * Params:
	 *     entry = the entry the interactive search code of @tree_view should use
	 */
	public void setSearchEntry(EditableIF entry)
	{
		gtk_tree_view_set_search_entry(gtkTreeView, (entry is null) ? null : entry.getEditableStruct());
	}

	/**
	 * Sets the compare function for the interactive search capabilities; note
	 * that somewhat like strcmp() returning 0 for equality
	 * `GtkTreeView`SearchEqualFunc returns %FALSE on matches.
	 *
	 * Params:
	 *     searchEqualFunc = the compare function to use during the search
	 *     searchUserData = user data to pass to @search_equal_func
	 *     searchDestroy = Destroy notifier for @search_user_data
	 */
	public void setSearchEqualFunc(GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy)
	{
		gtk_tree_view_set_search_equal_func(gtkTreeView, searchEqualFunc, searchUserData, searchDestroy);
	}

	/**
	 * Sets whether to draw and enable expanders and indent child rows in
	 * @tree_view.  When disabled there will be no expanders visible in trees
	 * and there will be no way to expand and collapse rows by default.  Also
	 * note that hiding the expanders will disable the default indentation.  You
	 * can set a custom indentation in this case using
	 * gtk_tree_view_set_level_indentation().
	 * This does not have any visible effects for lists.
	 *
	 * Params:
	 *     enabled = %TRUE to enable expander drawing, %FALSE otherwise.
	 */
	public void setShowExpanders(bool enabled)
	{
		gtk_tree_view_set_show_expanders(gtkTreeView, enabled);
	}

	/**
	 * Sets the tip area of @tooltip to the area @path, @column and @cell have
	 * in common.  For example if @path is %NULL and @column is set, the tip
	 * area will be set to the full area covered by @column.  See also
	 * gtk_tooltip_set_tip_area().
	 *
	 * Note that if @path is not specified and @cell is set and part of a column
	 * containing the expander, the tooltip might not show and hide at the correct
	 * position.  In such cases @path must be set to the current node under the
	 * mouse cursor for this function to operate correctly.
	 *
	 * See also gtk_tree_view_set_tooltip_column() for a simpler alternative.
	 *
	 * Params:
	 *     tooltip = a `GtkTooltip`
	 *     path = a `GtkTreePath`
	 *     column = a `GtkTreeViewColumn`
	 *     cell = a `GtkCellRenderer`
	 */
	public void setTooltipCell(Tooltip tooltip, TreePath path, TreeViewColumn column, CellRenderer cell)
	{
		gtk_tree_view_set_tooltip_cell(gtkTreeView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}

	/**
	 * If you only plan to have simple (text-only) tooltips on full rows, you
	 * can use this function to have `GtkTreeView` handle these automatically
	 * for you. @column should be set to the column in @tree_view’s model
	 * containing the tooltip texts, or -1 to disable this feature.
	 *
	 * When enabled, `GtkWidget:has-tooltip` will be set to %TRUE and
	 * @tree_view will connect a `GtkWidget::query-tooltip` signal handler.
	 *
	 * Note that the signal handler sets the text with gtk_tooltip_set_markup(),
	 * so &, <, etc have to be escaped in the text.
	 *
	 * Params:
	 *     column = an integer, which is a valid column number for @tree_view’s model
	 */
	public void setTooltipColumn(int column)
	{
		gtk_tree_view_set_tooltip_column(gtkTreeView, column);
	}

	/**
	 * Sets the tip area of @tooltip to be the area covered by the row at @path.
	 * See also gtk_tree_view_set_tooltip_column() for a simpler alternative.
	 * See also gtk_tooltip_set_tip_area().
	 *
	 * Params:
	 *     tooltip = a `GtkTooltip`
	 *     path = a `GtkTreePath`
	 */
	public void setTooltipRow(Tooltip tooltip, TreePath path)
	{
		gtk_tree_view_set_tooltip_row(gtkTreeView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Undoes the effect of
	 * gtk_tree_view_enable_model_drag_dest(). Calling this method sets
	 * `GtkTreeView`:reorderable to %FALSE.
	 */
	public void unsetRowsDragDest()
	{
		gtk_tree_view_unset_rows_drag_dest(gtkTreeView);
	}

	/**
	 * Undoes the effect of
	 * gtk_tree_view_enable_model_drag_source(). Calling this method sets
	 * `GtkTreeView`:reorderable to %FALSE.
	 */
	public void unsetRowsDragSource()
	{
		gtk_tree_view_unset_rows_drag_source(gtkTreeView);
	}

	/**
	 * The number of columns of the treeview has changed.
	 */
	gulong addOnColumnsChanged(void delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "columns-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The position of the cursor (focused cell) has changed.
	 */
	gulong addOnCursorChanged(void delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cursor-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnExpandCollapseCursorRow(bool delegate(bool, bool, bool, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "expand-collapse-cursor-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The `GtkTreeView`::move-cursor signal is a [keybinding
	 * signal][class@Gtk.SignalAction] which gets emitted when the user
	 * presses one of the cursor keys.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically. In contrast to gtk_tree_view_set_cursor() and
	 * gtk_tree_view_set_cursor_on_cell() when moving horizontally
	 * `GtkTreeView`::move-cursor does not reset the current selection.
	 *
	 * Params:
	 *     step = the granularity of the move, as a `GtkMovementStep`.
	 *         %GTK_MOVEMENT_LOGICAL_POSITIONS, %GTK_MOVEMENT_VISUAL_POSITIONS,
	 *         %GTK_MOVEMENT_DISPLAY_LINES, %GTK_MOVEMENT_PAGES and
	 *         %GTK_MOVEMENT_BUFFER_ENDS are supported.
	 *         %GTK_MOVEMENT_LOGICAL_POSITIONS and %GTK_MOVEMENT_VISUAL_POSITIONS
	 *         are treated identically.
	 *     direction = the direction to move: +1 to move forwards; -1 to move
	 *         backwards. The resulting movement is undefined for all other values.
	 *     extend = whether to extend the selection
	 *     modify = whether to modify the selection
	 *
	 * Returns: %TRUE if @step is supported, %FALSE otherwise.
	 */
	gulong addOnMoveCursor(bool delegate(GtkMovementStep, int, bool, bool, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The "row-activated" signal is emitted when the method
	 * [`method@Gtk.TreeView.row_activated`] is called.
	 *
	 * This signal is emitted when the user double-clicks a treeview row with the
	 * [property@Gtk.TreeView:activate-on-single-click] property set to %FALSE,
	 * or when the user single-clicks a row when that property set to %TRUE.
	 *
	 * This signal is also emitted when a non-editable row is selected and one
	 * of the keys: <kbd>Space</kbd>, <kbd>Shift</kbd>+<kbd>Space</kbd>,
	 * <kbd>Return</kbd> or <kbd>Enter</kbd> is pressed.
	 *
	 * For selection handling refer to the
	 * [tree widget conceptual overview](section-tree-widget.html)
	 * as well as `GtkTreeSelection`.
	 *
	 * Params:
	 *     path = the `GtkTreePath` for the activated row
	 *     column = the `GtkTreeViewColumn` in which the activation occurred
	 */
	gulong addOnRowActivated(void delegate(TreePath, TreeViewColumn, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The given row has been collapsed (child nodes are hidden).
	 *
	 * Params:
	 *     iter = the tree iter of the collapsed row
	 *     path = a tree path that points to the row
	 */
	gulong addOnRowCollapsed(void delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-collapsed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The given row has been expanded (child nodes are shown).
	 *
	 * Params:
	 *     iter = the tree iter of the expanded row
	 *     path = a tree path that points to the row
	 */
	gulong addOnRowExpanded(void delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "row-expanded", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelectAll(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelectCursorParent(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-cursor-parent", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnSelectCursorRow(bool delegate(bool, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-cursor-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnStartInteractiveSearch(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "start-interactive-search", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The given row is about to be collapsed (hide its children nodes). Use this
	 * signal if you need to control the collapsibility of individual rows.
	 *
	 * Params:
	 *     iter = the tree iter of the row to collapse
	 *     path = a tree path that points to the row
	 *
	 * Returns: %FALSE to allow collapsing, %TRUE to reject
	 */
	gulong addOnTestCollapseRow(bool delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "test-collapse-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The given row is about to be expanded (show its children nodes). Use this
	 * signal if you need to control the expandability of individual rows.
	 *
	 * Params:
	 *     iter = the tree iter of the row to expand
	 *     path = a tree path that points to the row
	 *
	 * Returns: %FALSE to allow expansion, %TRUE to reject
	 */
	gulong addOnTestExpandRow(bool delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "test-expand-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnToggleCursorRow(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-row", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnUnselectAll(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unselect-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
