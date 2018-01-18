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


module gtk.HScale;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Adjustment;
private import gtk.Scale;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;


/**
 * The #GtkHScale widget is used to allow the user to select a value using
 * a horizontal slider. To create one, use gtk_hscale_new_with_range().
 * 
 * The position to show the current value, and the number of decimal places
 * shown can be set using the parent #GtkScale class’s functions.
 * 
 * GtkHScale has been deprecated, use #GtkScale instead.
 */
public class HScale : Scale
{
	/** the main Gtk struct */
	protected GtkHScale* gtkHScale;

	/** Get the main Gtk struct */
	public GtkHScale* getHScaleStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkHScale;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkHScale;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkHScale* gtkHScale, bool ownedRef = false)
	{
		this.gtkHScale = gtkHScale;
		super(cast(GtkScale*)gtkHScale, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_hscale_get_type();
	}

	/**
	 * Creates a new #GtkHScale.
	 *
	 * Deprecated: Use gtk_scale_new() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Params:
	 *     adjustment = the #GtkAdjustment which sets the range of
	 *         the scale.
	 *
	 * Returns: a new #GtkHScale.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment adjustment)
	{
		auto p = gtk_hscale_new((adjustment is null) ? null : adjustment.getAdjustmentStruct());

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkHScale*) p);
	}

	/**
	 * Creates a new horizontal scale widget that lets the user input a
	 * number between @min and @max (including @min and @max) with the
	 * increment @step.  @step must be nonzero; it’s the distance the
	 * slider moves when using the arrow keys to adjust the scale value.
	 *
	 * Note that the way in which the precision is derived works best if @step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_scale_set_digits() to correct it.
	 *
	 * Deprecated: Use gtk_scale_new_with_range() with %GTK_ORIENTATION_HORIZONTAL instead
	 *
	 * Params:
	 *     min = minimum value
	 *     max = maximum value
	 *     step = step increment (tick size) used with keyboard shortcuts
	 *
	 * Returns: a new #GtkHScale
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double min, double max, double step)
	{
		auto p = gtk_hscale_new_with_range(min, max, step);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_range");
		}

		this(cast(GtkHScale*) p);
	}
}
