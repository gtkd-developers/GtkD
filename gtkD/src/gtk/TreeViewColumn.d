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
 * inFile  = GtkTreeViewColumn.html
 * outPack = gtk
 * outFile = TreeViewColumn
 * strct   = GtkTreeViewColumn
 * realStrct=
 * ctorStrct=
 * clss    = TreeViewColumn
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_tree_view_column_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- gtk_tree_view_column_new_with_attributes
 * imports:
 * 	- glib.Str
 * 	- gtk.CellRenderer
 * 	- glib.ListG
 * 	- gtk.Widget
 * 	- gtk.TreeModel
 * 	- gtk.TreeIter
 * 	- gdk.Rectangle
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkRectangle* -> Rectangle
 * 	- GtkCellRenderer* -> CellRenderer
 * 	- GtkTreeIter* -> TreeIter
 * 	- GtkTreeModel* -> TreeModel
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 */

module gtk.TreeViewColumn;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gtktypes;

private import gtkc.gtk;


private import glib.Str;
private import gtk.CellRenderer;
private import glib.ListG;
private import gtk.Widget;
private import gtk.TreeModel;
private import gtk.TreeIter;
private import gdk.Rectangle;
private import glib.Str;




/**
 * Description
 * The GtkTreeViewColumn object represents a visible column in a GtkTreeView widget.
 * It allows to set properties of the column header, and functions as a holding pen for
 * the cell renderers which determine how the data in the column is displayed.
 * Please refer to the tree widget conceptual overview
 * for an overview of all the objects and data types related to the tree widget and how
 * they work together.
 */
