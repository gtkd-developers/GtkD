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
 * inFile  = GtkHSV.html
 * outPack = gtk
 * outFile = HSV
 * strct   = GtkHSV
 * realStrct=
 * ctorStrct=
 * clss    = HSV
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_hsv_
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

module gtk.HSV;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.Widget;

/**
 * GtkHSV is the 'color wheel' part of a complete color selector widget.
 * It allows to select a color by determining its HSV components in an
 * intuitive way. Moving the selection around the outer ring changes the hue,
 * and moving the selection point inside the inner triangle changes value and
 * saturation.
 *
 * GtkHSV has been deprecated together with GtkColorSelection, where
 * it was used.
 */
public class HSV : Widget
{
	
	/** the main Gtk struct */
	protected GtkHSV* gtkHSV;
	
	
	public GtkHSV* getHSVStruct()
	{
		return gtkHSV;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHSV;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkHSV* gtkHSV)
	{
		super(cast(GtkWidget*)gtkHSV);
		this.gtkHSV = gtkHSV;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkHSV = cast(GtkHSV*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(HSV)[] onChangedListeners;
	/**
	 */
	void addOnChanged(void delegate(HSV) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkHSV* hsvStruct, HSV _hSV)
	{
		foreach ( void delegate(HSV) dlg ; _hSV.onChangedListeners )
		{
			dlg(_hSV);
		}
	}
	
	void delegate(GtkDirectionType, HSV)[] onMoveListeners;
	/**
	 * See Also
	 * GtkColorSelection, GtkColorSelectionDialog
	 */
	void addOnMove(void delegate(GtkDirectionType, HSV) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("move" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move",
			cast(GCallback)&callBackMove,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["move"] = 1;
		}
		onMoveListeners ~= dlg;
	}
	extern(C) static void callBackMove(GtkHSV* hsvStruct, GtkDirectionType arg1, HSV _hSV)
	{
		foreach ( void delegate(GtkDirectionType, HSV) dlg ; _hSV.onMoveListeners )
		{
			dlg(arg1, _hSV);
		}
	}
	
	
	/**
	 * Creates a new HSV color selector.
	 * Since 2.14
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget * gtk_hsv_new (void);
		auto p = gtk_hsv_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_hsv_new()");
		}
		this(cast(GtkHSV*) p);
	}
	
	/**
	 * Sets the current color in an HSV color selector.
	 * Color component values must be in the [0.0, 1.0] range.
	 * Since 2.14
	 * Params:
	 * h = Hue
	 * s = Saturation
	 * v = Value
	 */
	public void setColor(double h, double s, double v)
	{
		// void gtk_hsv_set_color (GtkHSV *hsv,  double h,  double s,  double v);
		gtk_hsv_set_color(gtkHSV, h, s, v);
	}
	
	/**
	 * Queries the current color in an HSV color selector.
	 * Returned values will be in the [0.0, 1.0] range.
	 * Since 2.14
	 * Params:
	 * h = Return value for the hue. [out]
	 * s = Return value for the saturation. [out]
	 * v = Return value for the value. [out]
	 */
	public void getColor(out double h, out double s, out double v)
	{
		// void gtk_hsv_get_color (GtkHSV *hsv,  gdouble *h,  gdouble *s,  gdouble *v);
		gtk_hsv_get_color(gtkHSV, &h, &s, &v);
	}
	
	/**
	 * Sets the size and ring width of an HSV color selector.
	 * Since 2.14
	 * Params:
	 * size = Diameter for the hue ring
	 * ringWidth = Width of the hue ring
	 */
	public void setMetrics(int size, int ringWidth)
	{
		// void gtk_hsv_set_metrics (GtkHSV *hsv,  gint size,  gint ring_width);
		gtk_hsv_set_metrics(gtkHSV, size, ringWidth);
	}
	
	/**
	 * Queries the size and ring width of an HSV color selector.
	 * Since 2.14
	 * Params:
	 * size = Return value for the diameter of the hue ring. [out]
	 * ringWidth = Return value for the width of the hue ring. [out]
	 */
	public void getMetrics(out int size, out int ringWidth)
	{
		// void gtk_hsv_get_metrics (GtkHSV *hsv,  gint *size,  gint *ring_width);
		gtk_hsv_get_metrics(gtkHSV, &size, &ringWidth);
	}
	
	/**
	 * An HSV color selector can be said to be adjusting if multiple rapid
	 * changes are being made to its value, for example, when the user is
	 * adjusting the value with the mouse. This function queries whether
	 * the HSV color selector is being adjusted or not.
	 * Since 2.14
	 * Returns: TRUE if clients can ignore changes to the color value, since they may be transitory, or FALSE if they should consider the color value status to be final.
	 */
	public int isAdjusting()
	{
		// gboolean gtk_hsv_is_adjusting (GtkHSV *hsv);
		return gtk_hsv_is_adjusting(gtkHSV);
	}
	
	/**
	 * Converts a color from HSV space to RGB.
	 * Input values must be in the [0.0, 1.0] range;
	 * output values will be in the same range.
	 * Since 2.14
	 * Params:
	 * h = Hue
	 * s = Saturation
	 * v = Value
	 * r = Return value for the red component. [out]
	 * g = Return value for the green component. [out]
	 * b = Return value for the blue component. [out]
	 */
	public static void toRgb(double h, double s, double v, out double r, out double g, out double b)
	{
		// void gtk_hsv_to_rgb (gdouble h,  gdouble s,  gdouble v,  gdouble *r,  gdouble *g,  gdouble *b);
		gtk_hsv_to_rgb(h, s, v, &r, &g, &b);
	}
	
	/**
	 * Converts a color from RGB space to HSV.
	 * Input values must be in the [0.0, 1.0] range;
	 * output values will be in the same range.
	 * Since 2.14
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkHSV *hsv,
	 *  gpointer user_data) : Run First
	 * Params:
	 * r = Red
	 * g = Green
	 * b = Blue
	 * h = Return value for the hue component. [out]
	 * s = Return value for the saturation component. [out]
	 * v = Return value for the value component. [out]
	 */
	public static void rgbToHsv(double r, double g, double b, out double h, out double s, out double v)
	{
		// void gtk_rgb_to_hsv (gdouble r,  gdouble g,  gdouble b,  gdouble *h,  gdouble *s,  gdouble *v);
		gtk_rgb_to_hsv(r, g, b, &h, &s, &v);
	}
}
