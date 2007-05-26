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
 * inFile  = GtkCellRendererCombo.html
 * outPack = gtk
 * outFile = CellRendererCombo
 * strct   = GtkCellRenderer
 * realStrct=GtkCellRendererCombo
 * ctorStrct=
 * clss    = CellRendererCombo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_combo_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 */

module gtk.CellRendererCombo;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.CellRenderer;




/**
 * Description
 * GtkCellRendererCombo renders text in a cell like GtkCellRendererText from
 * which it is derived. But while GtkCellRendererText offers a simple entry to
 * edit the text, GtkCellRendererCombo offers a GtkComboBox or GtkComboBoxEntry
 * widget to edit the text. The values to display in the combo box are taken from
 * the tree model specified in the
 * model property.
 * The combo cell renderer takes care of adding a text cell renderer to the combo
 * box and sets it to display the column specified by its
 * text-column
 * property. Further properties of the comnbo box can be set in a handler for the
 * editing-started signal.
 * The GtkCellRendererCombo cell renderer was added in GTK+ 2.6.
 */
private import gtk.CellRendererText;
public class CellRendererCombo : CellRendererText
{
	
	/** the main Gtk struct */
	protected GtkCellRendererCombo* gtkCellRendererCombo;
	
	
	public GtkCellRendererCombo* getCellRendererComboStruct()
	{
		return gtkCellRendererCombo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellRendererCombo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererCombo* gtkCellRendererCombo)
	{
		super(cast(GtkCellRendererText*)gtkCellRendererCombo);
		this.gtkCellRendererCombo = gtkCellRendererCombo;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkCellRendererCombo.
	 * Adjust how text is drawn using object properties.
	 * Object properties can be set globally (with g_object_set()).
	 * Also, with GtkTreeViewColumn, you can bind a property to a value
	 * in a GtkTreeModel. For example, you can bind the "text" property
	 * on the cell renderer to a string value in the model, thus rendering
	 * a different string in each row of the GtkTreeView.
	 * Returns:
	 *  the new cell renderer
	 * Since 2.6
	 * Property Details
	 * The "has-entry" property
	 *  "has-entry" gboolean : Read / Write
	 * If TRUE, the cell renderer will include an entry and allow to enter values
	 * other than the ones in the popup list.
	 * Default value: TRUE
	 * Since 2.6
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_combo_new (void);
		this(cast(GtkCellRendererCombo*)gtk_cell_renderer_combo_new() );
	}
	
	
}
