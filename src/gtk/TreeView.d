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
 * inFile  = GtkTreeView.html
 * outPack = gtk
 * outFile = TreeView
 * strct   = GtkTreeView
 * realStrct=
 * ctorStrct=
 * clss    = TreeView
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ScrollableIF
 * prefixes:
 * 	- gtk_tree_view_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tree_view_get_hadjustment
 * 	- gtk_tree_view_set_hadjustment
 * 	- gtk_tree_view_get_vadjustment
 * 	- gtk_tree_view_set_vadjustment
 * omit signals:
 * imports:
 * 	- cairo.Surface
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gdk.Window
 * 	- gtk.Adjustment
 * 	- gtk.CellRenderer
 * 	- gtk.Entry
 * 	- gtk.Tooltip
 * 	- gtk.TreeIter
 * 	- gtk.TreeModel
 * 	- gtk.TreeModelIF
 * 	- gtk.TreePath
 * 	- gtk.TreeSelection
 * 	- gtk.TreeViewColumn
 * 	- gtk.ScrollableT
 * 	- gtk.ScrollableIF
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkWindow* -> Window
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkEntry* -> Entry
 * 	- GtkTooltip* -> Tooltip
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModelIF
 * 	- GtkTreePath* -> TreePath
 * 	- GtkTreeSelection* -> TreeSelection
 * 	- GtkTreeViewColumn* -> TreeViewColumn
 * 	- cairo_surface_t* -> Surface
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.TreeView;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import cairo.Surface;
private import glib.Str;
private import glib.ListG;
private import gdk.Window;
private import gtk.Adjustment;
private import gtk.CellRenderer;
private import gtk.Entry;
private import gtk.Tooltip;
private import gtk.TreeIter;
private import gtk.TreeModel;
private import gtk.TreeModelIF;
private import gtk.TreePath;
private import gtk.TreeSelection;
private import gtk.TreeViewColumn;
private import gtk.ScrollableT;
private import gtk.ScrollableIF;



private import gtk.Container;

/**
 * Widget that displays any object that implements the GtkTreeModel interface.
 *
 * Please refer to the tree widget conceptual
 * overview for an overview of all the objects and data types related
 * to the tree widget and how they work together.
 *
 * Several different coordinate systems are exposed in the GtkTreeView API.
 * These are:
 *
 * Coordinate systems in GtkTreeView API
 *
 * Widget coordinates
 *
 * Coordinates relative to the widget (usually widget->window).
 *
 * Bin window coordinates
 *
 * Coordinates relative to the window that GtkTreeView renders to.
 *
 * Tree coordinates
 *
 * Coordinates relative to the entire scrollable area of GtkTreeView. These
 * coordinates start at (0, 0) for row 0 of the tree.
 *
 * Several functions are available for converting between the different
 * coordinate systems. The most common translations are between widget and bin
 * window coordinates and between bin window and tree coordinates. For the
 * former you can use gtk_tree_view_convert_widget_to_bin_window_coords()
 * (and vice versa), for the latter gtk_tree_view_convert_bin_window_to_tree_coords()
 * (and vice versa).
 *
 * GtkTreeView as GtkBuildable
 *
 * The GtkTreeView implementation of the GtkBuildable interface accepts
 * GtkTreeViewColumn objects as <child> elements and exposes the
 * internal GtkTreeSelection in UI definitions.
 *
 * $(DDOC_COMMENT example)
 */
public class TreeView : Container, ScrollableIF
{
	
	/** the main Gtk struct */
	protected GtkTreeView* gtkTreeView;
	
	
	public GtkTreeView* getTreeViewStruct()
	{
		return gtkTreeView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkTreeView;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeView* gtkTreeView)
	{
		super(cast(GtkContainer*)gtkTreeView);
		this.gtkTreeView = gtkTreeView;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkTreeView = cast(GtkTreeView*)obj;
	}
	
	// add the Scrollable capabilities
	mixin ScrollableT!(GtkTreeView);
	
	/**
	 * Expands the row of the iter.
	 * Params:
	 *  iter =
	 *  openAll =
	 *  Returns =
	 */
	int expandRow(TreeIter iter, TreeModelIF model, int openAll)
	{
		return expandRow(model.getPath(iter), openAll);
	}
	
	/**
	 * gets the first selected iter or null if no rows are selected
	 */
	TreeIter getSelectedIter()
	{
		TreeIter iter = null;
		TreeSelection selection = getSelection();
		TreeModelIF model = getModel();
		TreePath[] paths = selection.getSelectedRows(model);
		if ( paths.length > 0 )
		{
			iter = new TreeIter();
			model.getIter(iter,paths[0]);
		}
		return iter;
	}
	
	/** */
	TreeIter[] getSelectedIters()
	{
		TreeIter[] iters;
		
		TreeIter iter = new TreeIter();
		TreeSelection selection = getSelection();
		TreeModelIF model = getModel();
		TreePath[] paths = selection.getSelectedRows(model);
		foreach ( TreePath p; selection.getSelectedRows(model) )
		{
			if ( model.getIter(iter,p) )
			{
				iters ~= iter;
				iter = new TreeIter();
			}
		}
		
		return iters;
	}
	
