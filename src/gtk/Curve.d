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
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Curve;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gtk.DrawingArea;

/**
 * Description
 * The GtkCurve widget allows the user to edit a curve covering a range of
 * values. It is typically used to fine-tune color balances in graphics
 * applications like the Gimp.
 * The GtkCurve widget has 3 modes of operation - spline, linear and free.
 * In spline mode the user places points on the curve which are automatically
 * connected together into a smooth curve. In linear mode the user places points
 * on the curve which are connected by straight lines. In free mode the user can
 * draw the points of the curve freely, and they are not connected at all.
 * As of GTK+ 2.20, GtkCurve has been deprecated since it is too specialized.
 */
public class Curve : DrawingArea
{
	
	/** the main Gtk struct */
	protected GtkCurve* gtkCurve;
	
	
	public GtkCurve* getCurveStruct()
	{
		return gtkCurve;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkCurve;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkCurve* gtkCurve)
	{
		if(gtkCurve is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkCurve);
		if( ptr !is null )
		{
			this = cast(Curve)ptr;
			return;
		}
		super(cast(GtkDrawingArea*)gtkCurve);
		this.gtkCurve = gtkCurve;
	}
	
	protected void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkCurve = cast(GtkCurve*)obj;
	}
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Curve)[] onCurveTypeChangedListeners;
	/**
	 * Emitted when the curve type has been changed.
	 * The curve type can be changed explicitly with a call to
	 * gtk_curve_set_curve_type(). It is also changed as a side-effect of
	 * calling gtk_curve_reset() or gtk_curve_set_gamma().
	 * See Also
	 * GtkGammaCurve
	 * a subclass for editing gamma curves.
	 */
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
		foreach ( void delegate(Curve) dlg ; curve.onCurveTypeChangedListeners )
		{
			dlg(curve);
		}
	}
	
	
	/**
	 * Warning
	 * gtk_curve_new has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Creates a new GtkCurve.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_curve_new (void);
		auto p = gtk_curve_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_curve_new()");
		}
		this(cast(GtkCurve*) p);
	}
	
	/**
	 * Warning
	 * gtk_curve_reset has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Resets the curve to a straight line from the minimum x and y values to the
	 * maximum x and y values (i.e. from the bottom-left to the top-right corners).
	 * The curve type is not changed.
	 */
	public void reset()
	{
		// void gtk_curve_reset (GtkCurve *curve);
		gtk_curve_reset(gtkCurve);
	}
	
	/**
	 * Warning
	 * gtk_curve_set_gamma has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Recomputes the entire curve using the given gamma value.
	 * A gamma value of 1 results in a straight line. Values greater than 1 result
	 * in a curve above the straight line. Values less than 1 result in a curve
	 * below the straight line. The curve type is changed to GTK_CURVE_TYPE_FREE.
	 * FIXME: Needs a more precise definition of gamma.
	 * Params:
	 * gamma = the gamma value.
	 */
	public void setGamma(float gamma)
	{
		// void gtk_curve_set_gamma (GtkCurve *curve,  gfloat gamma_);
		gtk_curve_set_gamma(gtkCurve, gamma);
	}
	
	/**
	 * Warning
	 * gtk_curve_set_range has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Sets the minimum and maximum x and y values of the curve.
	 * The curve is also reset with a call to gtk_curve_reset().
	 * Params:
	 * minX = the minimum x value.
	 * maxX = the maximum x value.
	 * minY = the minimum y value.
	 * maxY = the maximum y value.
	 */
	public void setRange(float minX, float maxX, float minY, float maxY)
	{
		// void gtk_curve_set_range (GtkCurve *curve,  gfloat min_x,  gfloat max_x,  gfloat min_y,  gfloat max_y);
		gtk_curve_set_range(gtkCurve, minX, maxX, minY, maxY);
	}
	
	/**
	 * Warning
	 * gtk_curve_get_vector has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Returns a vector of points representing the curve.
	 * Params:
	 * veclen = the number of points to calculate.
	 * vector = returns the points.
	 */
	public void getVector(int veclen, float[] vector)
	{
		// void gtk_curve_get_vector (GtkCurve *curve,  int veclen,  gfloat vector[]);
		gtk_curve_get_vector(gtkCurve, veclen, vector);
	}
	
	/**
	 * Warning
	 * gtk_curve_set_vector has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Sets the vector of points on the curve.
	 * The curve type is set to GTK_CURVE_TYPE_FREE.
	 * Params:
	 * veclen = the number of points.
	 * vector = the points on the curve.
	 */
	public void setVector(int veclen, float[] vector)
	{
		// void gtk_curve_set_vector (GtkCurve *curve,  int veclen,  gfloat vector[]);
		gtk_curve_set_vector(gtkCurve, veclen, vector);
	}
	
	/**
	 * Warning
	 * gtk_curve_set_curve_type has been deprecated since version 2.20 and should not be used in newly-written code. Don't use this widget anymore.
	 * Sets the type of the curve. The curve will remain unchanged except when
	 * changing from a free curve to a linear or spline curve, in which case the
	 * curve will be changed as little as possible.
	 * Params:
	 * type = the type of the curve.
	 */
	public void setCurveType(GtkCurveType type)
	{
		// void gtk_curve_set_curve_type (GtkCurve *curve,  GtkCurveType type);
		gtk_curve_set_curve_type(gtkCurve, type);
	}
}
