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


module gtk.TreeViewColumn;

private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.CellArea;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.CellRenderer;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * A visible column in a [class@Gtk.TreeView] widget
 * 
 * The `GtkTreeViewColumn` object represents a visible column in a `GtkTreeView` widget.
 * It allows to set properties of the column header, and functions as a holding pen
 * for the cell renderers which determine how the data in the column is displayed.
 * 
 * Please refer to the [tree widget conceptual overview](section-tree-widget.html)
 * for an overview of all the objects and data types related to the tree widget and
 * how they work together, and to the [class@Gtk.TreeView] documentation for specifics
 * about the CSS node structure for treeviews and their headers.
 */
public class TreeViewColumn : ObjectG, BuildableIF, CellLayoutIF
{
	/** the main Gtk struct */
	protected GtkTreeViewColumn* gtkTreeViewColumn;

	/** Get the main Gtk struct */
	public GtkTreeViewColumn* getTreeViewColumnStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkTreeViewColumn;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeViewColumn;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkTreeViewColumn* gtkTreeViewColumn, bool ownedRef = false)
	{
		this.gtkTreeViewColumn = gtkTreeViewColumn;
		super(cast(GObject*)gtkTreeViewColumn, ownedRef);
	}

	// add the Buildable capabilities
	mixin BuildableT!(GtkTreeViewColumn);

	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkTreeViewColumn);

	/**
	 * Creates a new Tree view column
	 * Params:
	 *  header = th column header text
	 *  renderer = the rederer for the column cells
	 *  type = the type of data to be displayed (shouldn't this be on the renderer?)
	 *  column = the column number
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	//TODO: allow setting more attributes?
	this(string header, CellRenderer renderer, string type, int column)
	{
		auto __p = gtk_tree_view_column_new_with_attributes(
			Str.toStringz(header),
			renderer.getCellRendererStruct(),
			Str.toStringz(type),
			column,
			null);

		if(__p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_view_column_new_with_attributes");
		}

		this(__p);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return gtk_tree_view_column_get_type();
	}

	/**
	 * Creates a new `GtkTreeViewColumn`.
	 *
	 * Returns: A newly created `GtkTreeViewColumn`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_tree_view_column_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkTreeViewColumn*) __p);
	}

	/**
	 * Creates a new `GtkTreeViewColumn` using @area to render its cells.
	 *
	 * Params:
	 *     area = the `GtkCellArea` that the newly created column should use to layout cells.
	 *
	 * Returns: A newly created `GtkTreeViewColumn`.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CellArea area)
	{
		auto __p = gtk_tree_view_column_new_with_area((area is null) ? null : area.getCellAreaStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_area");
		}

		this(cast(GtkTreeViewColumn*) __p);
	}

	/**
	 * Adds an attribute mapping to the list in @tree_column.
	 *
	 * The @column is the
	 * column of the model to get a value from, and the @attribute is the
	 * parameter on @cell_renderer to be set from the value. So for example
	 * if column 2 of the model contains strings, you could have the
	 * “text” attribute of a `GtkCellRendererText` get its values from
	 * column 2.
	 *
	 * Params:
	 *     cellRenderer = the `GtkCellRenderer` to set attributes on
	 *     attribute = An attribute on the renderer
	 *     column = The column position on the model to get the attribute from.
	 */
	public void addAttribute(CellRenderer cellRenderer, string attribute, int column)
	{
		gtk_tree_view_column_add_attribute(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), Str.toStringz(attribute), column);
	}

	/**
	 * Obtains the horizontal position and size of a cell in a column.
	 *
	 * If the  cell is not found in the column, @start_pos and @width
	 * are not changed and %FALSE is returned.
	 *
	 * Params:
	 *     cellRenderer = a `GtkCellRenderer`
	 *     xOffset = return location for the horizontal
	 *         position of @cell within @tree_column
	 *     width = return location for the width of @cell
	 *
	 * Returns: %TRUE if @cell belongs to @tree_column
	 */
	public bool cellGetPosition(CellRenderer cellRenderer, out int xOffset, out int width)
	{
		return gtk_tree_view_column_cell_get_position(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), &xOffset, &width) != 0;
	}

	/**
	 * Obtains the width and height needed to render the column.  This is used
	 * primarily by the `GtkTreeView`.
	 *
	 * Params:
	 *     xOffset = location to return x offset of a cell relative to @cell_area
	 *     yOffset = location to return y offset of a cell relative to @cell_area
	 *     width = location to return width needed to render a cell
	 *     height = location to return height needed to render a cell
	 */
	public void cellGetSize(out int xOffset, out int yOffset, out int width, out int height)
	{
		gtk_tree_view_column_cell_get_size(gtkTreeViewColumn, &xOffset, &yOffset, &width, &height);
	}

	/**
	 * Returns %TRUE if any of the cells packed into the @tree_column are visible.
	 * For this to be meaningful, you must first initialize the cells with
	 * gtk_tree_view_column_cell_set_cell_data()
	 *
	 * Returns: %TRUE, if any of the cells packed into the @tree_column are currently visible
	 */
	public bool cellIsVisible()
	{
		return gtk_tree_view_column_cell_is_visible(gtkTreeViewColumn) != 0;
	}

	/**
	 * Sets the cell renderer based on the @tree_model and @iter.  That is, for
	 * every attribute mapping in @tree_column, it will get a value from the set
	 * column on the @iter, and use that value to set the attribute on the cell
	 * renderer.  This is used primarily by the `GtkTreeView`.
	 *
	 * Params:
	 *     treeModel = The `GtkTreeModel` to get the cell renderers attributes from.
	 *     iter = The `GtkTreeIter` to get the cell renderer’s attributes from.
	 *     isExpander = %TRUE, if the row has children
	 *     isExpanded = %TRUE, if the row has visible children
	 */
	public void cellSetCellData(TreeModelIF treeModel, TreeIter iter, bool isExpander, bool isExpanded)
	{
		gtk_tree_view_column_cell_set_cell_data(gtkTreeViewColumn, (treeModel is null) ? null : treeModel.getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct(), isExpander, isExpanded);
	}

	/**
	 * Unsets all the mappings on all renderers on the @tree_column.
	 */
	public void clear()
	{
		gtk_tree_view_column_clear(gtkTreeViewColumn);
	}

	/**
	 * Clears all existing attributes previously set with
	 * gtk_tree_view_column_set_attributes().
	 *
	 * Params:
	 *     cellRenderer = a `GtkCellRenderer` to clear the attribute mapping on.
	 */
	public void clearAttributes(CellRenderer cellRenderer)
	{
		gtk_tree_view_column_clear_attributes(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct());
	}

	/**
	 * Emits the “clicked” signal on the column.  This function will only work if
	 * @tree_column is clickable.
	 */
	public void clicked()
	{
		gtk_tree_view_column_clicked(gtkTreeViewColumn);
	}

	/**
	 * Sets the current keyboard focus to be at @cell, if the column contains
	 * 2 or more editable and activatable cells.
	 *
	 * Params:
	 *     cell = A `GtkCellRenderer`
	 */
	public void focusCell(CellRenderer cell)
	{
		gtk_tree_view_column_focus_cell(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct());
	}

	/**
	 * Returns the current x alignment of @tree_column.  This value can range
	 * between 0.0 and 1.0.
	 *
	 * Returns: The current alignent of @tree_column.
	 */
	public float getAlignment()
	{
		return gtk_tree_view_column_get_alignment(gtkTreeViewColumn);
	}

	/**
	 * Returns the button used in the treeview column header
	 *
	 * Returns: The button for the column header.
	 */
	public Widget getButton()
	{
		auto __p = gtk_tree_view_column_get_button(gtkTreeViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns %TRUE if the user can click on the header for the column.
	 *
	 * Returns: %TRUE if user can click the column header.
	 */
	public bool getClickable()
	{
		return gtk_tree_view_column_get_clickable(gtkTreeViewColumn) != 0;
	}

	/**
	 * Returns %TRUE if the column expands to fill available space.
	 *
	 * Returns: %TRUE if the column expands to fill available space.
	 */
	public bool getExpand()
	{
		return gtk_tree_view_column_get_expand(gtkTreeViewColumn) != 0;
	}

	/**
	 * Gets the fixed width of the column.  This may not be the actual displayed
	 * width of the column; for that, use gtk_tree_view_column_get_width().
	 *
	 * Returns: The fixed width of the column.
	 */
	public int getFixedWidth()
	{
		return gtk_tree_view_column_get_fixed_width(gtkTreeViewColumn);
	}

	/**
	 * Returns the maximum width in pixels of the @tree_column, or -1 if no maximum
	 * width is set.
	 *
	 * Returns: The maximum width of the @tree_column.
	 */
	public int getMaxWidth()
	{
		return gtk_tree_view_column_get_max_width(gtkTreeViewColumn);
	}

	/**
	 * Returns the minimum width in pixels of the @tree_column, or -1 if no minimum
	 * width is set.
	 *
	 * Returns: The minimum width of the @tree_column.
	 */
	public int getMinWidth()
	{
		return gtk_tree_view_column_get_min_width(gtkTreeViewColumn);
	}

	/**
	 * Returns %TRUE if the @tree_column can be reordered by the user.
	 *
	 * Returns: %TRUE if the @tree_column can be reordered by the user.
	 */
	public bool getReorderable()
	{
		return gtk_tree_view_column_get_reorderable(gtkTreeViewColumn) != 0;
	}

	/**
	 * Returns %TRUE if the @tree_column can be resized by the end user.
	 *
	 * Returns: %TRUE, if the @tree_column can be resized.
	 */
	public bool getResizable()
	{
		return gtk_tree_view_column_get_resizable(gtkTreeViewColumn) != 0;
	}

	/**
	 * Returns the current type of @tree_column.
	 *
	 * Returns: The type of @tree_column.
	 */
	public GtkTreeViewColumnSizing getSizing()
	{
		return gtk_tree_view_column_get_sizing(gtkTreeViewColumn);
	}

	/**
	 * Gets the logical @sort_column_id that the model sorts on
	 * when this column is selected for sorting.
	 *
	 * See [method@Gtk.TreeViewColumn.set_sort_column_id].
	 *
	 * Returns: the current @sort_column_id for this column, or -1 if
	 *     this column can’t be used for sorting
	 */
	public int getSortColumnId()
	{
		return gtk_tree_view_column_get_sort_column_id(gtkTreeViewColumn);
	}

	/**
	 * Gets the value set by gtk_tree_view_column_set_sort_indicator().
	 *
	 * Returns: whether the sort indicator arrow is displayed
	 */
	public bool getSortIndicator()
	{
		return gtk_tree_view_column_get_sort_indicator(gtkTreeViewColumn) != 0;
	}

	/**
	 * Gets the value set by gtk_tree_view_column_set_sort_order().
	 *
	 * Returns: the sort order the sort indicator is indicating
	 */
	public GtkSortType getSortOrder()
	{
		return gtk_tree_view_column_get_sort_order(gtkTreeViewColumn);
	}

	/**
	 * Returns the spacing of @tree_column.
	 *
	 * Returns: the spacing of @tree_column.
	 */
	public int getSpacing()
	{
		return gtk_tree_view_column_get_spacing(gtkTreeViewColumn);
	}

	/**
	 * Returns the title of the widget.
	 *
	 * Returns: the title of the column. This string should not be
	 *     modified or freed.
	 */
	public string getTitle()
	{
		return Str.toString(gtk_tree_view_column_get_title(gtkTreeViewColumn));
	}

	/**
	 * Returns the `GtkTreeView` wherein @tree_column has been inserted.
	 * If @column is currently not inserted in any tree view, %NULL is
	 * returned.
	 *
	 * Returns: The tree view wherein @column
	 *     has been inserted
	 */
	public Widget getTreeView()
	{
		auto __p = gtk_tree_view_column_get_tree_view(gtkTreeViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns %TRUE if @tree_column is visible.
	 *
	 * Returns: whether the column is visible or not.  If it is visible, then
	 *     the tree will show the column.
	 */
	public bool getVisible()
	{
		return gtk_tree_view_column_get_visible(gtkTreeViewColumn) != 0;
	}

	/**
	 * Returns the `GtkWidget` in the button on the column header.
	 *
	 * If a custom widget has not been set then %NULL is returned.
	 *
	 * Returns: The `GtkWidget` in the column header
	 */
	public Widget getWidget()
	{
		auto __p = gtk_tree_view_column_get_widget(gtkTreeViewColumn);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Returns the current size of @tree_column in pixels.
	 *
	 * Returns: The current width of @tree_column.
	 */
	public int getWidth()
	{
		return gtk_tree_view_column_get_width(gtkTreeViewColumn);
	}

	/**
	 * Returns the current X offset of @tree_column in pixels.
	 *
	 * Returns: The current X offset of @tree_column.
	 */
	public int getXOffset()
	{
		return gtk_tree_view_column_get_x_offset(gtkTreeViewColumn);
	}

	/**
	 * Adds the @cell to end of the column. If @expand is %FALSE, then the @cell
	 * is allocated no more space than it needs. Any unused space is divided
	 * evenly between cells for which @expand is %TRUE.
	 *
	 * Params:
	 *     cell = The `GtkCellRenderer`
	 *     expand = %TRUE if @cell is to be given extra space allocated to @tree_column.
	 */
	public void packEnd(CellRenderer cell, bool expand)
	{
		gtk_tree_view_column_pack_end(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}

	/**
	 * Packs the @cell into the beginning of the column. If @expand is %FALSE, then
	 * the @cell is allocated no more space than it needs. Any unused space is divided
	 * evenly between cells for which @expand is %TRUE.
	 *
	 * Params:
	 *     cell = The `GtkCellRenderer`
	 *     expand = %TRUE if @cell is to be given extra space allocated to @tree_column.
	 */
	public void packStart(CellRenderer cell, bool expand)
	{
		gtk_tree_view_column_pack_start(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}

	/**
	 * Flags the column, and the cell renderers added to this column, to have
	 * their sizes renegotiated.
	 */
	public void queueResize()
	{
		gtk_tree_view_column_queue_resize(gtkTreeViewColumn);
	}

	/**
	 * Sets the alignment of the title or custom widget inside the column header.
	 * The alignment determines its location inside the button -- 0.0 for left, 0.5
	 * for center, 1.0 for right.
	 *
	 * Params:
	 *     xalign = The alignment, which is between [0.0 and 1.0] inclusive.
	 */
	public void setAlignment(float xalign)
	{
		gtk_tree_view_column_set_alignment(gtkTreeViewColumn, xalign);
	}

	/**
	 * Sets the `GtkTreeCellDataFunc` to use for the column.
	 *
	 * This
	 * function is used instead of the standard attributes mapping for
	 * setting the column value, and should set the value of @tree_column's
	 * cell renderer as appropriate.  @func may be %NULL to remove an
	 * older one.
	 *
	 * Params:
	 *     cellRenderer = A `GtkCellRenderer`
	 *     func = The `GtkTreeCellDataFunc` to use.
	 *     funcData = The user data for @func.
	 *     destroy = The destroy notification for @func_data
	 */
	public void setCellDataFunc(CellRenderer cellRenderer, GtkTreeCellDataFunc func, void* funcData, GDestroyNotify destroy)
	{
		gtk_tree_view_column_set_cell_data_func(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), func, funcData, destroy);
	}

	/**
	 * Sets the header to be active if @clickable is %TRUE.  When the header is
	 * active, then it can take keyboard focus, and can be clicked.
	 *
	 * Params:
	 *     clickable = %TRUE if the header is active.
	 */
	public void setClickable(bool clickable)
	{
		gtk_tree_view_column_set_clickable(gtkTreeViewColumn, clickable);
	}

	/**
	 * Sets the column to take available extra space.  This space is shared equally
	 * amongst all columns that have the expand set to %TRUE.  If no column has this
	 * option set, then the last column gets all extra space.  By default, every
	 * column is created with this %FALSE.
	 *
	 * Along with “fixed-width”, the “expand” property changes when the column is
	 * resized by the user.
	 *
	 * Params:
	 *     expand = %TRUE if the column should expand to fill available space.
	 */
	public void setExpand(bool expand)
	{
		gtk_tree_view_column_set_expand(gtkTreeViewColumn, expand);
	}

	/**
	 * If @fixed_width is not -1, sets the fixed width of @tree_column; otherwise
	 * unsets it.  The effective value of @fixed_width is clamped between the
	 * minimum and maximum width of the column; however, the value stored in the
	 * “fixed-width” property is not clamped.  If the column sizing is
	 * %GTK_TREE_VIEW_COLUMN_GROW_ONLY or %GTK_TREE_VIEW_COLUMN_AUTOSIZE, setting
	 * a fixed width overrides the automatically calculated width.  Note that
	 * @fixed_width is only a hint to GTK; the width actually allocated to the
	 * column may be greater or less than requested.
	 *
	 * Along with “expand”, the “fixed-width” property changes when the column is
	 * resized by the user.
	 *
	 * Params:
	 *     fixedWidth = The new fixed width, in pixels, or -1.
	 */
	public void setFixedWidth(int fixedWidth)
	{
		gtk_tree_view_column_set_fixed_width(gtkTreeViewColumn, fixedWidth);
	}

	/**
	 * Sets the maximum width of the @tree_column.  If @max_width is -1, then the
	 * maximum width is unset.  Note, the column can actually be wider than max
	 * width if it’s the last column in a view.  In this case, the column expands to
	 * fill any extra space.
	 *
	 * Params:
	 *     maxWidth = The maximum width of the column in pixels, or -1.
	 */
	public void setMaxWidth(int maxWidth)
	{
		gtk_tree_view_column_set_max_width(gtkTreeViewColumn, maxWidth);
	}

	/**
	 * Sets the minimum width of the @tree_column.  If @min_width is -1, then the
	 * minimum width is unset.
	 *
	 * Params:
	 *     minWidth = The minimum width of the column in pixels, or -1.
	 */
	public void setMinWidth(int minWidth)
	{
		gtk_tree_view_column_set_min_width(gtkTreeViewColumn, minWidth);
	}

	/**
	 * If @reorderable is %TRUE, then the column can be reordered by the end user
	 * dragging the header.
	 *
	 * Params:
	 *     reorderable = %TRUE, if the column can be reordered.
	 */
	public void setReorderable(bool reorderable)
	{
		gtk_tree_view_column_set_reorderable(gtkTreeViewColumn, reorderable);
	}

	/**
	 * If @resizable is %TRUE, then the user can explicitly resize the column by
	 * grabbing the outer edge of the column button.
	 *
	 * If resizable is %TRUE and
	 * sizing mode of the column is %GTK_TREE_VIEW_COLUMN_AUTOSIZE, then the sizing
	 * mode is changed to %GTK_TREE_VIEW_COLUMN_GROW_ONLY.
	 *
	 * Params:
	 *     resizable = %TRUE, if the column can be resized
	 */
	public void setResizable(bool resizable)
	{
		gtk_tree_view_column_set_resizable(gtkTreeViewColumn, resizable);
	}

	/**
	 * Sets the growth behavior of @tree_column to @type.
	 *
	 * Params:
	 *     type = The `GtkTreeViewColumn`Sizing.
	 */
	public void setSizing(GtkTreeViewColumnSizing type)
	{
		gtk_tree_view_column_set_sizing(gtkTreeViewColumn, type);
	}

	/**
	 * Sets the logical @sort_column_id that this column sorts on when this column
	 * is selected for sorting.  Doing so makes the column header clickable.
	 *
	 * Params:
	 *     sortColumnId = The @sort_column_id of the model to sort on.
	 */
	public void setSortColumnId(int sortColumnId)
	{
		gtk_tree_view_column_set_sort_column_id(gtkTreeViewColumn, sortColumnId);
	}

	/**
	 * Call this function with a @setting of %TRUE to display an arrow in
	 * the header button indicating the column is sorted. Call
	 * gtk_tree_view_column_set_sort_order() to change the direction of
	 * the arrow.
	 *
	 * Params:
	 *     setting = %TRUE to display an indicator that the column is sorted
	 */
	public void setSortIndicator(bool setting)
	{
		gtk_tree_view_column_set_sort_indicator(gtkTreeViewColumn, setting);
	}

	/**
	 * Changes the appearance of the sort indicator.
	 *
	 * This does not actually sort the model.  Use
	 * gtk_tree_view_column_set_sort_column_id() if you want automatic sorting
	 * support.  This function is primarily for custom sorting behavior, and should
	 * be used in conjunction with gtk_tree_sortable_set_sort_column_id() to do
	 * that. For custom models, the mechanism will vary.
	 *
	 * The sort indicator changes direction to indicate normal sort or reverse sort.
	 * Note that you must have the sort indicator enabled to see anything when
	 * calling this function; see gtk_tree_view_column_set_sort_indicator().
	 *
	 * Params:
	 *     order = sort order that the sort indicator should indicate
	 */
	public void setSortOrder(GtkSortType order)
	{
		gtk_tree_view_column_set_sort_order(gtkTreeViewColumn, order);
	}

	/**
	 * Sets the spacing field of @tree_column, which is the number of pixels to
	 * place between cell renderers packed into it.
	 *
	 * Params:
	 *     spacing = distance between cell renderers in pixels.
	 */
	public void setSpacing(int spacing)
	{
		gtk_tree_view_column_set_spacing(gtkTreeViewColumn, spacing);
	}

	/**
	 * Sets the title of the @tree_column.  If a custom widget has been set, then
	 * this value is ignored.
	 *
	 * Params:
	 *     title = The title of the @tree_column.
	 */
	public void setTitle(string title)
	{
		gtk_tree_view_column_set_title(gtkTreeViewColumn, Str.toStringz(title));
	}

	/**
	 * Sets the visibility of @tree_column.
	 *
	 * Params:
	 *     visible = %TRUE if the @tree_column is visible.
	 */
	public void setVisible(bool visible)
	{
		gtk_tree_view_column_set_visible(gtkTreeViewColumn, visible);
	}

	/**
	 * Sets the widget in the header to be @widget.  If widget is %NULL, then the
	 * header button is set with a `GtkLabel` set to the title of @tree_column.
	 *
	 * Params:
	 *     widget = A child `GtkWidget`
	 */
	public void setWidget(Widget widget)
	{
		gtk_tree_view_column_set_widget(gtkTreeViewColumn, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Emitted when the column's header has been clicked.
	 */
	gulong addOnClicked(void delegate(TreeViewColumn) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "clicked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
