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
 * inFile  = GtkVScrollbar.html
 * outPack = gtk
 * outFile = VScrollbar
 * strct   = GtkVScrollbar
 * realStrct=
 * ctorStrct=
 * clss    = VScrollbar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vscrollbar_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 */

module gtk.VScrollbar;

private import gtkc.gtktypes;

private import gtkc.gtk;


private import gtk.Adjustment;



private import gtk.Scrollbar;

/**
 * Description
 */
public class VScrollbar : Scrollbar
{
	
	/** the main Gtk struct */
	protected GtkVScrollbar* gtkVScrollbar;
	
	
	public GtkVScrollbar* getVScrollbarStruct()
	{
		return gtkVScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkVScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVScrollbar* gtkVScrollbar)
	{
		if(gtkVScrollbar is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gtkVScrollbar passed to constructor.");
			else return;
		}
		super(cast(GtkScrollbar*)gtkVScrollbar);
		this.gtkVScrollbar = gtkVScrollbar;
	}
	
	/**
	 */
	
	
	/**
	 * Params:
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget* gtk_vscrollbar_new (GtkAdjustment *adjustment);
		this(cast(GtkVScrollbar*)gtk_vscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct()) );
	}
}
