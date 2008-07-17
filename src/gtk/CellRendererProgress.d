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
 * strct   = GtkCellRendererProgress
 * realStrct=
 * ctorStrct=GtkCellRenderer
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
 * omit signals:
 * imports:
 * 	- gtk.CellRenderer
 * structWrap:
 * 	- GtkCellRenderer* -> CellRenderer
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererProgress;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gtk.CellRenderer;



private import gtk.CellRenderer;

/**
 * Description
 * GtkCellRendererProgress renders a numeric value as a progress par in a cell.
 * Additionally, it can display a text on top of the progress bar.
 * The GtkCellRendererProgress cell renderer was added in GTK+ 2.6.
 */
public class CellRendererProgress : CellRenderer
{
	
	/** the main Gtk struct */
	protected GtkCellRendererProgress* gtkCellRendererProgress;
	
	
	public GtkCellRendererProgress* getCellRendererProgressStruct()
	{
		return gtkCellRendererProgress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererProgress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererProgress* gtkCellRendererProgress)
	{
		if(gtkCellRendererProgress is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCellRendererProgress);
		if( ptr !is null )
		{
			this = cast(CellRendererProgress)ptr;
			return;
		}
		super(cast(GtkCellRenderer*)gtkCellRendererProgress);
		this.gtkCellRendererProgress = gtkCellRendererProgress;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkCellRendererProgress.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer* gtk_cell_renderer_progress_new (void);
		auto p = gtk_cell_renderer_progress_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_progress_new()");
		}
		this(cast(GtkCellRendererProgress*) p);
	}
}
