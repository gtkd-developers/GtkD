/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * inFile  = GtkGammaCurve.html
 * outPack = gtk
 * outFile = GammaCurve
 * strct   = GtkGammaCurve
 * realStrct=
 * ctorStrct=
 * clss    = GammaCurve
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_gamma_curve_
 * 	- gtk_
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

module gtk.GammaCurve;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;





private import gtk.VBox;

/**
 * Description
 * The GtkGammaCurve widget is a variant of GtkCurve specifically for
 * editing gamma curves, which are used in graphics applications such as the
 * Gimp.
 * The GtkGammaCurve widget shows a curve which the user can edit with the
 * mouse just like a GtkCurve widget. On the right of the curve it also displays
 * 5 buttons, 3 of which change between the 3 curve modes (spline, linear and
 * free), and the other 2 set the curve to a particular gamma value, or reset it
 * to a straight line.
 * As of GTK+ 2.20, GtkGammaCurve has been deprecated since it is too specialized.
 */
public class GammaCurve : VBox
{
	
	/** the main Gtk struct */
	protected GtkGammaCurve* gtkGammaCurve;
	
	
	public GtkGammaCurve* getGammaCurveStruct()
	{
		return gtkGammaCurve;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGammaCurve;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkGammaCurve* gtkGammaCurve)
	{
		if(gtkGammaCurve is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkGammaCurve);
		if( ptr !is null )
		{
			this = cast(GammaCurve)ptr;
			return;
		}
		super(cast(GtkVBox*)gtkGammaCurve);
		this.gtkGammaCurve = gtkGammaCurve;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkGammaCurve = cast(GtkGammaCurve*)obj;
	}
	
	/**
	 */
	
	/**
	 * Warning
	 * gtk_gamma_curve_new has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Creates a new GtkGammaCurve.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_gamma_curve_new (void);
		auto p = gtk_gamma_curve_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_gamma_curve_new()");
		}
		this(cast(GtkGammaCurve*) p);
	}
}
