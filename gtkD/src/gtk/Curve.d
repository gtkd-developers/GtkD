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
 * inFile  = GtkCurve.html
 * outPack = gtk
 * outFile = Curve
 * strct   = GtkCurve
 * realStrct=
 * ctorStrct=
 * clss    = Curve
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_curve_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 */

module gtk.Curve;

private import gtkc.gtktypes;

private import gtkc.gtk;






/**
 * Description
 * Note
 *  This widget is considered too specialized/little-used for
 *  GTK+, and will in the future be moved to some other package. If
 *  your application needs this widget, feel free to use it, as the
 *  widget does work and is useful in some applications; it's just not
 *  of general interest. However, we are not accepting new features for
 *  the widget, and it will eventually move out of the GTK+
 *  distribution.
 * The GtkCurve widget allows the user to edit a curve covering a range of
 * values. It is typically used to fine-tune color balances in graphics
 * applications like the Gimp.
 * The GtkCurve widget has 3 modes of operation - spline, linear and free.
 * In spline mode the user places points on the curve which are automatically
 * connected together into a smooth curve. In linear mode the user places points
 * on the curve which are connected by straight lines. In free mode the user can
 * draw the points of the curve freely, and they are not connected at all.
 */
private import gtk.DrawingArea;
public class Curve : DrawingArea
{
	
	/** the main Gtk struct */
	protected GtkCurve* gtkCurve;
	
	
	public GtkCurve* getCurveStruct()
	{
		return gtkCurve;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkCurve;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCurve* gtkCurve)
	{
		assert(gtkCurve !is null, "struct gtkCurve is null on constructor");
		super(cast(GtkDrawingArea*)gtkCurve);
		this.gtkCurve = gtkCurve;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Curve)[] onCurveTypeChangedListeners;
	void addOnCurveTypeChanged(void delegate(Curve) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("curve-type-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"curve-type-changed",
			cast(GCallback)&callBackCurveTypeChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["curve-type-changed"] = 1;
		}
		onCurveTypeChangedListeners ~= dlg;
	}
	extern(C) static void callBackCurveTypeChanged(GtkCurve* curveStruct, Curve curve)
	{
		bool consumed = false;
		
		foreach ( void delegate(Curve) dlg ; curve.onCurveTypeChangedListeners )
		{
			dlg(curve);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkCurve.
	 * Returns:
	 * a new GtkCurve.
	 */
	public this ()
	{
		// GtkWidget* gtk_curve_new (void);
		this(cast(GtkCurve*)gtk_curve_new() );
	}
	
	/**
	 * Resets the curve to a straight line from the minimum x and y values to the
	 * maximum x and y values (i.e. from the bottom-left to the top-right corners).
	 * The curve type is not changed.
	 * curve:
	 * a GtkCurve.
	 */
	public void reset()
	{
		// void gtk_curve_reset (GtkCurve *curve);
		gtk_curve_reset(gtkCurve);
	}
	
	/**
	 * Recomputes the entire curve using the given gamma value.
	 * A gamma value of 1 results in a straight line. Values greater than 1 result
	 * in a curve above the straight line. Values less than 1 result in a curve
	 * below the straight line. The curve type is changed to GTK_CURVE_TYPE_FREE.
	 * FIXME: Needs a more precise definition of gamma.
	 * curve:
	 * a GtkCurve.
	 * gamma_:
	 * the gamma value.
	 */
	public void setGamma(float gamma)
	{
		// void gtk_curve_set_gamma (GtkCurve *curve,  gfloat gamma_);
		gtk_curve_set_gamma(gtkCurve, gamma);
	}
	
	/**
	 * Sets the minimum and maximum x and y values of the curve.
	 * The curve is also reset with a call to gtk_curve_reset().
	 * curve:
	 * a GtkCurve.
	 * min_x:
	 * the minimum x value.
	 * max_x:
	 * the maximum x value.
	 * min_y:
	 * the minimum y value.
	 * max_y:
	 * the maximum y value.
	 */
	public void setRange(float minX, float maxX, float minY, float maxY)
	{
		// void gtk_curve_set_range (GtkCurve *curve,  gfloat min_x,  gfloat max_x,  gfloat min_y,  gfloat max_y);
		gtk_curve_set_range(gtkCurve, minX, maxX, minY, maxY);
	}
	
	/**
	 * Returns a vector of points representing the curve.
	 * curve:
	 * a GtkCurve.
	 * veclen:
	 * the number of points to calculate.
	 * vector:
	 * returns the points.
	 */
	public void getVector(int veclen, float[] vector)
	{
		// void gtk_curve_get_vector (GtkCurve *curve,  int veclen,  gfloat vector[]);
		gtk_curve_get_vector(gtkCurve, veclen, vector);
	}
	
	/**
	 * Sets the vector of points on the curve.
	 * The curve type is set to GTK_CURVE_TYPE_FREE.
	 * curve:
	 * a GtkCurve.
	 * veclen:
	 * the number of points.
	 * vector:
	 * the points on the curve.
	 */
	public void setVector(int veclen, float[] vector)
	{
		// void gtk_curve_set_vector (GtkCurve *curve,  int veclen,  gfloat vector[]);
		gtk_curve_set_vector(gtkCurve, veclen, vector);
	}
	
	/**
	 * Sets the type of the curve. The curve will remain unchanged except when
	 * changing from a free curve to a linear or spline curve, in which case the
	 * curve will be changed as little as possible.
	 * curve:
	 * a GtkCurve.
	 * type:
	 * the type of the curve.
	 * Property Details
	 * The "curve-type" property
	 *  "curve-type" GtkCurveType : Read / Write
	 * Is this curve linear, spline interpolated, or free-form.
	 * Default value: GTK_CURVE_TYPE_LINEAR
	 */
	public void setCurveType(GtkCurveType type)
	{
		// void gtk_curve_set_curve_type (GtkCurve *curve,  GtkCurveType type);
		gtk_curve_set_curve_type(gtkCurve, type);
	}
	
	
	
	
}
