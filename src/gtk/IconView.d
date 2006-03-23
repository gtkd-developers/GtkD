/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = IconView
 * strct   = GtkIconView
 * realStrct=
 * clss    = IconView
 * template for:
 * extend  = 
 * prefixes:
 * 	- gtk_icon_view_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.TreeModel
 * 	- gtk.TreePath
 * 	- gtk.CellRenderer
 * 	- glib.ListG
 * 	- gdk.Pixmap
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkPixmap* -> Pixmap
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkTreePath* -> TreePath
 * local aliases:
 */

module gtk.IconView;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.TreeModel;
private import gtk.TreePath;
private import gtk.CellRenderer;
private import glib.ListG;
private import gdk.Pixmap;

/**
 * Description
 * GtkIconView provides an alternative view on a list model.
 * It displays the model as a grid of icons with labels. Like
 * GtkTreeView, it allows to select one or multiple items
 * (depending on the selection mode, see gtk_icon_view_set_selection_mode()).
 * In addition to selection with the arrow keys, GtkIconView supports
 * rubberband selection, which is controlled by dragging the pointer.
 */
private import gtk.Container;
public class IconView : Container
{
	
	/** the main Gtk struct */
	protected GtkIconView* gtkIconView;
	
	
	public GtkIconView* getIconViewStruct()
	{
		return gtkIconView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconView* gtkIconView)
	{
		super(cast(GtkContainer*)gtkIconView);
		this.gtkIconView = gtkIconView;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	gboolean delegate(IconView)[] onActivateCursorItemListeners;
	void addOnActivateCursorItem(gboolean delegate(IconView) dlg)
	{
		if ( !("activate-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-cursor-item",
			cast(GCallback)&callBackActivateCursorItem,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["activate-cursor-item"] = 1;
		}
		onActivateCursorItemListeners ~= dlg;
	}
	extern(C) static void callBackActivateCursorItem(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(IconView) dlg ; iconView.onActivateCursorItemListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, IconView)[] onItemActivatedListeners;
	void addOnItemActivated(void delegate(TreePath, IconView) dlg)
	{
		if ( !("item-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"item-activated",
			cast(GCallback)&callBackItemActivated,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["item-activated"] = 1;
		}
		onItemActivatedListeners ~= dlg;
	}
	extern(C) static void callBackItemActivated(GtkIconView* iconviewStruct, GtkTreePath* arg1, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, IconView) dlg ; iconView.onItemActivatedListeners )
		{
			dlg(new TreePath(arg1), iconView);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkMovementStep, gint, IconView)[] onMoveCursorListeners;
	void addOnMoveCursor(gboolean delegate(GtkMovementStep, gint, IconView) dlg)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkIconView* iconviewStruct, GtkMovementStep arg1, gint arg2, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkMovementStep, gint, IconView) dlg ; iconView.onMoveCursorListeners )
		{
			dlg(arg1, arg2, iconView);
		}
		
