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


module gtk.HSV;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkHSV is the “color wheel” part of a complete color selector widget.
 * It allows to select a color by determining its HSV components in an
 * intuitive way. Moving the selection around the outer ring changes the hue,
 * and moving the selection point inside the inner triangle changes value and
 * saturation.
 * 
 * #GtkHSV has been deprecated together with #GtkColorSelection, where
 * it was used.
 */
public class HSV : Widget
{
	/** the main Gtk struct */
	protected GtkHSV* gtkHSV;

	/** Get the main Gtk struct */
	public GtkHSV* getHSVStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHSV;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHSV;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHSV* gtkHSV, bool ownedRef = false)
	{
		this.gtkHSV = gtkHSV;
		super(cast(GtkWidget*)gtkHSV, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_hsv_get_type();
	}

	/**
	 * Creates a new HSV color selector.
	 *
	 * Returns: A newly-created HSV color selector.
	 *
	 * Since: 2.14
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gtk_hsv_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHSV*) p);
	}

	/**
	 * Converts a color from HSV space to RGB.
	 *
	 * Input values must be in the [0.0, 1.0] range;
	 * output values will be in the same range.
	 *
	 * Params:
	 *     h = Hue
	 *     s = Saturation
	 *     v = Value
	 *     r = Return value for the red component
	 *     g = Return value for the green component
	 *     b = Return value for the blue component
	 *
	 * Since: 2.14
	 */
	public static void toRgb(double h, double s, double v, out double r, out double g, out double b)
	{
		gtk_hsv_to_rgb(h, s, v, &r, &g, &b);
	}

	/**
	 * Queries the current color in an HSV color selector.
	 * Returned values will be in the [0.0, 1.0] range.
	 *
	 * Params:
	 *     h = Return value for the hue
	 *     s = Return value for the saturation
	 *     v = Return value for the value
	 *
	 * Since: 2.14
	 */
	public void getColor(out double h, out double s, out double v)
	{
		gtk_hsv_get_color(gtkHSV, &h, &s, &v);
	}

	/**
	 * Queries the size and ring width of an HSV color selector.
	 *
	 * Params:
	 *     size = Return value for the diameter of the hue ring
	 *     ringWidth = Return value for the width of the hue ring
	 *
	 * Since: 2.14
	 */
	public void getMetrics(out int size, out int ringWidth)
	{
		gtk_hsv_get_metrics(gtkHSV, &size, &ringWidth);
	}

	/**
	 * An HSV color selector can be said to be adjusting if multiple rapid
	 * changes are being made to its value, for example, when the user is
	 * adjusting the value with the mouse. This function queries whether
	 * the HSV color selector is being adjusted or not.
	 *
	 * Returns: %TRUE if clients can ignore changes to the color value,
	 *     since they may be transitory, or %FALSE if they should consider
	 *     the color value status to be final.
	 *
	 * Since: 2.14
	 */
	public bool isAdjusting()
	{
		return gtk_hsv_is_adjusting(gtkHSV) != 0;
	}

	/**
	 * Sets the current color in an HSV color selector.
	 * Color component values must be in the [0.0, 1.0] range.
	 *
	 * Params:
	 *     h = Hue
	 *     s = Saturation
	 *     v = Value
	 *
	 * Since: 2.14
	 */
	public void setColor(double h, double s, double v)
	{
		gtk_hsv_set_color(gtkHSV, h, s, v);
	}

	/**
	 * Sets the size and ring width of an HSV color selector.
	 *
	 * Params:
	 *     size = Diameter for the hue ring
	 *     ringWidth = Width of the hue ring
	 *
	 * Since: 2.14
	 */
	public void setMetrics(int size, int ringWidth)
	{
		gtk_hsv_set_metrics(gtkHSV, size, ringWidth);
	}

	/** */
	gulong addOnChanged(void delegate(HSV) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/** */
	gulong addOnMove(void delegate(GtkDirectionType, HSV) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Converts a color from RGB space to HSV.
	 *
	 * Input values must be in the [0.0, 1.0] range;
	 * output values will be in the same range.
	 *
	 * Params:
	 *     r = Red
	 *     g = Green
	 *     b = Blue
	 *     h = Return value for the hue component
	 *     s = Return value for the saturation component
	 *     v = Return value for the value component
	 *
	 * Since: 2.14
	 */
	public static void rgbToHsv(double r, double g, double b, out double h, out double s, out double v)
	{
		gtk_rgb_to_hsv(r, g, b, &h, &s, &v);
	}
}
