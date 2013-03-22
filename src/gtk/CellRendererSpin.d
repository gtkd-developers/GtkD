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
 * inFile  = GtkCellRendererSpin.html
 * outPack = gtk
 * outFile = CellRendererSpin
 * strct   = GtkCellRendererSpin
 * realStrct=
 * ctorStrct=GtkCellRenderer
 * clss    = CellRendererSpin
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_cell_renderer_spin_
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

module gtk.CellRendererSpin;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gtk.CellRendererText;

/**
 * GtkCellRendererSpin renders text in a cell like GtkCellRendererText from
 * which it is derived. But while GtkCellRendererText offers a simple entry to
 * edit the text, GtkCellRendererSpin offers a GtkSpinButton widget. Of course,
 * that means that the text has to be parseable as a floating point number.
 *
 * The range of the spinbutton is taken from the adjustment property of the
 * cell renderer, which can be set explicitly or mapped to a column in the
 * tree model, like all properties of cell renders. GtkCellRendererSpin
 * also has properties for the "climb-rate" and the number
 * of "digits" to display. Other GtkSpinButton properties
 * can be set in a handler for the "editing-started" signal.
 *
 * The GtkCellRendererSpin cell renderer was added in GTK+ 2.10.
 */
public class CellRendererSpin : CellRendererText
{
	
	/** the main Gtk struct */
	protected GtkCellRendererSpin* gtkCellRendererSpin;
	
	
	public GtkCellRendererSpin* getCellRendererSpinStruct()
	{
		return gtkCellRendererSpin;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellRendererSpin;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellRendererSpin* gtkCellRendererSpin)
	{
		super(cast(GtkCellRendererText*)gtkCellRendererSpin);
		this.gtkCellRendererSpin = gtkCellRendererSpin;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCellRendererSpin = cast(GtkCellRendererSpin*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkCellRendererSpin.
	 * Since 2.10
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkCellRenderer * gtk_cell_renderer_spin_new (void);
		auto p = gtk_cell_renderer_spin_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_cell_renderer_spin_new()");
		}
		this(cast(GtkCellRendererSpin*) p);
	}
}