		return consumed;
	}
	
	void delegate(IconView)[] onSelectAllListeners;
	void addOnSelectAll(void delegate(IconView) dlg)
	{
		if ( !("select-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-all",
			cast(GCallback)&callBackSelectAll,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["select-all"] = 1;
		}
		onSelectAllListeners ~= dlg;
	}
	extern(C) static void callBackSelectAll(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconView) dlg ; iconView.onSelectAllListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	void delegate(IconView)[] onSelectCursorItemListeners;
	void addOnSelectCursorItem(void delegate(IconView) dlg)
	{
		if ( !("select-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-item",
			cast(GCallback)&callBackSelectCursorItem,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["select-cursor-item"] = 1;
		}
		onSelectCursorItemListeners ~= dlg;
	}
	extern(C) static void callBackSelectCursorItem(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconView) dlg ; iconView.onSelectCursorItemListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	void delegate(IconView)[] onSelectionChangedListeners;
	void addOnSelectionChanged(void delegate(IconView) dlg)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconView) dlg ; iconView.onSelectionChangedListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	void delegate(GtkAdjustment*, GtkAdjustment*, IconView)[] onSetScrollAdjustmentsListeners;
	void addOnSetScrollAdjustments(void delegate(GtkAdjustment*, GtkAdjustment*, IconView) dlg)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkIconView* iconviewStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkAdjustment*, GtkAdjustment*, IconView) dlg ; iconView.onSetScrollAdjustmentsListeners )
		{
			dlg(arg1, arg2, iconView);
		}
		
		return consumed;
	}
	
	void delegate(IconView)[] onToggleCursorItemListeners;
	void addOnToggleCursorItem(void delegate(IconView) dlg)
	{
		if ( !("toggle-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-cursor-item",
			cast(GCallback)&callBackToggleCursorItem,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["toggle-cursor-item"] = 1;
		}
		onToggleCursorItemListeners ~= dlg;
	}
	extern(C) static void callBackToggleCursorItem(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconView) dlg ; iconView.onToggleCursorItemListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	void delegate(IconView)[] onUnselectAllListeners;
	void addOnUnselectAll(void delegate(IconView) dlg)
	{
		if ( !("unselect-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unselect-all",
			cast(GCallback)&callBackUnselectAll,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["unselect-all"] = 1;
		}
		onUnselectAllListeners ~= dlg;
	}
	extern(C) static void callBackUnselectAll(GtkIconView* iconviewStruct, IconView iconView)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconView) dlg ; iconView.onUnselectAllListeners )
		{
			dlg(iconView);
		}
		
		return consumed;
	}
	
	
	
	
	/**
	 * Creates a new GtkIconView widget
	 * Returns:
	 *  A newly created GtkIconView widget
	 * Since 2.6
	 */
	public this ()
	{
		// GtkWidget* gtk_icon_view_new (void);
		this(cast(GtkIconView*)gtk_icon_view_new() );
	}
	
	/**
	 * Creates a new GtkIconView widget with the model model.
	 * model:
	 *  The model.
	 * Returns:
	 *  A newly created GtkIconView widget.
	 * Since 2.6
	 */
	public this (TreeModel model)
	{
		// GtkWidget* gtk_icon_view_new_with_model (GtkTreeModel *model);
		this(cast(GtkIconView*)gtk_icon_view_new_with_model((model is null) ? null : model.getTreeModelStruct()) );
	}
	
	/**
	 * Sets the model for a GtkIconView.
	 * If the icon_view already has a model set, it will remove
	 * it before setting the new model. If model is NULL, then
	 * it will unset the old model.
	 * icon_view:
	 *  A GtkIconView.
	 * model:
	 *  The model.
	 * Since 2.6
	 */
	public void setModel(TreeModel model)
	{
		// void gtk_icon_view_set_model (GtkIconView *icon_view,  GtkTreeModel *model);
		gtk_icon_view_set_model(gtkIconView, (model is null) ? null : model.getTreeModelStruct());
	}
	
	/**
	 * Returns the model the GtkIconView is based on. Returns NULL if the
	 * model is unset.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  A GtkTreeModel, or NULL if none is currently being used.
	 * Since 2.6
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_icon_view_get_model (GtkIconView *icon_view);
		return new TreeModel( gtk_icon_view_get_model(gtkIconView) );
	}
	
	/**
	 * Sets the column with text for icon_view to be column. The text
	 * column must be of type G_TYPE_STRING.
	 * icon_view:
	 *  A GtkIconView.
	 * column:
	 *  A column in the currently used model.
	 * Since 2.6
	 */
	public void setTextColumn(int column)
	{
		// void gtk_icon_view_set_text_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_text_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with text for icon_view.
	 * icon_view:
	 *  A GtkIconView.
	 * Returns:
	 *  the text column, or -1 if it's unset.
	 * Since 2.6
	 */
	public int getTextColumn()
	{
		// gint gtk_icon_view_get_text_column (GtkIconView *icon_view);
		return gtk_icon_view_get_text_column(gtkIconView);
	}
	
	/**
	 * Sets the column with markup information for icon_view to be
	 * column. The markup column must be of type G_TYPE_STRING.
	 * If the markup column is set to something, it overrides
	 * the text column set by gtk_icon_view_set_text_column().
	 * icon_view:
	 *  A GtkIconView.
	 * column:
	 *  A column in the currently used model.
	 * Since 2.6
	 */
	public void setMarkupColumn(int column)
	{
		// void gtk_icon_view_set_markup_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_markup_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with markup text for icon_view.
	 * icon_view:
	 *  A GtkIconView.
	 * Returns:
	 *  the markup column, or -1 if it's unset.
	 * Since 2.6
	 */
	public int getMarkupColumn()
	{
		// gint gtk_icon_view_get_markup_column (GtkIconView *icon_view);
		return gtk_icon_view_get_markup_column(gtkIconView);
	}
	
	/**
	 * Sets the column with pixbufs for icon_view to be column. The pixbuf
	 * column must be of type GDK_TYPE_PIXBUF
	 * icon_view:
	 *  A GtkIconView.
	 * column:
	 *  A column in the currently used model.
	 * Since 2.6
	 */
	public void setPixbufColumn(int column)
	{
		// void gtk_icon_view_set_pixbuf_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_pixbuf_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with pixbufs for icon_view.
	 * icon_view:
	 *  A GtkIconView.
	 * Returns:
	 *  the pixbuf column, or -1 if it's unset.
	 * Since 2.6
	 */
	public int getPixbufColumn()
	{
		// gint gtk_icon_view_get_pixbuf_column (GtkIconView *icon_view);
		return gtk_icon_view_get_pixbuf_column(gtkIconView);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to widget coordinates.
	 * See gtk_icon_view_get_item_at_pos(), if you are also interested in
	 * the cell at the specified position.
	 * icon_view:
	 *  A GtkIconView.
	 * x:
	 *  The x position to be identified
	 * y:
	 *  The y position to be identified
	 * Returns:
	 *  The GtkTreePath corresponding to the icon or NULL
	 * if no icon exists at that position.
	 * Since 2.6
	 */
	public TreePath getPathAtPos(int x, int y)
	{
		// GtkTreePath* gtk_icon_view_get_path_at_pos (GtkIconView *icon_view,  gint x,  gint y);
		return new TreePath( gtk_icon_view_get_path_at_pos(gtkIconView, x, y) );
	}
	
	/**
	 * Finds the path at the point (x, y), relative to widget coordinates.
	 * In contrast to gtk_icon_view_get_path_at_pos(), this function also
	 * obtains the cell at the specified position. The returned path should
	 * be freed with gtk_tree_path_free().
	 * icon_view:
	 *  A GtkIconView.
	 * x:
	 *  The x position to be identified
	 * y:
	 *  The y position to be identified
	 * path:
	 *  Return location for the path, or NULL
	 * cell:
	 *  Return location for the renderer responsible for the cell
	 *  at (x, y), or NULL
	 * Returns:
	 *  TRUE if an item exists at the specified position
	 * Since 2.8
	 */
	public int getItemAtPos(int x, int y, GtkTreePath** path, GtkCellRenderer** cell)
	{
		// gboolean gtk_icon_view_get_item_at_pos (GtkIconView *icon_view,  gint x,  gint y,  GtkTreePath **path,  GtkCellRenderer **cell);
		return gtk_icon_view_get_item_at_pos(gtkIconView, x, y, path, cell);
	}
	
	/**
	 * Sets the current keyboard focus to be at path, and selects it. This is
	 * useful when you want to focus the user's attention on a particular item.
	 * If cell is not NULL, then focus is given to the cell specified by
	 * it. Additionally, if start_editing is TRUE, then editing should be
	 * started in the specified cell.
	 * This function is often followed by gtk_widget_grab_focus
	 * (icon_view) in order to give keyboard focus to the widget.
	 * Please note that editing can only happen when the widget is realized.
	 * icon_view:
	 *  A GtkIconView
	 * path:
	 *  A GtkTreePath
	 * cell:
	 *  A GtkCellRenderer or NULL
	 * start_editing:
	 *  TRUE if the specified cell should start being edited.
	 * Since 2.8
	 */
	public void setCursor(TreePath path, CellRenderer cell, int startEditing)
	{
		// void gtk_icon_view_set_cursor (GtkIconView *icon_view,  GtkTreePath *path,  GtkCellRenderer *cell,  gboolean start_editing);
		gtk_icon_view_set_cursor(gtkIconView, (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct(), startEditing);
	}
	
	/**
	 * Fills in path and cell with the current cursor path and cell.
	 * If the cursor isn't currently set, then *path will be NULL.
	 * If no cell currently has focus, then *cell will be NULL.
	 * The returned GtkTreePath must be freed with gtk_tree_path_free().
	 * icon_view:
	 *  A GtkIconView
	 * path:
	 *  Return location for the current cursor path, or NULL
	 * cell:
	 *  Return location the current focus cell, or NULL
	 * Returns:
	 *  TRUE if the cursor is set.
	 * Since 2.8
	 */
	public int getCursor(GtkTreePath** path, GtkCellRenderer** cell)
	{
		// gboolean gtk_icon_view_get_cursor (GtkIconView *icon_view,  GtkTreePath **path,  GtkCellRenderer **cell);
		return gtk_icon_view_get_cursor(gtkIconView, path, cell);
	}
	
	/**
	 * Calls a function for each selected icon. Note that the model or
	 * selection cannot be modified from within this function.
	 * icon_view:
	 *  A GtkIconView.
	 * func:
	 *  The funcion to call for each selected icon.
	 * data:
	 *  User data to pass to the function.
	 * Since 2.6
	 */
	public void selectedForeach(GtkIconViewForeachFunc func, void* data)
	{
		// void gtk_icon_view_selected_foreach (GtkIconView *icon_view,  GtkIconViewForeachFunc func,  gpointer data);
		gtk_icon_view_selected_foreach(gtkIconView, func, data);
	}
	
	/**
	 * Sets the selection mode of the icon_view.
	 * icon_view:
	 *  A GtkIconView.
	 * mode:
	 *  The selection mode
	 * Since 2.6
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		// void gtk_icon_view_set_selection_mode  (GtkIconView *icon_view,  GtkSelectionMode mode);
		gtk_icon_view_set_selection_mode(gtkIconView, mode);
	}
	
	/**
	 * Gets the selection mode of the icon_view.
	 * icon_view:
	 *  A GtkIconView.
	 * Returns:
	 *  the current selection mode
	 * Since 2.6
	 */
	public GtkSelectionMode getSelectionMode()
	{
		// GtkSelectionMode gtk_icon_view_get_selection_mode  (GtkIconView *icon_view);
		return gtk_icon_view_get_selection_mode(gtkIconView);
	}
	
	/**
	 * Sets the ::orientation property which determines whether the labels
	 * are drawn beside the icons instead of below.
	 * icon_view:
	 *  a GtkIconView
	 * orientation:
	 *  the relative position of texts and icons
	 * Since 2.6
	 */
	public void setOrientation(GtkOrientation orientation)
	{
		// void gtk_icon_view_set_orientation (GtkIconView *icon_view,  GtkOrientation orientation);
		gtk_icon_view_set_orientation(gtkIconView, orientation);
	}
	
	/**
	 * Returns the value of the ::orientation property which determines
	 * whether the labels are drawn beside the icons instead of below.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the relative position of texts and icons
	 * Since 2.6
	 */
	public GtkOrientation getOrientation()
	{
		// GtkOrientation gtk_icon_view_get_orientation  (GtkIconView *icon_view);
		return gtk_icon_view_get_orientation(gtkIconView);
	}
	
	/**
	 * Sets the ::columns property which determines in how
	 * many columns the icons are arranged. If columns is
	 * -1, the number of columns will be chosen automatically
	 * to fill the available area.
	 * icon_view:
	 *  a GtkIconView
	 * columns:
	 *  the number of columns
	 * Since 2.6
	 */
	public void setColumns(int columns)
	{
		// void gtk_icon_view_set_columns (GtkIconView *icon_view,  gint columns);
		gtk_icon_view_set_columns(gtkIconView, columns);
	}
	
	/**
	 * Returns the value of the ::columns property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the number of columns, or -1
	 * Since 2.6
	 */
	public int getColumns()
	{
		// gint gtk_icon_view_get_columns (GtkIconView *icon_view);
		return gtk_icon_view_get_columns(gtkIconView);
	}
	
	/**
	 * Sets the ::item-width property which specifies the width
	 * to use for each item. If it is set to -1, the icon view will
	 * automatically determine a suitable item size.
	 * icon_view:
	 *  a GtkIconView
	 * item_width:
	 *  the width for each item
	 * Since 2.6
	 */
	public void setItemWidth(int itemWidth)
	{
		// void gtk_icon_view_set_item_width (GtkIconView *icon_view,  gint item_width);
		gtk_icon_view_set_item_width(gtkIconView, itemWidth);
	}
	
	/**
	 * Returns the value of the ::item-width property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the width of a single item, or -1
	 * Since 2.6
	 */
	public int getItemWidth()
	{
		// gint gtk_icon_view_get_item_width (GtkIconView *icon_view);
		return gtk_icon_view_get_item_width(gtkIconView);
	}
	
	/**
	 * Sets the ::spacing property which specifies the space
	 * which is inserted between the cells (i.e. the icon and
	 * the text) of an item.
	 * icon_view:
	 *  a GtkIconView
	 * spacing:
	 *  the spacing
	 * Since 2.6
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_icon_view_set_spacing (GtkIconView *icon_view,  gint spacing);
		gtk_icon_view_set_spacing(gtkIconView, spacing);
	}
	
	/**
	 * Returns the value of the ::spacing property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the space between cells
	 * Since 2.6
	 */
	public int getSpacing()
	{
		// gint gtk_icon_view_get_spacing (GtkIconView *icon_view);
		return gtk_icon_view_get_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::row-spacing property which specifies the space
	 * which is inserted between the rows of the icon view.
	 * icon_view:
	 *  a GtkIconView
	 * row_spacing:
	 *  the row spacing
	 * Since 2.6
	 */
	public void setRowSpacing(int rowSpacing)
	{
		// void gtk_icon_view_set_row_spacing (GtkIconView *icon_view,  gint row_spacing);
		gtk_icon_view_set_row_spacing(gtkIconView, rowSpacing);
	}
	
	/**
	 * Returns the value of the ::row-spacing property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the space between rows
	 * Since 2.6
	 */
	public int getRowSpacing()
	{
		// gint gtk_icon_view_get_row_spacing (GtkIconView *icon_view);
		return gtk_icon_view_get_row_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::column-spacing property which specifies the space
	 * which is inserted between the columns of the icon view.
	 * icon_view:
	 *  a GtkIconView
	 * column_spacing:
	 *  the column spacing
	 * Since 2.6
	 */
	public void setColumnSpacing(int columnSpacing)
	{
		// void gtk_icon_view_set_column_spacing  (GtkIconView *icon_view,  gint column_spacing);
		gtk_icon_view_set_column_spacing(gtkIconView, columnSpacing);
	}
	
	/**
	 * Returns the value of the ::column-spacing property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the space between columns
	 * Since 2.6
	 */
	public int getColumnSpacing()
	{
		// gint gtk_icon_view_get_column_spacing  (GtkIconView *icon_view);
		return gtk_icon_view_get_column_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::margin property which specifies the space
	 * which is inserted at the top, bottom, left and right
	 * of the icon view.
	 * icon_view:
	 *  a GtkIconView
	 * margin:
	 *  the margin
	 * Since 2.6
	 */
	public void setMargin(int margin)
	{
		// void gtk_icon_view_set_margin (GtkIconView *icon_view,  gint margin);
		gtk_icon_view_set_margin(gtkIconView, margin);
	}
	
	/**
	 * Returns the value of the ::margin property.
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  the space at the borders
	 * Since 2.6
	 */
	public int getMargin()
	{
		// gint gtk_icon_view_get_margin (GtkIconView *icon_view);
		return gtk_icon_view_get_margin(gtkIconView);
	}
	
	/**
	 * Selects the row at path.
	 * icon_view:
	 *  A GtkIconView.
	 * path:
	 *  The GtkTreePath to be selected.
	 * Since 2.6
	 */
	public void selectPath(TreePath path)
	{
		// void gtk_icon_view_select_path (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_select_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Unselects the row at path.
	 * icon_view:
	 *  A GtkIconView.
	 * path:
	 *  The GtkTreePath to be unselected.
	 * Since 2.6
	 */
	public void unselectPath(TreePath path)
	{
		// void gtk_icon_view_unselect_path (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_unselect_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Returns TRUE if the icon pointed to by path is currently
	 * selected. If icon does not point to a valid location, FALSE is returned.
	 * icon_view:
	 *  A GtkIconView.
	 * path:
	 *  A GtkTreePath to check selection on.
	 * Returns:
	 *  TRUE if path is selected.
	 * Since 2.6
	 */
	public int pathIsSelected(TreePath path)
	{
		// gboolean gtk_icon_view_path_is_selected (GtkIconView *icon_view,  GtkTreePath *path);
		return gtk_icon_view_path_is_selected(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Creates a list of paths of all selected items. Additionally, if you are
	 * planning on modifying the model after calling this function, you may
	 * want to convert the returned list into a list of GtkTreeRowReferences.
	 * To do this, you can use gtk_tree_row_reference_new().
	 * To free the return value, use:
	 * g_list_foreach (list, gtk_tree_path_free, NULL);
	 * g_list_free (list);
	 * icon_view:
	 *  A GtkIconView.
	 * Returns:
	 *  A GList containing a GtkTreePath for each selected row.
	 * Since 2.6
	 */
	public ListG getSelectedItems()
	{
		// GList* gtk_icon_view_get_selected_items  (GtkIconView *icon_view);
		return new ListG( gtk_icon_view_get_selected_items(gtkIconView) );
	}
	
	/**
	 * Selects all the icons. icon_view must has its selection mode set
	 * to GTK_SELECTION_MULTIPLE.
	 * icon_view:
	 *  A GtkIconView.
	 * Since 2.6
	 */
	public void selectAll()
	{
		// void gtk_icon_view_select_all (GtkIconView *icon_view);
		gtk_icon_view_select_all(gtkIconView);
	}
	
	/**
	 * Unselects all the icons.
	 * icon_view:
	 *  A GtkIconView.
	 * Since 2.6
	 */
	public void unselectAll()
	{
		// void gtk_icon_view_unselect_all (GtkIconView *icon_view);
		gtk_icon_view_unselect_all(gtkIconView);
	}
	
	/**
	 * Activates the item determined by path.
	 * icon_view:
	 *  A GtkIconView
	 * path:
	 *  The GtkTreePath to be activated
	 * Since 2.6
	 */
	public void itemActivated(TreePath path)
	{
		// void gtk_icon_view_item_activated (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_item_activated(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Moves the alignments of icon_view to the position specified by path.
	 * row_align determines where the row is placed, and col_align determines where
	 * column is placed. Both are expected to be between 0.0 and 1.0.
	 * 0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means center.
	 * If use_align is FALSE, then the alignment arguments are ignored, and the
	 * tree does the minimum amount of work to scroll the item onto the screen.
	 * This means that the item will be scrolled to the edge closest to its current
	 * position. If the item is currently visible on the screen, nothing is done.
	 * This function only works if the model is set, and path is a valid row on the
	 * model. If the model changes before the icon_view is realized, the centered
	 * path will be modified to reflect this change.
	 * icon_view:
	 *  A GtkIconView.
	 * path:
	 *  The path of the item to move to.
	 * use_align:
	 *  whether to use alignment arguments, or FALSE.
	 * row_align:
	 *  The vertical alignment of the item specified by path.
	 * col_align:
	 *  The horizontal alignment of the item specified by path.
	 * Since 2.8
	 */
	public void scrollToPath(TreePath path, int useAlign, float rowAlign, float colAlign)
	{
		// void gtk_icon_view_scroll_to_path (GtkIconView *icon_view,  GtkTreePath *path,  gboolean use_align,  gfloat row_align,  gfloat col_align);
		gtk_icon_view_scroll_to_path(gtkIconView, (path is null) ? null : path.getTreePathStruct(), useAlign, rowAlign, colAlign);
	}
	
	/**
	 * Sets start_path and end_path to be the first and last visible path.
	 * Note that there may be invisible paths in between.
	 * Both paths should be freed with gtk_tree_path_free() after use.
	 * icon_view:
	 *  A GtkIconView
	 * start_path:
	 *  Return location for start of region, or NULL
	 * end_path:
	 *  Return location for end of region, or NULL
	 * Returns:
	 *  TRUE, if valid paths were placed in start_path and end_path
	 * Since 2.8
	 */
	public int getVisibleRange(GtkTreePath** startPath, GtkTreePath** endPath)
	{
		// gboolean gtk_icon_view_get_visible_range (GtkIconView *icon_view,  GtkTreePath **start_path,  GtkTreePath **end_path);
		return gtk_icon_view_get_visible_range(gtkIconView, startPath, endPath);
	}
	
	
	/**
	 * Turns icon_view into a drag source for automatic DND.
	 * icon_view:
	 *  a GtkIconTreeView
	 * start_button_mask:
	 *  Mask of allowed buttons to start drag
	 * targets:
	 *  the table of targets that the drag will support
	 * n_targets:
	 *  the number of items in targets
	 * actions:
	 *  the bitmask of possible actions for a drag from this
	 *  widget
	 * Since 2.8
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_icon_view_enable_model_drag_source  (GtkIconView *icon_view,  GdkModifierType start_button_mask,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_icon_view_enable_model_drag_source(gtkIconView, startButtonMask, targets, nTargets, actions);
	}
	
	/**
	 * Turns icon_view into a drop destination for automatic DND.
	 * icon_view:
	 *  a GtkIconView
	 * targets:
	 *  the table of targets that the drag will support
	 * n_targets:
	 *  the number of items in targets
	 * actions:
	 *  the bitmask of possible actions for a drag from this
	 *  widget
	 * Since 2.8
	 */
	public void enableModelDragDest(GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_icon_view_enable_model_drag_dest  (GtkIconView *icon_view,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_icon_view_enable_model_drag_dest(gtkIconView, targets, nTargets, actions);
	}
	
	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_source().
	 * icon_view:
	 *  a GtkIconView
	 * Since 2.8
	 */
	public void unsetModelDragSource()
	{
		// void gtk_icon_view_unset_model_drag_source  (GtkIconView *icon_view);
		gtk_icon_view_unset_model_drag_source(gtkIconView);
	}
	
	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_dest().
	 * icon_view:
	 *  a GtkIconView
	 * Since 2.8
	 */
	public void unsetModelDragDest()
	{
		// void gtk_icon_view_unset_model_drag_dest  (GtkIconView *icon_view);
		gtk_icon_view_unset_model_drag_dest(gtkIconView);
	}
	
	/**
	 * This function is a convenience function to allow you to reorder models that
	 * support the GtkTreeDragSourceIface and the GtkTreeDragDestIface. Both
	 * GtkTreeStore and GtkListStore support these. If reorderable is TRUE, then
	 * the user can reorder the model by dragging and dropping rows. The
	 * developer can listen to these changes by connecting to the model's
	 * row_inserted and row_deleted signals.
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed. If more control is needed, you should probably
	 * handle drag and drop manually.
	 * icon_view:
	 *  A GtkIconView.
	 * reorderable:
	 *  TRUE, if the list of items can be reordered.
	 * Since 2.8
	 */
	public void setReorderable(int reorderable)
	{
		// void gtk_icon_view_set_reorderable (GtkIconView *icon_view,  gboolean reorderable);
		gtk_icon_view_set_reorderable(gtkIconView, reorderable);
	}
	
	/**
	 * Retrieves whether the user can reorder the list via drag-and-drop.
	 * See gtk_icon_view_set_reorderable().
	 * icon_view:
	 *  a GtkIconView
	 * Returns:
	 *  TRUE if the list can be reordered.
	 * Since 2.8
	 */
	public int getReorderable()
	{
		// gboolean gtk_icon_view_get_reorderable (GtkIconView *icon_view);
		return gtk_icon_view_get_reorderable(gtkIconView);
	}
	
	/**
	 * Sets the item that is highlighted for feedback.
	 * icon_view:
	 *  a GtkIconView
	 * path:
	 *  The path of the item to highlight, or NULL.
	 * pos:
	 *  Specifies where to drop, relative to the item
	 * Since 2.8
	 */
	public void setDragDestItem(TreePath path, GtkIconViewDropPosition pos)
	{
		// void gtk_icon_view_set_drag_dest_item  (GtkIconView *icon_view,  GtkTreePath *path,  GtkIconViewDropPosition pos);
		gtk_icon_view_set_drag_dest_item(gtkIconView, (path is null) ? null : path.getTreePathStruct(), pos);
	}
	
	/**
	 * Gets information about the item that is highlighted for feedback.
	 * icon_view:
	 *  a GtkIconView
	 * path:
	 *  Return location for the path of the highlighted item, or NULL.
	 * pos:
	 *  Return location for the drop position, or NULL
	 * Since 2.8
	 */
	public void getDragDestItem(GtkTreePath** path, GtkIconViewDropPosition* pos)
	{
		// void gtk_icon_view_get_drag_dest_item  (GtkIconView *icon_view,  GtkTreePath **path,  GtkIconViewDropPosition *pos);
		gtk_icon_view_get_drag_dest_item(gtkIconView, path, pos);
	}
	
	/**
	 * Determines the destination item for a given position.
	 * icon_view:
	 *  a GtkIconView
	 * drag_x:
	 *  the position to determine the destination item for
	 * drag_y:
	 *  the position to determine the destination item for
	 * path:
	 *  Return location for the path of the item, or NULL.
	 * pos:
	 *  Return location for the drop position, or NULL
	 * Returns:
	 *  whether there is an item at the given position.
	 * Since 2.8
	 */
	public int getDestItemAtPos(int dragX, int dragY, GtkTreePath** path, GtkIconViewDropPosition* pos)
	{
		// gboolean gtk_icon_view_get_dest_item_at_pos  (GtkIconView *icon_view,  gint drag_x,  gint drag_y,  GtkTreePath **path,  GtkIconViewDropPosition *pos);
		return gtk_icon_view_get_dest_item_at_pos(gtkIconView, dragX, dragY, path, pos);
	}
	
	/**
	 * Creates a GdkPixmap representation of the item at path.
	 * This image is used for a drag icon.
	 * icon_view:
	 *  a GtkIconView
	 * path:
	 *  a GtkTreePath in icon_view
	 * Returns:
	 *  a newly-allocated pixmap of the drag icon.
	 * Since 2.8
	 * Property Details
	 * The "column-spacing" property
	 *  "column-spacing" gint : Read / Write
	 * Space which is inserted between grid column.
	 * Allowed values: >= 0
	 * Default value: 6
	 */
	public Pixmap createDragIcon(TreePath path)
	{
		// GdkPixmap* gtk_icon_view_create_drag_icon (GtkIconView *icon_view,  GtkTreePath *path);
		return new Pixmap( gtk_icon_view_create_drag_icon(gtkIconView, (path is null) ? null : path.getTreePathStruct()) );
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