	/**
	 * Inserts a column and sets it's attributes
	 * Params:
	 *  position =
	 *  title =
	 *  renderer =
	 *  editable =
	 * Returns: number of columns including the new one
	 */
	gint insertEditableColumn(int position, string title, CellRenderer renderer, bool editable)
	{
		// OK, this is a trick because of my ignorance on how to pass variable argument lists
		if ( position < 0 )
		{
			position = getColumns().length();
		}
		int tot = gtk_tree_view_insert_column_with_attributes(
		gtkTreeView,
		position,
		Str.toStringz(title),
		renderer.getCellRendererStruct(),
		Str.toStringz("text"),position,
		Str.toStringz("editable"),2,0);
		return tot;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(TreeView)[] onColumnsChangedListeners;
	/**
	 * The number of columns of the treeview has changed.
	 */
	void addOnColumnsChanged(void delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("columns-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"columns-changed",
			cast(GCallback)&callBackColumnsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["columns-changed"] = 1;
		}
		onColumnsChangedListeners ~= dlg;
	}
	extern(C) static void callBackColumnsChanged(GtkTreeView* treeViewStruct, TreeView _treeView)
	{
		foreach ( void delegate(TreeView) dlg ; _treeView.onColumnsChangedListeners )
		{
			dlg(_treeView);
		}
	}
	
	void delegate(TreeView)[] onCursorChangedListeners;
	/**
	 * The position of the cursor (focused cell) has changed.
	 */
	void addOnCursorChanged(void delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("cursor-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cursor-changed",
			cast(GCallback)&callBackCursorChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["cursor-changed"] = 1;
		}
		onCursorChangedListeners ~= dlg;
	}
	extern(C) static void callBackCursorChanged(GtkTreeView* treeViewStruct, TreeView _treeView)
	{
		foreach ( void delegate(TreeView) dlg ; _treeView.onCursorChangedListeners )
		{
			dlg(_treeView);
		}
	}
	
	bool delegate(gboolean, gboolean, gboolean, TreeView)[] onExpandCollapseCursorRowListeners;
	/**
	 */
	void addOnExpandCollapseCursorRow(bool delegate(gboolean, gboolean, gboolean, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("expand-collapse-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"expand-collapse-cursor-row",
			cast(GCallback)&callBackExpandCollapseCursorRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["expand-collapse-cursor-row"] = 1;
		}
		onExpandCollapseCursorRowListeners ~= dlg;
	}
	extern(C) static gboolean callBackExpandCollapseCursorRow(GtkTreeView* treeviewStruct, gboolean arg1, gboolean arg2, gboolean arg3, TreeView _treeView)
	{
		foreach ( bool delegate(gboolean, gboolean, gboolean, TreeView) dlg ; _treeView.onExpandCollapseCursorRowListeners )
		{
			if ( dlg(arg1, arg2, arg3, _treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(GtkMovementStep, gint, TreeView)[] onMoveCursorListeners;
	/**
	 */
	void addOnMoveCursor(bool delegate(GtkMovementStep, gint, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackMoveCursor(GtkTreeView* treeviewStruct, GtkMovementStep arg1, gint arg2, TreeView _treeView)
	{
		foreach ( bool delegate(GtkMovementStep, gint, TreeView) dlg ; _treeView.onMoveCursorListeners )
		{
			if ( dlg(arg1, arg2, _treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(TreePath, TreeViewColumn, TreeView)[] onRowActivatedListeners;
	/**
	 * The "row-activated" signal is emitted when the method
	 * gtk_tree_view_row_activated() is called, when the user double
	 * clicks a treeview row with the "activate-on-single-click"
	 * property set to FALSE, or when the user single clicks a row when
	 * the "activate-on-single-click" property set to TRUE. It is also
	 * For selection handling refer to the tree
	 * widget conceptual overview as well as GtkTreeSelection.
	 */
	void addOnRowActivated(void delegate(TreePath, TreeViewColumn, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackRowActivated(GtkTreeView* treeViewStruct, GtkTreePath* path, GtkTreeViewColumn* column, TreeView _treeView)
	{
		foreach ( void delegate(TreePath, TreeViewColumn, TreeView) dlg ; _treeView.onRowActivatedListeners )
		{
			dlg(ObjectG.getDObject!(TreePath)(path), ObjectG.getDObject!(TreeViewColumn)(column), _treeView);
		}
	}
	
	void delegate(TreeIter, TreePath, TreeView)[] onRowCollapsedListeners;
	/**
	 * The given row has been collapsed (child nodes are hidden).
	 */
	void addOnRowCollapsed(void delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-collapsed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-collapsed",
			cast(GCallback)&callBackRowCollapsed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-collapsed"] = 1;
		}
		onRowCollapsedListeners ~= dlg;
	}
	extern(C) static void callBackRowCollapsed(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView _treeView)
	{
		foreach ( void delegate(TreeIter, TreePath, TreeView) dlg ; _treeView.onRowCollapsedListeners )
		{
			dlg(ObjectG.getDObject!(TreeIter)(iter), ObjectG.getDObject!(TreePath)(path), _treeView);
		}
	}
	
	void delegate(TreeIter, TreePath, TreeView)[] onRowExpandedListeners;
	/**
	 * The given row has been expanded (child nodes are shown).
	 */
	void addOnRowExpanded(void delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("row-expanded" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-expanded",
			cast(GCallback)&callBackRowExpanded,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["row-expanded"] = 1;
		}
		onRowExpandedListeners ~= dlg;
	}
	extern(C) static void callBackRowExpanded(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView _treeView)
	{
		foreach ( void delegate(TreeIter, TreePath, TreeView) dlg ; _treeView.onRowExpandedListeners )
		{
			dlg(ObjectG.getDObject!(TreeIter)(iter), ObjectG.getDObject!(TreePath)(path), _treeView);
		}
	}
	
	bool delegate(TreeView)[] onSelectAllListeners;
	/**
	 */
	void addOnSelectAll(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackSelectAll(GtkTreeView* treeviewStruct, TreeView _treeView)
	{
		foreach ( bool delegate(TreeView) dlg ; _treeView.onSelectAllListeners )
		{
			if ( dlg(_treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeView)[] onSelectCursorParentListeners;
	/**
	 */
	void addOnSelectCursorParent(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-cursor-parent" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-parent",
			cast(GCallback)&callBackSelectCursorParent,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-cursor-parent"] = 1;
		}
		onSelectCursorParentListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectCursorParent(GtkTreeView* treeviewStruct, TreeView _treeView)
	{
		foreach ( bool delegate(TreeView) dlg ; _treeView.onSelectCursorParentListeners )
		{
			if ( dlg(_treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(gboolean, TreeView)[] onSelectCursorRowListeners;
	/**
	 */
	void addOnSelectCursorRow(bool delegate(gboolean, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("select-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-row",
			cast(GCallback)&callBackSelectCursorRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["select-cursor-row"] = 1;
		}
		onSelectCursorRowListeners ~= dlg;
	}
	extern(C) static gboolean callBackSelectCursorRow(GtkTreeView* treeviewStruct, gboolean arg1, TreeView _treeView)
	{
		foreach ( bool delegate(gboolean, TreeView) dlg ; _treeView.onSelectCursorRowListeners )
		{
			if ( dlg(arg1, _treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeView)[] onStartInteractiveSearchListeners;
	/**
	 */
	void addOnStartInteractiveSearch(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("start-interactive-search" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"start-interactive-search",
			cast(GCallback)&callBackStartInteractiveSearch,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["start-interactive-search"] = 1;
		}
		onStartInteractiveSearchListeners ~= dlg;
	}
	extern(C) static gboolean callBackStartInteractiveSearch(GtkTreeView* treeviewStruct, TreeView _treeView)
	{
		foreach ( bool delegate(TreeView) dlg ; _treeView.onStartInteractiveSearchListeners )
		{
			if ( dlg(_treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeIter, TreePath, TreeView)[] onTestCollapseRowListeners;
	/**
	 * The given row is about to be collapsed (hide its children nodes). Use this
	 * signal if you need to control the collapsibility of individual rows.
	 * FALSE to allow collapsing, TRUE to reject
	 */
	void addOnTestCollapseRow(bool delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("test-collapse-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"test-collapse-row",
			cast(GCallback)&callBackTestCollapseRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["test-collapse-row"] = 1;
		}
		onTestCollapseRowListeners ~= dlg;
	}
	extern(C) static gboolean callBackTestCollapseRow(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView _treeView)
	{
		foreach ( bool delegate(TreeIter, TreePath, TreeView) dlg ; _treeView.onTestCollapseRowListeners )
		{
			if ( dlg(ObjectG.getDObject!(TreeIter)(iter), ObjectG.getDObject!(TreePath)(path), _treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeIter, TreePath, TreeView)[] onTestExpandRowListeners;
	/**
	 * The given row is about to be expanded (show its children nodes). Use this
	 * signal if you need to control the expandability of individual rows.
	 * FALSE to allow expansion, TRUE to reject
	 */
	void addOnTestExpandRow(bool delegate(TreeIter, TreePath, TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("test-expand-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"test-expand-row",
			cast(GCallback)&callBackTestExpandRow,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["test-expand-row"] = 1;
		}
		onTestExpandRowListeners ~= dlg;
	}
	extern(C) static gboolean callBackTestExpandRow(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView _treeView)
	{
		foreach ( bool delegate(TreeIter, TreePath, TreeView) dlg ; _treeView.onTestExpandRowListeners )
		{
			if ( dlg(ObjectG.getDObject!(TreeIter)(iter), ObjectG.getDObject!(TreePath)(path), _treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeView)[] onToggleCursorRowListeners;
	/**
	 */
	void addOnToggleCursorRow(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackToggleCursorRow(GtkTreeView* treeviewStruct, TreeView _treeView)
	{
		foreach ( bool delegate(TreeView) dlg ; _treeView.onToggleCursorRowListeners )
		{
			if ( dlg(_treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	bool delegate(TreeView)[] onUnselectAllListeners;
	/**
	 * See Also
	 * GtkTreeViewColumn, GtkTreeSelection, GtkTreeDnd, GtkTreeMode,
	 *  GtkTreeSortable, GtkTreeModelSort, GtkListStore, GtkTreeStore,
	 *  GtkCellRenderer, GtkCellEditable, GtkCellRendererPixbuf,
	 *  GtkCellRendererText, GtkCellRendererToggle
	 */
	void addOnUnselectAll(bool delegate(TreeView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static gboolean callBackUnselectAll(GtkTreeView* treeviewStruct, TreeView _treeView)
	{
		foreach ( bool delegate(TreeView) dlg ; _treeView.onUnselectAllListeners )
		{
			if ( dlg(_treeView) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	
	/**
	 * Creates a new GtkTreeView widget.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_tree_view_new (void);
		auto p = gtk_tree_view_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_view_new()");
		}
		this(cast(GtkTreeView*) p);
	}
	
	/**
	 * Returns the amount, in pixels, of extra indentation for child levels
	 * in tree_view.
	 * Since 2.12
	 * Returns: the amount of extra indentation for child levels in tree_view. A return value of 0 means that this feature is disabled.
	 */
	public int getLevelIndentation()
	{
		// gint gtk_tree_view_get_level_indentation (GtkTreeView *tree_view);
		return gtk_tree_view_get_level_indentation(gtkTreeView);
	}
	
	/**
	 * Returns whether or not expanders are drawn in tree_view.
	 * Since 2.12
	 * Returns: TRUE if expanders are drawn in tree_view, FALSE otherwise.
	 */
	public int getShowExpanders()
	{
		// gboolean gtk_tree_view_get_show_expanders (GtkTreeView *tree_view);
		return gtk_tree_view_get_show_expanders(gtkTreeView);
	}
	
	/**
	 * Sets the amount of extra indentation for child levels to use in tree_view
	 * in addition to the default indentation. The value should be specified in
	 * pixels, a value of 0 disables this feature and in this case only the default
	 * indentation will be used.
	 * This does not have any visible effects for lists.
	 * Since 2.12
	 * Params:
	 * indentation = the amount, in pixels, of extra indentation in tree_view.
	 */
	public void setLevelIndentation(int indentation)
	{
		// void gtk_tree_view_set_level_indentation (GtkTreeView *tree_view,  gint indentation);
		gtk_tree_view_set_level_indentation(gtkTreeView, indentation);
	}
	
	/**
	 * Sets whether to draw and enable expanders and indent child rows in
	 * tree_view. When disabled there will be no expanders visible in trees
	 * and there will be no way to expand and collapse rows by default. Also
	 * note that hiding the expanders will disable the default indentation. You
	 * can set a custom indentation in this case using
	 * gtk_tree_view_set_level_indentation().
	 * This does not have any visible effects for lists.
	 * Since 2.12
	 * Params:
	 * enabled = TRUE to enable expander drawing, FALSE otherwise.
	 */
	public void setShowExpanders(int enabled)
	{
		// void gtk_tree_view_set_show_expanders (GtkTreeView *tree_view,  gboolean enabled);
		gtk_tree_view_set_show_expanders(gtkTreeView, enabled);
	}
	
	/**
	 * Creates a new GtkTreeView widget with the model initialized to model.
	 * Params:
	 * model = the model.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (TreeModelIF model)
	{
		// GtkWidget * gtk_tree_view_new_with_model (GtkTreeModel *model);
		auto p = gtk_tree_view_new_with_model((model is null) ? null : model.getTreeModelTStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tree_view_new_with_model((model is null) ? null : model.getTreeModelTStruct())");
		}
		this(cast(GtkTreeView*) p);
	}
	
	/**
	 * Returns the model the GtkTreeView is based on. Returns NULL if the
	 * model is unset.
	 * Returns: A GtkTreeModel, or NULL if none is currently being used. [transfer none]
	 */
	public TreeModelIF getModel()
	{
		// GtkTreeModel * gtk_tree_view_get_model (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_model(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeModel)(cast(GtkTreeModel*) p);
	}
	
	/**
	 * Sets the model for a GtkTreeView. If the tree_view already has a model
	 * set, it will remove it before setting the new model. If model is NULL,
	 * then it will unset the old model.
	 * Params:
	 * model = The model. [allow-none]
	 */
	public void setModel(TreeModelIF model)
	{
		// void gtk_tree_view_set_model (GtkTreeView *tree_view,  GtkTreeModel *model);
		gtk_tree_view_set_model(gtkTreeView, (model is null) ? null : model.getTreeModelTStruct());
	}
	
	/**
	 * Gets the GtkTreeSelection associated with tree_view.
	 * Returns: A GtkTreeSelection object. [transfer none]
	 */
	public TreeSelection getSelection()
	{
		// GtkTreeSelection * gtk_tree_view_get_selection (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_selection(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeSelection)(cast(GtkTreeSelection*) p);
	}
	
	/**
	 * Returns TRUE if the headers on the tree_view are visible.
	 * Returns: Whether the headers are visible or not.
	 */
	public int getHeadersVisible()
	{
		// gboolean gtk_tree_view_get_headers_visible (GtkTreeView *tree_view);
		return gtk_tree_view_get_headers_visible(gtkTreeView);
	}
	
	/**
	 * Sets the visibility state of the headers.
	 * Params:
	 * headersVisible = TRUE if the headers are visible
	 */
	public void setHeadersVisible(int headersVisible)
	{
		// void gtk_tree_view_set_headers_visible (GtkTreeView *tree_view,  gboolean headers_visible);
		gtk_tree_view_set_headers_visible(gtkTreeView, headersVisible);
	}
	
	/**
	 * Resizes all columns to their optimal width. Only works after the
	 * treeview has been realized.
	 */
	public void columnsAutosize()
	{
		// void gtk_tree_view_columns_autosize (GtkTreeView *tree_view);
		gtk_tree_view_columns_autosize(gtkTreeView);
	}
	
	/**
	 * Returns whether all header columns are clickable.
	 * Since 2.10
	 * Returns: TRUE if all header columns are clickable, otherwise FALSE
	 */
	public int getHeadersClickable()
	{
		// gboolean gtk_tree_view_get_headers_clickable (GtkTreeView *tree_view);
		return gtk_tree_view_get_headers_clickable(gtkTreeView);
	}
	
	/**
	 * Allow the column title buttons to be clicked.
	 * Params:
	 * setting = TRUE if the columns are clickable.
	 */
	public void setHeadersClickable(int setting)
	{
		// void gtk_tree_view_set_headers_clickable (GtkTreeView *tree_view,  gboolean setting);
		gtk_tree_view_set_headers_clickable(gtkTreeView, setting);
	}
	
	/**
	 * This function tells GTK+ that the user interface for your
	 * application requires users to read across tree rows and associate
	 * cells with one another. By default, GTK+ will then render the tree
	 * with alternating row colors. Do not use it
	 * just because you prefer the appearance of the ruled tree; that's a
	 * question for the theme. Some themes will draw tree rows in
	 * alternating colors even when rules are turned off, and users who
	 * prefer that appearance all the time can choose those themes. You
	 * should call this function only as a semantic
	 * hint to the theme engine that your tree makes alternating colors
	 * useful from a functional standpoint (since it has lots of columns,
	 * generally).
	 * Params:
	 * setting = TRUE if the tree requires reading across rows
	 */
	public void setRulesHint(int setting)
	{
		// void gtk_tree_view_set_rules_hint (GtkTreeView *tree_view,  gboolean setting);
		gtk_tree_view_set_rules_hint(gtkTreeView, setting);
	}
	
	/**
	 * Gets the setting set by gtk_tree_view_set_rules_hint().
	 * Returns: TRUE if rules are useful for the user of this tree
	 */
	public int getRulesHint()
	{
		// gboolean gtk_tree_view_get_rules_hint (GtkTreeView *tree_view);
		return gtk_tree_view_get_rules_hint(gtkTreeView);
	}
	
	/**
	 * Cause the "row-activated" signal to be emitted
	 * on a single click instead of a double click.
	 * Params:
	 * single = TRUE to emit row-activated on a single click
	 * Since 3.8
	 */
	public void setActivateOnSingleClick(int single)
	{
		// void gtk_tree_view_set_activate_on_single_click  (GtkTreeView *tree_view,  gboolean single);
		gtk_tree_view_set_activate_on_single_click(gtkTreeView, single);
	}
	
	/**
	 * Gets the setting set by gtk_tree_view_set_activate_on_single_click().
	 * Returns: TRUE if row-activated will be emitted on a single click Since 3.8
	 */
	public int getActivateOnSingleClick()
	{
		// gboolean gtk_tree_view_get_activate_on_single_click  (GtkTreeView *tree_view);
		return gtk_tree_view_get_activate_on_single_click(gtkTreeView);
	}
	
	/**
	 * Appends column to the list of columns. If tree_view has "fixed_height"
	 * mode enabled, then column must have its "sizing" property set to be
	 * GTK_TREE_VIEW_COLUMN_FIXED.
	 * Params:
	 * column = The GtkTreeViewColumn to add.
	 * Returns: The number of columns in tree_view after appending.
	 */
	public int appendColumn(TreeViewColumn column)
	{
		// gint gtk_tree_view_append_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column);
		return gtk_tree_view_append_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Removes column from tree_view.
	 * Params:
	 * column = The GtkTreeViewColumn to remove.
	 * Returns: The number of columns in tree_view after removing.
	 */
	public int removeColumn(TreeViewColumn column)
	{
		// gint gtk_tree_view_remove_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column);
		return gtk_tree_view_remove_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * This inserts the column into the tree_view at position. If position is
	 * -1, then the column is inserted at the end. If tree_view has
	 * "fixed_height" mode enabled, then column must have its "sizing" property
	 * set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 * Params:
	 * column = The GtkTreeViewColumn to be inserted.
	 * position = The position to insert column in.
	 * Returns: The number of columns in tree_view after insertion.
	 */
	public int insertColumn(TreeViewColumn column, int position)
	{
		// gint gtk_tree_view_insert_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  gint position);
		return gtk_tree_view_insert_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct(), position);
	}
	
	/**
	 * Convenience function that inserts a new column into the GtkTreeView
	 * with the given cell renderer and a GtkTreeCellDataFunc to set cell renderer
	 * attributes (normally using data from the model). See also
	 * gtk_tree_view_column_set_cell_data_func(), gtk_tree_view_column_pack_start().
	 * If tree_view has "fixed_height" mode enabled, then the new column will have its
	 * "sizing" property set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 * Params:
	 * position = Position to insert, -1 for append
	 * title = column title
	 * cell = cell renderer for column
	 * func = function to set attributes of cell renderer
	 * data = data for func
	 * dnotify = destroy notifier for data
	 * Returns: number of columns in the tree view post-insert
	 */
	public int insertColumnWithDataFunc(int position, string title, CellRenderer cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify)
	{
		// gint gtk_tree_view_insert_column_with_data_func  (GtkTreeView *tree_view,  gint position,  const gchar *title,  GtkCellRenderer *cell,  GtkTreeCellDataFunc func,  gpointer data,  GDestroyNotify dnotify);
		return gtk_tree_view_insert_column_with_data_func(gtkTreeView, position, Str.toStringz(title), (cell is null) ? null : cell.getCellRendererStruct(), func, data, dnotify);
	}
	
	/**
	 * Queries the number of columns in the given tree_view.
	 * Returns: The number of columns in the tree_view Since 3.4
	 */
	public uint getNColumns()
	{
		// guint gtk_tree_view_get_n_columns (GtkTreeView *tree_view);
		return gtk_tree_view_get_n_columns(gtkTreeView);
	}
	
	/**
	 * Gets the GtkTreeViewColumn at the given position in the tree_view.
	 * Params:
	 * n = The position of the column, counting from 0.
	 * Returns: The GtkTreeViewColumn, or NULL if the position is outside the range of columns. [transfer none]
	 */
	public TreeViewColumn getColumn(int n)
	{
		// GtkTreeViewColumn * gtk_tree_view_get_column (GtkTreeView *tree_view,  gint n);
		auto p = gtk_tree_view_get_column(gtkTreeView, n);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeViewColumn)(cast(GtkTreeViewColumn*) p);
	}
	
	/**
	 * Returns a GList of all the GtkTreeViewColumn s currently in tree_view.
	 * The returned list must be freed with g_list_free().
	 * Returns: A list of GtkTreeViewColumn s. [element-type GtkTreeViewColumn][transfer container]
	 */
	public ListG getColumns()
	{
		// GList * gtk_tree_view_get_columns (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_columns(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Moves column to be after to base_column. If base_column is NULL, then
	 * column is placed in the first position.
	 * Params:
	 * column = The GtkTreeViewColumn to be moved.
	 * baseColumn = The GtkTreeViewColumn to be moved relative to, or NULL. [allow-none]
	 */
	public void moveColumnAfter(TreeViewColumn column, TreeViewColumn baseColumn)
	{
		// void gtk_tree_view_move_column_after (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  GtkTreeViewColumn *base_column);
		gtk_tree_view_move_column_after(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct(), (baseColumn is null) ? null : baseColumn.getTreeViewColumnStruct());
	}
	
	/**
	 * Sets the column to draw the expander arrow at. It must be in tree_view.
	 * If column is NULL, then the expander arrow is always at the first
	 * visible column.
	 * If you do not want expander arrow to appear in your tree, set the
	 * expander column to a hidden column.
	 * Params:
	 * column = NULL, or the column to draw the expander arrow at.
	 */
	public void setExpanderColumn(TreeViewColumn column)
	{
		// void gtk_tree_view_set_expander_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column);
		gtk_tree_view_set_expander_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Returns the column that is the current expander column.
	 * This column has the expander arrow drawn next to it.
	 * Returns: The expander column. [transfer none]
	 */
	public TreeViewColumn getExpanderColumn()
	{
		// GtkTreeViewColumn * gtk_tree_view_get_expander_column (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_expander_column(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(TreeViewColumn)(cast(GtkTreeViewColumn*) p);
	}
	
	/**
	 * Sets a user function for determining where a column may be dropped when
	 * dragged. This function is called on every column pair in turn at the
	 * beginning of a column drag to determine where a drop can take place. The
	 * arguments passed to func are: the tree_view, the GtkTreeViewColumn being
	 * dragged, the two GtkTreeViewColumn s determining the drop spot, and
	 * user_data. If either of the GtkTreeViewColumn arguments for the drop spot
	 * are NULL, then they indicate an edge. If func is set to be NULL, then
	 * tree_view reverts to the default behavior of allowing all columns to be
	 * dropped everywhere.
	 * Params:
	 * func = A function to determine which columns are reorderable, or NULL. [allow-none]
	 * userData = User data to be passed to func, or NULL. [allow-none]
	 * destroy = Destroy notifier for user_data, or NULL. [allow-none]
	 */
	public void setColumnDragFunction(GtkTreeViewColumnDropFunc func, void* userData, GDestroyNotify destroy)
	{
		// void gtk_tree_view_set_column_drag_function  (GtkTreeView *tree_view,  GtkTreeViewColumnDropFunc func,  gpointer user_data,  GDestroyNotify destroy);
		gtk_tree_view_set_column_drag_function(gtkTreeView, func, userData, destroy);
	}
	
	/**
	 * Scrolls the tree view such that the top-left corner of the visible
	 * area is tree_x, tree_y, where tree_x and tree_y are specified
	 * in tree coordinates. The tree_view must be realized before
	 * this function is called. If it isn't, you probably want to be
	 * using gtk_tree_view_scroll_to_cell().
	 * If either tree_x or tree_y are -1, then that direction isn't scrolled.
	 * Params:
	 * treeX = X coordinate of new top-left pixel of visible area, or -1
	 * treeY = Y coordinate of new top-left pixel of visible area, or -1
	 */
	public void scrollToPoint(int treeX, int treeY)
	{
		// void gtk_tree_view_scroll_to_point (GtkTreeView *tree_view,  gint tree_x,  gint tree_y);
		gtk_tree_view_scroll_to_point(gtkTreeView, treeX, treeY);
	}
	
	/**
	 * Moves the alignments of tree_view to the position specified by column and
	 * path. If column is NULL, then no horizontal scrolling occurs. Likewise,
	 * if path is NULL no vertical scrolling occurs. At a minimum, one of column
	 * or path need to be non-NULL. row_align determines where the row is
	 * placed, and col_align determines where column is placed. Both are expected
	 * to be between 0.0 and 1.0. 0.0 means left/top alignment, 1.0 means
	 * right/bottom alignment, 0.5 means center.
	 * If use_align is FALSE, then the alignment arguments are ignored, and the
	 * tree does the minimum amount of work to scroll the cell onto the screen.
	 * This means that the cell will be scrolled to the edge closest to its current
	 * position. If the cell is currently visible on the screen, nothing is done.
	 * This function only works if the model is set, and path is a valid row on the
	 * model. If the model changes before the tree_view is realized, the centered
	 * path will be modified to reflect this change.
	 * Params:
	 * path = The path of the row to move to, or NULL. [allow-none]
	 * column = The GtkTreeViewColumn to move horizontally to, or NULL. [allow-none]
	 * useAlign = whether to use alignment arguments, or FALSE.
	 * rowAlign = The vertical alignment of the row specified by path.
	 * colAlign = The horizontal alignment of the column specified by column.
	 */
	public void scrollToCell(TreePath path, TreeViewColumn column, int useAlign, float rowAlign, float colAlign)
	{
		// void gtk_tree_view_scroll_to_cell (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column,  gboolean use_align,  gfloat row_align,  gfloat col_align);
		gtk_tree_view_scroll_to_cell(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), useAlign, rowAlign, colAlign);
	}
	
	/**
	 * Sets the current keyboard focus to be at path, and selects it. This is
	 * useful when you want to focus the user's attention on a particular row. If
	 * focus_column is not NULL, then focus is given to the column specified by
	 * it. Additionally, if focus_column is specified, and start_editing is
	 * TRUE, then editing should be started in the specified cell.
	 * This function is often followed by gtk_widget_grab_focus (tree_view)
	 * in order to give keyboard focus to the widget. Please note that editing
	 * can only happen when the widget is realized.
	 * If path is invalid for model, the current cursor (if any) will be unset
	 * and the function will return without failing.
	 * Params:
	 * path = A GtkTreePath
	 * focusColumn = A GtkTreeViewColumn, or NULL. [allow-none]
	 * startEditing = TRUE if the specified cell should start being edited.
	 */
	public void setCursor(TreePath path, TreeViewColumn focusColumn, int startEditing)
	{
		// void gtk_tree_view_set_cursor (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *focus_column,  gboolean start_editing);
		gtk_tree_view_set_cursor(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (focusColumn is null) ? null : focusColumn.getTreeViewColumnStruct(), startEditing);
	}
	
	/**
	 * Sets the current keyboard focus to be at path, and selects it. This is
	 * useful when you want to focus the user's attention on a particular row. If
	 * focus_column is not NULL, then focus is given to the column specified by
	 * it. If focus_column and focus_cell are not NULL, and focus_column
	 * contains 2 or more editable or activatable cells, then focus is given to
	 * the cell specified by focus_cell. Additionally, if focus_column is
	 * specified, and start_editing is TRUE, then editing should be started in
	 * the specified cell. This function is often followed by
	 * gtk_widget_grab_focus (tree_view) in order to give keyboard focus to the
	 * widget. Please note that editing can only happen when the widget is
	 * realized.
	 * If path is invalid for model, the current cursor (if any) will be unset
	 * and the function will return without failing.
	 * Since 2.2
	 * Params:
	 * path = A GtkTreePath
	 * focusColumn = A GtkTreeViewColumn, or NULL. [allow-none]
	 * focusCell = A GtkCellRenderer, or NULL. [allow-none]
	 * startEditing = TRUE if the specified cell should start being edited.
	 */
	public void setCursorOnCell(TreePath path, TreeViewColumn focusColumn, CellRenderer focusCell, int startEditing)
	{
		// void gtk_tree_view_set_cursor_on_cell (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *focus_column,  GtkCellRenderer *focus_cell,  gboolean start_editing);
		gtk_tree_view_set_cursor_on_cell(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (focusColumn is null) ? null : focusColumn.getTreeViewColumnStruct(), (focusCell is null) ? null : focusCell.getCellRendererStruct(), startEditing);
	}
	
	/**
	 * Fills in path and focus_column with the current path and focus column. If
	 * the cursor isn't currently set, then *path will be NULL. If no column
	 * currently has focus, then *focus_column will be NULL.
	 * The returned GtkTreePath must be freed with gtk_tree_path_free() when
	 * you are done with it.
	 * Params:
	 * path = A pointer to be filled with the current cursor path, or NULL. [out][transfer full][allow-none]
	 * focusColumn = A pointer to be filled with the current focus column, or NULL. [out][transfer none][allow-none]
	 */
	public void getCursor(out TreePath path, out TreeViewColumn focusColumn)
	{
		// void gtk_tree_view_get_cursor (GtkTreeView *tree_view,  GtkTreePath **path,  GtkTreeViewColumn **focus_column);
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outfocusColumn = null;
		
		gtk_tree_view_get_cursor(gtkTreeView, &outpath, &outfocusColumn);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		focusColumn = ObjectG.getDObject!(TreeViewColumn)(outfocusColumn);
	}
	
	/**
	 * Activates the cell determined by path and column.
	 * Params:
	 * path = The GtkTreePath to be activated.
	 * column = The GtkTreeViewColumn to be activated.
	 */
	public void rowActivated(TreePath path, TreeViewColumn column)
	{
		// void gtk_tree_view_row_activated (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column);
		gtk_tree_view_row_activated(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Recursively expands all nodes in the tree_view.
	 */
	public void expandAll()
	{
		// void gtk_tree_view_expand_all (GtkTreeView *tree_view);
		gtk_tree_view_expand_all(gtkTreeView);
	}
	
	/**
	 * Recursively collapses all visible, expanded nodes in tree_view.
	 */
	public void collapseAll()
	{
		// void gtk_tree_view_collapse_all (GtkTreeView *tree_view);
		gtk_tree_view_collapse_all(gtkTreeView);
	}
	
	/**
	 * Expands the row at path. This will also expand all parent rows of
	 * path as necessary.
	 * Since 2.2
	 * Params:
	 * path = path to a row.
	 */
	public void expandToPath(TreePath path)
	{
		// void gtk_tree_view_expand_to_path (GtkTreeView *tree_view,  GtkTreePath *path);
		gtk_tree_view_expand_to_path(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Opens the row so its children are visible.
	 * Params:
	 * path = path to a row
	 * openAll = whether to recursively expand, or just expand immediate children
	 * Returns: TRUE if the row existed and had children
	 */
	public int expandRow(TreePath path, int openAll)
	{
		// gboolean gtk_tree_view_expand_row (GtkTreeView *tree_view,  GtkTreePath *path,  gboolean open_all);
		return gtk_tree_view_expand_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), openAll);
	}
	
	/**
	 * Collapses a row (hides its child rows, if they exist).
	 * Params:
	 * path = path to a row in the tree_view
	 * Returns: TRUE if the row was collapsed.
	 */
	public int collapseRow(TreePath path)
	{
		// gboolean gtk_tree_view_collapse_row (GtkTreeView *tree_view,  GtkTreePath *path);
		return gtk_tree_view_collapse_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Calls func on all expanded rows.
	 * Params:
	 * func = A function to be called. [scope call]
	 * data = User data to be passed to the function.
	 */
	public void mapExpandedRows(GtkTreeViewMappingFunc func, void* data)
	{
		// void gtk_tree_view_map_expanded_rows (GtkTreeView *tree_view,  GtkTreeViewMappingFunc func,  gpointer data);
		gtk_tree_view_map_expanded_rows(gtkTreeView, func, data);
	}
	
	/**
	 * Returns TRUE if the node pointed to by path is expanded in tree_view.
	 * Params:
	 * path = A GtkTreePath to test expansion state.
	 * Returns: TRUE if path is expanded.
	 */
	public int rowExpanded(TreePath path)
	{
		// gboolean gtk_tree_view_row_expanded (GtkTreeView *tree_view,  GtkTreePath *path);
		return gtk_tree_view_row_expanded(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * This function is a convenience function to allow you to reorder
	 * models that support the GtkTreeDragSourceIface and the
	 * GtkTreeDragDestIface. Both GtkTreeStore and GtkListStore support
	 * these. If reorderable is TRUE, then the user can reorder the
	 * model by dragging and dropping rows. The developer can listen to
	 * these changes by connecting to the model's row_inserted and
	 * row_deleted signals. The reordering is implemented by setting up
	 * the tree view as a drag source and destination. Therefore, drag and
	 * drop can not be used in a reorderable view for any other purpose.
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed. If more control is needed, you should probably
	 * handle drag and drop manually.
	 * Params:
	 * reorderable = TRUE, if the tree can be reordered.
	 */
	public void setReorderable(int reorderable)
	{
		// void gtk_tree_view_set_reorderable (GtkTreeView *tree_view,  gboolean reorderable);
		gtk_tree_view_set_reorderable(gtkTreeView, reorderable);
	}
	
	/**
	 * Retrieves whether the user can reorder the tree via drag-and-drop. See
	 * gtk_tree_view_set_reorderable().
	 * Returns: TRUE if the tree can be reordered.
	 */
	public int getReorderable()
	{
		// gboolean gtk_tree_view_get_reorderable (GtkTreeView *tree_view);
		return gtk_tree_view_get_reorderable(gtkTreeView);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to bin_window coordinates
	 * (please see gtk_tree_view_get_bin_window()).
	 * That is, x and y are relative to an events coordinates. x and y must
	 * come from an event on the tree_view only where event->window ==
	 * gtk_tree_view_get_bin_window (). It is primarily for
	 * things like popup menus. If path is non-NULL, then it will be filled
	 * with the GtkTreePath at that point. This path should be freed with
	 * gtk_tree_path_free(). If column is non-NULL, then it will be filled
	 * with the column at that point. cell_x and cell_y return the coordinates
	 * relative to the cell background (i.e. the background_area passed to
	 * gtk_cell_renderer_render()). This function is only meaningful if
	 * tree_view is realized. Therefore this function will always return FALSE
	 * if tree_view is not realized or does not have a model.
	 * For converting widget coordinates (eg. the ones you get from
	 * GtkWidget::query-tooltip), please see
	 * gtk_tree_view_convert_widget_to_bin_window_coords().
	 * Params:
	 * x = The x position to be identified (relative to bin_window).
	 * y = The y position to be identified (relative to bin_window).
	 * path = A pointer to a GtkTreePath pointer to be filled in, or NULL. [out][allow-none]
	 * column = A pointer to a GtkTreeViewColumn pointer to be filled in, or NULL. [out][transfer none][allow-none]
	 * cellX = A pointer where the X coordinate relative to the cell can be placed, or NULL. [out][allow-none]
	 * cellY = A pointer where the Y coordinate relative to the cell can be placed, or NULL. [out][allow-none]
	 * Returns: TRUE if a row exists at that coordinate.
	 */
	public int getPathAtPos(int x, int y, out TreePath path, out TreeViewColumn column, out int cellX, out int cellY)
	{
		// gboolean gtk_tree_view_get_path_at_pos (GtkTreeView *tree_view,  gint x,  gint y,  GtkTreePath **path,  GtkTreeViewColumn **column,  gint *cell_x,  gint *cell_y);
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outcolumn = null;
		
		auto p = gtk_tree_view_get_path_at_pos(gtkTreeView, x, y, &outpath, &outcolumn, &cellX, &cellY);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		column = ObjectG.getDObject!(TreeViewColumn)(outcolumn);
		return p;
	}
	
	/**
	 * Determine whether the point (x, y) in tree_view is blank, that is no
	 * cell content nor an expander arrow is drawn at the location. If so, the
	 * location can be considered as the background. You might wish to take
	 * special action on clicks on the background, such as clearing a current
	 * selection, having a custom context menu or starting rubber banding.
	 * The x and y coordinate that are provided must be relative to bin_window
	 * coordinates. That is, x and y must come from an event on tree_view
	 * where event->window == gtk_tree_view_get_bin_window ().
	 * For converting widget coordinates (eg. the ones you get from
	 * GtkWidget::query-tooltip), please see
	 * gtk_tree_view_convert_widget_to_bin_window_coords().
	 * The path, column, cell_x and cell_y arguments will be filled in
	 * likewise as for gtk_tree_view_get_path_at_pos(). Please see
	 * gtk_tree_view_get_path_at_pos() for more information.
	 * Params:
	 * x = The x position to be identified (relative to bin_window)
	 * y = The y position to be identified (relative to bin_window)
	 * path = A pointer to a GtkTreePath pointer to be filled in, or NULL. [out][allow-none]
	 * column = A pointer to a GtkTreeViewColumn pointer to be filled in, or NULL. [out][allow-none]
	 * cellX = A pointer where the X coordinate relative to the cell can be placed, or NULL. [out][allow-none]
	 * cellY = A pointer where the Y coordinate relative to the cell can be placed, or NULL. [out][allow-none]
	 * Returns: TRUE if the area at the given coordinates is blank, FALSE otherwise. Since 3.0
	 */
	public int isBlankAtPos(int x, int y, out TreePath path, out TreeViewColumn column, out int cellX, out int cellY)
	{
		// gboolean gtk_tree_view_is_blank_at_pos (GtkTreeView *tree_view,  gint x,  gint y,  GtkTreePath **path,  GtkTreeViewColumn **column,  gint *cell_x,  gint *cell_y);
		GtkTreePath* outpath = null;
		GtkTreeViewColumn* outcolumn = null;
		
		auto p = gtk_tree_view_is_blank_at_pos(gtkTreeView, x, y, &outpath, &outcolumn, &cellX, &cellY);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		column = ObjectG.getDObject!(TreeViewColumn)(outcolumn);
		return p;
	}
	
	/**
	 * Fills the bounding rectangle in bin_window coordinates for the cell at the
	 * row specified by path and the column specified by column. If path is
	 * NULL, or points to a path not currently displayed, the y and height fields
	 * of the rectangle will be filled with 0. If column is NULL, the x and width
	 * fields will be filled with 0. The sum of all cell rects does not cover the
	 * entire tree; there are extra pixels in between rows, for example. The
	 * returned rectangle is equivalent to the cell_area passed to
	 * gtk_cell_renderer_render(). This function is only valid if tree_view is
	 * realized.
	 * Params:
	 * path = a GtkTreePath for the row, or NULL to get only horizontal coordinates. [allow-none]
	 * column = a GtkTreeViewColumn for the column, or NULL to get only vertical coordinates. [allow-none]
	 * rect = rectangle to fill with cell rect. [out]
	 */
	public void getCellArea(TreePath path, TreeViewColumn column, out Rectangle rect)
	{
		// void gtk_tree_view_get_cell_area (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column,  GdkRectangle *rect);
		gtk_tree_view_get_cell_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), &rect);
	}
	
	/**
	 * Fills the bounding rectangle in bin_window coordinates for the cell at the
	 * row specified by path and the column specified by column. If path is
	 * NULL, or points to a node not found in the tree, the y and height fields of
	 * the rectangle will be filled with 0. If column is NULL, the x and width
	 * fields will be filled with 0. The returned rectangle is equivalent to the
	 * background_area passed to gtk_cell_renderer_render(). These background
	 * areas tile to cover the entire bin window. Contrast with the cell_area,
	 * returned by gtk_tree_view_get_cell_area(), which returns only the cell
	 * itself, excluding surrounding borders and the tree expander area.
	 * Params:
	 * path = a GtkTreePath for the row, or NULL to get only horizontal coordinates. [allow-none]
	 * column = a GtkTreeViewColumn for the column, or NULL to get only vertical coordiantes. [allow-none]
	 * rect = rectangle to fill with cell background rect. [out]
	 */
	public void getBackgroundArea(TreePath path, TreeViewColumn column, out Rectangle rect)
	{
		// void gtk_tree_view_get_background_area (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column,  GdkRectangle *rect);
		gtk_tree_view_get_background_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), &rect);
	}
	
	/**
	 * Fills visible_rect with the currently-visible region of the
	 * buffer, in tree coordinates. Convert to bin_window coordinates with
	 * gtk_tree_view_convert_tree_to_bin_window_coords().
	 * Tree coordinates start at 0,0 for row 0 of the tree, and cover the entire
	 * scrollable area of the tree.
	 * Params:
	 * visibleRect = rectangle to fill. [out]
	 */
	public void getVisibleRect(out Rectangle visibleRect)
	{
		// void gtk_tree_view_get_visible_rect (GtkTreeView *tree_view,  GdkRectangle *visible_rect);
		gtk_tree_view_get_visible_rect(gtkTreeView, &visibleRect);
	}
	
	/**
	 * Sets start_path and end_path to be the first and last visible path.
	 * Note that there may be invisible paths in between.
	 * The paths should be freed with gtk_tree_path_free() after use.
	 * Since 2.8
	 * Params:
	 * startPath = Return location for start of region,
	 * or NULL. [out][allow-none]
	 * endPath = Return location for end of region, or NULL. [out][allow-none]
	 * Returns: TRUE, if valid paths were placed in start_path and end_path.
	 */
	public int getVisibleRange(out TreePath startPath, out TreePath endPath)
	{
		// gboolean gtk_tree_view_get_visible_range (GtkTreeView *tree_view,  GtkTreePath **start_path,  GtkTreePath **end_path);
		GtkTreePath* outstartPath = null;
		GtkTreePath* outendPath = null;
		
		auto p = gtk_tree_view_get_visible_range(gtkTreeView, &outstartPath, &outendPath);
		
		startPath = ObjectG.getDObject!(TreePath)(outstartPath);
		endPath = ObjectG.getDObject!(TreePath)(outendPath);
		return p;
	}
	
	/**
	 * Returns the window that tree_view renders to.
	 * This is used primarily to compare to event->window
	 * to confirm that the event on tree_view is on the right window.
	 * Returns: A GdkWindow, or NULL when tree_view hasn't been realized yet. [transfer none]
	 */
	public Window getBinWindow()
	{
		// GdkWindow * gtk_tree_view_get_bin_window (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_bin_window(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Converts bin_window coordinates to coordinates for the
	 * tree (the full scrollable area of the tree).
	 * Since 2.12
	 * Params:
	 * bx = X coordinate relative to bin_window
	 * by = Y coordinate relative to bin_window
	 * tx = return location for tree X coordinate. [out]
	 * ty = return location for tree Y coordinate. [out]
	 */
	public void convertBinWindowToTreeCoords(int bx, int by, out int tx, out int ty)
	{
		// void gtk_tree_view_convert_bin_window_to_tree_coords  (GtkTreeView *tree_view,  gint bx,  gint by,  gint *tx,  gint *ty);
		gtk_tree_view_convert_bin_window_to_tree_coords(gtkTreeView, bx, by, &tx, &ty);
	}
	
	/**
	 * Converts bin_window coordinates (see gtk_tree_view_get_bin_window())
	 * to widget relative coordinates.
	 * Since 2.12
	 * Params:
	 * bx = bin_window X coordinate
	 * by = bin_window Y coordinate
	 * wx = return location for widget X coordinate. [out]
	 * wy = return location for widget Y coordinate. [out]
	 */
	public void convertBinWindowToWidgetCoords(int bx, int by, out int wx, out int wy)
	{
		// void gtk_tree_view_convert_bin_window_to_widget_coords  (GtkTreeView *tree_view,  gint bx,  gint by,  gint *wx,  gint *wy);
		gtk_tree_view_convert_bin_window_to_widget_coords(gtkTreeView, bx, by, &wx, &wy);
	}
	
	/**
	 * Converts tree coordinates (coordinates in full scrollable area of the tree)
	 * to bin_window coordinates.
	 * Since 2.12
	 * Params:
	 * tx = tree X coordinate
	 * ty = tree Y coordinate
	 * bx = return location for X coordinate relative to bin_window. [out]
	 * by = return location for Y coordinate relative to bin_window. [out]
	 */
	public void convertTreeToBinWindowCoords(int tx, int ty, out int bx, out int by)
	{
		// void gtk_tree_view_convert_tree_to_bin_window_coords  (GtkTreeView *tree_view,  gint tx,  gint ty,  gint *bx,  gint *by);
		gtk_tree_view_convert_tree_to_bin_window_coords(gtkTreeView, tx, ty, &bx, &by);
	}
	
	/**
	 * Converts tree coordinates (coordinates in full scrollable area of the tree)
	 * to widget coordinates.
	 * Since 2.12
	 * Params:
	 * tx = X coordinate relative to the tree
	 * ty = Y coordinate relative to the tree
	 * wx = return location for widget X coordinate. [out]
	 * wy = return location for widget Y coordinate. [out]
	 */
	public void convertTreeToWidgetCoords(int tx, int ty, out int wx, out int wy)
	{
		// void gtk_tree_view_convert_tree_to_widget_coords  (GtkTreeView *tree_view,  gint tx,  gint ty,  gint *wx,  gint *wy);
		gtk_tree_view_convert_tree_to_widget_coords(gtkTreeView, tx, ty, &wx, &wy);
	}
	
	/**
	 * Converts widget coordinates to coordinates for the bin_window
	 * (see gtk_tree_view_get_bin_window()).
	 * Since 2.12
	 * Params:
	 * wx = X coordinate relative to the widget
	 * wy = Y coordinate relative to the widget
	 * bx = return location for bin_window X coordinate. [out]
	 * by = return location for bin_window Y coordinate. [out]
	 */
	public void convertWidgetToBinWindowCoords(int wx, int wy, out int bx, out int by)
	{
		// void gtk_tree_view_convert_widget_to_bin_window_coords  (GtkTreeView *tree_view,  gint wx,  gint wy,  gint *bx,  gint *by);
		gtk_tree_view_convert_widget_to_bin_window_coords(gtkTreeView, wx, wy, &bx, &by);
	}
	
	/**
	 * Converts widget coordinates to coordinates for the
	 * tree (the full scrollable area of the tree).
	 * Since 2.12
	 * Params:
	 * wx = X coordinate relative to the widget
	 * wy = Y coordinate relative to the widget
	 * tx = return location for tree X coordinate. [out]
	 * ty = return location for tree Y coordinate. [out]
	 */
	public void convertWidgetToTreeCoords(int wx, int wy, out int tx, out int ty)
	{
		// void gtk_tree_view_convert_widget_to_tree_coords  (GtkTreeView *tree_view,  gint wx,  gint wy,  gint *tx,  gint *ty);
		gtk_tree_view_convert_widget_to_tree_coords(gtkTreeView, wx, wy, &tx, &ty);
	}
	
	/**
	 * Turns tree_view into a drop destination for automatic DND. Calling
	 * this method sets "reorderable" to FALSE.
	 * Params:
	 * targets = the table of targets that
	 * the drag will support. [array length=n_targets]
	 * actions = the bitmask of possible actions for a drag from this
	 * widget
	 */
	public void enableModelDragDest(GtkTargetEntry[] targets, GdkDragAction actions)
	{
		// void gtk_tree_view_enable_model_drag_dest  (GtkTreeView *tree_view,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_tree_view_enable_model_drag_dest(gtkTreeView, targets.ptr, cast(int) targets.length, actions);
	}
	
	/**
	 * Turns tree_view into a drag source for automatic DND. Calling this
	 * method sets "reorderable" to FALSE.
	 * Params:
	 * startButtonMask = Mask of allowed buttons to start drag
	 * targets = the table of targets that the drag will support. [array length=n_targets]
	 * actions = the bitmask of possible actions for a drag from this
	 * widget
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, GtkTargetEntry[] targets, GdkDragAction actions)
	{
		// void gtk_tree_view_enable_model_drag_source  (GtkTreeView *tree_view,  GdkModifierType start_button_mask,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_tree_view_enable_model_drag_source(gtkTreeView, startButtonMask, targets.ptr, cast(int) targets.length, actions);
	}
	
	/**
	 * Undoes the effect of
	 * gtk_tree_view_enable_model_drag_source(). Calling this method sets
	 * "reorderable" to FALSE.
	 */
	public void unsetRowsDragSource()
	{
		// void gtk_tree_view_unset_rows_drag_source  (GtkTreeView *tree_view);
		gtk_tree_view_unset_rows_drag_source(gtkTreeView);
	}
	
	/**
	 * Undoes the effect of
	 * gtk_tree_view_enable_model_drag_dest(). Calling this method sets
	 * "reorderable" to FALSE.
	 */
	public void unsetRowsDragDest()
	{
		// void gtk_tree_view_unset_rows_drag_dest (GtkTreeView *tree_view);
		gtk_tree_view_unset_rows_drag_dest(gtkTreeView);
	}
	
	/**
	 * Sets the row that is highlighted for feedback.
	 * If path is NULL, an existing highlight is removed.
	 * Params:
	 * path = The path of the row to highlight, or NULL. [allow-none]
	 * pos = Specifies whether to drop before, after or into the row
	 */
	public void setDragDestRow(TreePath path, GtkTreeViewDropPosition pos)
	{
		// void gtk_tree_view_set_drag_dest_row (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewDropPosition pos);
		gtk_tree_view_set_drag_dest_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), pos);
	}
	
	/**
	 * Gets information about the row that is highlighted for feedback.
	 * Params:
	 * path = Return location for the path of the highlighted row, or NULL. [out][allow-none]
	 * pos = Return location for the drop position, or NULL. [out][allow-none]
	 */
	public void getDragDestRow(out TreePath path, out GtkTreeViewDropPosition pos)
	{
		// void gtk_tree_view_get_drag_dest_row (GtkTreeView *tree_view,  GtkTreePath **path,  GtkTreeViewDropPosition *pos);
		GtkTreePath* outpath = null;
		
		gtk_tree_view_get_drag_dest_row(gtkTreeView, &outpath, &pos);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
	}
	
	/**
	 * Determines the destination row for a given position. drag_x and
	 * drag_y are expected to be in widget coordinates. This function is only
	 * meaningful if tree_view is realized. Therefore this function will always
	 * return FALSE if tree_view is not realized or does not have a model.
	 * Params:
	 * dragX = the position to determine the destination row for
	 * dragY = the position to determine the destination row for
	 * path = Return location for the path of the highlighted row, or NULL. [out][allow-none]
	 * pos = Return location for the drop position, or NULL. [out][allow-none]
	 * Returns: whether there is a row at the given position, TRUE if this is indeed the case.
	 */
	public int getDestRowAtPos(int dragX, int dragY, out TreePath path, out GtkTreeViewDropPosition pos)
	{
		// gboolean gtk_tree_view_get_dest_row_at_pos (GtkTreeView *tree_view,  gint drag_x,  gint drag_y,  GtkTreePath **path,  GtkTreeViewDropPosition *pos);
		GtkTreePath* outpath = null;
		
		auto p = gtk_tree_view_get_dest_row_at_pos(gtkTreeView, dragX, dragY, &outpath, &pos);
		
		path = ObjectG.getDObject!(TreePath)(outpath);
		return p;
	}
	
	/**
	 * Creates a cairo_surface_t representation of the row at path.
	 * This image is used for a drag icon.
	 * Params:
	 * path = a GtkTreePath in tree_view
	 * Returns: a newly-allocated surface of the drag icon. [transfer full]
	 */
	public Surface createRowDragIcon(TreePath path)
	{
		// cairo_surface_t * gtk_tree_view_create_row_drag_icon (GtkTreeView *tree_view,  GtkTreePath *path);
		auto p = gtk_tree_view_create_row_drag_icon(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Surface)(cast(cairo_surface_t*) p);
	}
	
	/**
	 * If enable_search is set, then the user can type in text to search through
	 * the tree interactively (this is sometimes called "typeahead find").
	 * Note that even if this is FALSE, the user can still initiate a search
	 * using the "start-interactive-search" key binding.
	 * Params:
	 * enableSearch = TRUE, if the user can search interactively
	 */
	public void setEnableSearch(int enableSearch)
	{
		// void gtk_tree_view_set_enable_search (GtkTreeView *tree_view,  gboolean enable_search);
		gtk_tree_view_set_enable_search(gtkTreeView, enableSearch);
	}
	
	/**
	 * Returns whether or not the tree allows to start interactive searching
	 * by typing in text.
	 * Returns: whether or not to let the user search interactively
	 */
	public int getEnableSearch()
	{
		// gboolean gtk_tree_view_get_enable_search (GtkTreeView *tree_view);
		return gtk_tree_view_get_enable_search(gtkTreeView);
	}
	
	/**
	 * Gets the column searched on by the interactive search code.
	 * Returns: the column the interactive search code searches in.
	 */
	public int getSearchColumn()
	{
		// gint gtk_tree_view_get_search_column (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_column(gtkTreeView);
	}
	
	/**
	 * Sets column as the column where the interactive search code should
	 * search in for the current model.
	 * If the search column is set, users can use the "start-interactive-search"
	 * key binding to bring up search popup. The enable-search property controls
	 * whether simply typing text will also start an interactive search.
	 * Note that column refers to a column of the current model. The search
	 * column is reset to -1 when the model is changed.
	 * Params:
	 * column = the column of the model to search in, or -1 to disable searching
	 */
	public void setSearchColumn(int column)
	{
		// void gtk_tree_view_set_search_column (GtkTreeView *tree_view,  gint column);
		gtk_tree_view_set_search_column(gtkTreeView, column);
	}
	
	/**
	 * Returns the compare function currently in use.
	 * Returns: the currently used compare function for the search code.
	 */
	public GtkTreeViewSearchEqualFunc getSearchEqualFunc()
	{
		// GtkTreeViewSearchEqualFunc gtk_tree_view_get_search_equal_func  (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_equal_func(gtkTreeView);
	}
	
	/**
	 * Sets the compare function for the interactive search capabilities; note
	 * that somewhat like strcmp() returning 0 for equality
	 * GtkTreeViewSearchEqualFunc returns FALSE on matches.
	 * Params:
	 * searchEqualFunc = the compare function to use during the search
	 * searchUserData = user data to pass to search_equal_func, or NULL. [allow-none]
	 * searchDestroy = Destroy notifier for search_user_data, or NULL. [allow-none]
	 */
	public void setSearchEqualFunc(GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GDestroyNotify searchDestroy)
	{
		// void gtk_tree_view_set_search_equal_func (GtkTreeView *tree_view,  GtkTreeViewSearchEqualFunc search_equal_func,  gpointer search_user_data,  GDestroyNotify search_destroy);
		gtk_tree_view_set_search_equal_func(gtkTreeView, searchEqualFunc, searchUserData, searchDestroy);
	}
	
	/**
	 * Returns the GtkEntry which is currently in use as interactive search
	 * entry for tree_view. In case the built-in entry is being used, NULL
	 * will be returned.
	 * Since 2.10
	 * Returns: the entry currently in use as search entry. [transfer none]
	 */
	public Entry getSearchEntry()
	{
		// GtkEntry * gtk_tree_view_get_search_entry (GtkTreeView *tree_view);
		auto p = gtk_tree_view_get_search_entry(gtkTreeView);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Entry)(cast(GtkEntry*) p);
	}
	
	/**
	 * Sets the entry which the interactive search code will use for this
	 * tree_view. This is useful when you want to provide a search entry
	 * in our interface at all time at a fixed position. Passing NULL for
	 * entry will make the interactive search code use the built-in popup
	 * entry again.
	 * Since 2.10
	 * Params:
	 * entry = the entry the interactive search code of tree_view should use or NULL. [allow-none]
	 */
	public void setSearchEntry(Entry entry)
	{
		// void gtk_tree_view_set_search_entry (GtkTreeView *tree_view,  GtkEntry *entry);
		gtk_tree_view_set_search_entry(gtkTreeView, (entry is null) ? null : entry.getEntryStruct());
	}
	
	/**
	 * Returns the positioning function currently in use.
	 * Since 2.10
	 * Returns: the currently used function for positioning the search dialog.
	 */
	public GtkTreeViewSearchPositionFunc getSearchPositionFunc()
	{
		// GtkTreeViewSearchPositionFunc gtk_tree_view_get_search_position_func  (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_position_func(gtkTreeView);
	}
	
	/**
	 * Sets the function to use when positioning the search dialog.
	 * Since 2.10
	 * Params:
	 * func = the function to use to position the search dialog, or NULL
	 * to use the default search position function. [allow-none]
	 * data = user data to pass to func, or NULL. [allow-none]
	 * destroy = Destroy notifier for data, or NULL. [allow-none]
	 */
	public void setSearchPositionFunc(GtkTreeViewSearchPositionFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_tree_view_set_search_position_func  (GtkTreeView *tree_view,  GtkTreeViewSearchPositionFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_tree_view_set_search_position_func(gtkTreeView, func, data, destroy);
	}
	
	/**
	 * Returns whether fixed height mode is turned on for tree_view.
	 * Since 2.6
	 * Returns: TRUE if tree_view is in fixed height mode
	 */
	public int getFixedHeightMode()
	{
		// gboolean gtk_tree_view_get_fixed_height_mode (GtkTreeView *tree_view);
		return gtk_tree_view_get_fixed_height_mode(gtkTreeView);
	}
	
	/**
	 * Enables or disables the fixed height mode of tree_view.
	 * Fixed height mode speeds up GtkTreeView by assuming that all
	 * rows have the same height.
	 * Only enable this option if all rows are the same height and all
	 * columns are of type GTK_TREE_VIEW_COLUMN_FIXED.
	 * Since 2.6
	 * Params:
	 * enable = TRUE to enable fixed height mode
	 */
	public void setFixedHeightMode(int enable)
	{
		// void gtk_tree_view_set_fixed_height_mode (GtkTreeView *tree_view,  gboolean enable);
		gtk_tree_view_set_fixed_height_mode(gtkTreeView, enable);
	}
	
	/**
	 * Returns whether hover selection mode is turned on for tree_view.
	 * Since 2.6
	 * Returns: TRUE if tree_view is in hover selection mode
	 */
	public int getHoverSelection()
	{
		// gboolean gtk_tree_view_get_hover_selection (GtkTreeView *tree_view);
		return gtk_tree_view_get_hover_selection(gtkTreeView);
	}
	
	/**
	 * Enables or disables the hover selection mode of tree_view.
	 * Hover selection makes the selected row follow the pointer.
	 * Currently, this works only for the selection modes
	 * GTK_SELECTION_SINGLE and GTK_SELECTION_BROWSE.
	 * Since 2.6
	 * Params:
	 * hover = TRUE to enable hover selection mode
	 */
	public void setHoverSelection(int hover)
	{
		// void gtk_tree_view_set_hover_selection (GtkTreeView *tree_view,  gboolean hover);
		gtk_tree_view_set_hover_selection(gtkTreeView, hover);
	}
	
	/**
	 * Returns whether hover expansion mode is turned on for tree_view.
	 * Since 2.6
	 * Returns: TRUE if tree_view is in hover expansion mode
	 */
	public int getHoverExpand()
	{
		// gboolean gtk_tree_view_get_hover_expand (GtkTreeView *tree_view);
		return gtk_tree_view_get_hover_expand(gtkTreeView);
	}
	
	/**
	 * Enables or disables the hover expansion mode of tree_view.
	 * Hover expansion makes rows expand or collapse if the pointer
	 * moves over them.
	 * Since 2.6
	 * Params:
	 * expand = TRUE to enable hover selection mode
	 */
	public void setHoverExpand(int expand)
	{
		// void gtk_tree_view_set_hover_expand (GtkTreeView *tree_view,  gboolean expand);
		gtk_tree_view_set_hover_expand(gtkTreeView, expand);
	}
	
	/**
	 * Warning
	 * gtk_tree_view_set_destroy_count_func has been deprecated since version 3.4 and should not be used in newly-written code. Accessibility does not need the function anymore.
	 * This function should almost never be used. It is meant for private use by
	 * ATK for determining the number of visible children that are removed when the
	 * user collapses a row, or a row is deleted.
	 * Params:
	 * func = Function to be called when a view row is destroyed, or NULL. [allow-none]
	 * data = User data to be passed to func, or NULL. [allow-none]
	 * destroy = Destroy notifier for data, or NULL. [allow-none]
	 */
	public void setDestroyCountFunc(GtkTreeDestroyCountFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_tree_view_set_destroy_count_func  (GtkTreeView *tree_view,  GtkTreeDestroyCountFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_tree_view_set_destroy_count_func(gtkTreeView, func, data, destroy);
	}
	
	/**
	 * Returns the current row separator function.
	 * Since 2.6
	 * Returns: the current row separator function.
	 */
	public GtkTreeViewRowSeparatorFunc getRowSeparatorFunc()
	{
		// GtkTreeViewRowSeparatorFunc gtk_tree_view_get_row_separator_func  (GtkTreeView *tree_view);
		return gtk_tree_view_get_row_separator_func(gtkTreeView);
	}
	
	/**
	 * Sets the row separator function, which is used to determine
	 * whether a row should be drawn as a separator. If the row separator
	 * function is NULL, no separators are drawn. This is the default value.
	 * Since 2.6
	 * Params:
	 * func = a GtkTreeViewRowSeparatorFunc. [allow-none]
	 * data = user data to pass to func, or NULL. [allow-none]
	 * destroy = destroy notifier for data, or NULL. [allow-none]
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_tree_view_set_row_separator_func  (GtkTreeView *tree_view,  GtkTreeViewRowSeparatorFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_tree_view_set_row_separator_func(gtkTreeView, func, data, destroy);
	}
	
	/**
	 * Returns whether rubber banding is turned on for tree_view. If the
	 * selection mode is GTK_SELECTION_MULTIPLE, rubber banding will allow the
	 * user to select multiple rows by dragging the mouse.
	 * Since 2.10
	 * Returns: TRUE if rubber banding in tree_view is enabled.
	 */
	public int getRubberBanding()
	{
		// gboolean gtk_tree_view_get_rubber_banding (GtkTreeView *tree_view);
		return gtk_tree_view_get_rubber_banding(gtkTreeView);
	}
	
	/**
	 * Enables or disables rubber banding in tree_view. If the selection mode
	 * is GTK_SELECTION_MULTIPLE, rubber banding will allow the user to select
	 * multiple rows by dragging the mouse.
	 * Since 2.10
	 * Params:
	 * enable = TRUE to enable rubber banding
	 */
	public void setRubberBanding(int enable)
	{
		// void gtk_tree_view_set_rubber_banding (GtkTreeView *tree_view,  gboolean enable);
		gtk_tree_view_set_rubber_banding(gtkTreeView, enable);
	}
	
	/**
	 * Returns whether a rubber banding operation is currently being done
	 * in tree_view.
	 * Since 2.12
	 * Returns: TRUE if a rubber banding operation is currently being done in tree_view.
	 */
	public int isRubberBandingActive()
	{
		// gboolean gtk_tree_view_is_rubber_banding_active  (GtkTreeView *tree_view);
		return gtk_tree_view_is_rubber_banding_active(gtkTreeView);
	}
	
	/**
	 * Returns whether or not tree lines are drawn in tree_view.
	 * Since 2.10
	 * Returns: TRUE if tree lines are drawn in tree_view, FALSE otherwise.
	 */
	public int getEnableTreeLines()
	{
		// gboolean gtk_tree_view_get_enable_tree_lines (GtkTreeView *tree_view);
		return gtk_tree_view_get_enable_tree_lines(gtkTreeView);
	}
	
	/**
	 * Sets whether to draw lines interconnecting the expanders in tree_view.
	 * This does not have any visible effects for lists.
	 * Since 2.10
	 * Params:
	 * enabled = TRUE to enable tree line drawing, FALSE otherwise.
	 */
	public void setEnableTreeLines(int enabled)
	{
		// void gtk_tree_view_set_enable_tree_lines (GtkTreeView *tree_view,  gboolean enabled);
		gtk_tree_view_set_enable_tree_lines(gtkTreeView, enabled);
	}
	
	/**
	 * Returns which grid lines are enabled in tree_view.
	 * Since 2.10
	 * Returns: a GtkTreeViewGridLines value indicating which grid lines are enabled.
	 */
	public GtkTreeViewGridLines getGridLines()
	{
		// GtkTreeViewGridLines gtk_tree_view_get_grid_lines (GtkTreeView *tree_view);
		return gtk_tree_view_get_grid_lines(gtkTreeView);
	}
	
	/**
	 * Sets which grid lines to draw in tree_view.
	 * Since 2.10
	 * Params:
	 * gridLines = a GtkTreeViewGridLines value indicating which grid lines to
	 * enable.
	 */
	public void setGridLines(GtkTreeViewGridLines gridLines)
	{
		// void gtk_tree_view_set_grid_lines (GtkTreeView *tree_view,  GtkTreeViewGridLines grid_lines);
		gtk_tree_view_set_grid_lines(gtkTreeView, gridLines);
	}
	
	/**
	 * Sets the tip area of tooltip to be the area covered by the row at path.
	 * See also gtk_tree_view_set_tooltip_column() for a simpler alternative.
	 * See also gtk_tooltip_set_tip_area().
	 * Since 2.12
	 * Params:
	 * tooltip = a GtkTooltip
	 * path = a GtkTreePath
	 */
	public void setTooltipRow(Tooltip tooltip, TreePath path)
	{
		// void gtk_tree_view_set_tooltip_row (GtkTreeView *tree_view,  GtkTooltip *tooltip,  GtkTreePath *path);
		gtk_tree_view_set_tooltip_row(gtkTreeView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Sets the tip area of tooltip to the area path, column and cell have
	 * in common. For example if path is NULL and column is set, the tip
	 * area will be set to the full area covered by column. See also
	 * gtk_tooltip_set_tip_area().
	 * Note that if path is not specified and cell is set and part of a column
	 * containing the expander, the tooltip might not show and hide at the correct
	 * position. In such cases path must be set to the current node under the
	 * mouse cursor for this function to operate correctly.
	 * See also gtk_tree_view_set_tooltip_column() for a simpler alternative.
	 * Since 2.12
	 * Params:
	 * tooltip = a GtkTooltip
	 * path = a GtkTreePath or NULL. [allow-none]
	 * column = a GtkTreeViewColumn or NULL. [allow-none]
	 * cell = a GtkCellRenderer or NULL. [allow-none]
	 */
	public void setTooltipCell(Tooltip tooltip, TreePath path, TreeViewColumn column, CellRenderer cell)
	{
		// void gtk_tree_view_set_tooltip_cell (GtkTreeView *tree_view,  GtkTooltip *tooltip,  GtkTreePath *path,  GtkTreeViewColumn *column,  GtkCellRenderer *cell);
		gtk_tree_view_set_tooltip_cell(gtkTreeView, (tooltip is null) ? null : tooltip.getTooltipStruct(), (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}
	
	/**
	 * This function is supposed to be used in a "query-tooltip"
	 * signal handler for GtkTreeView. The x, y and keyboard_tip values
	 * which are received in the signal handler, should be passed to this
	 * function without modification.
	 * The return value indicates whether there is a tree view row at the given
	 * coordinates (TRUE) or not (FALSE) for mouse tooltips. For keyboard
	 * tooltips the row returned will be the cursor row. When TRUE, then any of
	 * model, path and iter which have been provided will be set to point to
	 * that row and the corresponding model. x and y will always be converted
	 * to be relative to tree_view's bin_window if keyboard_tooltip is FALSE.
	 * Since 2.12
	 * Params:
	 * x = the x coordinate (relative to widget coordinates). [inout]
	 * y = the y coordinate (relative to widget coordinates). [inout]
	 * keyboardTip = whether this is a keyboard tooltip or not
	 * model = a pointer to receive a
	 * GtkTreeModel or NULL. [out][allow-none][transfer none]
	 * path = a pointer to receive a GtkTreePath or NULL. [out][allow-none]
	 * iter = a pointer to receive a GtkTreeIter or NULL. [out][allow-none]
	 * Returns: whether or not the given tooltip context points to a row.
	 */
	public int getTooltipContext(ref int x, ref int y, int keyboardTip, out TreeModelIF model, out TreePath path, TreeIter iter)
	{
		// gboolean gtk_tree_view_get_tooltip_context (GtkTreeView *tree_view,  gint *x,  gint *y,  gboolean keyboard_tip,  GtkTreeModel **model,  GtkTreePath **path,  GtkTreeIter *iter);
		GtkTreeModel* outmodel = null;
		GtkTreePath* outpath = null;
		
		auto p = gtk_tree_view_get_tooltip_context(gtkTreeView, &x, &y, keyboardTip, &outmodel, &outpath, (iter is null) ? null : iter.getTreeIterStruct());
		
		model = ObjectG.getDObject!(TreeModel)(outmodel);
		path = ObjectG.getDObject!(TreePath)(outpath);
		return p;
	}
	
	/**
	 * Returns the column of tree_view's model which is being used for
	 * displaying tooltips on tree_view's rows.
	 * Since 2.12
	 * Returns: the index of the tooltip column that is currently being used, or -1 if this is disabled.
	 */
	public int getTooltipColumn()
	{
		// gint gtk_tree_view_get_tooltip_column (GtkTreeView *tree_view);
		return gtk_tree_view_get_tooltip_column(gtkTreeView);
	}
	
	/**
	 * If you only plan to have simple (text-only) tooltips on full rows, you
	 * can use this function to have GtkTreeView handle these automatically
	 * for you. column should be set to the column in tree_view's model
	 * containing the tooltip texts, or -1 to disable this feature.
	 * When enabled, "has-tooltip" will be set to TRUE and
	 * tree_view will connect a "query-tooltip" signal handler.
	 * Note that the signal handler sets the text with gtk_tooltip_set_markup(),
	 * so , <, etc have to be escaped in the text.
	 * Since 2.12
	 * Params:
	 * column = an integer, which is a valid column number for tree_view's model
	 */
	public void setTooltipColumn(int column)
	{
		// void gtk_tree_view_set_tooltip_column (GtkTreeView *tree_view,  gint column);
		gtk_tree_view_set_tooltip_column(gtkTreeView, column);
	}
}
