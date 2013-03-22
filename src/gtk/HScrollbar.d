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
 * inFile  = GtkHScrollbar.html
 * outPack = gtk
 * outFile = HScrollbar
 * strct   = GtkHScrollbar
 * realStrct=
 * ctorStrct=
 * clss    = HScrollbar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hscrollbar_
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

module gtk.HScrollbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Adjustment;



private import gtk.Scrollbar;

/**
 * The GtkHScrollbar widget is a widget arranged horizontally creating a
 * scrollbar. See GtkScrollbar for details on
 * scrollbars. GtkAdjustment pointers may be added to handle the
 * adjustment of the scrollbar or it may be left NULL in which case one
 * will be created for you. See GtkScrollbar for a description of what the
 * fields in an adjustment represent for a scrollbar.
 *
 * GtkHScrollbar has been deprecated, use GtkScrollbar instead.
 */
public class HScrollbar : Scrollbar
{
	
	/** the main Gtk struct */
	protected GtkHScrollbar* gtkHScrollbar;
	
	
	public GtkHScrollbar* getHScrollbarStruct()
	{
		return gtkHScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHScrollbar* gtkHScrollbar)
	{
		super(cast(GtkScrollbar*)gtkHScrollbar);
		this.gtkHScrollbar = gtkHScrollbar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHScrollbar = cast(GtkHScrollbar*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_hscrollbar_new has been deprecated since version 3.2 and should not be used in newly-written code. Use gtk_scrollbar_new() with GTK_ORIENTATION_HORIZONTAL instead
	 * Creates a new horizontal scrollbar.
	 * Params:
	 * adjustment = the GtkAdjustment to use, or NULL to create a new adjustment. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget * gtk_hscrollbar_new (GtkAdjustment *adjustment);
		auto p = gtk_hscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_hscrollbar_new((adjustment is null) ? null : adjustment.getAdjustmentStruct())");
		}
		this(cast(GtkHScrollbar*) p);
	}
}
