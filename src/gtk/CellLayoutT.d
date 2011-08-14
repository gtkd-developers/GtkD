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
 * inFile  = GtkCellLayout.html
 * outPack = gtk
 * outFile = CellLayoutT
 * strct   = GtkCellLayout
 * realStrct=
 * ctorStrct=
 * clss    = CellLayoutT
 * interf  = CellLayoutIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_layout_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.CellRenderer
 * 	- glib.ListG
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellLayoutT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;


public import glib.Str;
public import gtk.CellRenderer;
public import glib.ListG;




/**
 * Description
 * GtkCellLayout is an interface to be implemented by all objects which
 * want to provide a GtkTreeViewColumn-like API for packing cells, setting
 * attributes and data funcs.
 * One of the notable features provided by implementations of GtkCellLayout
 * are attributes. Attributes let you set the properties
 * in flexible ways. They can just be set to constant values like regular
 * properties. But they can also be mapped to a column of the underlying
 * tree model with gtk_cell_layout_set_attributes(), which means that the value
 * of the attribute can change from cell to cell as they are rendered by the
 * cell renderer. Finally, it is possible to specify a function with
 * gtk_cell_layout_set_cell_data_func() that is called to determine the value
 * of the attribute for each cell that is rendered.
 * GtkCellLayouts as GtkBuildable
 * Implementations of GtkCellLayout which also implement the GtkBuildable
 * interface (GtkCellView, GtkIconView, GtkComboBox, GtkComboBoxEntry,
 * GtkEntryCompletion, GtkTreeViewColumn) accept GtkCellRenderer objects
 * as <child> elements in UI definitions. They support a custom
 * <attributes> element for their children, which can contain
 * multiple <attribute> elements. Each <attribute> element has
 * a name attribute which specifies a property of the cell renderer; the
 * content of the element is the attribute value.
 */
public template CellLayoutT(TStruct)
{
	
	/** the main Gtk struct */
	protected GtkCellLayout* gtkCellLayout;
	
	
	public GtkCellLayout* getCellLayoutTStruct()
	{
		return cast(GtkCellLayout*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Packs the cell into the beginning of cell_layout. If expand is FALSE,
	 * then the cell is allocated no more space than it needs. Any unused space
	 * is divided evenly between cells for which expand is TRUE.
	 * Note that reusing the same cell renderer is not supported.
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer.
	 * expand = TRUE if cell is to be given extra space allocated to cell_layout.
	 */
	public void packStart(CellRenderer cell, int expand)
	{
		// void gtk_cell_layout_pack_start (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  gboolean expand);
		gtk_cell_layout_pack_start(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}
	
	/**
	 * Adds the cell to the end of cell_layout. If expand is FALSE, then the
	 * cell is allocated no more space than it needs. Any unused space is
	 * divided evenly between cells for which expand is TRUE.
	 * Note that reusing the same cell renderer is not supported.
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer.
	 * expand = TRUE if cell is to be given extra space allocated to cell_layout.
	 */
	public void packEnd(CellRenderer cell, int expand)
	{
		// void gtk_cell_layout_pack_end (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  gboolean expand);
		gtk_cell_layout_pack_end(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}
	
	/**
	 * Returns the cell renderers which have been added to cell_layout.
	 * Since 2.12
	 * Returns: a list of cell renderers. The list, but not the renderers has been newly allocated and should be freed with g_list_free() when no longer needed. . element-type GtkCellRenderer. transfer container GtkCellRenderer.
	 */
	public ListG getCells()
	{
		// GList * gtk_cell_layout_get_cells (GtkCellLayout *cell_layout);
		auto p = gtk_cell_layout_get_cells(getCellLayoutTStruct());
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Re-inserts cell at position. Note that cell has already to be packed
	 * into cell_layout for this to function properly.
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer to reorder.
	 * position = New position to insert cell at.
	 */
	public void reorder(CellRenderer cell, int position)
	{
		// void gtk_cell_layout_reorder (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  gint position);
		gtk_cell_layout_reorder(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), position);
	}
	
	/**
	 * Unsets all the mappings on all renderers on cell_layout and
	 * removes all renderers from cell_layout.
	 * Since 2.4
	 */
	public void clear()
	{
		// void gtk_cell_layout_clear (GtkCellLayout *cell_layout);
		gtk_cell_layout_clear(getCellLayoutTStruct());
	}
	
	/**
	 * Adds an attribute mapping to the list in cell_layout. The column is the
	 * column of the model to get a value from, and the attribute is the
	 * parameter on cell to be set from the value. So for example if column 2
	 * of the model contains strings, you could have the "text" attribute of a
	 * GtkCellRendererText get its values from column 2.
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer.
	 * attribute = An attribute on the renderer.
	 * column = The column position on the model to get the attribute from.
	 */
	public void addAttribute(CellRenderer cell, string attribute, int column)
	{
		// void gtk_cell_layout_add_attribute (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  const gchar *attribute,  gint column);
		gtk_cell_layout_add_attribute(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), Str.toStringz(attribute), column);
	}
	
	/**
	 * Sets the GtkCellLayoutDataFunc to use for cell_layout. This function
	 * is used instead of the standard attributes mapping for setting the
	 * column value, and should set the value of cell_layout's cell renderer(s)
	 * as appropriate. func may be NULL to remove and older one.
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer.
	 * func = The GtkCellLayoutDataFunc to use.
	 * funcData = The user data for func.
	 * destroy = The destroy notification for func_data.
	 */
	public void setCellDataFunc(CellRenderer cell, GtkCellLayoutDataFunc func, void* funcData, GDestroyNotify destroy)
	{
		// void gtk_cell_layout_set_cell_data_func (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  GtkCellLayoutDataFunc func,  gpointer func_data,  GDestroyNotify destroy);
		gtk_cell_layout_set_cell_data_func(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), func, funcData, destroy);
	}
	
	/**
	 * Clears all existing attributes previously set with
	 * gtk_cell_layout_set_attributes().
	 * Since 2.4
	 * Params:
	 * cell = A GtkCellRenderer to clear the attribute mapping on.
	 */
	public void clearAttributes(CellRenderer cell)
	{
		// void gtk_cell_layout_clear_attributes (GtkCellLayout *cell_layout,  GtkCellRenderer *cell);
		gtk_cell_layout_clear_attributes(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}
}
