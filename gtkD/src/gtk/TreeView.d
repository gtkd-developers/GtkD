/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
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
 * prefixes:
 * 	- gtk_tree_view_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.TreeModel
 * 	- gtk.TreeSelection
 * 	- gtk.Adjustment
 * 	- gtk.TreeViewColumn
 * 	- gtk.CellRenderer
 * 	- glib.ListG
 * 	- gtk.TreePath
 * 	- gdk.Rectangle
 * 	- gdk.Window
 * 	- gdk.Pixmap
 * 	- gtk.TreeIter
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkPixmap* -> Pixmap
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkWindow* -> Window
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkTreePath* -> TreePath
 * 	- GtkTreeSelection* -> TreeSelection
 * 	- GtkTreeViewColumn* -> TreeViewColumn
 * module aliases:
 * local aliases:
 */

module gtk.TreeView;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.TreeModel;
private import gtk.TreeSelection;
private import gtk.Adjustment;
private import gtk.TreeViewColumn;
private import gtk.CellRenderer;
private import glib.ListG;
private import gtk.TreePath;
private import gdk.Rectangle;
private import gdk.Window;
private import gdk.Pixmap;
private import gtk.TreeIter;



/**
 * Description
 * Widget that displays any object that implements the GtkTreeModel interface.
 * Please refer to the tree widget conceptual overview
 * for an overview of all the objects and data types related to the tree widget and how
 * they work together.
 */
private import gtk.Container;
public class TreeView : Container
{
	
