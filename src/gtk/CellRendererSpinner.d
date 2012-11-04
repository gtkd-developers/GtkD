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
 * inFile  = GtkCellRendererSpinner.html
 * outPack = gtk
 * outFile = CellRendererSpinner
 * strct   = GtkCellRendererSpinner
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererSpinner
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_spinner_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererSpinner;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.CellRenderer;

/**
 * Description
 * GtkCellRendererSpinner renders a spinning animation in a cell, very
 * similar to GtkSpinner. It can often be used as an alternative
 * to a GtkCellRendererProgress for displaying indefinite activity,
 * instead of actual progress.
 * To start the animation in a cell, set the "active"
 * property to TRUE and increment the "pulse" property
 * at regular intervals. The usual way to set the cell renderer properties
 * for each cell is to bind them to columns in your tree model using e.g.
 * gtk_tree_view_column_add_attribute().
 */
public class CellRendererSpinner : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererSpinner* gtkCellRendererSpinner;
	
	
	public GtkCellRendererSpinner* getCellRendererSpinnerStruct()
	{
		return gtkCellRendererSpinner;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererSpinner;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererSpinner* gtkCellRendererSpinner)
	{
		super(cast(GtkCellRenderer*)gtkCellRendererSpinner);
		this.gtkCellRendererSpinner = gtkCellRendererSpinner;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererSpinner = cast(GtkCellRendererSpinner*)obj;
	}
	
	/**
	 */
	
	/**
	 * Returns a new cell renderer which will show a spinner to indicate
	 * activity.
	 * Since 2.20
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_spinner_new (void);
		auto p = gtk_cell_renderer_spinner_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_spinner_new()");
		}
		this(cast(GtkCellRendererSpinner*) p);
	}
}
