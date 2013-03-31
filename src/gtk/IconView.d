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
 * inFile  = GtkIconView.html
 * outPack = gtk
 * outFile = IconView
 * strct   = GtkIconView
 * realStrct=
 * ctorStrct=
 * clss    = IconView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- CellLayoutIF
 * 	- ScrollableIF
 * prefixes:
 * 	- gtk_icon_view_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- cairo.Surface
 * 	- glib.ListG
 * 	- gtk.CellArea
 * 	- gtk.CellRenderer
 * 	- gtk.Tooltip
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gtk.CellLayoutIF
 * 	- gtk.CellLayoutT
 * 	- gtk.ScrollableT
 * 	- gtk.ScrollableIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkCellArea* -> CellArea
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkTooltip* -> Tooltip
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.IconView;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import cairo.Surface;
private import glib.ListG;
private import gtk.CellArea;
private import gtk.CellRenderer;
private import gtk.Tooltip;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.CellLayoutIF;
private import gtk.CellLayoutT;
private import gtk.ScrollableT;
private import gtk.ScrollableIF;



private import gtk.Container;

/**
 * GtkIconView provides an alternative view on a GtkTreeModel.
 * It displays the model as a grid of icons with labels. Like
 * GtkTreeView, it allows to select one or multiple items
 * (depending on the selection mode, see gtk_icon_view_set_selection_mode()).
 * In addition to selection with the arrow keys, GtkIconView supports
 * rubberband selection, which is controlled by dragging the pointer.
 *
 * Note that if the tree model is backed by an actual tree store (as
 * opposed to a flat list where the mapping to icons is obvious),
 * GtkIconView will only display the first level of the tree and
 * ignore the tree's branches.
 */
public class IconView : Container, CellLayoutIF, ScrollableIF
{
	
	/** the main Gtk struct */
	protected GtkIconView* gtkIconView;
	
	
	public GtkIconView* getIconViewStruct()
	{
		return gtkIconView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
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
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkIconView = cast(GtkIconView*)obj;
	}
	
	// add the CellLayout capabilities
	mixin CellLayoutT!(GtkIconView);
	
	// add the Scrollable capabilities
	mixin ScrollableT!(GtkIconView);
	
	/**
	 */
	int[string] connectedSignals;
	
