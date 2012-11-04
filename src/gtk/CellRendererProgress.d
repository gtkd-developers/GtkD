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
 * inFile  = GtkCellRendererProgress.html
 * outPack = gtk
 * outFile = CellRendererProgress
 * strct   = GtkCellRendererProgress
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererProgress
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_cell_renderer_progress_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellRendererProgress;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.CellRenderer;

/**
 * Description
 * GtkCellRendererProgress renders a numeric value as a progress par in a cell.
 * Additionally, it can display a text on top of the progress bar.
 * The GtkCellRendererProgress cell renderer was added in GTK+ 2.6.
 */
public class CellRendererProgress : CellRenderer, OrientableIF
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
		super(cast(GtkCellRenderer*)gtkCellRendererProgress);
		this.gtkCellRendererProgress = gtkCellRendererProgress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererProgress = cast(GtkCellRendererProgress*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkCellRenderer);
	
	/**
	 */
	
	/**
	 * Creates a new GtkCellRendererProgress.
	 * Since 2.6
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_progress_new (void);
		auto p = gtk_cell_renderer_progress_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_progress_new()");
		}
		this(cast(GtkCellRendererProgress*) p);
	}
}
