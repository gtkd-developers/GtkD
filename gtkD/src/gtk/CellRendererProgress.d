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
 * module aliases:
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
		assert(gtkCellRendererProgress !is null, "struct gtkCellRendererProgress is null on constructor");
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
	 * The "pulse" property
	 *  "pulse" gint : Read / Write
	 * Setting this to a non-negative value causes the cell renderer to
	 * enter "activity mode", where a block bounces back and forth to
	 * indicate that some progress is made, without specifying exactly how
	 * much.
	 * Each increment of the property causes the block to move by a little
	 * bit.
	 * To indicate that the activity has not started yet, set the property
	 * to zero. To indicate completion, set the property to G_MAXINT.
	 * Allowed values: >= -1
	 * Default value: -1
	 * Since 2.12
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_progress_new (void);
		this(cast(GtkCellRendererProgress*)gtk_cell_renderer_progress_new() );
	}
	
	
}