	bool delegate(IconView)[] onActivateCursorItemListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user activates the currently
	 * focused item.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control activation
	 * programmatically.
	 * The default bindings for this signal are Space, Return and Enter.
	 */
	void addOnActivateCursorItem(bool delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("activate-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"activate-cursor-item",
			cast(GCallback)&callBackActivateCursorItem,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["activate-cursor-item"] = 1;
		}
		onActivateCursorItemListeners ~= dlg;
	}
	extern(C) static gboolean callBackActivateCursorItem(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( bool delegate(IconView) dlg ; _iconView.onActivateCursorItemListeners )
		{
			if ( dlg(_iconView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(TreePath, IconView)[] onItemActivatedListeners;
	/**
	 * The ::item-activated signal is emitted when the method
	 * gtk_icon_view_item_activated() is called, when the user double
	 * clicks an item with the "activate-on-single-click" property set
	 * to FALSE, or when the user single clicks an item when the
	 * "activate-on-single-click" property set to TRUE. It is also
	 */
	void addOnItemActivated(void delegate(TreePath, IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("item-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"item-activated",
			cast(GCallback)&callBackItemActivated,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["item-activated"] = 1;
		}
		onItemActivatedListeners ~= dlg;
	}
	extern(C) static void callBackItemActivated(GtkIconView* iconviewStruct, GtkTreePath* path, IconView _iconView)
	{
		foreach ( void delegate(TreePath, IconView) dlg ; _iconView.onItemActivatedListeners )
		{
			dlg(ObjectG.getDObject!(TreePath)(path), _iconView);
		}
	}
	
	bool delegate(GtkMovementStep, gint, IconView)[] onMoveCursorListeners;
	/**
	 * The ::move-cursor signal is a
	 * keybinding signal
	 * which gets emitted when the user initiates a cursor movement.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 * The default bindings for this signal include
	 * Arrow keys which move by individual steps
	 * Home/End keys which move to the first/last item
	 * PageUp/PageDown which move by "pages"
	 * All of these will extend the selection when combined with
	 * the Shift modifier.
	 */
	void addOnMoveCursor(bool delegate(GtkMovementStep, gint, IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackMoveCursor(GtkIconView* iconviewStruct, GtkMovementStep step, gint count, IconView _iconView)
	{
		foreach ( bool delegate(GtkMovementStep, gint, IconView) dlg ; _iconView.onMoveCursorListeners )
		{
			if ( dlg(step, count, _iconView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(IconView)[] onSelectAllListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user selects all items.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 * The default binding for this signal is Ctrl-a.
	 */
	void addOnSelectAll(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-all",
			cast(GCallback)&callBackSelectAll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-all"] = 1;
		}
		onSelectAllListeners ~= dlg;
	}
	extern(C) static void callBackSelectAll(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( void delegate(IconView) dlg ; _iconView.onSelectAllListeners )
		{
			dlg(_iconView);
		}
	}
	
	void delegate(IconView)[] onSelectCursorItemListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user selects the item that is currently
	 * focused.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 * There is no default binding for this signal.
	 */
	void addOnSelectCursorItem(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-item",
			cast(GCallback)&callBackSelectCursorItem,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-cursor-item"] = 1;
		}
		onSelectCursorItemListeners ~= dlg;
	}
	extern(C) static void callBackSelectCursorItem(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( void delegate(IconView) dlg ; _iconView.onSelectCursorItemListeners )
		{
			dlg(_iconView);
		}
	}
	
	void delegate(IconView)[] onSelectionChangedListeners;
	/**
	 * The ::selection-changed signal is emitted when the selection
	 * (i.e. the set of selected items) changes.
	 */
	void addOnSelectionChanged(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("selection-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"selection-changed",
			cast(GCallback)&callBackSelectionChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["selection-changed"] = 1;
		}
		onSelectionChangedListeners ~= dlg;
	}
	extern(C) static void callBackSelectionChanged(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( void delegate(IconView) dlg ; _iconView.onSelectionChangedListeners )
		{
			dlg(_iconView);
		}
	}
	
	void delegate(IconView)[] onToggleCursorItemListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user toggles whether the currently
	 * focused item is selected or not. The exact effect of this
	 * depend on the selection mode.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 * There is no default binding for this signal is Ctrl-Space.
	 */
	void addOnToggleCursorItem(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("toggle-cursor-item" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-cursor-item",
			cast(GCallback)&callBackToggleCursorItem,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["toggle-cursor-item"] = 1;
		}
		onToggleCursorItemListeners ~= dlg;
	}
	extern(C) static void callBackToggleCursorItem(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( void delegate(IconView) dlg ; _iconView.onToggleCursorItemListeners )
		{
			dlg(_iconView);
		}
	}
	
	void delegate(IconView)[] onUnselectAllListeners;
	/**
	 * A keybinding signal
	 * which gets emitted when the user unselects all items.
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control selection
	 * programmatically.
	 * The default binding for this signal is Ctrl-Shift-a.
	 */
	void addOnUnselectAll(void delegate(IconView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("unselect-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unselect-all",
			cast(GCallback)&callBackUnselectAll,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["unselect-all"] = 1;
		}
		onUnselectAllListeners ~= dlg;
	}
	extern(C) static void callBackUnselectAll(GtkIconView* iconviewStruct, IconView _iconView)
	{
		foreach ( void delegate(IconView) dlg ; _iconView.onUnselectAllListeners )
		{
			dlg(_iconView);
		}
	}
	
	
	/**
	 * Creates a new GtkIconView widget
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_icon_view_new (void);
		auto p = gtk_icon_view_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_view_new()");
		}
		this(cast(GtkIconView*) p);
	}
	
	/**
	 * Creates a new GtkIconView widget using the
	 * specified area to layout cells inside the icons.
	 * Params:
	 * area = the GtkCellArea to use to layout cells
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (CellArea area)
	{
		// GtkWidget * gtk_icon_view_new_with_area (GtkCellArea *area);
		auto p = gtk_icon_view_new_with_area((area is null) ? null : area.getCellAreaStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_view_new_with_area((area is null) ? null : area.getCellAreaStruct())");
		}
		this(cast(GtkIconView*) p);
	}
	
	/**
	 * Creates a new GtkIconView widget with the model model.
	 * Since 2.6
	 * Params:
	 * model = The model.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TreeModelIF model)
	{
		// GtkWidget * gtk_icon_view_new_with_model (GtkTreeModel *model);
		auto p = gtk_icon_view_new_with_model((model is null) ? null : model.getTreeModelTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_icon_view_new_with_model((model is null) ? null : model.getTreeModelTStruct())");
		}
		this(cast(GtkIconView*) p);
	}
	
	/**
	 * Sets the model for a GtkIconView.
	 * If the icon_view already has a model set, it will remove
	 * it before setting the new model. If model is NULL, then
	 * it will unset the old model.
	 * Since 2.6
	 * Params:
	 * model = The model. [allow-none]
	 */
	public void setModel(TreeModelIF model)
	{
		// void gtk_icon_view_set_model (GtkIconView *icon_view,  GtkTreeModel *model);
		gtk_icon_view_set_model(gtkIconView, (model is null) ? null : model.getTreeModelTStruct());
	}
	
	/**
	 * Returns the model the GtkIconView is based on. Returns NULL if the
	 * model is unset.
	 * Since 2.6
	 * Returns: A GtkTreeModel, or NULL if none is currently being used. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_icon_view_get_model (GtkIconView *icon_view);
		auto p = gtk_icon_view_get_model(gtkIconView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the column with text for icon_view to be column. The text
	 * column must be of type G_TYPE_STRING.
	 * Since 2.6
	 * Params:
	 * column = A column in the currently used model, or -1 to display no text
	 */
	public void setTextColumn(int column)
	{
		// void gtk_icon_view_set_text_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_text_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with text for icon_view.
	 * Since 2.6
	 * Returns: the text column, or -1 if it's unset.
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
	 * Since 2.6
	 * Params:
	 * column = A column in the currently used model, or -1 to display no text
	 */
	public void setMarkupColumn(int column)
	{
		// void gtk_icon_view_set_markup_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_markup_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with markup text for icon_view.
	 * Since 2.6
	 * Returns: the markup column, or -1 if it's unset.
	 */
	public int getMarkupColumn()
	{
		// gint gtk_icon_view_get_markup_column (GtkIconView *icon_view);
		return gtk_icon_view_get_markup_column(gtkIconView);
	}
	
	/**
	 * Sets the column with pixbufs for icon_view to be column. The pixbuf
	 * column must be of type GDK_TYPE_PIXBUF
	 * Since 2.6
	 * Params:
	 * column = A column in the currently used model, or -1 to disable
	 */
	public void setPixbufColumn(int column)
	{
		// void gtk_icon_view_set_pixbuf_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_pixbuf_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column with pixbufs for icon_view.
	 * Since 2.6
	 * Returns: the pixbuf column, or -1 if it's unset.
	 */
	public int getPixbufColumn()
	{
		// gint gtk_icon_view_get_pixbuf_column (GtkIconView *icon_view);
		return gtk_icon_view_get_pixbuf_column(gtkIconView);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to bin_window coordinates.
	 * See gtk_icon_view_get_item_at_pos(), if you are also interested in
	 * the cell at the specified position.
	 * See gtk_icon_view_convert_widget_to_bin_window_coords() for converting
	 * widget coordinates to bin_window coordinates.
	 * Since 2.6
	 * Params:
	 * x = The x position to be identified
	 * y = The y position to be identified
	 * Returns: The GtkTreePath corresponding to the icon or NULL if no icon exists at that position.
	 */
	public TreePath getPathAtPos(int x, int y)
	{
		// GtkTreePath * gtk_icon_view_get_path_at_pos (GtkIconView *icon_view,  gint x,  gint y);
		auto p = gtk_icon_view_get_path_at_pos(gtkIconView, x, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreePath)(cast(GtkTreePath*) p);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to bin_window coordinates.
	 * In contrast to gtk_icon_view_get_path_at_pos(), this function also
	 * obtains the cell at the specified position. The returned path should
	 * be freed with gtk_tree_path_free().
	 * See gtk_icon_view_convert_widget_to_bin_window_coords() for converting
	 * widget coordinates to bin_window coordinates.
	 * Since 2.8
	 * Params:
	 * x = The x position to be identified
	 * y = The y position to be identified
	 * path = Return location for the path, or NULL. [out][allow-none]
	 * cell = Return location for the renderer
	 * responsible for the cell at (x, y), or NULL. [out][allow-none]
	 * Returns: TRUE if an item exists at the specified position
	 */
	public int getItemAtPos(int x, int y, out TreePath path, out CellRenderer cell)
	{
		// gboolean gtk_icon_view_get_item_at_pos (GtkIconView *icon_view,  gint x,  gint y,  GtkTreePath **path,  GtkCellRenderer **cell);
		GtkTreePath* outpath = null;
		GtkCellRenderer* outcell = null;
		
		auto p = gtk_icon_view_get_item_at_pos(gtkIconView, x, y, &outpath, &outcell);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		cell = ObjectG.getDObject!(CellRenderer)(outcell);
		return p;
	}
	
	/**
	 * Converts widget coordinates to coordinates for the bin_window,
	 * as expected by e.g. gtk_icon_view_get_path_at_pos().
	 * Since 2.12
	 * Params:
	 * wx = X coordinate relative to the widget
	 * wy = Y coordinate relative to the widget
	 * bx = return location for bin_window X coordinate. [out]
	 * by = return location for bin_window Y coordinate. [out]
	 */
	public void convertWidgetToBinWindowCoords(int wx, int wy, out int bx, out int by)
	{
		// void gtk_icon_view_convert_widget_to_bin_window_coords  (GtkIconView *icon_view,  gint wx,  gint wy,  gint *bx,  gint *by);
		gtk_icon_view_convert_widget_to_bin_window_coords(gtkIconView, wx, wy, &bx, &by);
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
	 * Since 2.8
	 * Params:
	 * path = A GtkTreePath
	 * cell = One of the cell renderers of icon_view, or NULL. [allow-none]
	 * startEditing = TRUE if the specified cell should start being edited.
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
	 * Since 2.8
	 * Params:
	 * path = Return location for the current cursor path,
	 * or NULL. [out][allow-none]
	 * cell = Return location the current focus cell, or NULL. [out][allow-none]
	 * Returns: TRUE if the cursor is set.
	 */
	public int getCursor(out TreePath path, out CellRenderer cell)
	{
		// gboolean gtk_icon_view_get_cursor (GtkIconView *icon_view,  GtkTreePath **path,  GtkCellRenderer **cell);
		GtkTreePath* outpath = null;
		GtkCellRenderer* outcell = null;
		
		auto p = gtk_icon_view_get_cursor(gtkIconView, &outpath, &outcell);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		cell = ObjectG.getDObject!(CellRenderer)(outcell);
		return p;
	}
	
	/**
	 * Calls a function for each selected icon. Note that the model or
	 * selection cannot be modified from within this function.
	 * Since 2.6
	 * Params:
	 * func = The function to call for each selected icon. [scope call]
	 * data = User data to pass to the function.
	 */
	public void selectedForeach(GtkIconViewForeachFunc func, void* data)
	{
		// void gtk_icon_view_selected_foreach (GtkIconView *icon_view,  GtkIconViewForeachFunc func,  gpointer data);
		gtk_icon_view_selected_foreach(gtkIconView, func, data);
	}
	
	/**
	 * Sets the selection mode of the icon_view.
	 * Since 2.6
	 * Params:
	 * mode = The selection mode
	 */
	public void setSelectionMode(GtkSelectionMode mode)
	{
		// void gtk_icon_view_set_selection_mode (GtkIconView *icon_view,  GtkSelectionMode mode);
		gtk_icon_view_set_selection_mode(gtkIconView, mode);
	}
	
	/**
	 * Gets the selection mode of the icon_view.
	 * Since 2.6
	 * Returns: the current selection mode
	 */
	public GtkSelectionMode getSelectionMode()
	{
		// GtkSelectionMode gtk_icon_view_get_selection_mode (GtkIconView *icon_view);
		return gtk_icon_view_get_selection_mode(gtkIconView);
	}
	
	/**
	 * Sets the ::item-orientation property which determines whether the labels
	 * are drawn beside the icons instead of below.
	 * Since 2.6
	 * Params:
	 * orientation = the relative position of texts and icons
	 */
	public void setItemOrientation(GtkOrientation orientation)
	{
		// void gtk_icon_view_set_item_orientation (GtkIconView *icon_view,  GtkOrientation orientation);
		gtk_icon_view_set_item_orientation(gtkIconView, orientation);
	}
	
	/**
	 * Returns the value of the ::item-orientation property which determines
	 * whether the labels are drawn beside the icons instead of below.
	 * Since 2.6
	 * Returns: the relative position of texts and icons
	 */
	public GtkOrientation getItemOrientation()
	{
		// GtkOrientation gtk_icon_view_get_item_orientation (GtkIconView *icon_view);
		return gtk_icon_view_get_item_orientation(gtkIconView);
	}
	
	/**
	 * Sets the ::columns property which determines in how
	 * many columns the icons are arranged. If columns is
	 * -1, the number of columns will be chosen automatically
	 * to fill the available area.
	 * Since 2.6
	 * Params:
	 * columns = the number of columns
	 */
	public void setColumns(int columns)
	{
		// void gtk_icon_view_set_columns (GtkIconView *icon_view,  gint columns);
		gtk_icon_view_set_columns(gtkIconView, columns);
	}
	
	/**
	 * Returns the value of the ::columns property.
	 * Since 2.6
	 * Returns: the number of columns, or -1
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
	 * Since 2.6
	 * Params:
	 * itemWidth = the width for each item
	 */
	public void setItemWidth(int itemWidth)
	{
		// void gtk_icon_view_set_item_width (GtkIconView *icon_view,  gint item_width);
		gtk_icon_view_set_item_width(gtkIconView, itemWidth);
	}
	
	/**
	 * Returns the value of the ::item-width property.
	 * Since 2.6
	 * Returns: the width of a single item, or -1
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
	 * Since 2.6
	 * Params:
	 * spacing = the spacing
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_icon_view_set_spacing (GtkIconView *icon_view,  gint spacing);
		gtk_icon_view_set_spacing(gtkIconView, spacing);
	}
	
	/**
	 * Returns the value of the ::spacing property.
	 * Since 2.6
	 * Returns: the space between cells
	 */
	public int getSpacing()
	{
		// gint gtk_icon_view_get_spacing (GtkIconView *icon_view);
		return gtk_icon_view_get_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::row-spacing property which specifies the space
	 * which is inserted between the rows of the icon view.
	 * Since 2.6
	 * Params:
	 * rowSpacing = the row spacing
	 */
	public void setRowSpacing(int rowSpacing)
	{
		// void gtk_icon_view_set_row_spacing (GtkIconView *icon_view,  gint row_spacing);
		gtk_icon_view_set_row_spacing(gtkIconView, rowSpacing);
	}
	
	/**
	 * Returns the value of the ::row-spacing property.
	 * Since 2.6
	 * Returns: the space between rows
	 */
	public int getRowSpacing()
	{
		// gint gtk_icon_view_get_row_spacing (GtkIconView *icon_view);
		return gtk_icon_view_get_row_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::column-spacing property which specifies the space
	 * which is inserted between the columns of the icon view.
	 * Since 2.6
	 * Params:
	 * columnSpacing = the column spacing
	 */
	public void setColumnSpacing(int columnSpacing)
	{
		// void gtk_icon_view_set_column_spacing (GtkIconView *icon_view,  gint column_spacing);
		gtk_icon_view_set_column_spacing(gtkIconView, columnSpacing);
	}
	
	/**
	 * Returns the value of the ::column-spacing property.
	 * Since 2.6
	 * Returns: the space between columns
	 */
	public int getColumnSpacing()
	{
		// gint gtk_icon_view_get_column_spacing (GtkIconView *icon_view);
		return gtk_icon_view_get_column_spacing(gtkIconView);
	}
	
	/**
	 * Sets the ::margin property which specifies the space
	 * which is inserted at the top, bottom, left and right
	 * of the icon view.
	 * Since 2.6
	 * Params:
	 * margin = the margin
	 */
	public void setMargin(int margin)
	{
		// void gtk_icon_view_set_margin (GtkIconView *icon_view,  gint margin);
		gtk_icon_view_set_margin(gtkIconView, margin);
	}
	
	/**
	 * Returns the value of the ::margin property.
	 * Since 2.6
	 * Returns: the space at the borders
	 */
	public int getMargin()
	{
		// gint gtk_icon_view_get_margin (GtkIconView *icon_view);
		return gtk_icon_view_get_margin(gtkIconView);
	}
	
	/**
	 * Sets the "item-padding" property which specifies the padding
	 * around each of the icon view's items.
	 * Since 2.18
	 * Params:
	 * itemPadding = the item padding
	 */
	public void setItemPadding(int itemPadding)
	{
		// void gtk_icon_view_set_item_padding (GtkIconView *icon_view,  gint item_padding);
		gtk_icon_view_set_item_padding(gtkIconView, itemPadding);
	}
	
	/**
	 * Returns the value of the ::item-padding property.
	 * Since 2.18
	 * Returns: the padding around items
	 */
	public int getItemPadding()
	{
		// gint gtk_icon_view_get_item_padding (GtkIconView *icon_view);
		return gtk_icon_view_get_item_padding(gtkIconView);
	}
	
	/**
	 * Causes the "item-activated" signal to be emitted on
	 * a single click instead of a double click.
	 * Params:
	 * single = TRUE to emit item-activated on a single click
	 * Since 3.8
	 */
	public void setActivateOnSingleClick(int single)
	{
		// void gtk_icon_view_set_activate_on_single_click  (GtkIconView *icon_view,  gboolean single);
		gtk_icon_view_set_activate_on_single_click(gtkIconView, single);
	}
	
	/**
	 * Gets the setting set by gtk_icon_view_set_activate_on_single_click().
	 * Returns: TRUE if item-activated will be emitted on a single click Since 3.8
	 */
	public int getActivateOnSingleClick()
	{
		// gboolean gtk_icon_view_get_activate_on_single_click  (GtkIconView *icon_view);
		return gtk_icon_view_get_activate_on_single_click(gtkIconView);
	}
	
	/**
	 * Fills the bounding rectangle in widget coordinates for the cell specified by
	 * path and cell. If cell is NULL the main cell area is used.
	 * This function is only valid if icon_view is realized.
	 * Params:
	 * path = a GtkTreePath
	 * cell = a GtkCellRenderer or NULL. [allow-none]
	 * rect = rectangle to fill with cell rect. [out]
	 * Returns: FALSE if there is no such item, TRUE otherwise Since 3.6
	 */
	public int getCellRect(TreePath path, CellRenderer cell, out Rectangle rect)
	{
		// gboolean gtk_icon_view_get_cell_rect (GtkIconView *icon_view,  GtkTreePath *path,  GtkCellRenderer *cell,  GdkRectangle *rect);
		return gtk_icon_view_get_cell_rect(gtkIconView, (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct(), &rect);
	}
	
	/**
	 * Selects the row at path.
	 * Since 2.6
	 * Params:
	 * path = The GtkTreePath to be selected.
	 */
	public void selectPath(TreePath path)
	{
		// void gtk_icon_view_select_path (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_select_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Unselects the row at path.
	 * Since 2.6
	 * Params:
	 * path = The GtkTreePath to be unselected.
	 */
	public void unselectPath(TreePath path)
	{
		// void gtk_icon_view_unselect_path (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_unselect_path(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Returns TRUE if the icon pointed to by path is currently
	 * selected. If path does not point to a valid location, FALSE is returned.
	 * Since 2.6
	 * Params:
	 * path = A GtkTreePath to check selection on.
	 * Returns: TRUE if path is selected.
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
	 * Since 2.6
	 * Returns: A GList containing a GtkTreePath for each selected row. [element-type GtkTreePath][transfer full]
	 */
	public ListG getSelectedItems()
	{
		// GList * gtk_icon_view_get_selected_items (GtkIconView *icon_view);
		auto p = gtk_icon_view_get_selected_items(gtkIconView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Selects all the icons. icon_view must has its selection mode set
	 * to GTK_SELECTION_MULTIPLE.
	 * Since 2.6
	 */
	public void selectAll()
	{
		// void gtk_icon_view_select_all (GtkIconView *icon_view);
		gtk_icon_view_select_all(gtkIconView);
	}
	
	/**
	 * Unselects all the icons.
	 * Since 2.6
	 */
	public void unselectAll()
	{
		// void gtk_icon_view_unselect_all (GtkIconView *icon_view);
		gtk_icon_view_unselect_all(gtkIconView);
	}
	
	/**
	 * Activates the item determined by path.
	 * Since 2.6
	 * Params:
	 * path = The GtkTreePath to be activated
	 */
	public void itemActivated(TreePath path)
	{
		// void gtk_icon_view_item_activated (GtkIconView *icon_view,  GtkTreePath *path);
		gtk_icon_view_item_activated(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Moves the alignments of icon_view to the position specified by path.
	 * row_align determines where the row is placed, and col_align determines
	 * where column is placed. Both are expected to be between 0.0 and 1.0.
	 * 0.0 means left/top alignment, 1.0 means right/bottom alignment, 0.5 means
	 * center.
	 * If use_align is FALSE, then the alignment arguments are ignored, and the
	 * tree does the minimum amount of work to scroll the item onto the screen.
	 * This means that the item will be scrolled to the edge closest to its current
	 * position. If the item is currently visible on the screen, nothing is done.
	 * This function only works if the model is set, and path is a valid row on
	 * the model. If the model changes before the icon_view is realized, the
	 * centered path will be modified to reflect this change.
	 * Since 2.8
	 * Params:
	 * path = The path of the item to move to.
	 * useAlign = whether to use alignment arguments, or FALSE.
	 * rowAlign = The vertical alignment of the item specified by path.
	 * colAlign = The horizontal alignment of the item specified by path.
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
	 * Since 2.8
	 * Params:
	 * startPath = Return location for start of region,
	 * or NULL. [out][allow-none]
	 * endPath = Return location for end of region, or NULL. [out][allow-none]
	 * Returns: TRUE, if valid paths were placed in start_path and end_path
	 */
	public int getVisibleRange(out TreePath startPath, out TreePath endPath)
	{
		// gboolean gtk_icon_view_get_visible_range (GtkIconView *icon_view,  GtkTreePath **start_path,  GtkTreePath **end_path);
		GtkTreePath* outstartPath = null;
		GtkTreePath* outendPath = null;
		
		auto p = gtk_icon_view_get_visible_range(gtkIconView, &outstartPath, &outendPath);
		
		startPath = ObjectG.getDObject!(TreePath)(outstartPath);
		endPath = ObjectG.getDObject!(TreePath)(outendPath);
		return p;
	}
	
	/**
	 * Sets the tip area of tooltip to be the area covered by the item at path.
	 * See also gtk_icon_view_set_tooltip_column() for a simpler alternative.
	 * See also gtk_tooltip_set_tip_area().
	 * Since 2.12
	 * Params:
	 * tooltip = a GtkTooltip
	 * path = a GtkTreePath
	 */
	public void setTooltipItem(Tooltip tooltip, TreePath path)
	{
		// void gtk_icon_view_set_tooltip_item (GtkIconView *icon_view,  GtkTooltip *tooltip,  GtkTreePath *path);
		gtk_icon_view_set_tooltip_item(gtkIconView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Sets the tip area of tooltip to the area which cell occupies in
	 * the item pointed to by path. See also gtk_tooltip_set_tip_area().
	 * See also gtk_icon_view_set_tooltip_column() for a simpler alternative.
	 * Since 2.12
	 * Params:
	 * tooltip = a GtkTooltip
	 * path = a GtkTreePath
	 * cell = a GtkCellRenderer or NULL. [allow-none]
	 */
	public void setTooltipCell(Tooltip tooltip, TreePath path, CellRenderer cell)
	{
		// void gtk_icon_view_set_tooltip_cell (GtkIconView *icon_view,  GtkTooltip *tooltip,  GtkTreePath *path,  GtkCellRenderer *cell);
		gtk_icon_view_set_tooltip_cell(gtkIconView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}
	
	/**
	 * This function is supposed to be used in a "query-tooltip"
	 * signal handler for GtkIconView. The x, y and keyboard_tip values
	 * which are received in the signal handler, should be passed to this
	 * function without modification.
	 * The return value indicates whether there is an icon view item at the given
	 * coordinates (TRUE) or not (FALSE) for mouse tooltips. For keyboard
	 * tooltips the item returned will be the cursor item. When TRUE, then any of
	 * model, path and iter which have been provided will be set to point to
	 * that row and the corresponding model. x and y will always be converted
	 * to be relative to icon_view's bin_window if keyboard_tooltip is FALSE.
	 * Since 2.12
	 * Params:
	 * x = the x coordinate (relative to widget coordinates). [inout]
	 * y = the y coordinate (relative to widget coordinates). [inout]
	 * keyboardTip = whether this is a keyboard tooltip or not
	 * model = a pointer to receive a
	 * GtkTreeModel or NULL. [out][allow-none][transfer none]
	 * path = a pointer to receive a GtkTreePath or NULL. [out][allow-none]
	 * iter = a pointer to receive a GtkTreeIter or NULL. [out][allow-none]
	 * Returns: whether or not the given tooltip context points to a item
	 */
	public int getTooltipContext(ref int x, ref int y, int keyboardTip, out TreeModelIF model, out TreePath path, TreeIter iter)
	{
		// gboolean gtk_icon_view_get_tooltip_context (GtkIconView *icon_view,  gint *x,  gint *y,  gboolean keyboard_tip,  GtkTreeModel **model,  GtkTreePath **path,  GtkTreeIter *iter);
		GtkTreeModel* outmodel = null;
		GtkTreePath* outpath = null;
		
		auto p = gtk_icon_view_get_tooltip_context(gtkIconView, &x, &y, keyboardTip, &outmodel, &outpath, (iter is null) ? null : iter.getTreeIterStruct());
		
		model = ObjectG.getDObject!(TreeModel)(outmodel);
		path = ObjectG.getDObject!(TreePath)(outpath);
		return p;
	}
	
	/**
	 * If you only plan to have simple (text-only) tooltips on full items, you
	 * can use this function to have GtkIconView handle these automatically
	 * for you. column should be set to the column in icon_view's model
	 * containing the tooltip texts, or -1 to disable this feature.
	 * When enabled, "has-tooltip" will be set to TRUE and
	 * icon_view will connect a "query-tooltip" signal handler.
	 * Note that the signal handler sets the text with gtk_tooltip_set_markup(),
	 * so , <, etc have to be escaped in the text.
	 * Since 2.12
	 * Params:
	 * column = an integer, which is a valid column number for icon_view's model
	 */
	public void setTooltipColumn(int column)
	{
		// void gtk_icon_view_set_tooltip_column (GtkIconView *icon_view,  gint column);
		gtk_icon_view_set_tooltip_column(gtkIconView, column);
	}
	
	/**
	 * Returns the column of icon_view's model which is being used for
	 * displaying tooltips on icon_view's rows.
	 * Since 2.12
	 * Returns: the index of the tooltip column that is currently being used, or -1 if this is disabled.
	 */
	public int getTooltipColumn()
	{
		// gint gtk_icon_view_get_tooltip_column (GtkIconView *icon_view);
		return gtk_icon_view_get_tooltip_column(gtkIconView);
	}
	
	/**
	 * Gets the row in which the item path is currently
	 * displayed. Row numbers start at 0.
	 * Since 2.22
	 * Params:
	 * path = the GtkTreePath of the item
	 * Returns: The row in which the item is displayed
	 */
	public int getItemRow(TreePath path)
	{
		// gint gtk_icon_view_get_item_row (GtkIconView *icon_view,  GtkTreePath *path);
		return gtk_icon_view_get_item_row(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Gets the column in which the item path is currently
	 * displayed. Column numbers start at 0.
	 * Since 2.22
	 * Params:
	 * path = the GtkTreePath of the item
	 * Returns: The column in which the item is displayed
	 */
	public int getItemColumn(TreePath path)
	{
		// gint gtk_icon_view_get_item_column (GtkIconView *icon_view,  GtkTreePath *path);
		return gtk_icon_view_get_item_column(gtkIconView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Turns icon_view into a drag source for automatic DND. Calling this
	 * method sets "reorderable" to FALSE.
	 * Since 2.8
	 * Params:
	 * startButtonMask = Mask of allowed buttons to start drag
	 * targets = the table of targets that the drag will
	 * support. [array length=n_targets]
	 * actions = the bitmask of possible actions for a drag from this
	 * widget
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, GtkTargetEntry[] targets, GdkDragAction actions)
	{
		// void gtk_icon_view_enable_model_drag_source  (GtkIconView *icon_view,  GdkModifierType start_button_mask,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_icon_view_enable_model_drag_source(gtkIconView, startButtonMask, targets.ptr, cast(int) targets.length, actions);
	}
	
	/**
	 * Turns icon_view into a drop destination for automatic DND. Calling this
	 * method sets "reorderable" to FALSE.
	 * Since 2.8
	 * Params:
	 * targets = the table of targets that the drag will
	 * support. [array length=n_targets]
	 * actions = the bitmask of possible actions for a drag to this
	 * widget
	 */
	public void enableModelDragDest(GtkTargetEntry[] targets, GdkDragAction actions)
	{
		// void gtk_icon_view_enable_model_drag_dest  (GtkIconView *icon_view,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_icon_view_enable_model_drag_dest(gtkIconView, targets.ptr, cast(int) targets.length, actions);
	}
	
	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_source(). Calling this
	 * method sets "reorderable" to FALSE.
	 * Since 2.8
	 */
	public void unsetModelDragSource()
	{
		// void gtk_icon_view_unset_model_drag_source  (GtkIconView *icon_view);
		gtk_icon_view_unset_model_drag_source(gtkIconView);
	}
	
	/**
	 * Undoes the effect of gtk_icon_view_enable_model_drag_dest(). Calling this
	 * method sets "reorderable" to FALSE.
	 * Since 2.8
	 */
	public void unsetModelDragDest()
	{
		// void gtk_icon_view_unset_model_drag_dest (GtkIconView *icon_view);
		gtk_icon_view_unset_model_drag_dest(gtkIconView);
	}
	
	/**
	 * This function is a convenience function to allow you to reorder models that
	 * support the GtkTreeDragSourceIface and the GtkTreeDragDestIface. Both
	 * GtkTreeStore and GtkListStore support these. If reorderable is TRUE, then
	 * the user can reorder the model by dragging and dropping rows. The
	 * developer can listen to these changes by connecting to the model's
	 * row_inserted and row_deleted signals. The reordering is implemented by setting up
	 * the icon view as a drag source and destination. Therefore, drag and
	 * drop can not be used in a reorderable view for any other purpose.
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed. If more control is needed, you should probably
	 * handle drag and drop manually.
	 * Since 2.8
	 * Params:
	 * reorderable = TRUE, if the list of items can be reordered.
	 */
	public void setReorderable(int reorderable)
	{
		// void gtk_icon_view_set_reorderable (GtkIconView *icon_view,  gboolean reorderable);
		gtk_icon_view_set_reorderable(gtkIconView, reorderable);
	}
	
	/**
	 * Retrieves whether the user can reorder the list via drag-and-drop.
	 * See gtk_icon_view_set_reorderable().
	 * Since 2.8
	 * Returns: TRUE if the list can be reordered.
	 */
	public int getReorderable()
	{
		// gboolean gtk_icon_view_get_reorderable (GtkIconView *icon_view);
		return gtk_icon_view_get_reorderable(gtkIconView);
	}
	
	/**
	 * Sets the item that is highlighted for feedback.
	 * Since 2.8
	 * Params:
	 * path = The path of the item to highlight, or NULL. [allow-none]
	 * pos = Specifies where to drop, relative to the item
	 */
	public void setDragDestItem(TreePath path, GtkIconViewDropPosition pos)
	{
		// void gtk_icon_view_set_drag_dest_item (GtkIconView *icon_view,  GtkTreePath *path,  GtkIconViewDropPosition pos);
		gtk_icon_view_set_drag_dest_item(gtkIconView, (path is null) ? null : path.getTreePathStruct(), pos);
	}
	
	/**
	 * Gets information about the item that is highlighted for feedback.
	 * Since 2.8
	 * Params:
	 * path = Return location for the path of
	 * the highlighted item, or NULL. [out][allow-none]
	 * pos = Return location for the drop position, or NULL. [out][allow-none]
	 */
	public void getDragDestItem(out TreePath path, out GtkIconViewDropPosition pos)
	{
		// void gtk_icon_view_get_drag_dest_item (GtkIconView *icon_view,  GtkTreePath **path,  GtkIconViewDropPosition *pos);
		GtkTreePath* outpath = null;
		
		gtk_icon_view_get_drag_dest_item(gtkIconView, &outpath, &pos);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
	}
	
	/**
	 * Determines the destination item for a given position.
	 * Since 2.8
	 * Params:
	 * dragX = the position to determine the destination item for
	 * dragY = the position to determine the destination item for
	 * path = Return location for the path of the item,
	 * or NULL. [out][allow-none]
	 * pos = Return location for the drop position, or NULL. [out][allow-none]
	 * Returns: whether there is an item at the given position.
	 */
	public int getDestItemAtPos(int dragX, int dragY, out TreePath path, out GtkIconViewDropPosition pos)
	{
		// gboolean gtk_icon_view_get_dest_item_at_pos (GtkIconView *icon_view,  gint drag_x,  gint drag_y,  GtkTreePath **path,  GtkIconViewDropPosition *pos);
		GtkTreePath* outpath = null;
		
		auto p = gtk_icon_view_get_dest_item_at_pos(gtkIconView, dragX, dragY, &outpath, &pos);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		return p;
	}
	
	/**
	 * Creates a cairo_surface_t representation of the item at path.
	 * This image is used for a drag icon.
	 * Since 2.8
	 * Params:
	 * path = a GtkTreePath in icon_view
	 * Returns: a newly-allocated surface of the drag icon. [transfer full]
	 */
	public Surface createDragIcon(TreePath path)
	{
		// cairo_surface_t * gtk_icon_view_create_drag_icon (GtkIconView *icon_view,  GtkTreePath *path);
		auto p = gtk_icon_view_create_drag_icon(gtkIconView, (path is null) ? null : path.getTreePathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Surface)(cast(cairo_surface_t*) p);
	}
}
