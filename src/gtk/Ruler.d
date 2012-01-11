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
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkRuler.html
 * outPack = gtk
 * outFile = Ruler
 * strct   = GtkRuler
 * realStrct=
 * ctorStrct=
 * clss    = Ruler
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_ruler_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.Ruler;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Widget;

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
 * The GTKRuler widget is a base class for horizontal and vertical rulers. Rulers
 * are used to show the mouse pointer's location in a window. The ruler can either
 * be horizontal or vertical on the window. Within the ruler a small triangle
 * indicates the location of the mouse relative to the horizontal or vertical
 * ruler. See GtkHRuler to learn how to create a new horizontal ruler. See
 * GtkVRuler to learn how to create a new vertical ruler.
 */
public class Ruler : Widget, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkRuler* gtkRuler;
	
	
	public GtkRuler* getRulerStruct()
	{
		return gtkRuler;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRuler;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRuler* gtkRuler)
	{
		if(gtkRuler is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkRuler);
		if( ptr !is null )
		{
			this = cast(Ruler)ptr;
			return;
		}
		super(cast(GtkWidget*)gtkRuler);
		this.gtkRuler = gtkRuler;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkRuler = cast(GtkRuler*)obj;
	}
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkRuler);
	
	/**
	 */
	
	/**
	 * This calls the GTKMetricType to set the ruler to units defined. Available units
	 * are GTK_PIXELS, GTK_INCHES, or GTK_CENTIMETERS. The default unit of measurement
	 * is GTK_PIXELS.
	 * Params:
	 * metric = the unit of measurement
	 */
	public void setMetric(GtkMetricType metric)
	{
		// void gtk_ruler_set_metric (GtkRuler *ruler,  GtkMetricType metric);
		gtk_ruler_set_metric(gtkRuler, metric);
	}
	
	/**
	 * This sets the range of the ruler.
	 * Params:
	 * lower = the lower limit of the ruler
	 * upper = the upper limit of the ruler
	 * position = the mark on the ruler
	 * maxSize = the maximum size of the ruler used when calculating the space to
	 * leave for the text
	 */
	public void setRange(double lower, double upper, double position, double maxSize)
	{
		// void gtk_ruler_set_range (GtkRuler *ruler,  gdouble lower,  gdouble upper,  gdouble position,  gdouble max_size);
		gtk_ruler_set_range(gtkRuler, lower, upper, position, maxSize);
	}
	
	/**
	 * Gets the units used for a GtkRuler. See gtk_ruler_set_metric().
	 * Returns: the units currently used for ruler
	 */
	public GtkMetricType getMetric()
	{
		// GtkMetricType gtk_ruler_get_metric (GtkRuler *ruler);
		return gtk_ruler_get_metric(gtkRuler);
	}
	
	/**
	 * Retrieves values indicating the range and current position of a GtkRuler.
	 * See gtk_ruler_set_range().
	 * Params:
	 * lower = location to store lower limit of the ruler, or NULL. [allow-none]
	 * upper = location to store upper limit of the ruler, or NULL. [allow-none]
	 * position = location to store the current position of the mark on the ruler, or NULL. [allow-none]
	 * maxSize = location to store the maximum size of the ruler used when calculating
	 *  the space to leave for the text, or NULL.
	 */
	public void getRange(out double lower, out double upper, out double position, out double maxSize)
	{
		// void gtk_ruler_get_range (GtkRuler *ruler,  gdouble *lower,  gdouble *upper,  gdouble *position,  gdouble *max_size);
		gtk_ruler_get_range(gtkRuler, &lower, &upper, &position, &maxSize);
	}
}
