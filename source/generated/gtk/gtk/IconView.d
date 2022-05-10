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


module gtk.IconView;

private import gdk.ContentFormats;
private import gdk.PaintableIF;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.MemorySlice;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.CellArea;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.CellRenderer;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Tooltip;
private import gtk.TreeIter;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkIconView` is a widget which displays data in a grid of icons.
 * 
 * `GtkIconView` provides an alternative view on a `GtkTreeModel`.
 * It displays the model as a grid of icons with labels. Like
 * [class@Gtk.TreeView], it allows to select one or multiple items
 * (depending on the selection mode, see [method@Gtk.IconView.set_selection_mode]).
 * In addition to selection with the arrow keys, `GtkIconView` supports
 * rubberband selection, which is controlled by dragging the pointer.
 * 
 * Note that if the tree model is backed by an actual tree store (as
 * opposed to a flat list where the mapping to icons is obvious),
 * `GtkIconView` will only display the first level of the tree and
 * ignore the tree’s branches.
 * 
 * # CSS nodes
 * 
 * ```
 * iconview.view
 * ╰── [rubberband]
 * ```
 * 
 * `GtkIconView` has a single CSS node with name iconview and style class .view.
 * For rubberband selection, a subnode with name rubberband is used.
 */
public class IconView : Widget, CellLayoutIF, ScrollableIF
{
	/** the main Gtk struct */
	protected GtkIconView* gtkIconView;

	/** Get the main Gtk struct */
	public GtkIconView* getIconViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkIconView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkIconView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkIconView* gtkIconView, bool ownedRef = false)
	{
		this.gtkIconView = gtkIconView;
		super(cast(GtkWidget*)gtkIconView, ownedRef);
	}

	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkIconView);

	// add the Scrollable capabilities
	mixin ScrollableT!(GtkIconView);


	/** */
	public static GType getType()
	{
		return gtk_icon_view_get_type();
	}

	/**
	 * Creates a new `GtkIconView` widget
	 *
	 * Returns: A newly created `GtkIconView` widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_icon_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkIconView*) __p);
	}

	/**
	 * Creates a new `GtkIconView` widget using the
	 * specified @area to layout cells inside the icons.
	 *
	 * Params:
	 *     area = the `GtkCellArea` to use to layout cells
	 *
	 * Returns: A newly created `GtkIconView` widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CellArea area)
	{
		auto __p = gtk_icon_view_new_with_area((area is null) ? null : area.getCellAreaStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_area");
		}

		this(cast(GtkIconView*) __p);
	}

	/**
	 * Creates a new `GtkIconView` widget with the model @model.
	 *
	 * Params:
	 *     model = The model.
	 *
	 * Returns: A newly created `GtkIconView` widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(TreeModelIF model)
	{
		auto __p = gtk_icon_view_new_with_model((model is null) ? null : model.getTreeModelStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_model");
		}

		this(cast(GtkIconView*) __p);
	}

	/**
	 * Creates a `GdkPaintable` representation of the item at @path.
	 * This image is used for a drag icon.
	 *
	 * Params:
	 *     path = a `GtkTreePath` in @icon_view
	 *
	 * Returns: a newly-allocated `GdkPaintable` of the drag icon.
	 */
	public PaintableIF createDragIcon(TreePath path)
	{
		auto __p = gtk_icon_view_create_drag_icon(gtkIconView, (path is null) ? null : path.getTreePathStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(PaintableIF)(cast(GdkPaintable*) __p, true);
	}

	/**
	 * Turns @icon_view into a drop destination for automatic DND. Calling this
	 * method sets `GtkIconView`:reorderable to %FALSE.
	 *
	 * Params:
	 *     formats = the formats that the drag will support
	 *     actions = the bitmask of possible actions for a drag to this
	 *         widget
	 */
	public void enableModelDragDest(ContentFormats formats, GdkDragAction actions)
	{
		gtk_icon_view_enable_model_drag_dest(gtkIconView, (formats is null) ? null : formats.getContentFormatsStruct(), actions);
	}

	/**
	 * Turns @icon_view into a drag source for automatic DND. Calling this
	 * method sets `GtkIconView`:reorderable to %FALSE.
	 *
	 * Params:
	 *     startButtonMask = Mask of allowed buttons to start drag
	 *     formats = the formats that the drag will support
	 *     actions = the bitmask of possible actions for a drag from this
	 *         widget
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, ContentFormats formats, GdkDragAction actions)
	{
		gtk_icon_view_enable_model_drag_source(gtkIconView, startButtonMask, (formats is null) ? null : formats.getContentFormatsStruct(), actions);
	}

	/**
	 * Gets the setting set by gtk_icon_view_set_activate_on_single_click().
	 *
	 * Returns: %TRUE if item-activated will be emitted on a single click
	 */
	public bool getActivateOnSingleClick()
	{
		return gtk_icon_view_get_activate_on_single_click(gtkIconView) != 0;
	}

	/**
	 * Fills the bounding rectangle in widget coordinates for the cell specified by
	 * @path and @cell. If @cell is %NULL the main cell area is used.
	 *
	 * This function is only valid if @icon_view is realized.
	 *
	 * Params:
	 *     path = a `GtkTreePath`
	 *     cell = a `GtkCellRenderer`
	 *     rect = rectangle to fill with cell rect
	 *
	 * Returns: %FALSE if there is no such item, %TRUE otherwise
	 */
	public bool getCellRect(TreePath path, CellRenderer cell, out GdkRectangle rect)
	{
		return gtk_icon_view_get_cell_rect(gtkIconView, (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct(), &rect) != 0;
	}

	/**
	 * Returns the value of the ::column-spacing property.
	 *
	 * Returns: the space between columns
	 */
	public int getColumnSpacing()
	{
		return gtk_icon_view_get_column_spacing(gtkIconView);
	}

	/**
	 * Returns the value of the ::columns property.
	 *
	 * Returns: the number of columns, or -1
	 */
	public int getColumns()
	{
		return gtk_icon_view_get_columns(gtkIconView);
	}

	/**
	 * Fills in @path and @cell with the current cursor path and cell.
	 * If the cursor isn’t currently set, then *@path will be %NULL.
	 * If no cell currently has focus, then *@cell will be %NULL.
	 *
	 * The returned `GtkTreePath` must be freed with gtk_tree_path_free().
	 *
	 * Params:
	 *     path = Return location for the current
	 *         cursor path
	 *     cell = Return location the current
	 *         focus cell
	 *
	 * Returns: %TRUE if the cursor is set.
	 */
	public bool getCursor(out TreePath path, out CellRenderer cell)
	{
		GtkTreePath* outpath = null;
		GtkCellRenderer* outcell = null;

		auto __p = gtk_icon_view_get_cursor(gtkIconView, &outpath, &outcell) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);
		cell = ObjectG.getDObject!(CellRenderer)(outcell);

		return __p;
	}

	/**
	 * Determines the destination item for a given position.
	 *
	 * Params:
	 *     dragX = the position to determine the destination item for
	 *     dragY = the position to determine the destination item for
	 *     path = Return location for the path of the item
	 *     pos = Return location for the drop position
	 *
	 * Returns: whether there is an item at the given position.
	 */
	public bool getDestItemAtPos(int dragX, int dragY, out TreePath path, out GtkIconViewDropPosition pos)
	{
		GtkTreePath* outpath = null;

		auto __p = gtk_icon_view_get_dest_item_at_pos(gtkIconView, dragX, dragY, &outpath, &pos) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);

		return __p;
	}

	/**
	 * Gets information about the item that is highlighted for feedback.
	 *
	 * Params:
	 *     path = Return location for the path of
	 *         the highlighted item
	 *     pos = Return location for the drop position
	 */
	public void getDragDestItem(out TreePath path, out GtkIconViewDropPosition pos)
	{
		GtkTreePath* outpath = null;

		gtk_icon_view_get_drag_dest_item(gtkIconView, &outpath, &pos);

		path = ObjectG.getDObject!(TreePath)(outpath);
	}

	/**
	 * Gets the path and cell for the icon at the given position.
	 *
	 * Params:
	 *     x = The x position to be identified
	 *     y = The y position to be identified
	 *     path = Return location for the path
	 *     cell = Return location for the renderer
	 *         responsible for the cell at (@x, @y)
	 *
	 * Returns: %TRUE if an item exists at the specified position
	 */
	public bool getItemAtPos(int x, int y, out TreePath path, out CellRenderer cell)
	{
		GtkTreePath* outpath = null;
		GtkCellRenderer* outcell = null;

		auto __p = gtk_icon_view_get_item_at_pos(gtkIconView, x, y, &outpath, &outcell) != 0;

		path = ObjectG.getDObject!(TreePath)(outpath);
		cell = ObjectG.getDObject!(CellRenderer)(outcell);

		return __p;
	}

	/**
	 * Gets the column in which the item @path is currently
	 * displayed. Column numbers start at 0.
	 *
	 * Params:
	 *     path = the `GtkTreePath` of the item
	 *
	 * Returns: The column in which the item is displayed
	 */
	public int getItemColumn(TreePath path)
	{
		return gtk_icon_view_get_item_column(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Returns the value of the ::item-orientation property which determines
	 * whether the labels are drawn beside the icons instead of below.
	 *
	 * Returns: the relative position of texts and icons
	 */
	public GtkOrientation getItemOrientation()
	{
		return gtk_icon_view_get_item_orientation(gtkIconView);
	}

	/**
	 * Returns the value of the ::item-padding property.
	 *
	 * Returns: the padding around items
	 */
	public int getItemPadding()
	{
		return gtk_icon_view_get_item_padding(gtkIconView);
	}

	/**
	 * Gets the row in which the item @path is currently
	 * displayed. Row numbers start at 0.
	 *
	 * Params:
	 *     path = the `GtkTreePath` of the item
	 *
	 * Returns: The row in which the item is displayed
	 */
	public int getItemRow(TreePath path)
	{
		return gtk_icon_view_get_item_row(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Returns the value of the ::item-width property.
	 *
	 * Returns: the width of a single item, or -1
	 */
	public int getItemWidth()
	{
		return gtk_icon_view_get_item_width(gtkIconView);
	}

	/**
	 * Returns the value of the ::margin property.
	 *
	 * Returns: the space at the borders
	 */
	public int getMargin()
	{
		return gtk_icon_view_get_margin(gtkIconView);
	}

	/**
	 * Returns the column with markup text for @icon_view.
	 *
	 * Returns: the markup column, or -1 if it’s unset.
	 */
	public int getMarkupColumn()
	{
		return gtk_icon_view_get_markup_column(gtkIconView);
	}

	/**
	 * Returns the model the `GtkIconView` is based on.  Returns %NULL if the
	 * model is unset.
	 *
	 * Returns: The currently used `GtkTreeModel`
	 */
	public TreeModelIF getModel()
	{
		auto __p = gtk_icon_view_get_model(gtkIconView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreeModelIF)(cast(GtkTreeModel*) __p);
	}

	/**
	 * Gets the path for the icon at the given position.
	 *
	 * Params:
	 *     x = The x position to be identified
	 *     y = The y position to be identified
	 *
	 * Returns: The `GtkTreePath` corresponding
	 *     to the icon or %NULL if no icon exists at that position.
	 */
	public TreePath getPathAtPos(int x, int y)
	{
		auto __p = gtk_icon_view_get_path_at_pos(gtkIconView, x, y);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) __p, true);
	}

	/**
	 * Returns the column with pixbufs for @icon_view.
	 *
	 * Returns: the pixbuf column, or -1 if it’s unset.
	 */
	public int getPixbufColumn()
	{
		return gtk_icon_view_get_pixbuf_column(gtkIconView);
	}

	/**
	 * Retrieves whether the user can reorder the list via drag-and-drop.
	 * See gtk_icon_view_set_reorderable().
	 *
	 * Returns: %TRUE if the list can be reordered.
	 */
	public bool getReorderable()
	{
		return gtk_icon_view_get_reorderable(gtkIconView) != 0;
	}

	/**
	 * Returns the value of the ::row-spacing property.
	 *
	 * Returns: the space between rows
	 */
	public int getRowSpacing()
	{
		return gtk_icon_view_get_row_spacing(gtkIconView);
	}

	/**
	 * Creates a list of paths of all selected items. Additionally, if you are
	 * planning on modifying the model after calling this function, you may
	 * want to convert the returned list into a list of `GtkTreeRowReferences`.
	 * To do this, you can use gtk_tree_row_reference_new().
	 *
	 * To free the return value, use `g_list_free_full`:
	 * |[<!-- language="C" -->
	 * GtkWidget *icon_view = gtk_icon_view_new ();
	 * // Use icon_view
	 *
	 * GList *list = gtk_icon_view_get_selected_items (GTK_ICON_VIEW (icon_view));
	 *
	 * // use list
	 *
	 * g_list_free_full (list, (GDestroyNotify) gtk_tree_path_free);
	 * ]|
	 *
	 * Returns: A `GList` containing a `GtkTreePath` for each selected row.
	 */
	public ListG getSelectedItems()
	{
		auto __p = gtk_icon_view_get_selected_items(gtkIconView);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets the selection mode of the @icon_view.
	 *
	 * Returns: the current selection mode
	 */
	public GtkSelectionMode getSelectionMode()
	{
		return gtk_icon_view_get_selection_mode(gtkIconView);
	}

	/**
	 * Returns the value of the ::spacing property.
	 *
	 * Returns: the space between cells
	 */
	public int getSpacing()
	{
		return gtk_icon_view_get_spacing(gtkIconView);
	}

	/**
	 * Returns the column with text for @icon_view.
	 *
	 * Returns: the text column, or -1 if it’s unset.
	 */
	public int getTextColumn()
	{
		return gtk_icon_view_get_text_column(gtkIconView);
	}

	/**
	 * Returns the column of @icon_view’s model which is being used for
	 * displaying tooltips on @icon_view’s rows.
	 *
	 * Returns: the index of the tooltip column that is currently being
	 *     used, or -1 if this is disabled.
	 */
	public int getTooltipColumn()
	{
		return gtk_icon_view_get_tooltip_column(gtkIconView);
	}

	/**
	 * This function is supposed to be used in a `GtkWidget::query-tooltip`
	 * signal handler for `GtkIconView`. The @x, @y and @keyboard_tip values
	 * which are received in the signal handler, should be passed to this
	 * function without modification.
	 *
	 * The return value indicates whether there is an icon view item at the given
	 * coordinates (%TRUE) or not (%FALSE) for mouse tooltips. For keyboard
	 * tooltips the item returned will be the cursor item. When %TRUE, then any of
	 * @model, @path and @iter which have been provided will be set to point to
	 * that row and the corresponding model.
	 *
	 * Params:
	 *     x = the x coordinate (relative to widget coordinates)
	 *     y = the y coordinate (relative to widget coordinates)
	 *     keyboardTip = whether this is a keyboard tooltip or not
	 *     model = a pointer to receive a `GtkTreeModel`
	 *     path = a pointer to receive a `GtkTreePath`
	 *     iter = a pointer to receive a `GtkTreeIter`
	 *
	 * Returns: whether or not the given tooltip context points to an item
	 */
	public bool getTooltipContext(int x, int y, bool keyboardTip, out TreeModelIF model, out TreePath path, out TreeIter iter)
	{
		GtkTreeModel* outmodel = null;
		GtkTreePath* outpath = null;
		GtkTreeIter* outiter = sliceNew!GtkTreeIter();

		auto __p = gtk_icon_view_get_tooltip_context(gtkIconView, x, y, keyboardTip, &outmodel, &outpath, outiter) != 0;

		model = ObjectG.getDObject!(TreeModelIF)(outmodel);
		path = ObjectG.getDObject!(TreePath)(outpath);
		iter = ObjectG.getDObject!(TreeIter)(outiter, true);

		return __p;
	}

	/**
	 * Sets @start_path and @end_path to be the first and last visible path.
	 * Note that there may be invisible paths in between.
	 *
	 * Both paths should be freed with gtk_tree_path_free() after use.
	 *
	 * Params:
	 *     startPath = Return location for start of region
	 *     endPath = Return location for end of region
	 *
	 * Returns: %TRUE, if valid paths were placed in @start_path and @end_path
	 */
	public bool getVisibleRange(out TreePath startPath, out TreePath endPath)
	{
		GtkTreePath* outstartPath = null;
		GtkTreePath* outendPath = null;

		auto __p = gtk_icon_view_get_visible_range(gtkIconView, &outstartPath, &outendPath) != 0;

		startPath = ObjectG.getDObject!(TreePath)(outstartPath);
		endPath = ObjectG.getDObject!(TreePath)(outendPath);

		return __p;
	}

	/**
	 * Activates the item determined by @path.
	 *
	 * Params:
	 *     path = The `GtkTreePath` to be activated
	 */
	public void itemActivated(TreePath path)
	{
		gtk_icon_view_item_activated(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Returns %TRUE if the icon pointed to by @path is currently
	 * selected. If @path does not point to a valid location, %FALSE is returned.
	 *
	 * Params:
	 *     path = A `GtkTreePath` to check selection on.
	 *
	 * Returns: %TRUE if @path is selected.
	 */
	public bool pathIsSelected(TreePath path)
	{
		return gtk_icon_view_path_is_selected(gtkIconView, (path is null) ? null : path.getTreePathStruct()) != 0;
	}

	/**
	 * Moves the alignments of @icon_view to the position specified by @path.
	 * @row_align determines where the row is placed, and @col_align determines
	 * where @column is placed.  Both are expected to be between 0.0 and 1.0.
	 * 0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means
	 * center.
	 *
	 * If @use_align is %FALSE, then the alignment arguments are ignored, and the
	 * tree does the minimum amount of work to scroll the item onto the screen.
	 * This means that the item will be scrolled to the edge closest to its current
	 * position.  If the item is currently visible on the screen, nothing is done.
	 *
	 * This function only works if the model is set, and @path is a valid row on
	 * the model. If the model changes before the @icon_view is realized, the
	 * centered path will be modified to reflect this change.
	 *
	 * Params:
	 *     path = The path of the item to move to.
	 *     useAlign = whether to use alignment arguments, or %FALSE.
	 *     rowAlign = The vertical alignment of the item specified by @path.
	 *     colAlign = The horizontal alignment of the item specified by @path.
	 */
	public void scrollToPath(TreePath path, bool useAlign, float rowAlign, float colAlign)
	{
		gtk_icon_view_scroll_to_path(gtkIconView, (path is null) ? null : path.getTreePathStruct(), useAlign, rowAlign, colAlign);
	}

	/**
	 * Selects all the icons. @icon_view must has its selection mode set
	 * to %GTK_SELECTION_MULTIPLE.
	 */
	public void selectAll()
	{
		gtk_icon_view_select_all(gtkIconView);
	}

	/**
	 * Selects the row at @path.
	 *
	 * Params:
	 *     path = The `GtkTreePath` to be selected.
	 */
	public void selectPath(TreePath path)
	{
		gtk_icon_view_select_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Calls a function for each selected icon. Note that the model or
	 * selection cannot be modified from within this function.
	 *
	 * Params:
	 *     func = The function to call for each selected icon.
	 *     data = User data to pass to the function.
	 */
	public void selectedForeach(GtkIconViewForeachFunc func, void* data)
	{
		gtk_icon_view_selected_foreach(gtkIconView, func, data);
	}

	/**
	 * Causes the `GtkIconView`::item-activated signal to be emitted on
	 * a single click instead of a double click.
	 *
	 * Params:
	 *     single = %TRUE to emit item-activated on a single click
	 */
	public void setActivateOnSingleClick(bool single)
	{
		gtk_icon_view_set_activate_on_single_click(gtkIconView, single);
	}

	/**
	 * Sets the ::column-spacing property which specifies the space
	 * which is inserted between the columns of the icon view.
	 *
	 * Params:
	 *     columnSpacing = the column spacing
	 */
	public void setColumnSpacing(int columnSpacing)
	{
		gtk_icon_view_set_column_spacing(gtkIconView, columnSpacing);
	}

	/**
	 * Sets the ::columns property which determines in how
	 * many columns the icons are arranged. If @columns is
	 * -1, the number of columns will be chosen automatically
	 * to fill the available area.
	 *
	 * Params:
	 *     columns = the number of columns
	 */
	public void setColumns(int columns)
	{
		gtk_icon_view_set_columns(gtkIconView, columns);
	}

	/**
	 * Sets the current keyboard focus to be at @path, and selects it.  This is
	 * useful when you want to focus the user’s attention on a particular item.
	 * If @cell is not %NULL, then focus is given to the cell specified by
	 * it. Additionally, if @start_editing is %TRUE, then editing should be
	 * started in the specified cell.
	 *
	 * This function is often followed by `gtk_widget_grab_focus
	 * (icon_view)` in order to give keyboard focus to the widget.
	 * Please note that editing can only happen when the widget is realized.
	 *
	 * Params:
	 *     path = A `GtkTreePath`
	 *     cell = One of the cell renderers of @icon_view
	 *     startEditing = %TRUE if the specified cell should start being edited.
	 */
	public void setCursor(TreePath path, CellRenderer cell, bool startEditing)
	{
		gtk_icon_view_set_cursor(gtkIconView, (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct(), startEditing);
	}

	/**
	 * Sets the item that is highlighted for feedback.
	 *
	 * Params:
	 *     path = The path of the item to highlight
	 *     pos = Specifies where to drop, relative to the item
	 */
	public void setDragDestItem(TreePath path, GtkIconViewDropPosition pos)
	{
		gtk_icon_view_set_drag_dest_item(gtkIconView, (path is null) ? null : path.getTreePathStruct(), pos);
	}

	/**
	 * Sets the ::item-orientation property which determines whether the labels
	 * are drawn beside the icons instead of below.
	 *
	 * Params:
	 *     orientation = the relative position of texts and icons
	 */
	public void setItemOrientation(GtkOrientation orientation)
	{
		gtk_icon_view_set_item_orientation(gtkIconView, orientation);
	}

	/**
	 * Sets the `GtkIconView`:item-padding property which specifies the padding
	 * around each of the icon view’s items.
	 *
	 * Params:
	 *     itemPadding = the item padding
	 */
	public void setItemPadding(int itemPadding)
	{
		gtk_icon_view_set_item_padding(gtkIconView, itemPadding);
	}

	/**
	 * Sets the ::item-width property which specifies the width
	 * to use for each item. If it is set to -1, the icon view will
	 * automatically determine a suitable item size.
	 *
	 * Params:
	 *     itemWidth = the width for each item
	 */
	public void setItemWidth(int itemWidth)
	{
		gtk_icon_view_set_item_width(gtkIconView, itemWidth);
	}

	/**
	 * Sets the ::margin property which specifies the space
	 * which is inserted at the top, bottom, left and right
	 * of the icon view.
	 *
	 * Params:
	 *     margin = the margin
	 */
	public void setMargin(int margin)
	{
		gtk_icon_view_set_margin(gtkIconView, margin);
	}

	/**
	 * Sets the column with markup information for @icon_view to be
	 * @column. The markup column must be of type `G_TYPE_STRING`.
	 * If the markup column is set to something, it overrides
	 * the text column set by gtk_icon_view_set_text_column().
	 *
	 * Params:
	 *     column = A column in the currently used model, or -1 to display no text
	 */
	public void setMarkupColumn(int column)
	{
		gtk_icon_view_set_markup_column(gtkIconView, column);
	}

	/**
	 * Sets the model for a `GtkIconView`.
	 * If the @icon_view already has a model set, it will remove
	 * it before setting the new model.  If @model is %NULL, then
	 * it will unset the old model.
	 *
	 * Params:
	 *     model = The model.
	 */
	public void setModel(TreeModelIF model)
	{
		gtk_icon_view_set_model(gtkIconView, (model is null) ? null : model.getTreeModelStruct());
	}

	/**
	 * Sets the column with pixbufs for @icon_view to be @column. The pixbuf
	 * column must be of type `GDK_TYPE_PIXBUF`
	 *
	 * Params:
	 *     column = A column in the currently used model, or -1 to disable
	 */
	public void setPixbufColumn(int column)
	{
		gtk_icon_view_set_pixbuf_column(gtkIconView, column);
	}

	/**
	 * This function is a convenience function to allow you to reorder models that
	 * support the `GtkTreeDragSourceIface` and the `GtkTreeDragDestIface`. Both
	 * `GtkTreeStore` and `GtkListStore` support these. If @reorderable is %TRUE, then
	 * the user can reorder the model by dragging and dropping rows.  The
	 * developer can listen to these changes by connecting to the model's
	 * row_inserted and row_deleted signals. The reordering is implemented by setting up
	 * the icon view as a drag source and destination. Therefore, drag and
	 * drop can not be used in a reorderable view for any other purpose.
	 *
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed.  If more control is needed, you should probably
	 * handle drag and drop manually.
	 *
	 * Params:
	 *     reorderable = %TRUE, if the list of items can be reordered.
	 */
	public void setReorderable(bool reorderable)
	{
		gtk_icon_view_set_reorderable(gtkIconView, reorderable);
	}

	/**
	 * Sets the ::row-spacing property which specifies the space
	 * which is inserted between the rows of the icon view.
	 *
	 * Params:
	 *     rowSpacing = the row spacing
	 */
	public void setRowSpacing(int rowSpacing)
	{
		gtk_icon_view_set_row_spacing(gtkIconView, rowSpacing);
	}

	/**
	 * Sets the selection mode of the @icon_view.
	 *
	 * Params:
	 *     mode = The selection mode
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		gtk_icon_view_set_selection_mode(gtkIconView, mode);
	}

	/**
	 * Sets the ::spacing property which specifies the space
	 * which is inserted between the cells (i.e. the icon and
	 * the text) of an item.
	 *
	 * Params:
	 *     spacing = the spacing
	 */
	public void setSpacing(int spacing)
	{
		gtk_icon_view_set_spacing(gtkIconView, spacing);
	}

	/**
	 * Sets the column with text for @icon_view to be @column. The text
	 * column must be of type `G_TYPE_STRING`.
	 *
	 * Params:
	 *     column = A column in the currently used model, or -1 to display no text
	 */
	public void setTextColumn(int column)
	{
		gtk_icon_view_set_text_column(gtkIconView, column);
	}

	/**
	 * Sets the tip area of @tooltip to the area which @cell occupies in
	 * the item pointed to by @path. See also gtk_tooltip_set_tip_area().
	 *
	 * See also gtk_icon_view_set_tooltip_column() for a simpler alternative.
	 *
	 * Params:
	 *     tooltip = a `GtkTooltip`
	 *     path = a `GtkTreePath`
	 *     cell = a `GtkCellRenderer`
	 */
	public void setTooltipCell(Tooltip tooltip, TreePath path, CellRenderer cell)
	{
		gtk_icon_view_set_tooltip_cell(gtkIconView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}

	/**
	 * If you only plan to have simple (text-only) tooltips on full items, you
	 * can use this function to have `GtkIconView` handle these automatically
	 * for you. @column should be set to the column in @icon_view’s model
	 * containing the tooltip texts, or -1 to disable this feature.
	 *
	 * When enabled, `GtkWidget:has-tooltip` will be set to %TRUE and
	 * @icon_view will connect a `GtkWidget::query-tooltip` signal handler.
	 *
	 * Note that the signal handler sets the text with gtk_tooltip_set_markup(),
	 * so &, <, etc have to be escaped in the text.
	 *
	 * Params:
	 *     column = an integer, which is a valid column number for @icon_view’s model
	 */
	public void setTooltipColumn(int column)
	{
		gtk_icon_view_set_tooltip_column(gtkIconView, column);
	}

	/**
	 * Sets the tip area of @tooltip to be the area covered by the item at @path.
	 * See also gtk_icon_view_set_tooltip_column() for a simpler alternative.
	 * See also gtk_tooltip_set_tip_area().
	 *
	 * Params:
	 *     tooltip = a `GtkTooltip`
	 *     path = a `GtkTreePath`
	 */
	public void setTooltipItem(Tooltip tooltip, TreePath path)
	{
		gtk_icon_view_set_tooltip_item(gtkIconView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Unselects all the icons.
	 */
	public void unselectAll()
	{
		gtk_icon_view_unselect_all(gtkIconView);
	}

	/**
	 * Unselects the row at @path.
	 *
	 * Params:
	 *     path = The `GtkTreePath` to be unselected.
	 */
	public void unselectPath(TreePath path)
	{
		gtk_icon_view_unselect_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}

	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_dest(). Calling this
	 * method sets `GtkIconView`:reorderable to %FALSE.
	 */
	public void unsetModelDragDest()
	{
		gtk_icon_view_unset_model_drag_dest(gtkIconView);
	}

	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_source(). Calling this
	 * method sets `GtkIconView`:reorderable to %FALSE.
	 */
	public void unsetModelDragSource()
	{
		gtk_icon_view_unset_model_drag_source(gtkIconView);
	}

	/**
	 * A [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user activates the currently
	 * focused item.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control activation
	 * programmatically.
	 *
	 * The default bindings for this signal are Space, Return and Enter.
	 */
	gulong addOnActivateCursorItem(bool delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "activate-cursor-item", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::item-activated signal is emitted when the method
	 * gtk_icon_view_item_activated() is called, when the user double
	 * clicks an item with the "activate-on-single-click" property set
	 * to %FALSE, or when the user single clicks an item when the
	 * "activate-on-single-click" property set to %TRUE. It is also
	 * emitted when a non-editable item is selected and one of the keys:
	 * Space, Return or Enter is pressed.
	 *
	 * Params:
	 *     path = the `GtkTreePath` for the activated item
	 */
	gulong addOnItemActivated(void delegate(TreePath, IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "item-activated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::move-cursor signal is a
	 * [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user initiates a cursor movement.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal include
	 * - Arrow keys which move by individual steps
	 * - Home/End keys which move to the first/last item
	 * - PageUp/PageDown which move by "pages"
	 * All of these will extend the selection when combined with
	 * the Shift modifier.
	 *
	 * Params:
	 *     step = the granularity of the move, as a `GtkMovementStep`
	 *     count = the number of @step units to move
	 *     extend = whether to extend the selection
	 *     modify = whether to modify the selection
	 */
	gulong addOnMoveCursor(bool delegate(GtkMovementStep, int, bool, bool, IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-cursor", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * A [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user selects all items.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 *
	 * The default binding for this signal is Ctrl-a.
	 */
	gulong addOnSelectAll(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * A [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user selects the item that is currently
	 * focused.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 *
	 * There is no default binding for this signal.
	 */
	gulong addOnSelectCursorItem(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "select-cursor-item", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::selection-changed signal is emitted when the selection
	 * (i.e. the set of selected items) changes.
	 */
	gulong addOnSelectionChanged(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "selection-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * A [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user toggles whether the currently
	 * focused item is selected or not. The exact effect of this
	 * depend on the selection mode.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 *
	 * There is no default binding for this signal is Ctrl-Space.
	 */
	gulong addOnToggleCursorItem(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "toggle-cursor-item", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * A [keybinding signal][class@Gtk.SignalAction]
	 * which gets emitted when the user unselects all items.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 *
	 * The default binding for this signal is Ctrl-Shift-a.
	 */
	gulong addOnUnselectAll(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "unselect-all", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
