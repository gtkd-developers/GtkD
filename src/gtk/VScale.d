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
 * inFile  = GtkVScale.html
 * outPack = gtk
 * outFile = VScale
 * strct   = GtkVScale
 * realStrct=
 * ctorStrct=
 * clss    = VScale
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_vscale_
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

module gtk.VScale;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gtk.Adjustment;



private import gtk.Scale;

/**
 * The GtkVScale widget is used to allow the user to select a value using
 * a vertical slider. To create one, use gtk_hscale_new_with_range().
 *
 * The position to show the current value, and the number of decimal places
 * shown can be set using the parent GtkScale class's functions.
 *
 * GtkVScale has been deprecated, use GtkScale instead.
 */
public class VScale : Scale
{
	
	/** the main Gtk struct */
	protected GtkVScale* gtkVScale;
	
	
	public GtkVScale* getVScaleStruct()
	{
		return gtkVScale;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkVScale;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkVScale* gtkVScale)
	{
		super(cast(GtkScale*)gtkVScale);
		this.gtkVScale = gtkVScale;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkVScale = cast(GtkVScale*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_vscale_new has been deprecated since version 3.2 and should not be used in newly-written code. Use gtk_scale_new() with GTK_ORIENTATION_VERTICAL instead
	 * Creates a new GtkVScale.
	 * Params:
	 * adjustment = the GtkAdjustment which sets the range of the scale.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment adjustment)
	{
		// GtkWidget * gtk_vscale_new (GtkAdjustment *adjustment);
		auto p = gtk_vscale_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vscale_new((adjustment is null) ? null : adjustment.getAdjustmentStruct())");
		}
		this(cast(GtkVScale*) p);
	}
	
	/**
	 * Warning
	 * gtk_vscale_new_with_range has been deprecated since version 3.2 and should not be used in newly-written code. Use gtk_scale_new_with_range() with GTK_ORIENTATION_VERTICAL instead
	 * Creates a new vertical scale widget that lets the user input a
	 * number between min and max (including min and max) with the
	 * increment step. step must be nonzero; it's the distance the
	 * slider moves when using the arrow keys to adjust the scale value.
	 * Note that the way in which the precision is derived works best if step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_scale_set_digits() to correct it.
	 * Params:
	 * min = minimum value
	 * max = maximum value
	 * step = step increment (tick size) used with keyboard shortcuts
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double min, double max, double step)
	{
		// GtkWidget * gtk_vscale_new_with_range (gdouble min,  gdouble max,  gdouble step);
		auto p = gtk_vscale_new_with_range(min, max, step);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_vscale_new_with_range(min, max, step)");
		}
		this(cast(GtkVScale*) p);
	}
}
