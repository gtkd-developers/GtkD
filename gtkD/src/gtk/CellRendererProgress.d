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
 * inFile  = GtkCellRendererProgress.html
 * outPack = gtk
 * outFile = CellRendererProgress
 * strct   = GtkCellRenderer
 * realStrct=GtkCellRendererProgress
 * ctorStrct=
 * clss    = CellRendererProgress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_progress_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * local aliases:
 */

module gtk.CellRendererProgress;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import gtk.CellRenderer;

/**
 * Description
 * GtkCellRendererProgress renders a numeric value as a progress par in a cell.
 * Additionally, it can display a text on top of the progress bar.
 * The GtkCellRendererProgress cell renderer was added in GTK+ 2.6.
 */
private import gtk.CellRenderer;
public class CellRendererProgress : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererProgress* gtkCellRendererProgress;
	
	
	public GtkCellRendererProgress* getCellRendererProgressStruct()
	{
		return gtkCellRendererProgress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCellRendererProgress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererProgress* gtkCellRendererProgress)
	{
		super(cast(GtkCellRenderer*)gtkCellRendererProgress);
		this.gtkCellRendererProgress = gtkCellRendererProgress;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GtkCellRendererProgress.
	 * Returns:
	 *  the new cell renderer
	 * Since 2.6
	 * Property Details
	 * The "text" property
	 *  "text" gchararray : Read / Write
	 * The "text" property determines the label which will be drawn
	 * over the progress bar. Setting this property to NULL causes the default
	 * label to be displayed. Setting this property to an empty string causes
	 * no label to be displayed.
	 * Default value: NULL
	 * Since 2.6
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_progress_new  (void);
		this(cast(GtkCellRendererProgress*)gtk_cell_renderer_progress_new() );
	}
	
}
