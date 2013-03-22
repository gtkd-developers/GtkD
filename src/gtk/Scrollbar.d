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
 * inFile  = GtkScrollbar.html
 * outPack = gtk
 * outFile = Scrollbar
 * strct   = GtkScrollbar
 * realStrct=
 * ctorStrct=
 * clss    = Scrollbar
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_scrollbar_
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

module gtk.Scrollbar;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Adjustment;



private import gtk.Range;

/**
 * The GtkScrollbar widget is a horizontal or vertical scrollbar,
 * depending on the value of the "orientation" property.
 *
 * The position of the thumb in a scrollbar is controlled by the scroll
 * adjustments. See GtkAdjustment for the fields in an adjustment - for
 * GtkScrollbar, the "value" field represents the position
 * of the scrollbar, which must be between the "lower" field
 * and "upper" - "page-size". The
 * "page-size" field represents the size of the visible
 * scrollable area. The "step-increment" and
 * "page-increment" fields are properties when the user asks to
 * step down (using the small stepper arrows) or page down (using for
 * example the PageDown key).
 */
public class Scrollbar : Range
{
	
	/** the main Gtk struct */
	protected GtkScrollbar* gtkScrollbar;
	
	
	public GtkScrollbar* getScrollbarStruct()
	{
		return gtkScrollbar;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkScrollbar;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkScrollbar* gtkScrollbar)
	{
		super(cast(GtkRange*)gtkScrollbar);
		this.gtkScrollbar = gtkScrollbar;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkScrollbar = cast(GtkScrollbar*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new scrollbar with the given orientation.
	 * Params:
	 * orientation = the scrollbar's orientation.
	 * adjustment = the GtkAdjustment to use, or NULL to create a new adjustment. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GtkOrientation orientation, Adjustment adjustment)
	{
		// GtkWidget * gtk_scrollbar_new (GtkOrientation orientation,  GtkAdjustment *adjustment);
		auto p = gtk_scrollbar_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_scrollbar_new(orientation, (adjustment is null) ? null : adjustment.getAdjustmentStruct())");
		}
		this(cast(GtkScrollbar*) p);
	}
}
