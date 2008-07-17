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
 * inFile  = 
 * outPack = gtk
 * outFile = CellEditable
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = CellEditable
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = ObjectG
 * implements:
 * 	- CellEditableIF
 * prefixes:
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG;
 * 	- gdk.Event
 * 	- gtk.CellEditableT
 * 	- gtk.CellEditableIF
 * 	- gobject.Signals
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.CellEditable;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gobject.ObjectG;;
private import gdk.Event;
private import gtk.CellEditableT;
private import gtk.CellEditableIF;
private import gobject.Signals;




/**
 */
public class CellEditable : ObjectG, CellEditableIF
{
	
	// Minimal implementation.
	mixin CellEditableT!(GtkCellEditable);
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCellEditable;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCellEditable* gtkCellEditable)
	{
		if(gtkCellEditable is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkCellEditable passed to constructor.");
			else return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCellEditable);
		if( ptr !is null )
		{
			this = cast(CellEditable)ptr;
			return;
		}
		super(cast(GObject*)gtkCellEditable);
		this.gtkCellEditable = gtkCellEditable;
	}
	
	/**
	 */
}
