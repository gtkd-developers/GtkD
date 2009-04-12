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
 * omit signals:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.VScrollbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gtk.Adjustment;



private import gtk.Scrollbar;

/**
 * Description
 * The GtkVScrollbar widget is a widget arranged verticall creating a
 * scrollbar. See GtkScrollbar for details on
 * scrollbars. GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left NULL in which case one
 * will be created for you. See GtkAdjustment for details.
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
	protected override void* getStruct()
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
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkVScrollbar);
		if( ptr !is null )
		{
			this = cast(VScrollbar)ptr;
			return;
		}
		super(cast(GtkScrollbar*)gtkVScrollbar);
		this.gtkVScrollbar = gtkVScrollbar;
	}
	
	/**
	 */
	
	/**
	 * Creates a new vertical scrollbar.
	 * Params:
	 * adjustment =  the GtkAdjustment to use, or NULL to create a new adjustment
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget* gtk_vscrollbar_new (GtkAdjustment *adjustment);
		auto p = gtk_vscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct())");
		}
		this(cast(GtkVScrollbar*) p);
	}
}
