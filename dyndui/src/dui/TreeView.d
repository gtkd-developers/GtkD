/*
 * This file is part of dui.
 * 
 * dui is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 * 
 * dui is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with dui; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

module dui.TreeView;

private import dui.Utils;
private import def.Types;
private import def.Constants;

private import ddi.WindowG;

private import dui.Widget;
private import dui.Container;
private import dui.Adjustment;
private import dui.ListG;
private import ddi.Value;
private import ddi.Pixmap;

private import dui.TreePath;
private import dui.TreeModel;
private import dui.TreeIter;
private import dui.TreeStore;
private import dui.ListStore;
private import dui.TreeViewColumn;
private import dui.TreeSelection;
private import dui.CellRenderer;
private import dui.Adjustment;
private import lib.gtk;

// moved out ---------------------------
	private import dool.String;
// -------------------------------------

/**
 * A container to display a tree or a list (a list is a tree with all row a the same level)
 */
public:
class TreeView : Container
{	
	debug(status)
	{
		int complete(){return 20;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "A container to display a tree or a list";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_view_get_type();
	}

	public:
	this(GtkWidget * gtkWidget)
	{
		super(gtkWidget);
	}

	public:

	/**
	 * Creates a new TreeView
	 */
	this()
	{
		this(gtk_tree_view_new());
	}
	
	/**
	 * Creates a new TreeView from a TreeModel
	 * @param model the treeModel
	 */
	this(TreeModel model)
	{
		this(gtk_tree_view_new_with_model(model.model()));
	}

	GtkTreeView* gtkT()
	{
		return cast(GtkTreeView*)gtkWidget;
	}
	
	

	/* Accessors */
	/**
	 * Gets the model for this tree
	 * @return a new TreeStore from the tree view model
	 */
	TreeModel getModel()
	{
		return new TreeModel(gtk_tree_view_get_model(gtkT()));
	}
	
	/**
	 * Gets the list model for this tree
	 * @return a new ListStore from the tree view model
	 */
	ListStore getListStore()
	{
		return new ListStore(gtk_tree_view_get_model(gtkT()));
	}
	
	
	/**
	 * Sets the model fro this tree view
	 * @param model the new treeModel
	 */
	void setModel(TreeModel model)
	{
		gtk_tree_view_set_model(gtkT(), model.model());
	}

	/**
	 * Gets a tree selection for this tree view
	 * @return a tree selection for this tree
	 */
	TreeSelection getSelection()
	{
		return new TreeSelection(gtk_tree_view_get_selection(gtkT()));
	}
	
	/**
	 * getHAdjustment
	 * @return 
	 */
	Adjustment getHAdjustment()
	{
		return new Adjustment(gtk_tree_view_get_hadjustment(gtkT()));
	}
	
	/**
	 * setHAdjustment
	 * @param adjustment
	 */
	void setHAdjustment(Adjustment adjustment)
	{
		gtk_tree_view_set_hadjustment(gtkT(), adjustment.gtkO());
	}
	
	/**
	 * getVAdjustment
	 * @return 
	 */
	Adjustment getVAdjustment()
	{
		return new Adjustment(gtk_tree_view_get_vadjustment(gtkT()));
	}
	
	/**
	 * setVAdjustment
	 * @param adjustment
	 */
	void setVAdjustment(Adjustment adjustment)
	{
		gtk_tree_view_set_vadjustment(gtkT(), adjustment.gtkO());
	}
	
	/**
	 * Gets the headers visibility
	 * @return true if the headers are visible
	 */
	bit getHeadersVisible()
	{
		return gtk_tree_view_get_headers_visible(gtkT()) == 0 ? false : true;
	}
	
	/**
	 * Sets the headers visibility
	 * @param visible if true the headers will be visible
	 */
	void setHeadersVisible(bit visible)
	{
		gtk_tree_view_set_headers_visible(gtkT(), visible);
	}
	
	
	/**
	 * coluns autosize
	 */
	void columnsAutosize()
	{
		gtk_tree_view_columns_autosize(gtkT());
	}
	
	/**
	 * Sets the headers clickable or not
	 * @param setting if true the headers will be clicable
	 */
	void setHeadersClickable(bit setting)
	{
		gtk_tree_view_set_headers_clickable(gtkT(), setting);
	}
	
	/**
	 * Sets the rules hint ???
	 * @param setting
	 */
	void setRulesHint(bit setting)
	{
		gtk_tree_view_set_rules_hint(gtkT(), setting);
	}
	
	/**
	 * Gets rules hint ???
	 * @return rules hint ???
	 */
	bit getRulesHint()
	{
		return gtk_tree_view_get_rules_hint(gtkT()) == 0 ? false : true;
	}
	

	/* Column funtions */
	/**
	 * Appends a new column to the tree
	 * @param column the new column
	 */
	gint appendColumn(TreeViewColumn column)
	{
		return gtk_tree_view_append_column(cast(GtkTreeView*)gtkT(), column.gtkO());
	}

	/**
	 * remove column
	 * @param column
	 * @return number of columns
	 */
	gint removeColumn(TreeViewColumn column)
	{
		return gtk_tree_view_remove_column(gtkT(), column.gtkO());
	}
	
	/**
	 * insert column
	 * @param column
	 * @param position
	 * @return number of columns
	 */
	gint insertColumn(TreeViewColumn column, gint position)
	{
		return gtk_tree_view_insert_column(gtkT(), column.gtkO(), position);
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
		return insertEditableColumn(position, new String(title), renderer, editable);
	}
	gint insertEditableColumn(int position, String title, CellRenderer renderer, bit editable)
	{
		// OK, this is a treek because of my ignoran ce on how to pass variable argument lists
		if ( position < 0 )
		{
			position = getColumns().length();
		}
		int tot = gtk_tree_view_insert_column_with_attributes(
			gtkT(), 
			position, 
			title.toStringz(),renderer.gtkO(),
			String.stringz("text"),position,//v1.getV(),
			String.stringz("editable"),2,0);//v.getV(),0);
		return tot;
	}
		
	/+
	/** \todo */
	gint gtk_tree_view_insert_column_with_attributes(GtkTreeView * tree_view, gint position, gchar * title, GtkCellRenderer * cell,...);
	/** \todo */
	gint gtk_tree_view_insert_column_with_data_func(gtkT(), gint position, gchar * title, GtkCellRenderer * cell, GtkTreeCellDataFunc func, gpointer data, GDestroyNotify dnotify);
	+/
	
	/**
	 * Gets a column by column number
	 * @param n the column number
	 * @return a new TreeViewColumn for the Gtk column
	 */
	TreeViewColumn getColumn(int n)
	{
		void* col = gtk_tree_view_get_column(gtkT(), n);
		if ( col  is  null )
		{
			return null;
		}
		return new TreeViewColumn(cast(GtkObject*)col);
	}
	
	/**
	 * Removes all column from this tree view
	 */
	void removeAllColumns()
	{
		GtkTreeViewColumn* col = gtk_tree_view_get_column(gtkT(), 0);
		while ( col !is  null )
		{
			gtk_tree_view_remove_column(gtkT(), col);
			col = gtk_tree_view_get_column(gtkT(), 0);
		}
	}
	
	/** \todo return an array of TreeViewColumn instead of a list
	 * Gets s ListG with all the columns
	 * @return a listG
	 */
	ListG getColumns()
	{
		return new ListG(gtk_tree_view_get_columns(gtkT()));	
	}


	/**
	 * moveColumnAfter
	 * @param column
	 * @param base_column
	 */
	void moveColumnAfter(TreeViewColumn column, TreeViewColumn base_column)
	{
		gtk_tree_view_move_column_after(gtkT(), column.gtkO(), base_column.gtkO());
	}

	/**
	 * setExpanderColumn
	 * @param column
	 */
	void setExpanderColumn(TreeViewColumn column)
	{
		gtk_tree_view_set_expander_column(gtkT(), column.gtkO());
	}

	/**
	 * getgetExpanderColumn
	 * @return TreeViewColumn
	 */
	TreeViewColumn getExpanderColumn()
	{
		return new TreeViewColumn(gtk_tree_view_get_expander_column(gtkT()));
	}
	/+
	/** \todo add this to a listener */
	void gtk_tree_view_set_column_drag_function(gtkT(), GtkTreeViewColumnDropFunc func, gpointer user_data, GtkDestroyNotify destroy);
	+/
	
	/* Actions */
	/**
	 * scrollToPoint
	 * @param tree_x
	 * @param tree_y
	 */
	void scrollToPoint(gint tree_x, gint tree_y)
	{
		gtk_tree_view_scroll_to_point(gtkT(), tree_x, tree_y);
	}

	/**
	 * scrollToCell
	 * @param path
	 * @param column
	 * @param use_align
	 * @param row_align
	 * @param col_align
	 */
	void scrollToCell(TreePath path, TreeViewColumn column, gboolean use_align, gfloat row_align, gfloat col_align)
	{
		gtk_tree_view_scroll_to_cell(gtkT(), path.gtkP(), column.gtkO(), use_align, row_align, col_align);
	}

	/**
	 * rowActivated
	 * @param path
	 * @param column
	 */
	void rowActivated(TreePath path, TreeViewColumn column)
	{
		gtk_tree_view_row_activated(gtkT(), path.gtkP(), column.gtkO());
	}

	/**
	 * expandAll
	 */
	void expandAll()
	{
		gtk_tree_view_expand_all(gtkT());
	}

	/**
	 * collapseAll
	 */
	void collapseAll()
	{
		gtk_tree_view_collapse_all(gtkT());
	}

	/**
	 * expandToPath
	 * @param path
	 */
	void expandToPath(TreePath path)
	{
		gtk_tree_view_expand_to_path(gtkT(), path.gtkP());
	}

	/**
	 * expandRow
	 * @param path
	 * @param open_all
	 * @return 
	 */
	bit expandRow(TreePath path, bit openAll)
	{
		return gtk_tree_view_expand_row(gtkT(), path.gtkP(), openAll) == 0 ? false : true;
	}

	/**
	 * Expands the row of the iter.
	 * @param iter
	 * @param openAll
	 * @return
	 */
	bit expandRow(TreeIter iter, TreeModel model, bit openAll)
	{
		return expandRow(model.getPath(iter), openAll);
	}


	/**
	 * collapseRow
	 * @param path
	 * @return 
	 */
	bit collapseRow(TreePath path)
	{
		return gtk_tree_view_collapse_row(gtkT(), path.gtkP()) == 0 ? false : true;
	}
	/+
	/** \todo */
	void mapExpandedRows(TreeViewMappingFunc func, gpointer data)
	{
		gtk_tree_view_map_expanded_rows(gtkT(), func, data);
	}
	+/
	
	/**
	 * rowExpanded
	 * @param path
	 * @return 
	 */
	bit rowExpanded(TreePath path)
	{
		return gtk_tree_view_row_expanded(gtkT(), path.gtkP()) == 0 ? false : true;
	}

	/**
	 * setReorderable
	 * @param reorderable
	 */
	void setReorderable(bit reorderable)
	{
		gtk_tree_view_set_reorderable(gtkT(), reorderable);
	}

	/**
	 * getReorderable
	 * @return 
	 */
	bit getReorderable()
	{
		return gtk_tree_view_get_reorderable(gtkT()) == 0 ? false : true;
	}

	/**
	 * setCursor
	 * @param path
	 * @param focus_column
	 * @param start_editing
	 */
	void setCursor(TreePath path, TreeViewColumn focus_column, gboolean start_editing)
	{
		gtk_tree_view_set_cursor(gtkT(), path.gtkP(), focus_column.gtkO(), start_editing);
	}

	/**
	 * setCursorOnCell
	 * @param path
	 * @param focus_column
	 * @param focus_cell
	 * @param start_editing
	 */
	void setCursorOnCell(TreePath path, TreeViewColumn focus_column, CellRenderer focus_cell, gboolean start_editing)
	{
		gtk_tree_view_set_cursor_on_cell(gtkT(), path.gtkP(), focus_column.gtkO(), focus_cell.gtkO(), start_editing);
	}
	
	
	/**
	 * get cursor
	 * @param path
	 * @param focus_column
	 */
	void getCursor(TreePath path, TreeViewColumn focus_column)
	{
		GtkTreePath* p = path.gtkP();
		GtkTreeViewColumn* c = focus_column.gtkO();
		gtk_tree_view_get_cursor(gtkT(), &p, &c);
	}


	/* Layout information */
	
	/**
	 * getBinWindow
	 * @return 
	 */
	WindowG getBinWindow()
	{
		return new WindowG(gtk_tree_view_get_bin_window(gtkT()));
	}
	
	
	/**
	 * getPathAtPos
	 * @param x
	 * @param y
	 * @param path
	 * @param column
	 * @param cell_x
	 * @param cell_y
	 * @return 
	 */
	bit getPathAtPos(gint x, gint y, inout TreePath path, inout TreeViewColumn column, out gint cellX, out gint cellY)
	{
		GtkTreePath* p = path.gtkP();
		GtkTreeViewColumn* c = column.gtkO();

		bit result = gtk_tree_view_get_path_at_pos(gtkT(), x, y, &p, &c, &cellX, &cellY)
			== 0 ? false : true;

		path = new TreePath(p);
		column = new TreeViewColumn(c);

		return result;
	}
	
	/**
	 * getCellArea
	 * @param path
	 * @param column
	 * @param rect
	 */
	void getCellArea(TreePath path, TreeViewColumn column, Rectangle * rect)
	{
		gtk_tree_view_get_cell_area(gtkT(), path.gtkP(), column.gtkO(), rect);
	}
	
	/**
	 * getBackgroundArea
	 * @param path
	 * @param column
	 * @param rect
	 */
	void getBackgroundArea(TreePath path, TreeViewColumn column, Rectangle * rect)
	{
		gtk_tree_view_get_background_area(gtkT(), path.gtkP(), column.gtkO(), rect);
	}
	
	/**
	 * getVisibleRect
	 * @param visible_rect
	 */
	void getVisibleRect(Rectangle * visible_rect)
	{
		gtk_tree_view_get_visible_rect(gtkT(), visible_rect);
	}
	
	/**
	 * widgetToTreeCoords
	 * @param wx
	 * @param wy
	 * @param tx
	 * @param ty
	 */
	void widgetToTreeCoords(gint wx, gint wy, gint * tx, gint * ty)
	{
		gtk_tree_view_widget_to_tree_coords(gtkT(), wx, wy, tx, ty);
	}
	
	/**
	 * treeToWidgetCoords
	 * @param wx
	 * @param wy
	 * @param tx
	 * @param ty
	 */
	void treeToWidgetCoords(gint wx, gint wy, gint * tx, gint * ty)
	{
		gtk_tree_view_tree_to_widget_coords(gtkT(), wx, wy, tx, ty);
	}

	/*
	 * Drag-and-Drop support
	 */
	 
	/**
	 * enableModelDragSource
	 * @param start_button_mask
	 * @param targets
	 * @param n_targets
	 * @param actions
	 */
	void enableModelDragSource(ModifierType start_button_mask, GtkTargetEntry * targets, gint n_targets, DragAction actions)
	{
		gtk_tree_view_enable_model_drag_source(gtkT(), start_button_mask, targets, n_targets, actions);
	}
	 
	/**
	 * enableModelDrasDesc
	 * @param targets
	 * @param n_targets
	 * @param actions
	 */
	void enableModelDrasDesc(GtkTargetEntry * targets, gint n_targets, DragAction actions)
	{
		gtk_tree_view_enable_model_drag_dest(gtkT(), targets, n_targets, actions);
	}
	 
	/**
	 * unsetRowsDragSource
	 */
	void unsetRowsDragSource()
	{
		gtk_tree_view_unset_rows_drag_source(gtkT());
	}
	 
	/**
	 * unsetRowsDragDest
	 */
	void unsetRowsDragDest()
	{
		gtk_tree_view_unset_rows_drag_dest(gtkT());
	}

	/*
	 * These are useful to implement your own custom stuff.
	 */

	/**
	 * setDragDestRow
	 * @param path
	 * @param pos
	 */
	void setDragDestRow(TreePath path, TreeViewDropPosition pos)
	{
		gtk_tree_view_set_drag_dest_row(gtkT(), path.gtkP(), pos);
	}

	/**
	 * getDragDestRow
	 * @param path
	 * @param pos
	 */
	void getDragDestRow(TreePath path, TreeViewDropPosition * pos)
	{
		GtkTreePath* p = path.gtkP();
		gtk_tree_view_get_drag_dest_row(gtkT(), &p, pos);
	}
	
	/**
	 * getDestRowAtPos
	 * @param drag_x
	 * @param drag_y
	 * @param path
	 * @param pos
	 * @return 
	 */
	bit getDestRowAtPos(gint drag_x, gint drag_y, TreePath path, TreeViewDropPosition * pos)
	{
		GtkTreePath* p = path.gtkP();
		return gtk_tree_view_get_dest_row_at_pos(gtkT(), drag_x, drag_y, &p, pos)
			== 0 ? false : true;
	}
	
	/**
	 * createRowDragIcon
	 * @param path
	 * @return 
	 */
	Pixmap createRowDragIcon(TreePath path)
	{
		return new Pixmap(gtk_tree_view_create_row_drag_icon(gtkT(), path.gtkP()));
	}
	
	/* Interactive search */
	/**
	 * setEnableSearch
	 * @param enable_search
	 */
	void setEnableSearch(bit enable_search)
	{
		gtk_tree_view_set_enable_search(gtkT(), enable_search);
	}

	/**
	 * getEnableSearch
	 * @return 
	 */
	bit getEnableSearch()
	{
		return gtk_tree_view_get_enable_search(gtkT()) == 0 ? false : true;
	}

	/**
	 * getSearchColumn
	 * @return 
	 */
	gint getSearchColumn()
	{
		return gtk_tree_view_get_search_column(gtkT());
	}

	/**
	 * setSearchColumn
	 * @param column
	 */
	void setSearchColumn(gint column)
	{
		gtk_tree_view_set_search_column(gtkT(), column);
	}
	
	/+
	/** \todo move this to a listener ??? */
	GtkTreeViewSearchEqualFunc gtk_tree_view_get_search_equal_func(gtkT());
	/** \todo move this to a listener ??? */
	void gtk_tree_view_set_search_equal_func(gtkT(), GtkTreeViewSearchEqualFunc search_equal_func, gpointer search_user_data, GtkDestroyNotify search_destroy);
	+/
	
	/+
	/* This function should really never be used.  It is just for use by ATK.
	 */
	//typedef void (* GtkTreeDestroyCountFunc) (gtkT(), GtkTreePath * path, gint children, gpointer user_data);
	//void gtk_tree_view_set_destroy_count_func(gtkT(), GtkTreeDestroyCountFunc func, gpointer data, GtkDestroyNotify destroy);
	+/

	// decorators
	
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
	
}