	/** the main Gtk struct */
	protected GtkTreeView* gtkTreeView;
	
	
	public GtkTreeView* getTreeViewStruct()
	{
		return gtkTreeView;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 * Expands the row of the iter.
	 * @param iter
	 * @param openAll
	 * @return
	 */
	int expandRow(TreeIter iter, TreeModel model, int openAll)
	{
		return expandRow(model.getPath(iter), openAll);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to widget coordinates. That
	 * is, x and y are relative to an events coordinates. x and y must come
	 * from an event on the tree_view only where event->window ==
	 * gtk_tree_view_get_bin (). It is primarily for things
	 * like popup menus. If path is non-NULL, then it will be filled with the
	 * GtkTreePath at that point. This path should be freed with gtk_tree_path_free().
	 * If column is non-NULL, then it will be filled with the column at that point.
	 * cell_x and cell_y return the coordinates relative to the cell background
	 * (i.e. the background_area passed to gtk_cell_renderer_render()). This
	 * function is only meaningful if tree_view is realized.
	 * tree_view:
	 *  A GtkTreeView.
	 * x:
	 *  The x position to be identified.
	 * y:
	 *  The y position to be identified.
	 * path:
	 *  A pointer to a GtkTreePath pointer to be filled in, or NULL
	 * column:
	 *  A pointer to a GtkTreeViewColumn pointer to be filled in, or NULL
	 * cell_x:
	 *  A pointer where the X coordinate relative to the cell can be placed, or NULL
	 * cell_y:
	 *  A pointer where the Y coordinate relative to the cell can be placed, or NULL
	 * Returns:
	 *  TRUE if a row exists at that coordinate.
	 */
	int getPathAtPos(gint x, gint y, inout TreePath path, inout TreeViewColumn column, out gint cellX, out gint cellY)
	{
		GtkTreePath* p = path.getTreePathStruct();
		GtkTreeViewColumn* c = column.getTreeViewColumnStruct();
		
		int result = gtk_tree_view_get_path_at_pos(gtkTreeView, x, y, &p, &c, &cellX, &cellY)
		== 0 ? false : true;
		
		path = new TreePath(p);
		column = new TreeViewColumn(c);
		
		return result;
	}
	
	
	
	/**
	 * gets the first selected iter or null if no rows are selected
	 */
	TreeIter getSelectedIter()
	{
		TreeIter iter = new TreeIter();
		TreeSelection selection = getSelection();
		TreeModel model = getModel();
		TreePath[] paths = selection.getSelectedRows(model);
		if ( paths.length > 0 )
		{
			model.getIter(iter,paths[0]);
		}
		return iter;
	}
	
	TreeIter[] getSelectedIters()
	{
		TreeIter[] iters;
		
		TreeIter iter = new TreeIter();
		TreeSelection selection = getSelection();
		TreeModel model = getModel();
		TreePath[] paths = selection.getSelectedRows(model);
		foreach ( TreePath p; selection.getSelectedRows(model) )
		{
			//iters.length = iters.length+1;
			//iters[iters.length-1] = model.getIter(iter,p);
			// iters ~= model.getIter(iter,p); >>> compile error can only concatenate arrays ???
			if ( model.getIter(iter,p) )
			{
				iters ~= iter;
				iter = new TreeIter();
			}
		}
		
		//printf("TreeView.getSelectedIters iters.lenght = %d\n", iters.length);
		return iters;
	}
	
	/**
	 * Inserts a column and sets it's attributes
	 * @param position
	 * @param title
	 * @param renderer
	 * @param editable
	 * @return number of columns including the new one
	 */
	gint insertEditableColumn(int position, char[] title, CellRenderer renderer, bit editable)
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
		Str.toStringz("text"),position,//v1.getV(),
		Str.toStringz("editable"),2,0);//v.getV(),0);
		return tot;
	}
	
	
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(TreeView)[] onColumnsChangedListeners;
	void addOnColumnsChanged(void delegate(TreeView) dlg)
	{
		if ( !("columns-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"columns-changed",
			cast(GCallback)&callBackColumnsChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["columns-changed"] = 1;
		}
		onColumnsChangedListeners ~= dlg;
	}
	extern(C) static void callBackColumnsChanged(GtkTreeView* treeViewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreeView) dlg ; treeView.onColumnsChangedListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	void delegate(TreeView)[] onCursorChangedListeners;
	void addOnCursorChanged(void delegate(TreeView) dlg)
	{
		if ( !("cursor-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"cursor-changed",
			cast(GCallback)&callBackCursorChanged,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["cursor-changed"] = 1;
		}
		onCursorChangedListeners ~= dlg;
	}
	extern(C) static void callBackCursorChanged(GtkTreeView* treeViewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreeView) dlg ; treeView.onCursorChangedListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(gboolean, gboolean, gboolean, TreeView)[] onExpandCollapseCursorRowListeners;
	void addOnExpandCollapseCursorRow(gboolean delegate(gboolean, gboolean, gboolean, TreeView) dlg)
	{
		if ( !("expand-collapse-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"expand-collapse-cursor-row",
			cast(GCallback)&callBackExpandCollapseCursorRow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["expand-collapse-cursor-row"] = 1;
		}
		onExpandCollapseCursorRowListeners ~= dlg;
	}
	extern(C) static void callBackExpandCollapseCursorRow(GtkTreeView* treeviewStruct, gboolean arg1, gboolean arg2, gboolean arg3, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, gboolean, gboolean, TreeView) dlg ; treeView.onExpandCollapseCursorRowListeners )
		{
			dlg(arg1, arg2, arg3, treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkMovementStep, gint, TreeView)[] onMoveCursorListeners;
	void addOnMoveCursor(gboolean delegate(GtkMovementStep, gint, TreeView) dlg)
	{
		if ( !("move-cursor" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-cursor",
			cast(GCallback)&callBackMoveCursor,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["move-cursor"] = 1;
		}
		onMoveCursorListeners ~= dlg;
	}
	extern(C) static void callBackMoveCursor(GtkTreeView* treeviewStruct, GtkMovementStep arg1, gint arg2, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkMovementStep, gint, TreeView) dlg ; treeView.onMoveCursorListeners )
		{
			dlg(arg1, arg2, treeView);
		}
		
		return consumed;
	}
	
	void delegate(TreePath, TreeViewColumn, TreeView)[] onRowActivatedListeners;
	void addOnRowActivated(void delegate(TreePath, TreeViewColumn, TreeView) dlg)
	{
		if ( !("row-activated" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-activated",
			cast(GCallback)&callBackRowActivated,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["row-activated"] = 1;
		}
		onRowActivatedListeners ~= dlg;
	}
	extern(C) static void callBackRowActivated(GtkTreeView* treeViewStruct, GtkTreePath* path, GtkTreeViewColumn* column, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(TreePath, TreeViewColumn, TreeView) dlg ; treeView.onRowActivatedListeners )
		{
			dlg(new TreePath(path), new TreeViewColumn(column), treeView);
		}
		
		return consumed;
	}
	
	void delegate(GtkTreeIter*, TreePath, TreeView)[] onRowCollapsedListeners;
	void addOnRowCollapsed(void delegate(GtkTreeIter*, TreePath, TreeView) dlg)
	{
		if ( !("row-collapsed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-collapsed",
			cast(GCallback)&callBackRowCollapsed,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["row-collapsed"] = 1;
		}
		onRowCollapsedListeners ~= dlg;
	}
	extern(C) static void callBackRowCollapsed(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkTreeIter*, TreePath, TreeView) dlg ; treeView.onRowCollapsedListeners )
		{
			dlg(iter, new TreePath(path), treeView);
		}
		
		return consumed;
	}
	
	void delegate(GtkTreeIter*, TreePath, TreeView)[] onRowExpandedListeners;
	void addOnRowExpanded(void delegate(GtkTreeIter*, TreePath, TreeView) dlg)
	{
		if ( !("row-expanded" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"row-expanded",
			cast(GCallback)&callBackRowExpanded,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["row-expanded"] = 1;
		}
		onRowExpandedListeners ~= dlg;
	}
	extern(C) static void callBackRowExpanded(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkTreeIter*, TreePath, TreeView) dlg ; treeView.onRowExpandedListeners )
		{
			dlg(iter, new TreePath(path), treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeView)[] onSelectAllListeners;
	void addOnSelectAll(gboolean delegate(TreeView) dlg)
	{
		if ( !("select-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-all",
			cast(GCallback)&callBackSelectAll,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["select-all"] = 1;
		}
		onSelectAllListeners ~= dlg;
	}
	extern(C) static void callBackSelectAll(GtkTreeView* treeviewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(TreeView) dlg ; treeView.onSelectAllListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeView)[] onSelectCursorParentListeners;
	void addOnSelectCursorParent(gboolean delegate(TreeView) dlg)
	{
		if ( !("select-cursor-parent" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-parent",
			cast(GCallback)&callBackSelectCursorParent,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["select-cursor-parent"] = 1;
		}
		onSelectCursorParentListeners ~= dlg;
	}
	extern(C) static void callBackSelectCursorParent(GtkTreeView* treeviewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(TreeView) dlg ; treeView.onSelectCursorParentListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(gboolean, TreeView)[] onSelectCursorRowListeners;
	void addOnSelectCursorRow(gboolean delegate(gboolean, TreeView) dlg)
	{
		if ( !("select-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"select-cursor-row",
			cast(GCallback)&callBackSelectCursorRow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["select-cursor-row"] = 1;
		}
		onSelectCursorRowListeners ~= dlg;
	}
	extern(C) static void callBackSelectCursorRow(GtkTreeView* treeviewStruct, gboolean arg1, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(gboolean, TreeView) dlg ; treeView.onSelectCursorRowListeners )
		{
			dlg(arg1, treeView);
		}
		
		return consumed;
	}
	
	void delegate(Adjustment, Adjustment, TreeView)[] onSetScrollAdjustmentsListeners;
	void addOnSetScrollAdjustments(void delegate(Adjustment, Adjustment, TreeView) dlg)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkTreeView* treeviewStruct, GtkAdjustment* arg1, GtkAdjustment* arg2, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( void delegate(Adjustment, Adjustment, TreeView) dlg ; treeView.onSetScrollAdjustmentsListeners )
		{
			dlg(new Adjustment(arg1), new Adjustment(arg2), treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeView)[] onStartInteractiveSearchListeners;
	void addOnStartInteractiveSearch(gboolean delegate(TreeView) dlg)
	{
		if ( !("start-interactive-search" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"start-interactive-search",
			cast(GCallback)&callBackStartInteractiveSearch,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["start-interactive-search"] = 1;
		}
		onStartInteractiveSearchListeners ~= dlg;
	}
	extern(C) static void callBackStartInteractiveSearch(GtkTreeView* treeviewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(TreeView) dlg ; treeView.onStartInteractiveSearchListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkTreeIter*, TreePath, TreeView)[] onTestCollapseRowListeners;
	void addOnTestCollapseRow(gboolean delegate(GtkTreeIter*, TreePath, TreeView) dlg)
	{
		if ( !("test-collapse-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"test-collapse-row",
			cast(GCallback)&callBackTestCollapseRow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["test-collapse-row"] = 1;
		}
		onTestCollapseRowListeners ~= dlg;
	}
	extern(C) static void callBackTestCollapseRow(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkTreeIter*, TreePath, TreeView) dlg ; treeView.onTestCollapseRowListeners )
		{
			dlg(iter, new TreePath(path), treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkTreeIter*, TreePath, TreeView)[] onTestExpandRowListeners;
	void addOnTestExpandRow(gboolean delegate(GtkTreeIter*, TreePath, TreeView) dlg)
	{
		if ( !("test-expand-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"test-expand-row",
			cast(GCallback)&callBackTestExpandRow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["test-expand-row"] = 1;
		}
		onTestExpandRowListeners ~= dlg;
	}
	extern(C) static void callBackTestExpandRow(GtkTreeView* treeViewStruct, GtkTreeIter* iter, GtkTreePath* path, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkTreeIter*, TreePath, TreeView) dlg ; treeView.onTestExpandRowListeners )
		{
			dlg(iter, new TreePath(path), treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeView)[] onToggleCursorRowListeners;
	void addOnToggleCursorRow(gboolean delegate(TreeView) dlg)
	{
		if ( !("toggle-cursor-row" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"toggle-cursor-row",
			cast(GCallback)&callBackToggleCursorRow,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["toggle-cursor-row"] = 1;
		}
		onToggleCursorRowListeners ~= dlg;
	}
	extern(C) static void callBackToggleCursorRow(GtkTreeView* treeviewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(TreeView) dlg ; treeView.onToggleCursorRowListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	gboolean delegate(TreeView)[] onUnselectAllListeners;
	void addOnUnselectAll(gboolean delegate(TreeView) dlg)
	{
		if ( !("unselect-all" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"unselect-all",
			cast(GCallback)&callBackUnselectAll,
			this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["unselect-all"] = 1;
		}
		onUnselectAllListeners ~= dlg;
	}
	extern(C) static void callBackUnselectAll(GtkTreeView* treeviewStruct, TreeView treeView)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(TreeView) dlg ; treeView.onUnselectAllListeners )
		{
			dlg(treeView);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	/**
	 * Creates a new GtkTreeView widget.
	 * Returns:
	 *  A newly created GtkTreeView widget.
	 */
	public this ()
	{
		// GtkWidget* gtk_tree_view_new (void);
		this(cast(GtkTreeView*)gtk_tree_view_new() );
	}
	
	/**
	 * Returns the amount, in pixels, of extra indentation for child levels
	 * in tree_view.
	 * tree_view:
	 *  a GtkTreeView.
	 * Returns:
	 *  the amount of extra indentation for child levels in
	 * tree_view. A return value of 0 means that this feature is disabled.
	 * Since 2.12
	 */
	public int getLevelIndentation()
	{
		// gint gtk_tree_view_get_level_indentation (GtkTreeView *tree_view);
		return gtk_tree_view_get_level_indentation(gtkTreeView);
	}
	
	/**
	 * Returns whether or not expanders are drawn in tree_view.
	 * tree_view:
	 *  a GtkTreeView.
	 * Returns:
	 *  TRUE if expanders are drawn in tree_view, FALSE
	 * otherwise.
	 * Since 2.12
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
	 * tree_view:
	 *  a GtkTreeView
	 * indentation:
	 *  the amount, in pixels, of extra indentation in tree_view.
	 * Since 2.12
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
	 * tree_view:
	 *  a GtkTreeView
	 * enabled:
	 *  TRUE to enable expander drawing, FALSE otherwise.
	 * Since 2.12
	 */
	public void setShowExpanders(int enabled)
	{
		// void gtk_tree_view_set_show_expanders (GtkTreeView *tree_view,  gboolean enabled);
		gtk_tree_view_set_show_expanders(gtkTreeView, enabled);
	}
	
	/**
	 * Creates a new GtkTreeView widget with the model initialized to model.
	 * model:
	 *  the model.
	 * Returns:
	 *  A newly created GtkTreeView widget.
	 */
	public this (TreeModel model)
	{
		// GtkWidget* gtk_tree_view_new_with_model (GtkTreeModel *model);
		this(cast(GtkTreeView*)gtk_tree_view_new_with_model((model is null) ? null : model.getTreeModelStruct()) );
	}
	
	/**
	 * Returns the model the GtkTreeView is based on. Returns NULL if the
	 * model is unset.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  A GtkTreeModel, or NULL if none is currently being used.
	 */
	public TreeModel getModel()
	{
		// GtkTreeModel* gtk_tree_view_get_model (GtkTreeView *tree_view);
		return new TreeModel( gtk_tree_view_get_model(gtkTreeView) );
	}
	
	/**
	 * Sets the model for a GtkTreeView. If the tree_view already has a model
	 * set, it will remove it before setting the new model. If model is NULL,
	 * then it will unset the old model.
	 * tree_view:
	 *  A GtkTreeNode.
	 * model:
	 *  The model.
	 */
	public void setModel(TreeModel model)
	{
		// void gtk_tree_view_set_model (GtkTreeView *tree_view,  GtkTreeModel *model);
		gtk_tree_view_set_model(gtkTreeView, (model is null) ? null : model.getTreeModelStruct());
	}
	
	/**
	 * Gets the GtkTreeSelection associated with tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 * Returns:
	 *  A GtkTreeSelection object.
	 */
	public TreeSelection getSelection()
	{
		// GtkTreeSelection* gtk_tree_view_get_selection (GtkTreeView *tree_view);
		return new TreeSelection( gtk_tree_view_get_selection(gtkTreeView) );
	}
	
	/**
	 * Gets the GtkAdjustment currently being used for the horizontal aspect.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  A GtkAdjustment object, or NULL if none is currently being
	 * used.
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment* gtk_tree_view_get_hadjustment (GtkTreeView *tree_view);
		return new Adjustment( gtk_tree_view_get_hadjustment(gtkTreeView) );
	}
	
	/**
	 * Sets the GtkAdjustment for the current horizontal aspect.
	 * tree_view:
	 *  A GtkTreeView
	 * adjustment:
	 *  The GtkAdjustment to set, or NULL
	 */
	public void setHadjustment(Adjustment adjustment)
	{
		// void gtk_tree_view_set_hadjustment (GtkTreeView *tree_view,  GtkAdjustment *adjustment);
		gtk_tree_view_set_hadjustment(gtkTreeView, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Gets the GtkAdjustment currently being used for the vertical aspect.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  A GtkAdjustment object, or NULL if none is currently being
	 * used.
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment* gtk_tree_view_get_vadjustment (GtkTreeView *tree_view);
		return new Adjustment( gtk_tree_view_get_vadjustment(gtkTreeView) );
	}
	
	/**
	 * Sets the GtkAdjustment for the current vertical aspect.
	 * tree_view:
	 *  A GtkTreeView
	 * adjustment:
	 *  The GtkAdjustment to set, or NULL
	 */
	public void setVadjustment(Adjustment adjustment)
	{
		// void gtk_tree_view_set_vadjustment (GtkTreeView *tree_view,  GtkAdjustment *adjustment);
		gtk_tree_view_set_vadjustment(gtkTreeView, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Returns TRUE if the headers on the tree_view are visible.
	 * tree_view:
	 *  A GtkTreeView.
	 * Returns:
	 *  Whether the headers are visible or not.
	 */
	public int getHeadersVisible()
	{
		// gboolean gtk_tree_view_get_headers_visible (GtkTreeView *tree_view);
		return gtk_tree_view_get_headers_visible(gtkTreeView);
	}
	
	/**
	 * Sets the visibility state of the headers.
	 * tree_view:
	 *  A GtkTreeView.
	 * headers_visible:
	 *  TRUE if the headers are visible
	 */
	public void setHeadersVisible(int headersVisible)
	{
		// void gtk_tree_view_set_headers_visible (GtkTreeView *tree_view,  gboolean headers_visible);
		gtk_tree_view_set_headers_visible(gtkTreeView, headersVisible);
	}
	
	/**
	 * Resizes all columns to their optimal width. Only works after the
	 * treeview has been realized.
	 * tree_view:
	 *  A GtkTreeView.
	 */
	public void columnsAutosize()
	{
		// void gtk_tree_view_columns_autosize (GtkTreeView *tree_view);
		gtk_tree_view_columns_autosize(gtkTreeView);
	}
	
	/**
	 * Returns whether all header columns are clickable.
	 * tree_view:
	 *  A GtkTreeView.
	 * Returns:
	 *  TRUE if all header columns are clickable, otherwise FALSE
	 * Since 2.10
	 */
	public int getHeadersClickable()
	{
		// gboolean gtk_tree_view_get_headers_clickable (GtkTreeView *tree_view);
		return gtk_tree_view_get_headers_clickable(gtkTreeView);
	}
	
	/**
	 * Allow the column title buttons to be clicked.
	 * tree_view:
	 *  A GtkTreeView.
	 * setting:
	 *  TRUE if the columns are clickable.
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
	 * tree_view:
	 *  a GtkTreeView
	 * setting:
	 *  TRUE if the tree requires reading across rows
	 */
	public void setRulesHint(int setting)
	{
		// void gtk_tree_view_set_rules_hint (GtkTreeView *tree_view,  gboolean setting);
		gtk_tree_view_set_rules_hint(gtkTreeView, setting);
	}
	
	/**
	 * Gets the setting set by gtk_tree_view_set_rules_hint().
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if rules are useful for the user of this tree
	 */
	public int getRulesHint()
	{
		// gboolean gtk_tree_view_get_rules_hint (GtkTreeView *tree_view);
		return gtk_tree_view_get_rules_hint(gtkTreeView);
	}
	
	/**
	 * Appends column to the list of columns. If tree_view has "fixed_height"
	 * mode enabled, then column must have its "sizing" property set to be
	 * GTK_TREE_VIEW_COLUMN_FIXED.
	 * tree_view:
	 *  A GtkTreeView.
	 * column:
	 *  The GtkTreeViewColumn to add.
	 * Returns:
	 *  The number of columns in tree_view after appending.
	 */
	public int appendColumn(TreeViewColumn column)
	{
		// gint gtk_tree_view_append_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column);
		return gtk_tree_view_append_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Removes column from tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 * column:
	 *  The GtkTreeViewColumn to remove.
	 * Returns:
	 *  The number of columns in tree_view after removing.
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
	 * tree_view:
	 *  A GtkTreeView.
	 * column:
	 *  The GtkTreeViewColumn to be inserted.
	 * position:
	 *  The position to insert column in.
	 * Returns:
	 *  The number of columns in tree_view after insertion.
	 */
	public int insertColumn(TreeViewColumn column, int position)
	{
		// gint gtk_tree_view_insert_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column,  gint position);
		return gtk_tree_view_insert_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct(), position);
	}
	
	/**
	 * Creates a new GtkTreeViewColumn and inserts it into the tree_view at
	 * position. If position is -1, then the newly created column is inserted at
	 * the end. The column is initialized with the attributes given. If tree_view
	 * has "fixed_height" mode enabled, then the new column will have its sizing
	 * property set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 * tree_view:
	 *  A GtkTreeView
	 * position:
	 *  The position to insert the new column in.
	 * title:
	 *  The title to set the header to.
	 * cell:
	 *  The GtkCellRenderer.
	 * ...:
	 *  A NULL-terminated list of attributes.
	 * Returns:
	 *  The number of columns in tree_view after insertion.
	 */
	public int insertColumnWithAttributes(int position, char[] title, CellRenderer cell, ... )
	{
		// gint gtk_tree_view_insert_column_with_attributes  (GtkTreeView *tree_view,  gint position,  const gchar *title,  GtkCellRenderer *cell,  ...);
		return gtk_tree_view_insert_column_with_attributes(gtkTreeView, position, Str.toStringz(title), (cell is null) ? null : cell.getCellRendererStruct());
	}
	
	/**
	 * Convenience function that inserts a new column into the GtkTreeView
	 * with the given cell renderer and a GtkCellDataFunc to set cell renderer
	 * attributes (normally using data from the model). See also
	 * gtk_tree_view_column_set_cell_data_func(), gtk_tree_view_column_pack_start().
	 * If tree_view has "fixed_height" mode enabled, then the new column will have its
	 * "sizing" property set to be GTK_TREE_VIEW_COLUMN_FIXED.
	 * tree_view:
	 *  a GtkTreeView
	 * position:
	 *  Position to insert, -1 for append
	 * title:
	 *  column title
	 * cell:
	 *  cell renderer for column
	 * func:
	 *  function to set attributes of cell renderer
	 * data:
	 *  data for func
	 * dnotify:
	 *  destroy notifier for data
	 * Returns:
	 *  number of columns in the tree view post-insert
	 */
	public int insertColumnWithDataFunc(int position, char[] title, CellRenderer cell, GtkTreeCellDataFunc func, void* data, GDestroyNotify dnotify)
	{
		// gint gtk_tree_view_insert_column_with_data_func  (GtkTreeView *tree_view,  gint position,  const gchar *title,  GtkCellRenderer *cell,  GtkTreeCellDataFunc func,  gpointer data,  GDestroyNotify dnotify);
		return gtk_tree_view_insert_column_with_data_func(gtkTreeView, position, Str.toStringz(title), (cell is null) ? null : cell.getCellRendererStruct(), func, data, dnotify);
	}
	
	/**
	 * Gets the GtkTreeViewColumn at the given position in the tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 * n:
	 *  The position of the column, counting from 0.
	 * Returns:
	 *  The GtkTreeViewColumn, or NULL if the position is outside the
	 * range of columns.
	 */
	public TreeViewColumn getColumn(int n)
	{
		// GtkTreeViewColumn* gtk_tree_view_get_column (GtkTreeView *tree_view,  gint n);
		return new TreeViewColumn( gtk_tree_view_get_column(gtkTreeView, n) );
	}
	
	/**
	 * Returns a GList of all the GtkTreeViewColumn s currently in tree_view.
	 * The returned list must be freed with g_list_free().
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  A list of GtkTreeViewColumn s
	 */
	public ListG getColumns()
	{
		// GList* gtk_tree_view_get_columns (GtkTreeView *tree_view);
		return new ListG( gtk_tree_view_get_columns(gtkTreeView) );
	}
	
	/**
	 * Moves column to be after to base_column. If base_column is NULL, then
	 * column is placed in the first position.
	 * tree_view:
	 *  A GtkTreeView
	 * column:
	 *  The GtkTreeViewColumn to be moved.
	 * base_column:
	 *  The GtkTreeViewColumn to be moved relative to, or NULL.
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
	 * tree_view:
	 *  A GtkTreeView
	 * column:
	 *  NULL, or the column to draw the expander arrow at.
	 */
	public void setExpanderColumn(TreeViewColumn column)
	{
		// void gtk_tree_view_set_expander_column (GtkTreeView *tree_view,  GtkTreeViewColumn *column);
		gtk_tree_view_set_expander_column(gtkTreeView, (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Returns the column that is the current expander column. This
	 * column has the expander arrow drawn next to it.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  The expander column.
	 */
	public TreeViewColumn getExpanderColumn()
	{
		// GtkTreeViewColumn* gtk_tree_view_get_expander_column (GtkTreeView *tree_view);
		return new TreeViewColumn( gtk_tree_view_get_expander_column(gtkTreeView) );
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
	 * tree_view:
	 *  A GtkTreeView.
	 * func:
	 *  A function to determine which columns are reorderable, or NULL.
	 * user_data:
	 *  User data to be passed to func, or NULL
	 * destroy:
	 *  Destroy notifier for user_data, or NULL
	 */
	public void setColumnDragFunction(GtkTreeViewColumnDropFunc func, void* userData, GtkDestroyNotify destroy)
	{
		// void gtk_tree_view_set_column_drag_function  (GtkTreeView *tree_view,  GtkTreeViewColumnDropFunc func,  gpointer user_data,  GtkDestroyNotify destroy);
		gtk_tree_view_set_column_drag_function(gtkTreeView, func, userData, destroy);
	}
	
	/**
	 * Scrolls the tree view such that the top-left corner of the visible
	 * area is tree_x, tree_y, where tree_x and tree_y are specified
	 * in tree window coordinates. The tree_view must be realized before
	 * this function is called. If it isn't, you probably want to be
	 * using gtk_tree_view_scroll_to_cell().
	 * If either tree_x or tree_y are -1, then that direction isn't scrolled.
	 * tree_view:
	 *  a GtkTreeView
	 * tree_x:
	 *  X coordinate of new top-left pixel of visible area, or -1
	 * tree_y:
	 *  Y coordinate of new top-left pixel of visible area, or -1
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
	 * tree_view:
	 *  A GtkTreeView.
	 * path:
	 *  The path of the row to move to, or NULL.
	 * column:
	 *  The GtkTreeViewColumn to move horizontally to, or NULL.
	 * use_align:
	 *  whether to use alignment arguments, or FALSE.
	 * row_align:
	 *  The vertical alignment of the row specified by path.
	 * col_align:
	 *  The horizontal alignment of the column specified by column.
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
	 * tree_view:
	 *  A GtkTreeView
	 * path:
	 *  A GtkTreePath
	 * focus_column:
	 *  A GtkTreeViewColumn, or NULL
	 * start_editing:
	 *  TRUE if the specified cell should start being edited.
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
	 * tree_view:
	 *  A GtkTreeView
	 * path:
	 *  A GtkTreePath
	 * focus_column:
	 *  A GtkTreeViewColumn, or NULL
	 * focus_cell:
	 *  A GtkCellRenderer, or NULL
	 * start_editing:
	 *  TRUE if the specified cell should start being edited.
	 * Since 2.2
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
	 * tree_view:
	 *  A GtkTreeView
	 * path:
	 *  A pointer to be filled with the current cursor path, or NULL
	 * focus_column:
	 *  A pointer to be filled with the current focus column, or NULL
	 */
	public void getCursor(GtkTreePath** path, GtkTreeViewColumn** focusColumn)
	{
		// void gtk_tree_view_get_cursor (GtkTreeView *tree_view,  GtkTreePath **path,  GtkTreeViewColumn **focus_column);
		gtk_tree_view_get_cursor(gtkTreeView, path, focusColumn);
	}
	
	/**
	 * Activates the cell determined by path and column.
	 * tree_view:
	 *  A GtkTreeView
	 * path:
	 *  The GtkTreePath to be activated.
	 * column:
	 *  The GtkTreeViewColumn to be activated.
	 */
	public void rowActivated(TreePath path, TreeViewColumn column)
	{
		// void gtk_tree_view_row_activated (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column);
		gtk_tree_view_row_activated(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct());
	}
	
	/**
	 * Recursively expands all nodes in the tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 */
	public void expandAll()
	{
		// void gtk_tree_view_expand_all (GtkTreeView *tree_view);
		gtk_tree_view_expand_all(gtkTreeView);
	}
	
	/**
	 * Recursively collapses all visible, expanded nodes in tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 */
	public void collapseAll()
	{
		// void gtk_tree_view_collapse_all (GtkTreeView *tree_view);
		gtk_tree_view_collapse_all(gtkTreeView);
	}
	
	/**
	 * Expands the row at path. This will also expand all parent rows of
	 * path as necessary.
	 * tree_view:
	 *  A GtkTreeView.
	 * path:
	 *  path to a row.
	 * Since 2.2
	 */
	public void expandToPath(TreePath path)
	{
		// void gtk_tree_view_expand_to_path (GtkTreeView *tree_view,  GtkTreePath *path);
		gtk_tree_view_expand_to_path(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Opens the row so its children are visible.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  path to a row
	 * open_all:
	 *  whether to recursively expand, or just expand immediate children
	 * Returns:
	 *  TRUE if the row existed and had children
	 */
	public int expandRow(TreePath path, int openAll)
	{
		// gboolean gtk_tree_view_expand_row (GtkTreeView *tree_view,  GtkTreePath *path,  gboolean open_all);
		return gtk_tree_view_expand_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), openAll);
	}
	
	/**
	 * Collapses a row (hides its child rows, if they exist).
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  path to a row in the tree_view
	 * Returns:
	 *  TRUE if the row was collapsed.
	 */
	public int collapseRow(TreePath path)
	{
		// gboolean gtk_tree_view_collapse_row (GtkTreeView *tree_view,  GtkTreePath *path);
		return gtk_tree_view_collapse_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * Calls func on all expanded rows.
	 * tree_view:
	 *  A GtkTreeView
	 * func:
	 *  A function to be called
	 * data:
	 *  User data to be passed to the function.
	 */
	public void mapExpandedRows(GtkTreeViewMappingFunc func, void* data)
	{
		// void gtk_tree_view_map_expanded_rows (GtkTreeView *tree_view,  GtkTreeViewMappingFunc func,  gpointer data);
		gtk_tree_view_map_expanded_rows(gtkTreeView, func, data);
	}
	
	/**
	 * Returns TRUE if the node pointed to by path is expanded in tree_view.
	 * tree_view:
	 *  A GtkTreeView.
	 * path:
	 *  A GtkTreePath to test expansion state.
	 * Returns:
	 *  TRUE if path is expanded.
	 */
	public int rowExpanded(TreePath path)
	{
		// gboolean gtk_tree_view_row_expanded (GtkTreeView *tree_view,  GtkTreePath *path);
		return gtk_tree_view_row_expanded(gtkTreeView, (path is null) ? null : path.getTreePathStruct());
	}
	
	/**
	 * This function is a convenience function to allow you to reorder models that
	 * support the GtkDragSourceIface and the GtkDragDestIface. Both
	 * GtkTreeStore and GtkListStore support these. If reorderable is TRUE, then
	 * the user can reorder the model by dragging and dropping rows. The
	 * developer can listen to these changes by connecting to the model's
	 * row_inserted and row_deleted signals.
	 * This function does not give you any degree of control over the order -- any
	 * reordering is allowed. If more control is needed, you should probably
	 * handle drag and drop manually.
	 * tree_view:
	 *  A GtkTreeView.
	 * reorderable:
	 *  TRUE, if the tree can be reordered.
	 */
	public void setReorderable(int reorderable)
	{
		// void gtk_tree_view_set_reorderable (GtkTreeView *tree_view,  gboolean reorderable);
		gtk_tree_view_set_reorderable(gtkTreeView, reorderable);
	}
	
	/**
	 * Retrieves whether the user can reorder the tree via drag-and-drop. See
	 * gtk_tree_view_set_reorderable().
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if the tree can be reordered.
	 */
	public int getReorderable()
	{
		// gboolean gtk_tree_view_get_reorderable (GtkTreeView *tree_view);
		return gtk_tree_view_get_reorderable(gtkTreeView);
	}
	
	/**
	 * Finds the path at the point (x, y), relative to widget coordinates. That
	 * is, x and y are relative to an events coordinates. x and y must come
	 * from an event on the tree_view only where event->window ==
	 * gtk_tree_view_get_bin (). It is primarily for things
	 * like popup menus. If path is non-NULL, then it will be filled with the
	 * GtkTreePath at that point. This path should be freed with gtk_tree_path_free().
	 * If column is non-NULL, then it will be filled with the column at that point.
	 * cell_x and cell_y return the coordinates relative to the cell background
	 * (i.e. the background_area passed to gtk_cell_renderer_render()). This
	 * function is only meaningful if tree_view is realized.
	 * tree_view:
	 *  A GtkTreeView.
	 * x:
	 *  The x position to be identified.
	 * y:
	 *  The y position to be identified.
	 * path:
	 *  A pointer to a GtkTreePath pointer to be filled in, or NULL
	 * column:
	 *  A pointer to a GtkTreeViewColumn pointer to be filled in, or NULL
	 * cell_x:
	 *  A pointer where the X coordinate relative to the cell can be placed, or NULL
	 * cell_y:
	 *  A pointer where the Y coordinate relative to the cell can be placed, or NULL
	 * Returns:
	 *  TRUE if a row exists at that coordinate.
	 */
	public int getPathAtPos(int x, int y, GtkTreePath** path, GtkTreeViewColumn** column, int* cellX, int* cellY)
	{
		// gboolean gtk_tree_view_get_path_at_pos (GtkTreeView *tree_view,  gint x,  gint y,  GtkTreePath **path,  GtkTreeViewColumn **column,  gint *cell_x,  gint *cell_y);
		return gtk_tree_view_get_path_at_pos(gtkTreeView, x, y, path, column, cellX, cellY);
	}
	
	/**
	 * Fills the bounding rectangle in tree window coordinates for the cell at the
	 * row specified by path and the column specified by column. If path is
	 * NULL, or points to a path not currently displayed, the y and height fields
	 * of the rectangle will be filled with 0. If column is NULL, the x and width
	 * fields will be filled with 0. The sum of all cell rects does not cover the
	 * entire tree; there are extra pixels in between rows, for example. The
	 * returned rectangle is equivalent to the cell_area passed to
	 * gtk_cell_renderer_render(). This function is only valid if tree_view is
	 * realized.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  a GtkTreePath for the row, or NULL to get only horizontal coordinates
	 * column:
	 *  a GtkTreeViewColumn for the column, or NULL to get only vertical coordinates
	 * rect:
	 *  rectangle to fill with cell rect
	 */
	public void getCellArea(TreePath path, TreeViewColumn column, Rectangle rect)
	{
		// void gtk_tree_view_get_cell_area (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column,  GdkRectangle *rect);
		gtk_tree_view_get_cell_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), (rect is null) ? null : rect.getRectangleStruct());
	}
	
	/**
	 * Fills the bounding rectangle in tree window coordinates for the cell at the
	 * row specified by path and the column specified by column. If path is
	 * NULL, or points to a node not found in the tree, the y and height fields of
	 * the rectangle will be filled with 0. If column is NULL, the x and width
	 * fields will be filled with 0. The returned rectangle is equivalent to the
	 * background_area passed to gtk_cell_renderer_render(). These background
	 * areas tile to cover the entire tree window (except for the area used for
	 * header buttons). Contrast with the cell_area, returned by
	 * gtk_tree_view_get_cell_area(), which returns only the cell itself, excluding
	 * surrounding borders and the tree expander area.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  a GtkTreePath for the row, or NULL to get only horizontal coordinates
	 * column:
	 *  a GtkTreeViewColumn for the column, or NULL to get only vertical coordiantes
	 * rect:
	 *  rectangle to fill with cell background rect
	 */
	public void getBackgroundArea(TreePath path, TreeViewColumn column, Rectangle rect)
	{
		// void gtk_tree_view_get_background_area (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewColumn *column,  GdkRectangle *rect);
		gtk_tree_view_get_background_area(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), (column is null) ? null : column.getTreeViewColumnStruct(), (rect is null) ? null : rect.getRectangleStruct());
	}
	
	/**
	 * Fills visible_rect with the currently-visible region of the
	 * buffer, in tree coordinates. Convert to widget coordinates with
	 * gtk_tree_view_tree_to_widget_coords(). Tree coordinates start at
	 * 0,0 for row 0 of the tree, and cover the entire scrollable area of
	 * the tree.
	 * tree_view:
	 *  a GtkTreeView
	 * visible_rect:
	 *  rectangle to fill
	 */
	public void getVisibleRect(Rectangle visibleRect)
	{
		// void gtk_tree_view_get_visible_rect (GtkTreeView *tree_view,  GdkRectangle *visible_rect);
		gtk_tree_view_get_visible_rect(gtkTreeView, (visibleRect is null) ? null : visibleRect.getRectangleStruct());
	}
	
	/**
	 * Sets start_path and end_path to be the first and last visible path.
	 * Note that there may be invisible paths in between.
	 * The paths should be freed with gtk_tree_path_free() after use.
	 * tree_view:
	 *  A GtkTreeView
	 * start_path:
	 *  Return location for start of region, or NULL.
	 * end_path:
	 *  Return location for end of region, or NULL.
	 * Returns:
	 *  TRUE, if valid paths were placed in start_path and end_path.
	 * Since 2.8
	 */
	public int getVisibleRange(GtkTreePath** startPath, GtkTreePath** endPath)
	{
		// gboolean gtk_tree_view_get_visible_range (GtkTreeView *tree_view,  GtkTreePath **start_path,  GtkTreePath **end_path);
		return gtk_tree_view_get_visible_range(gtkTreeView, startPath, endPath);
	}
	
	/**
	 * Returns the window that tree_view renders to. This is used primarily to
	 * compare to event->window to confirm that the event on
	 * tree_view is on the right window.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  A GdkWindow, or NULL when tree_view hasn't been realized yet
	 */
	public Window getBinWindow()
	{
		// GdkWindow* gtk_tree_view_get_bin_window (GtkTreeView *tree_view);
		return new Window( gtk_tree_view_get_bin_window(gtkTreeView) );
	}
	
	/**
	 * Converts widget coordinates to coordinates for the
	 * tree window (the full scrollable area of the tree).
	 * tree_view:
	 *  a GtkTreeView
	 * wx:
	 *  widget X coordinate
	 * wy:
	 *  widget Y coordinate
	 * tx:
	 *  return location for tree X coordinate
	 * ty:
	 *  return location for tree Y coordinate
	 */
	public void widgetToTreeCoords(int wx, int wy, int* tx, int* ty)
	{
		// void gtk_tree_view_widget_to_tree_coords (GtkTreeView *tree_view,  gint wx,  gint wy,  gint *tx,  gint *ty);
		gtk_tree_view_widget_to_tree_coords(gtkTreeView, wx, wy, tx, ty);
	}
	
	/**
	 * Converts tree coordinates (coordinates in full scrollable area of the tree)
	 * to widget coordinates.
	 * tree_view:
	 *  a GtkTreeView
	 * tx:
	 *  tree X coordinate
	 * ty:
	 *  tree Y coordinate
	 * wx:
	 *  return location for widget X coordinate
	 * wy:
	 *  return location for widget Y coordinate
	 */
	public void treeToWidgetCoords(int tx, int ty, int* wx, int* wy)
	{
		// void gtk_tree_view_tree_to_widget_coords (GtkTreeView *tree_view,  gint tx,  gint ty,  gint *wx,  gint *wy);
		gtk_tree_view_tree_to_widget_coords(gtkTreeView, tx, ty, wx, wy);
	}
	
	/**
	 * Turns tree_view into a drop destination for automatic DND.
	 * tree_view:
	 *  a GtkTreeView
	 * targets:
	 *  the table of targets that the drag will support
	 * n_targets:
	 *  the number of items in targets
	 * actions:
	 *  the bitmask of possible actions for a drag from this
	 *  widget
	 */
	public void enableModelDragDest(GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_tree_view_enable_model_drag_dest  (GtkTreeView *tree_view,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_tree_view_enable_model_drag_dest(gtkTreeView, targets, nTargets, actions);
	}
	
	/**
	 * Turns tree_view into a drag source for automatic DND.
	 * tree_view:
	 *  a GtkTreeView
	 * start_button_mask:
	 *  Mask of allowed buttons to start drag
	 * targets:
	 *  the table of targets that the drag will support
	 * n_targets:
	 *  the number of items in targets
	 * actions:
	 *  the bitmask of possible actions for a drag from this
	 *  widget
	 */
	public void enableModelDragSource(GdkModifierType startButtonMask, GtkTargetEntry* targets, int nTargets, GdkDragAction actions)
	{
		// void gtk_tree_view_enable_model_drag_source  (GtkTreeView *tree_view,  GdkModifierType start_button_mask,  const GtkTargetEntry *targets,  gint n_targets,  GdkDragAction actions);
		gtk_tree_view_enable_model_drag_source(gtkTreeView, startButtonMask, targets, nTargets, actions);
	}
	
	/**
	 * Undoes the effect of gtk_tree_view_enable_model_drag_source().
	 * tree_view:
	 *  a GtkTreeView
	 */
	public void unsetRowsDragSource()
	{
		// void gtk_tree_view_unset_rows_drag_source  (GtkTreeView *tree_view);
		gtk_tree_view_unset_rows_drag_source(gtkTreeView);
	}
	
	/**
	 * Undoes the effect of gtk_tree_view_enable_model_drag_dest().
	 * tree_view:
	 *  a GtkTreeView
	 */
	public void unsetRowsDragDest()
	{
		// void gtk_tree_view_unset_rows_drag_dest (GtkTreeView *tree_view);
		gtk_tree_view_unset_rows_drag_dest(gtkTreeView);
	}
	
	/**
	 * Sets the row that is highlighted for feedback.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  The path of the row to highlight, or NULL.
	 * pos:
	 *  Specifies whether to drop before, after or into the row
	 */
	public void setDragDestRow(TreePath path, GtkTreeViewDropPosition pos)
	{
		// void gtk_tree_view_set_drag_dest_row (GtkTreeView *tree_view,  GtkTreePath *path,  GtkTreeViewDropPosition pos);
		gtk_tree_view_set_drag_dest_row(gtkTreeView, (path is null) ? null : path.getTreePathStruct(), pos);
	}
	
	/**
	 * Gets information about the row that is highlighted for feedback.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  Return location for the path of the highlighted row, or NULL.
	 * pos:
	 *  Return location for the drop position, or NULL
	 */
	public void getDragDestRow(GtkTreePath** path, GtkTreeViewDropPosition* pos)
	{
		// void gtk_tree_view_get_drag_dest_row (GtkTreeView *tree_view,  GtkTreePath **path,  GtkTreeViewDropPosition *pos);
		gtk_tree_view_get_drag_dest_row(gtkTreeView, path, pos);
	}
	
	/**
	 * Determines the destination row for a given position.
	 * tree_view:
	 *  a GtkTreeView
	 * drag_x:
	 *  the position to determine the destination row for
	 * drag_y:
	 *  the position to determine the destination row for
	 * path:
	 *  Return location for the path of the highlighted row, or NULL.
	 * pos:
	 *  Return location for the drop position, or NULL
	 * Returns:
	 *  whether there is a row at the given position.
	 */
	public int getDestRowAtPos(int dragX, int dragY, GtkTreePath** path, GtkTreeViewDropPosition* pos)
	{
		// gboolean gtk_tree_view_get_dest_row_at_pos (GtkTreeView *tree_view,  gint drag_x,  gint drag_y,  GtkTreePath **path,  GtkTreeViewDropPosition *pos);
		return gtk_tree_view_get_dest_row_at_pos(gtkTreeView, dragX, dragY, path, pos);
	}
	
	/**
	 * Creates a GdkPixmap representation of the row at path.
	 * This image is used for a drag icon.
	 * tree_view:
	 *  a GtkTreeView
	 * path:
	 *  a GtkTreePath in tree_view
	 * Returns:
	 *  a newly-allocated pixmap of the drag icon.
	 */
	public Pixmap createRowDragIcon(TreePath path)
	{
		// GdkPixmap* gtk_tree_view_create_row_drag_icon (GtkTreeView *tree_view,  GtkTreePath *path);
		return new Pixmap( gtk_tree_view_create_row_drag_icon(gtkTreeView, (path is null) ? null : path.getTreePathStruct()) );
	}
	
	/**
	 * If enable_search is set, then the user can type in text to search through
	 * the tree interactively (this is sometimes called "typeahead find").
	 * Note that even if this is FALSE, the user can still initiate a search
	 * using the "start-interactive-search" key binding.
	 * tree_view:
	 *  A GtkTreeView
	 * enable_search:
	 *  TRUE, if the user can search interactively
	 */
	public void setEnableSearch(int enableSearch)
	{
		// void gtk_tree_view_set_enable_search (GtkTreeView *tree_view,  gboolean enable_search);
		gtk_tree_view_set_enable_search(gtkTreeView, enableSearch);
	}
	
	/**
	 * Returns whether or not the tree allows to start interactive searching
	 * by typing in text.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  whether or not to let the user search interactively
	 */
	public int getEnableSearch()
	{
		// gboolean gtk_tree_view_get_enable_search (GtkTreeView *tree_view);
		return gtk_tree_view_get_enable_search(gtkTreeView);
	}
	
	/**
	 * Gets the column searched on by the interactive search code.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  the column the interactive search code searches in.
	 */
	public int getSearchColumn()
	{
		// gint gtk_tree_view_get_search_column (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_column(gtkTreeView);
	}
	
	/**
	 * Sets column as the column where the interactive search code should
	 * search in.
	 * If the sort column is set, users can use the "start-interactive-search"
	 * key binding to bring up search popup. The enable-search property controls
	 * whether simply typing text will also start an interactive search.
	 * Note that column refers to a column of the model.
	 * tree_view:
	 *  A GtkTreeView
	 * column:
	 *  the column of the model to search in, or -1 to disable searching
	 */
	public void setSearchColumn(int column)
	{
		// void gtk_tree_view_set_search_column (GtkTreeView *tree_view,  gint column);
		gtk_tree_view_set_search_column(gtkTreeView, column);
	}
	
	/**
	 * Returns the compare function currently in use.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  the currently used compare function for the search code.
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
	 * tree_view:
	 *  A GtkTreeView
	 * search_equal_func:
	 *  the compare function to use during the search
	 * search_user_data:
	 *  user data to pass to search_equal_func, or NULL
	 * search_destroy:
	 *  Destroy notifier for search_user_data, or NULL
	 */
	public void setSearchEqualFunc(GtkTreeViewSearchEqualFunc searchEqualFunc, void* searchUserData, GtkDestroyNotify searchDestroy)
	{
		// void gtk_tree_view_set_search_equal_func (GtkTreeView *tree_view,  GtkTreeViewSearchEqualFunc search_equal_func,  gpointer search_user_data,  GtkDestroyNotify search_destroy);
		gtk_tree_view_set_search_equal_func(gtkTreeView, searchEqualFunc, searchUserData, searchDestroy);
	}
	
	/**
	 * Returns the GtkEntry which is currently in use as interactive search
	 * entry for tree_view. In case the built-in entry is being used, NULL
	 * will be returned.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  the entry currently in use as search entry.
	 * Since 2.10
	 */
	public GtkEntry* getSearchEntry()
	{
		// GtkEntry* gtk_tree_view_get_search_entry (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_entry(gtkTreeView);
	}
	
	/**
	 * Sets the entry which the interactive search code will use for this
	 * tree_view. This is useful when you want to provide a search entry
	 * in our interface at all time at a fixed position. Passing NULL for
	 * entry will make the interactive search code use the built-in popup
	 * entry again.
	 * tree_view:
	 *  A GtkTreeView
	 * entry:
	 *  the entry the interactive search code of tree_view should use or NULL
	 * Since 2.10
	 */
	public void setSearchEntry(GtkEntry* entry)
	{
		// void gtk_tree_view_set_search_entry (GtkTreeView *tree_view,  GtkEntry *entry);
		gtk_tree_view_set_search_entry(gtkTreeView, entry);
	}
	
	
	/**
	 * Returns the positioning function currently in use.
	 * tree_view:
	 *  A GtkTreeView
	 * Returns:
	 *  the currently used function for positioning the search dialog.
	 * Since 2.10
	 */
	public GtkTreeViewSearchPositionFunc getSearchPositionFunc()
	{
		// GtkTreeViewSearchPositionFunc gtk_tree_view_get_search_position_func  (GtkTreeView *tree_view);
		return gtk_tree_view_get_search_position_func(gtkTreeView);
	}
	
	/**
	 * Sets the function to use when positioning the seach dialog.
	 * tree_view:
	 *  A GtkTreeView
	 * func:
	 *  the function to use to position the search dialog, or NULL
	 *  to use the default search position function
	 * data:
	 *  user data to pass to func, or NULL
	 * destroy:
	 *  Destroy notifier for data, or NULL
	 * Since 2.10
	 */
	public void setSearchPositionFunc(GtkTreeViewSearchPositionFunc func, void* data, GDestroyNotify destroy)
	{
		// void gtk_tree_view_set_search_position_func  (GtkTreeView *tree_view,  GtkTreeViewSearchPositionFunc func,  gpointer data,  GDestroyNotify destroy);
		gtk_tree_view_set_search_position_func(gtkTreeView, func, data, destroy);
	}
	
	/**
	 * Returns whether fixed height mode is turned on for tree_view.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if tree_view is in fixed height mode
	 * Since 2.6
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
	 * tree_view:
	 *  a GtkTreeView
	 * enable:
	 *  TRUE to enable fixed height mode
	 * Since 2.6
	 */
	public void setFixedHeightMode(int enable)
	{
		// void gtk_tree_view_set_fixed_height_mode (GtkTreeView *tree_view,  gboolean enable);
		gtk_tree_view_set_fixed_height_mode(gtkTreeView, enable);
	}
	
	/**
	 * Returns whether hover selection mode is turned on for tree_view.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if tree_view is in hover selection mode
	 * Since 2.6
	 */
	public int getHoverSelection()
	{
		// gboolean gtk_tree_view_get_hover_selection (GtkTreeView *tree_view);
		return gtk_tree_view_get_hover_selection(gtkTreeView);
	}
	
	/**
	 * Enables of disables the hover selection mode of tree_view.
	 * Hover selection makes the selected row follow the pointer.
	 * Currently, this works only for the selection modes
	 * GTK_SELECTION_SINGLE and GTK_SELECTION_BROWSE.
	 * tree_view:
	 *  a GtkTreeView
	 * hover:
	 *  TRUE to enable hover selection mode
	 * Since 2.6
	 */
	public void setHoverSelection(int hover)
	{
		// void gtk_tree_view_set_hover_selection (GtkTreeView *tree_view,  gboolean hover);
		gtk_tree_view_set_hover_selection(gtkTreeView, hover);
	}
	
	/**
	 * Returns whether hover expansion mode is turned on for tree_view.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if tree_view is in hover expansion mode
	 * Since 2.6
	 */
	public int getHoverExpand()
	{
		// gboolean gtk_tree_view_get_hover_expand (GtkTreeView *tree_view);
		return gtk_tree_view_get_hover_expand(gtkTreeView);
	}
	
	/**
	 * Enables of disables the hover expansion mode of tree_view.
	 * Hover expansion makes rows expand or collaps if the pointer
	 * moves over them.
	 * tree_view:
	 *  a GtkTreeView
	 * expand:
	 *  TRUE to enable hover selection mode
	 * Since 2.6
	 */
	public void setHoverExpand(int expand)
	{
		// void gtk_tree_view_set_hover_expand (GtkTreeView *tree_view,  gboolean expand);
		gtk_tree_view_set_hover_expand(gtkTreeView, expand);
	}
	
	
	/**
	 * This function should almost never be used. It is meant for private use by
	 * ATK for determining the number of visible children that are removed when the
	 * user collapses a row, or a row is deleted.
	 * tree_view:
	 *  A GtkTreeView
	 * func:
	 *  Function to be called when a view row is destroyed, or NULL
	 * data:
	 *  User data to be passed to func, or NULL
	 * destroy:
	 *  Destroy notifier for data, or NULL
	 */
	public void setDestroyCountFunc(GtkTreeDestroyCountFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_tree_view_set_destroy_count_func  (GtkTreeView *tree_view,  GtkTreeDestroyCountFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_tree_view_set_destroy_count_func(gtkTreeView, func, data, destroy);
	}
	
	
	/**
	 * Returns the current row separator function.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  the current row separator function.
	 * Since 2.6
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
	 * tree_view:
	 *  a GtkTreeView
	 * func:
	 *  a GtkTreeViewRowSeparatorFunc
	 * data:
	 *  user data to pass to func, or NULL
	 * destroy:
	 *  destroy notifier for data, or NULL
	 * Since 2.6
	 */
	public void setRowSeparatorFunc(GtkTreeViewRowSeparatorFunc func, void* data, GtkDestroyNotify destroy)
	{
		// void gtk_tree_view_set_row_separator_func  (GtkTreeView *tree_view,  GtkTreeViewRowSeparatorFunc func,  gpointer data,  GtkDestroyNotify destroy);
		gtk_tree_view_set_row_separator_func(gtkTreeView, func, data, destroy);
	}
	
	/**
	 * Returns whether rubber banding is turned on for tree_view. If the
	 * selection mode is GTK_SELECTION_MULTIPLE, rubber banding will allow the
	 * user to select multiple rows by dragging the mouse.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  TRUE if rubber banding in tree_view is enabled.
	 * Since 2.10
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
	 * tree_view:
	 *  a GtkTreeView
	 * enable:
	 *  TRUE to enable rubber banding
	 * Since 2.10
	 */
	public void setRubberBanding(int enable)
	{
		// void gtk_tree_view_set_rubber_banding (GtkTreeView *tree_view,  gboolean enable);
		gtk_tree_view_set_rubber_banding(gtkTreeView, enable);
	}
	
	/**
	 * Returns whether or not tree lines are drawn in tree_view.
	 * tree_view:
	 *  a GtkTreeView.
	 * Returns:
	 *  TRUE if tree lines are drawn in tree_view, FALSE
	 * otherwise.
	 * Since 2.10
	 */
	public int getEnableTreeLines()
	{
		// gboolean gtk_tree_view_get_enable_tree_lines (GtkTreeView *tree_view);
		return gtk_tree_view_get_enable_tree_lines(gtkTreeView);
	}
	
	/**
	 * Sets whether to draw lines interconnecting the expanders in tree_view.
	 * This does not have any visible effects for lists.
	 * tree_view:
	 *  a GtkTreeView
	 * enabled:
	 *  TRUE to enable tree line drawing, FALSE otherwise.
	 * Since 2.10
	 */
	public void setEnableTreeLines(int enabled)
	{
		// void gtk_tree_view_set_enable_tree_lines (GtkTreeView *tree_view,  gboolean enabled);
		gtk_tree_view_set_enable_tree_lines(gtkTreeView, enabled);
	}
	
	
	/**
	 * Returns which grid lines are enabled in tree_view.
	 * tree_view:
	 *  a GtkTreeView
	 * Returns:
	 *  a GtkTreeViewGridLines value indicating which grid lines
	 * are enabled.
	 * Since 2.10
	 */
	public GtkTreeViewGridLines getGridLines()
	{
		// GtkTreeViewGridLines gtk_tree_view_get_grid_lines (GtkTreeView *tree_view);
		return gtk_tree_view_get_grid_lines(gtkTreeView);
	}
	
	/**
	 * Sets which grid lines to draw in tree_view.
	 * tree_view:
	 *  a GtkTreeView
	 * grid_lines:
	 *  a GtkTreeViewGridLines value indicating which grid lines to
	 * enable.
	 * Since 2.10
	 * Property Details
	 * The "enable-grid-lines" property
	 *  "enable-grid-lines" GtkTreeViewGridLines : Read / Write
	 * Whether grid lines should be drawn in the tree view.
	 * Default value: GTK_TREE_VIEW_GRID_LINES_NONE
	 */
	public void setGridLines(GtkTreeViewGridLines gridLines)
	{
		// void gtk_tree_view_set_grid_lines (GtkTreeView *tree_view,  GtkTreeViewGridLines grid_lines);
		gtk_tree_view_set_grid_lines(gtkTreeView, gridLines);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