private import gtk.ObjectGtk;
public class TreeViewColumn : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkTreeViewColumn* gtkTreeViewColumn;
	
	
	public GtkTreeViewColumn* getTreeViewColumnStruct()
	{
		return gtkTreeViewColumn;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkTreeViewColumn;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkTreeViewColumn* gtkTreeViewColumn)
	{
		version(noAssert)
		{
			if ( gtkTreeViewColumn is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gtkTreeViewColumn is null on constructor").newline;
				}
				else
				{
					printf("struct gtkTreeViewColumn is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gtkTreeViewColumn !is null, "struct gtkTreeViewColumn is null on constructor");
		}
		super(cast(GtkObject*)gtkTreeViewColumn);
		this.gtkTreeViewColumn = gtkTreeViewColumn;
	}
	
	/**
	 * Creates a new Tree view column
	 * @param header th column header text
	 * @param renderer the rederer for the column cells
	 * @param type the type of data to be displayed (shouldn't this be on the renderer?)
	 * @param column the column number
	 */
	this(char [] header, CellRenderer renderer, char [] type, int column)
	{
		this(gtk_tree_view_column_new_with_attributes(
		Str.toStringz(header),
		renderer.getCellRendererStruct(),
		Str.toStringz(type),
		column,
		null)
		);
	}
	
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(TreeViewColumn)[] onClickedListeners;
	void addOnClicked(void delegate(TreeViewColumn) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("clicked" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"clicked",
			cast(GCallback)&callBackClicked,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["clicked"] = 1;
		}
		onClickedListeners ~= dlg;
	}
	extern(C) static void callBackClicked(GtkTreeViewColumn* treeviewcolumnStruct, TreeViewColumn treeViewColumn)
	{
		bool consumed = false;
		
		foreach ( void delegate(TreeViewColumn) dlg ; treeViewColumn.onClickedListeners )
		{
			dlg(treeViewColumn);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Creates a new GtkTreeViewColumn.
	 * Returns:
	 *  A newly created GtkTreeViewColumn.
	 */
	public this ()
	{
		// GtkTreeViewColumn* gtk_tree_view_column_new (void);
		this(cast(GtkTreeViewColumn*)gtk_tree_view_column_new() );
	}
	
	
	/**
	 * Packs the cell into the beginning of the column. If expand is FALSE, then
	 * the cell is allocated no more space than it needs. Any unused space is divided
	 * evenly between cells for which expand is TRUE.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * cell:
	 *  The GtkCellRenderer.
	 * expand:
	 *  TRUE if cell is to be given extra space allocated to tree_column.
	 */
	public void packStart(CellRenderer cell, int expand)
	{
		// void gtk_tree_view_column_pack_start (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell,  gboolean expand);
		gtk_tree_view_column_pack_start(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}
	
	/**
	 * Adds the cell to end of the column. If expand is FALSE, then the cell
	 * is allocated no more space than it needs. Any unused space is divided
	 * evenly between cells for which expand is TRUE.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * cell:
	 *  The GtkCellRenderer.
	 * expand:
	 *  TRUE if cell is to be given extra space allocated to tree_column.
	 */
	public void packEnd(CellRenderer cell, int expand)
	{
		// void gtk_tree_view_column_pack_end (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell,  gboolean expand);
		gtk_tree_view_column_pack_end(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}
	
	/**
	 * Unsets all the mappings on all renderers on the tree_column.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 */
	public void clear()
	{
		// void gtk_tree_view_column_clear (GtkTreeViewColumn *tree_column);
		gtk_tree_view_column_clear(gtkTreeViewColumn);
	}
	
	/**
	 * Returns a newly-allocated GList of all the cell renderers in the column,
	 * in no particular order. The list must be freed with g_list_free().
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * Returns:
	 *  A list of GtkCellRenderers
	 */
	public ListG getCellRenderers()
	{
		// GList* gtk_tree_view_column_get_cell_renderers  (GtkTreeViewColumn *tree_column);
		return new ListG( gtk_tree_view_column_get_cell_renderers(gtkTreeViewColumn) );
	}
	
	/**
	 * Adds an attribute mapping to the list in tree_column. The column is the
	 * column of the model to get a value from, and the attribute is the
	 * parameter on cell_renderer to be set from the value. So for example
	 * if column 2 of the model contains strings, you could have the
	 * "text" attribute of a GtkCellRendererText get its values from
	 * column 2.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * cell_renderer:
	 *  the GtkCellRenderer to set attributes on
	 * attribute:
	 *  An attribute on the renderer
	 * column:
	 *  The column position on the model to get the attribute from.
	 */
	public void addAttribute(CellRenderer cellRenderer, char[] attribute, int column)
	{
		// void gtk_tree_view_column_add_attribute (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell_renderer,  const gchar *attribute,  gint column);
		gtk_tree_view_column_add_attribute(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), Str.toStringz(attribute), column);
	}
	
	/**
	 * Sets the attributes in the list as the attributes of tree_column.
	 * The attributes should be in attribute/column order, as in
	 * gtk_tree_view_column_add_attribute(). All existing attributes
	 * are removed, and replaced with the new attributes.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * cell_renderer:
	 *  the GtkCellRenderer we're setting the attributes of
	 * ...:
	 *  A NULL-terminated list of attributes.
	 */
	public void setAttributes(CellRenderer cellRenderer, ... )
	{
		// void gtk_tree_view_column_set_attributes (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell_renderer,  ...);
		gtk_tree_view_column_set_attributes(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct());
	}
	
	/**
	 * Sets the GtkTreeViewColumnFunc to use for the column. This
	 * function is used instead of the standard attributes mapping for
	 * setting the column value, and should set the value of tree_column's
	 * cell renderer as appropriate. func may be NULL to remove an
	 * older one.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * cell_renderer:
	 *  A GtkCellRenderer
	 * func:
	 *  The GtkTreeViewColumnFunc to use.
	 * func_data:
	 *  The user data for func.
	 * destroy:
	 *  The destroy notification for func_data
	 */
	public void setCellDataFunc(CellRenderer cellRenderer, GtkTreeCellDataFunc func, void* funcData, GtkDestroyNotify destroy)
	{
		// void gtk_tree_view_column_set_cell_data_func  (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell_renderer,  GtkTreeCellDataFunc func,  gpointer func_data,  GtkDestroyNotify destroy);
		gtk_tree_view_column_set_cell_data_func(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), func, funcData, destroy);
	}
	
	/**
	 * Clears all existing attributes previously set with
	 * gtk_tree_view_column_set_attributes().
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * cell_renderer:
	 *  a GtkCellRenderer to clear the attribute mapping on.
	 */
	public void clearAttributes(CellRenderer cellRenderer)
	{
		// void gtk_tree_view_column_clear_attributes  (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell_renderer);
		gtk_tree_view_column_clear_attributes(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct());
	}
	
	/**
	 * Sets the spacing field of tree_column, which is the number of pixels to
	 * place between cell renderers packed into it.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * spacing:
	 *  distance between cell renderers in pixels.
	 */
	public void setSpacing(int spacing)
	{
		// void gtk_tree_view_column_set_spacing (GtkTreeViewColumn *tree_column,  gint spacing);
		gtk_tree_view_column_set_spacing(gtkTreeViewColumn, spacing);
	}
	
	/**
	 * Returns the spacing of tree_column.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  the spacing of tree_column.
	 */
	public int getSpacing()
	{
		// gint gtk_tree_view_column_get_spacing (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_spacing(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the visibility of tree_column.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * visible:
	 *  TRUE if the tree_column is visible.
	 */
	public void setVisible(int visible)
	{
		// void gtk_tree_view_column_set_visible (GtkTreeViewColumn *tree_column,  gboolean visible);
		gtk_tree_view_column_set_visible(gtkTreeViewColumn, visible);
	}
	
	/**
	 * Returns TRUE if tree_column is visible.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  whether the column is visible or not. If it is visible, then
	 * the tree will show the column.
	 */
	public int getVisible()
	{
		// gboolean gtk_tree_view_column_get_visible (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_visible(gtkTreeViewColumn);
	}
	
	/**
	 * If resizable is TRUE, then the user can explicitly resize the column by
	 * grabbing the outer edge of the column button. If resizable is TRUE and
	 * sizing mode of the column is GTK_TREE_VIEW_COLUMN_AUTOSIZE, then the sizing
	 * mode is changed to GTK_TREE_VIEW_COLUMN_GROW_ONLY.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * resizable:
	 *  TRUE, if the column can be resized
	 */
	public void setResizable(int resizable)
	{
		// void gtk_tree_view_column_set_resizable (GtkTreeViewColumn *tree_column,  gboolean resizable);
		gtk_tree_view_column_set_resizable(gtkTreeViewColumn, resizable);
	}
	
	/**
	 * Returns TRUE if the tree_column can be resized by the end user.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * Returns:
	 *  TRUE, if the tree_column can be resized.
	 */
	public int getResizable()
	{
		// gboolean gtk_tree_view_column_get_resizable (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_resizable(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the growth behavior of tree_column to type.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * type:
	 *  The GtkTreeViewColumnSizing.
	 */
	public void setSizing(GtkTreeViewColumnSizing type)
	{
		// void gtk_tree_view_column_set_sizing (GtkTreeViewColumn *tree_column,  GtkTreeViewColumnSizing type);
		gtk_tree_view_column_set_sizing(gtkTreeViewColumn, type);
	}
	
	/**
	 * Returns the current type of tree_column.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The type of tree_column.
	 */
	public GtkTreeViewColumnSizing getSizing()
	{
		// GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_sizing(gtkTreeViewColumn);
	}
	
	/**
	 * Returns the current size of tree_column in pixels.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The current width of tree_column.
	 */
	public int getWidth()
	{
		// gint gtk_tree_view_column_get_width (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_width(gtkTreeViewColumn);
	}
	
	/**
	 * Gets the fixed width of the column. This value is only meaning may not be
	 * the actual width of the column on the screen, just what is requested.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  the fixed width of the column
	 */
	public int getFixedWidth()
	{
		// gint gtk_tree_view_column_get_fixed_width  (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_fixed_width(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the size of the column in pixels. This is meaningful only if the sizing
	 * type is GTK_TREE_VIEW_COLUMN_FIXED. The size of the column is clamped to
	 * the min/max width for the column. Please note that the min/max width of the
	 * column doesn't actually affect the "fixed_width" property of the widget, just
	 * the actual size when displayed.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * fixed_width:
	 *  The size to set tree_column to. Must be greater than 0.
	 */
	public void setFixedWidth(int fixedWidth)
	{
		// void gtk_tree_view_column_set_fixed_width  (GtkTreeViewColumn *tree_column,  gint fixed_width);
		gtk_tree_view_column_set_fixed_width(gtkTreeViewColumn, fixedWidth);
	}
	
	/**
	 * Sets the minimum width of the tree_column. If min_width is -1, then the
	 * minimum width is unset.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * min_width:
	 *  The minimum width of the column in pixels, or -1.
	 */
	public void setMinWidth(int minWidth)
	{
		// void gtk_tree_view_column_set_min_width (GtkTreeViewColumn *tree_column,  gint min_width);
		gtk_tree_view_column_set_min_width(gtkTreeViewColumn, minWidth);
	}
	
	/**
	 * Returns the minimum width in pixels of the tree_column, or -1 if no minimum
	 * width is set.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The minimum width of the tree_column.
	 */
	public int getMinWidth()
	{
		// gint gtk_tree_view_column_get_min_width (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_min_width(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the maximum width of the tree_column. If max_width is -1, then the
	 * maximum width is unset. Note, the column can actually be wider than max
	 * width if it's the last column in a view. In this case, the column expands to
	 * fill any extra space.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * max_width:
	 *  The maximum width of the column in pixels, or -1.
	 */
	public void setMaxWidth(int maxWidth)
	{
		// void gtk_tree_view_column_set_max_width (GtkTreeViewColumn *tree_column,  gint max_width);
		gtk_tree_view_column_set_max_width(gtkTreeViewColumn, maxWidth);
	}
	
	/**
	 * Returns the maximum width in pixels of the tree_column, or -1 if no maximum
	 * width is set.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The maximum width of the tree_column.
	 */
	public int getMaxWidth()
	{
		// gint gtk_tree_view_column_get_max_width (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_max_width(gtkTreeViewColumn);
	}
	
	/**
	 * Emits the "clicked" signal on the column. This function will only work if
	 * tree_column is clickable.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 */
	public void clicked()
	{
		// void gtk_tree_view_column_clicked (GtkTreeViewColumn *tree_column);
		gtk_tree_view_column_clicked(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the title of the tree_column. If a custom widget has been set, then
	 * this value is ignored.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * title:
	 *  The title of the tree_column.
	 */
	public void setTitle(char[] title)
	{
		// void gtk_tree_view_column_set_title (GtkTreeViewColumn *tree_column,  const gchar *title);
		gtk_tree_view_column_set_title(gtkTreeViewColumn, Str.toStringz(title));
	}
	
	/**
	 * Returns the title of the widget.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  the title of the column. This string should not be
	 * modified or freed.
	 */
	public char[] getTitle()
	{
		// const gchar* gtk_tree_view_column_get_title (GtkTreeViewColumn *tree_column);
		return Str.toString(gtk_tree_view_column_get_title(gtkTreeViewColumn) );
	}
	
	/**
	 * Sets the column to take available extra space. This space is shared equally
	 * amongst all columns that have the expand set to TRUE. If no column has this
	 * option set, then the last column gets all extra space. By default, every
	 * column is created with this FALSE.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * expand:
	 *  TRUE if the column should take available extra space, FALSE if not
	 * Since 2.4
	 */
	public void setExpand(int expand)
	{
		// void gtk_tree_view_column_set_expand (GtkTreeViewColumn *tree_column,  gboolean expand);
		gtk_tree_view_column_set_expand(gtkTreeViewColumn, expand);
	}
	
	/**
	 * Return TRUE if the column expands to take any available space.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  TRUE, if the column expands
	 * Since 2.4
	 */
	public int getExpand()
	{
		// gboolean gtk_tree_view_column_get_expand (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_expand(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the header to be active if active is TRUE. When the header is active,
	 * then it can take keyboard focus, and can be clicked.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * clickable:
	 *  TRUE if the header is active.
	 */
	public void setClickable(int clickable)
	{
		// void gtk_tree_view_column_set_clickable (GtkTreeViewColumn *tree_column,  gboolean clickable);
		gtk_tree_view_column_set_clickable(gtkTreeViewColumn, clickable);
	}
	
	/**
	 * Returns TRUE if the user can click on the header for the column.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  TRUE if user can click the column header.
	 */
	public int getClickable()
	{
		// gboolean gtk_tree_view_column_get_clickable (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_clickable(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the widget in the header to be widget. If widget is NULL, then the
	 * header button is set with a GtkLabel set to the title of tree_column.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * widget:
	 *  A child GtkWidget, or NULL.
	 */
	public void setWidget(Widget widget)
	{
		// void gtk_tree_view_column_set_widget (GtkTreeViewColumn *tree_column,  GtkWidget *widget);
		gtk_tree_view_column_set_widget(gtkTreeViewColumn, (widget is null) ? null : widget.getWidgetStruct());
	}
	
	/**
	 * Returns the GtkWidget in the button on the column header. If a custom
	 * widget has not been set then NULL is returned.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The GtkWidget in the column header, or NULL
	 */
	public Widget getWidget()
	{
		// GtkWidget* gtk_tree_view_column_get_widget (GtkTreeViewColumn *tree_column);
		return new Widget( gtk_tree_view_column_get_widget(gtkTreeViewColumn) );
	}
	
	/**
	 * Sets the alignment of the title or custom widget inside the column header.
	 * The alignment determines its location inside the button -- 0.0 for left, 0.5
	 * for center, 1.0 for right.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * xalign:
	 *  The alignment, which is between [0.0 and 1.0] inclusive.
	 */
	public void setAlignment(float xalign)
	{
		// void gtk_tree_view_column_set_alignment (GtkTreeViewColumn *tree_column,  gfloat xalign);
		gtk_tree_view_column_set_alignment(gtkTreeViewColumn, xalign);
	}
	
	/**
	 * Returns the current x alignment of tree_column. This value can range
	 * between 0.0 and 1.0.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * Returns:
	 *  The current alignent of tree_column.
	 */
	public float getAlignment()
	{
		// gfloat gtk_tree_view_column_get_alignment (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_alignment(gtkTreeViewColumn);
	}
	
	/**
	 * If reorderable is TRUE, then the column can be reordered by the end user
	 * dragging the header.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * reorderable:
	 *  TRUE, if the column can be reordered.
	 */
	public void setReorderable(int reorderable)
	{
		// void gtk_tree_view_column_set_reorderable  (GtkTreeViewColumn *tree_column,  gboolean reorderable);
		gtk_tree_view_column_set_reorderable(gtkTreeViewColumn, reorderable);
	}
	
	/**
	 * Returns TRUE if the tree_column can be reordered by the user.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * Returns:
	 *  TRUE if the tree_column can be reordered by the user.
	 */
	public int getReorderable()
	{
		// gboolean gtk_tree_view_column_get_reorderable  (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_reorderable(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the logical sort_column_id that this column sorts on when this column
	 * is selected for sorting. Doing so makes the column header clickable.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * sort_column_id:
	 *  The sort_column_id of the model to sort on.
	 */
	public void setSortColumnId(int sortColumnId)
	{
		// void gtk_tree_view_column_set_sort_column_id  (GtkTreeViewColumn *tree_column,  gint sort_column_id);
		gtk_tree_view_column_set_sort_column_id(gtkTreeViewColumn, sortColumnId);
	}
	
	/**
	 * Gets the logical sort_column_id that the model sorts on when this
	 * column is selected for sorting.
	 * See gtk_tree_view_column_set_sort_column_id().
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  the current sort_column_id for this column, or -1 if
	 *  this column can't be used for sorting.
	 */
	public int getSortColumnId()
	{
		// gint gtk_tree_view_column_get_sort_column_id  (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_sort_column_id(gtkTreeViewColumn);
	}
	
	/**
	 * Call this function with a setting of TRUE to display an arrow in
	 * the header button indicating the column is sorted. Call
	 * gtk_tree_view_column_set_sort_order() to change the direction of
	 * the arrow.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * setting:
	 *  TRUE to display an indicator that the column is sorted
	 */
	public void setSortIndicator(int setting)
	{
		// void gtk_tree_view_column_set_sort_indicator  (GtkTreeViewColumn *tree_column,  gboolean setting);
		gtk_tree_view_column_set_sort_indicator(gtkTreeViewColumn, setting);
	}
	
	/**
	 * Gets the value set by gtk_tree_view_column_set_sort_indicator().
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  whether the sort indicator arrow is displayed
	 */
	public int getSortIndicator()
	{
		// gboolean gtk_tree_view_column_get_sort_indicator  (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_sort_indicator(gtkTreeViewColumn);
	}
	
	/**
	 * Changes the appearance of the sort indicator.
	 * This does not actually sort the model. Use
	 * gtk_tree_view_column_set_sort_column_id() if you want automatic sorting
	 * support. This function is primarily for custom sorting behavior, and should
	 * be used in conjunction with gtk_tree_sortable_set_sort_column() to do
	 * that. For custom models, the mechanism will vary.
	 * The sort indicator changes direction to indicate normal sort or reverse sort.
	 * Note that you must have the sort indicator enabled to see anything when
	 * calling this function; see gtk_tree_view_column_set_sort_indicator().
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * order:
	 *  sort order that the sort indicator should indicate
	 */
	public void setSortOrder(GtkSortType order)
	{
		// void gtk_tree_view_column_set_sort_order (GtkTreeViewColumn *tree_column,  GtkSortType order);
		gtk_tree_view_column_set_sort_order(gtkTreeViewColumn, order);
	}
	
	/**
	 * Gets the value set by gtk_tree_view_column_set_sort_order().
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * Returns:
	 *  the sort order the sort indicator is indicating
	 */
	public GtkSortType getSortOrder()
	{
		// GtkSortType gtk_tree_view_column_get_sort_order (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_get_sort_order(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the cell renderer based on the tree_model and iter. That is, for
	 * every attribute mapping in tree_column, it will get a value from the set
	 * column on the iter, and use that value to set the attribute on the cell
	 * renderer. This is used primarily by the GtkTreeView.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * tree_model:
	 *  The GtkTreeModel to to get the cell renderers attributes from.
	 * iter:
	 *  The GtkTreeIter to to get the cell renderer's attributes from.
	 * is_expander:
	 *  TRUE, if the row has children
	 * is_expanded:
	 *  TRUE, if the row has visible children
	 */
	public void cellSetCellData(TreeModel treeModel, TreeIter iter, int isExpander, int isExpanded)
	{
		// void gtk_tree_view_column_cell_set_cell_data  (GtkTreeViewColumn *tree_column,  GtkTreeModel *tree_model,  GtkTreeIter *iter,  gboolean is_expander,  gboolean is_expanded);
		gtk_tree_view_column_cell_set_cell_data(gtkTreeViewColumn, (treeModel is null) ? null : treeModel.getTreeModelStruct(), (iter is null) ? null : iter.getTreeIterStruct(), isExpander, isExpanded);
	}
	
	/**
	 * Obtains the width and height needed to render the column. This is used
	 * primarily by the GtkTreeView.
	 * tree_column:
	 *  A GtkTreeViewColumn.
	 * cell_area:
	 *  The area a cell in the column will be allocated, or NULL
	 * x_offset:
	 *  location to return x offset of a cell relative to cell_area, or NULL
	 * y_offset:
	 *  location to return y offset of a cell relative to cell_area, or NULL
	 * width:
	 *  location to return width needed to render a cell, or NULL
	 * height:
	 *  location to return height needed to render a cell, or NULL
	 */
	public void cellGetSize(Rectangle cellArea, int* xOffset, int* yOffset, int* width, int* height)
	{
		// void gtk_tree_view_column_cell_get_size (GtkTreeViewColumn *tree_column,  GdkRectangle *cell_area,  gint *x_offset,  gint *y_offset,  gint *width,  gint *height);
		gtk_tree_view_column_cell_get_size(gtkTreeViewColumn, (cellArea is null) ? null : cellArea.getRectangleStruct(), xOffset, yOffset, width, height);
	}
	
	/**
	 * Obtains the horizontal position and size of a cell in a column. If the
	 * cell is not found in the column, start_pos and width are not changed and
	 * FALSE is returned.
	 * tree_column:
	 *  a GtkTreeViewColumn
	 * cell_renderer:
	 *  a GtkCellRenderer
	 * start_pos:
	 *  return location for the horizontal position of cell within
	 *  tree_column, may be NULL
	 * width:
	 *  return location for the width of cell, may be NULL
	 * Returns:
	 *  TRUE if cell belongs to tree_column.
	 */
	public int cellGetPosition(CellRenderer cellRenderer, int* startPos, int* width)
	{
		// gboolean gtk_tree_view_column_cell_get_position  (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell_renderer,  gint *start_pos,  gint *width);
		return gtk_tree_view_column_cell_get_position(gtkTreeViewColumn, (cellRenderer is null) ? null : cellRenderer.getCellRendererStruct(), startPos, width);
	}
	
	/**
	 * Returns TRUE if any of the cells packed into the tree_column are visible.
	 * For this to be meaningful, you must first initialize the cells with
	 * gtk_tree_view_column_cell_set_cell_data()
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * Returns:
	 *  TRUE, if any of the cells packed into the tree_column are currently visible
	 */
	public int cellIsVisible()
	{
		// gboolean gtk_tree_view_column_cell_is_visible  (GtkTreeViewColumn *tree_column);
		return gtk_tree_view_column_cell_is_visible(gtkTreeViewColumn);
	}
	
	/**
	 * Sets the current keyboard focus to be at cell, if the column contains
	 * 2 or more editable and activatable cells.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * cell:
	 *  A GtkCellRenderer
	 * Since 2.2
	 */
	public void focusCell(CellRenderer cell)
	{
		// void gtk_tree_view_column_focus_cell (GtkTreeViewColumn *tree_column,  GtkCellRenderer *cell);
		gtk_tree_view_column_focus_cell(gtkTreeViewColumn, (cell is null) ? null : cell.getCellRendererStruct());
	}
	
	/**
	 * Flags the column, and the cell renderers added to this column, to have
	 * their sizes renegotiated.
	 * tree_column:
	 *  A GtkTreeViewColumn
	 * Since 2.8
	 * Property Details
	 * The "alignment" property
	 *  "alignment" gfloat : Read / Write
	 * X Alignment of the column header text or widget.
	 * Allowed values: [0,1]
	 * Default value: 0
	 */
	public void queueResize()
	{
		// void gtk_tree_view_column_queue_resize (GtkTreeViewColumn *tree_column);
		gtk_tree_view_column_queue_resize(gtkTreeViewColumn);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
