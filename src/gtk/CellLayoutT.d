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
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ListG
 * 	- gtk.CellArea
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GList* -> ListG
 * 	- GtkCellArea* -> CellArea
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellLayoutT;

public  import gtkc.gtktypes;

public import gtkc.gtk;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import glib.ListG;
public import gtk.CellArea;
public import gtk.CellRenderer;




/**
 * GtkCellLayout is an interface to be implemented by all objects which
 * want to provide a GtkTreeViewColumn-like API for packing cells, setting
 * attributes and data funcs.
 *
 * One of the notable features provided by implementations of GtkCellLayout
 * are attributes. Attributes let you set the properties
 * in flexible ways. They can just be set to constant values like regular
 * properties. But they can also be mapped to a column of the underlying
 * tree model with gtk_cell_layout_set_attributes(), which means that the value
 * of the attribute can change from cell to cell as they are rendered by the
 * cell renderer. Finally, it is possible to specify a function with
 * gtk_cell_layout_set_cell_data_func() that is called to determine the value
 * of the attribute for each cell that is rendered.
 *
 * GtkCellLayouts as GtkBuildable
 *
 * Implementations of GtkCellLayout which also implement the GtkBuildable
 * interface (GtkCellView, GtkIconView, GtkComboBox,
 * GtkEntryCompletion, GtkTreeViewColumn) accept GtkCellRenderer objects
 * as <child> elements in UI definitions. They support a custom
 * <attributes> element for their children, which can contain
 * multiple <attribute> elements. Each <attribute> element has
 * a name attribute which specifies a property of the cell renderer; the
 * content of the element is the attribute value.
 *
 * $(DDOC_COMMENT example)
 *
 * Furthermore for implementations of GtkCellLayout that use a GtkCellArea
 * to lay out cells (all GtkCellLayouts in GTK+ use a GtkCellArea)
 * cell properties can also be defined
 * in the format by specifying the custom <cell-packing> attribute which
 * can contain multiple <property> elements defined in the normal way.
 *
 * $(DDOC_COMMENT example)
 *
 * Subclassing GtkCellLayout implementations
 *
 * When subclassing a widget that implements GtkCellLayout like
 * GtkIconView or GtkComboBox, there are some considerations related
 * to the fact that these widgets internally use a GtkCellArea.
 * The cell area is exposed as a construct-only property by these
 * widgets. This means that it is possible to e.g. do
 *
 * $(DDOC_COMMENT example)
 *
 * to use a custom cell area with a combo box. But construct properties
 * are only initialized after instance init()
 * functions have run, which means that using functions which rely on
 * the existence of the cell area in your subclass' init() function will
 * cause the default cell area to be instantiated. In this case, a provided
 * construct property value will be ignored (with a warning, to alert
 * you to the problem).
 *
 * $(DDOC_COMMENT example)
 *
 * If supporting alternative cell areas with your derived widget is
 * not important, then this does not have to concern you. If you want
 * to support alternative cell areas, you can do so by moving the
 * problematic calls out of init() and into a constructor()
 * for your class.
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
	 * cell = a GtkCellRenderer
	 * expand = TRUE if cell is to be given extra space allocated to cell_layout
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
	 * cell = a GtkCellRenderer
	 * expand = TRUE if cell is to be given extra space allocated to cell_layout
	 */
	public void packEnd(CellRenderer cell, int expand)
	{
		// void gtk_cell_layout_pack_end (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  gboolean expand);
		gtk_cell_layout_pack_end(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), expand);
	}
	
	/**
	 * Returns the underlying GtkCellArea which might be cell_layout
	 * if called on a GtkCellArea or might be NULL if no GtkCellArea
	 * is used by cell_layout.
	 * Returns: the cell area used by cell_layout. [transfer none] Since 3.0
	 */
	public CellArea getArea()
	{
		// GtkCellArea * gtk_cell_layout_get_area (GtkCellLayout *cell_layout);
		auto p = gtk_cell_layout_get_area(getCellLayoutTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CellArea)(cast(GtkCellArea*) p);
	}
	
	/**
	 * Returns the cell renderers which have been added to cell_layout.
	 * Since 2.12
	 * Returns: a list of cell renderers. The list, but not the renderers has been newly allocated and should be freed with g_list_free() when no longer needed. [element-type GtkCellRenderer][transfer container]
	 */
	public ListG getCells()
	{
		// GList * gtk_cell_layout_get_cells (GtkCellLayout *cell_layout);
		auto p = gtk_cell_layout_get_cells(getCellLayoutTStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Re-inserts cell at position.
	 * Note that cell has already to be packed into cell_layout
	 * for this to function properly.
	 * Since 2.4
	 * Params:
	 * cell = a GtkCellRenderer to reorder
	 * position = new position to insert cell at
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
	 * Adds an attribute mapping to the list in cell_layout.
	 * The column is the column of the model to get a value from, and the
	 * attribute is the parameter on cell to be set from the value. So for
	 * example if column 2 of the model contains strings, you could have the
	 * "text" attribute of a GtkCellRendererText get its values from column 2.
	 * Since 2.4
	 * Params:
	 * cell = a GtkCellRenderer
	 * attribute = an attribute on the renderer
	 * column = the column position on the model to get the attribute from
	 */
	public void addAttribute(CellRenderer cell, string attribute, int column)
	{
		// void gtk_cell_layout_add_attribute (GtkCellLayout *cell_layout,  GtkCellRenderer *cell,  const gchar *attribute,  gint column);
		gtk_cell_layout_add_attribute(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct(), Str.toStringz(attribute), column);
	}
	
	/**
	 * Sets the GtkCellLayoutDataFunc to use for cell_layout.
	 * This function is used instead of the standard attributes mapping
	 * for setting the column value, and should set the value of cell_layout's
	 * cell renderer(s) as appropriate.
	 * func may be NULL to remove a previously set function.
	 * Since 2.4
	 * Params:
	 * cell = a GtkCellRenderer
	 * func = the GtkCellLayoutDataFunc to use, or NULL. [allow-none]
	 * funcData = user data for func
	 * destroy = destroy notify for func_data
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
	 * cell = a GtkCellRenderer to clear the attribute mapping on
	 */
	public void clearAttributes(CellRenderer cell)
	{
		// void gtk_cell_layout_clear_attributes (GtkCellLayout *cell_layout,  GtkCellRenderer *cell);
		gtk_cell_layout_clear_attributes(getCellLayoutTStruct(), (cell is null) ? null : cell.getCellRendererStruct());
	}
}
