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

module dui.TreeViewColumn;

private import def.Types;
private import def.Constants;
private import dui.Utils;
private import dui.DUIObject;
private import dui.CellRenderer;
private import dui.CellRendererPixbuf;
private import dui.CellRendererText;
private import dui.CellRendererToggle;
private import dui.ListG;

private import dui.TreeModel;
private import dui.TreeIter;
private import dui.Widget;

alias GtkObject GtkTreeViewColumn;

private:

extern (C)
{
	GType gtk_tree_view_column_get_type();
	GtkTreeViewColumn * gtk_tree_view_column_new();
	GtkTreeViewColumn * gtk_tree_view_column_new_with_attributes(gchar * title, GtkCellRenderer * cell,...);
	void gtk_tree_view_column_pack_start(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell, gboolean expand);
	void gtk_tree_view_column_pack_end(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell, gboolean expand);
	 void gtk_tree_view_column_clear(GtkTreeViewColumn * tree_column);
	 GList * gtk_tree_view_column_get_cell_renderers(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_add_attribute(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, gchar * attribute, gint column);
	void gtk_tree_view_column_set_attributes(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer,...);
	void gtk_tree_view_column_set_cell_data_func(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, GtkTreeCellDataFunc func, gpointer func_data, GtkDestroyNotify destroy);
	void gtk_tree_view_column_clear_attributes(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer);
	void gtk_tree_view_column_set_spacing(GtkTreeViewColumn * tree_column, gint spacing);
	gint gtk_tree_view_column_get_spacing(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_visible(GtkTreeViewColumn * tree_column, gboolean visible);
	gboolean gtk_tree_view_column_get_visible(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_resizable(GtkTreeViewColumn * tree_column, gboolean resizable);
	gboolean gtk_tree_view_column_get_resizable(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_sizing(GtkTreeViewColumn * tree_column, GtkTreeViewColumnSizing type);
	GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing(GtkTreeViewColumn * tree_column);
	gint gtk_tree_view_column_get_width(GtkTreeViewColumn * tree_column);
	gint gtk_tree_view_column_get_fixed_width(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_fixed_width(GtkTreeViewColumn * tree_column, gint fixed_width);
	void gtk_tree_view_column_set_min_width(GtkTreeViewColumn * tree_column, gint min_width);
	gint gtk_tree_view_column_get_min_width(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_max_width(GtkTreeViewColumn * tree_column, gint max_width);
	gint gtk_tree_view_column_get_max_width(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_clicked(GtkTreeViewColumn * tree_column);

/* Options for manipulating the column headers
 */
	void gtk_tree_view_column_set_title(GtkTreeViewColumn * tree_column, gchar * title);
	gchar * gtk_tree_view_column_get_title(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_clickable(GtkTreeViewColumn * tree_column, gboolean clickable);
	gboolean gtk_tree_view_column_get_clickable(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_widget(GtkTreeViewColumn * tree_column, GtkWidget * widget);
	GtkWidget * gtk_tree_view_column_get_widget(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_alignment(GtkTreeViewColumn * tree_column, gfloat xalign);
	gfloat gtk_tree_view_column_get_alignment(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_reorderable(GtkTreeViewColumn * tree_column, gboolean reorderable);
	gboolean gtk_tree_view_column_get_reorderable(GtkTreeViewColumn * tree_column);

/* You probably only want to use gtk_tree_view_column_set_sort_column_id.  The
 * other sorting functions exist primarily to let others do their own custom sorting.
 */
	void gtk_tree_view_column_set_sort_column_id(GtkTreeViewColumn * tree_column, gint sort_column_id);
	gint gtk_tree_view_column_get_sort_column_id(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_sort_indicator(GtkTreeViewColumn * tree_column, gboolean setting);
	gboolean gtk_tree_view_column_get_sort_indicator(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_set_sort_order(GtkTreeViewColumn * tree_column, GtkSortType order);
	GtkSortType gtk_tree_view_column_get_sort_order(GtkTreeViewColumn * tree_column);

/* These functions are meant primarily for interaction between the GtkTreeView and the column.
 */
	void gtk_tree_view_column_cell_set_cell_data(GtkTreeViewColumn * tree_column, GtkTreeModel * tree_model, GtkTreeIter * iter, gboolean is_expander, gboolean is_expanded);
	void gtk_tree_view_column_cell_get_size(GtkTreeViewColumn * tree_column, GdkRectangle * cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height);
	gboolean gtk_tree_view_column_cell_is_visible(GtkTreeViewColumn * tree_column);
	void gtk_tree_view_column_focus_cell(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell);
	gboolean gtk_tree_view_column_cell_get_position(GtkTreeViewColumn * tree_column, GtkCellRenderer * cell_renderer, gint * start_pos, gint * width);
}

/**
 * The columns on the trees and tables.
 * @see TreeView
 */
public:
class TreeViewColumn : DUIObject
{

	debug(status)
	{
		int complete(){return 20;}
		char[] gtkName(){return ST_SAME_NAME;}
		char[] description(){return "The columns on the trees and tables";}
		char[] author(){return "Antonio";}
	}

	/**
	 * Gets this class type
	 * @return this class type
	 */
	static GType getType()
	{
		return gtk_tree_view_column_get_type();
	}

	public:
	/**
	 * Creates a new TreeViewColumn from a GtkTreeViewColumn
	 * @param gtkObject the GtkTreeViewColumn
	 */
	this(GtkObject * gtkObject)
	{
		super(gtkObject);
	}

	public:

	/**
	 * Creates a new TreeViewColumn
	 */
	this()
	{
		this(gtk_tree_view_column_new());
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
				cChar(header), 
				renderer.gtkO(), 
				cChar(type),
				column,
				null)
			);
	}

	/**
	 * packStart
	 * @param cell
	 * @param expand
	 */
	void packStart(CellRenderer cell, bit expand)
	{
		gtk_tree_view_column_pack_start(gtkO(), cell.gtkO(), expand);
	}
	
	/**
	 *  packEnd
	 * @param cell
	 * @param expand
	 */
	void packEnd(CellRenderer cell, bit expand)
	{
		gtk_tree_view_column_pack_end(gtkO(), cell.gtkO(), expand);
	}
	/**
	 *  clear
	 */
	void clear()
	{
		gtk_tree_view_column_clear(gtkO());
	}
	
	/+
	/**
	 * \todo
	 */
	ListG getCellRenderers()
	{
		gtk_tree_view_column_get_cell_renderers(gtkO());
	}
	+/
	
	/**
	 *  addAttribute
	 * @param cell_renderer
	 * @param attribute
	 * @param column
	 */
	void addAttribute(CellRenderer cell_renderer, char[] attribute, gint column)
	{
		gtk_tree_view_column_add_attribute(gtkO(), cell_renderer.gtkO(), cChar(attribute), column);
	}
	
	/+
	/** \todo */
	void gtk_tree_view_column_set_attributes(gtkO(), GtkCellRenderer * cell_renderer,...);
	/** \todo */
	void gtk_tree_view_column_set_cell_data_func(gtkO(), GtkCellRenderer * cell_renderer, GtkTreeCellDataFunc func, gpointer func_data, GtkDestroyNotify destroy);
	+/

	/**
	 *  clearAttributes
	 * @param cell_renderer
	 */
	void clearAttributes(CellRenderer cell_renderer)
	{
		gtk_tree_view_column_clear_attributes(gtkO(), cell_renderer.gtkO());
	}
	/**
	 *  setSpacing
	 * @param spacing
	 */
	void setSpacing(gint spacing)
	{
		gtk_tree_view_column_set_spacing(gtkO(), spacing);
	}
	/**
	 *  getSpacing
	 * @return 
	 */
	gint getSpacing()
	{
		return gtk_tree_view_column_get_spacing(gtkO());
	}
	/**
	 *  setVisible
	 * @param visible
	 */
	void setVisible(bit visible)
	{
		gtk_tree_view_column_set_visible(gtkO(), visible);
	}
	/**
	 *  getVisible
	 * @return 
	 */
	bit getVisible()
	{
		return gtk_tree_view_column_get_visible(gtkO()) == 0 ? false : true;
	}
	
	/**
	 * If resizable is TRUE, then the user can explicitly resize the column by grabbing
	 * the outer edge of the column button.
	 * @param resizable the new resizable mode
	 */
	void setResizable(bit resizable)
	{
		gtk_tree_view_column_set_resizable(gtkO(), resizable);
	}
	
	/**
	 * gets the current resizable mode
	 * @return the current resizable mode
	 */
	bit getResizable()
	{
		return gtk_tree_view_column_get_resizable(gtkO()) == 0 ? false : true;
	}
	
	/+
	void gtk_tree_view_column_set_sizing(gtkO(), GtkTreeViewColumnSizing type);
	GtkTreeViewColumnSizing gtk_tree_view_column_get_sizing(gtkO());
	+/

	
	/**
	 * getWidth
	 * @return 
	 */
	gint getWidth()
	{
		return gtk_tree_view_column_get_width(gtkO());
	}
	
	/**
	 * getFixedWidth
	 * @return 
	 */
	gint getFixedWidth()
	{
		return gtk_tree_view_column_get_fixed_width(gtkO());
	}
	
	/**
	 * setFixedWidth
	 * @param fixed_width
	 */
	void setFixedWidth(gint fixed_width)
	{
		gtk_tree_view_column_set_fixed_width(gtkO(), fixed_width);
	}
	
	/**
	 * setMinWidth
	 * @param min_width
	 */
	void setMinWidth(gint min_width)
	{
		gtk_tree_view_column_set_min_width(gtkO(), min_width);
	}
	
	/**
	 * getMinWidth
	 * @return 
	 */
	gint getMinWidth()
	{
		return gtk_tree_view_column_get_min_width(gtkO());
	}
	
	/**
	 * setMaxWidth
	 * @param max_width
	 */
	void setMaxWidth(gint max_width)
	{
		gtk_tree_view_column_set_max_width(gtkO(), max_width);
	}

	/**
	 * getMaxWidth
	 * @return 
	 */
	gint getMaxWidth()
	{
		return gtk_tree_view_column_get_max_width(gtkO());
	}
	
	/**
	 * clicked
	 */
	void clicked()
	{
		gtk_tree_view_column_clicked(gtkO());
	}
	
	/**
	 * setTitle
	 * @param title
	 */
	void setTitle(char [] title)
	{
		gtk_tree_view_column_set_title(gtkO(), cChar(title));
	}
	
	/**
	 *  getTitle
	 * @return 
	 */
	String getTitle()
	{
		return String.newz(gtk_tree_view_column_get_title(gtkO()));
	}

	/**
	 *  setClicable
	 * @param clickable
	 */
	void setClicable(bit clickable)
	{
		gtk_tree_view_column_set_clickable(gtkO(), clickable);
	}

	/**
	 *  getClickable
	 * @return 
	 */
	bit getClickable()
	{
		return gtk_tree_view_column_get_clickable(gtkO()) == 0 ? false : true;
	}

	private import dui.ObjectG;
	//private import dui.DUIObject;
	
	/**
	 *  setWidget
	 * @param widget
	 */
	void setWidget(Widget widget)
	{
		assert(widget!==null);
		gtk_tree_view_column_set_widget(gtkO(), widget.gtkW());
		
	}

	/**
	 *  getWidget
	 * @return 
	 */
	Widget getWidget()
	{
		return new Widget(gtk_tree_view_column_get_widget(gtkO()));
	}

	/**
	 *  setAlignment
	 * @param xalign
	 */
	void setAlignment(gfloat xalign)
	{
		gtk_tree_view_column_set_alignment(gtkO(), xalign);
	}

	/**
	 *  getAlignment
	 * @return 
	 */
	gfloat getAlignment()
	{
		return gtk_tree_view_column_get_alignment(gtkO());
	}
	
	/**
	 * If reorderable is true, then the column can be reordered by the end user dragging the header.
	 * @param reorderable the new reorderable mode
	 */
	void setReorderable(bit reorderable)
	{
		gtk_tree_view_column_set_reorderable(gtkO(), reorderable);
	}
	
	/**
	 * Gets if the column can be reordered by the end user dragging the header.
	 * @return true if the column can be reordered by the end user dragging the header.
	 */
	bit getReorderable(bit reorderable)
	{
	   return gtk_tree_view_column_get_reorderable(gtkO()) == 0 ? false : true;
	}
	
	/* You probably only want to use gtk_tree_view_column_set_sort_column_id.  The
	 * other sorting functions exist primarily to let others do their own custom sorting.
	 */
	/**
	 * Set the column's sort ID
	 * @param sortColumnID the new column's sort ID
	 */
	void setSortColumnID(gint sortColumnID)
	{
		gtk_tree_view_column_set_sort_column_id(gtkO(), sortColumnID);
	}
	
	/**
	 * Gets the column's sort ID
	 * @return the column's sort ID
	 */
	gint getSortColumnID()
	{
		return gtk_tree_view_column_get_sort_column_id(gtkO());
	}
	
	/**
	 * Sets the sort indicator visibility
	 * @param setting the new sort indicator visibility
	 */
	void setSortIndicator(bit setting)
	{
		gtk_tree_view_column_set_sort_indicator(gtkO(), setting);
	}
	
	/**
	 * Gets if the sort indicator is visible
	 * @return true if the sort indicator is visible
	 */
	bit getSortIndicator()
	{
		return gtk_tree_view_column_get_sort_indicator(gtkO()) == 0 ? false : true;
	}
	
	/**
	 * Sets the sort order type
	 * @param order the new sort order type
	 */
	void setSortOrder(SortType order)
	{
		gtk_tree_view_column_set_sort_order(gtkO(), order);
	}
	
	/**
	 * Gets the sort order type
	 * @return the sort order type
	 */
	SortType getSortOrder()
	{
		return cast(SortType)gtk_tree_view_column_get_sort_order(gtkO());
	}

	/+
	/* These functions are meant primarily for interaction between the GtkTreeView and the column.
	 */
	/** todo */
	void gtk_tree_view_column_cell_set_cell_data(gtkO(), GtkTreeModel * tree_model, GtkTreeIter * iter, gboolean is_expander, gboolean is_expanded);
	/** todo */
	void gtk_tree_view_column_cell_get_size(gtkO(), GdkRectangle * cell_area, gint * x_offset, gint * y_offset, gint * width, gint * height);
	/** todo */
	gboolean gtk_tree_view_column_cell_is_visible(gtkO());
	/** todo */
	void gtk_tree_view_column_focus_cell(gtkO(), GtkCellRenderer * cell);
	/** todo */
	gboolean gtk_tree_view_column_cell_get_position(gtkO(), GtkCellRenderer * cell_renderer, gint * start_pos, gint * width);
	+/
}
