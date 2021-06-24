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


module gtk.Adjustment;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkAdjustment` is a model for a numeric value.
 * 
 * The `GtkAdjustment has an associated lower and upper bound.
 * It also contains step and page increments, and a page size.
 * 
 * Adjustments are used within several GTK widgets, including
 * [class@Gtk.SpinButton], [class@Gtk.Viewport], [class@Gtk.Scrollbar]
 * and [class@Gtk.Scale].
 * 
 * The `GtkAdjustment` object does not update the value itself. Instead
 * it is left up to the owner of the `GtkAdjustment` to control the value.
 */
public class Adjustment : ObjectG
{
	/** the main Gtk struct */
	protected GtkAdjustment* gtkAdjustment;

	/** Get the main Gtk struct */
	public GtkAdjustment* getAdjustmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkAdjustment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAdjustment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkAdjustment* gtkAdjustment, bool ownedRef = false)
	{
		this.gtkAdjustment = gtkAdjustment;
		super(cast(GObject*)gtkAdjustment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_adjustment_get_type();
	}

	/**
	 * Creates a new `GtkAdjustment`.
	 *
	 * Params:
	 *     value = the initial value
	 *     lower = the minimum value
	 *     upper = the maximum value
	 *     stepIncrement = the step increment
	 *     pageIncrement = the page increment
	 *     pageSize = the page size
	 *
	 * Returns: a new `GtkAdjustment`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		auto __p = gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAdjustment*) __p);
	}

	/**
	 * Updates the value property to ensure that the range
	 * between @lower and @upper is in the current page.
	 *
	 * The current page goes from `value` to `value` + `page-size`.
	 * If the range is larger than the page size, then only the
	 * start of it will be in the current page.
	 *
	 * A [signal@Gtk.Adjustment::value-changed] signal will be emitted
	 * if the value is changed.
	 *
	 * Params:
	 *     lower = the lower value
	 *     upper = the upper value
	 */
	public void clampPage(double lower, double upper)
	{
		gtk_adjustment_clamp_page(gtkAdjustment, lower, upper);
	}

	/**
	 * Sets all properties of the adjustment at once.
	 *
	 * Use this function to avoid multiple emissions of the
	 * [signal@Gtk.Adjustment::changed] signal. See
	 * [method@Gtk.Adjustment.set_lower] for an alternative
	 * way of compressing multiple emissions of
	 * [signal@Gtk.Adjustment::changed] into one.
	 *
	 * Params:
	 *     value = the new value
	 *     lower = the new minimum value
	 *     upper = the new maximum value
	 *     stepIncrement = the new step increment
	 *     pageIncrement = the new page increment
	 *     pageSize = the new page size
	 */
	public void configure(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		gtk_adjustment_configure(gtkAdjustment, value, lower, upper, stepIncrement, pageIncrement, pageSize);
	}

	/**
	 * Retrieves the minimum value of the adjustment.
	 *
	 * Returns: The current minimum value of the adjustment
	 */
	public double getLower()
	{
		return gtk_adjustment_get_lower(gtkAdjustment);
	}

	/**
	 * Gets the smaller of step increment and page increment.
	 *
	 * Returns: the minimum increment of @adjustment
	 */
	public double getMinimumIncrement()
	{
		return gtk_adjustment_get_minimum_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the page increment of the adjustment.
	 *
	 * Returns: The current page increment of the adjustment
	 */
	public double getPageIncrement()
	{
		return gtk_adjustment_get_page_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the page size of the adjustment.
	 *
	 * Returns: The current page size of the adjustment
	 */
	public double getPageSize()
	{
		return gtk_adjustment_get_page_size(gtkAdjustment);
	}

	/**
	 * Retrieves the step increment of the adjustment.
	 *
	 * Returns: The current step increment of the adjustment.
	 */
	public double getStepIncrement()
	{
		return gtk_adjustment_get_step_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the maximum value of the adjustment.
	 *
	 * Returns: The current maximum value of the adjustment
	 */
	public double getUpper()
	{
		return gtk_adjustment_get_upper(gtkAdjustment);
	}

	/**
	 * Gets the current value of the adjustment.
	 *
	 * Returns: The current value of the adjustment
	 */
	public double getValue()
	{
		return gtk_adjustment_get_value(gtkAdjustment);
	}

	/**
	 * Sets the minimum value of the adjustment.
	 *
	 * When setting multiple adjustment properties via their individual
	 * setters, multiple [signal@Gtk.Adjustment::changed] signals will
	 * be emitted. However, since the emission of the
	 * [signal@Gtk.Adjustment::changed] signal is tied to the emission
	 * of the ::notify signals of the changed properties, it’s possible
	 * to compress the [signal@Gtk.Adjustment::changed] signals into one
	 * by calling g_object_freeze_notify() and g_object_thaw_notify()
	 * around the calls to the individual setters.
	 *
	 * Alternatively, using a single g_object_set() for all the properties
	 * to change, or using [method@Gtk.Adjustment.configure] has the same effect.
	 *
	 * Params:
	 *     lower = the new minimum value
	 */
	public void setLower(double lower)
	{
		gtk_adjustment_set_lower(gtkAdjustment, lower);
	}

	/**
	 * Sets the page increment of the adjustment.
	 *
	 * See [method@Gtk.Adjustment.set_lower] about how to compress
	 * multiple emissions of the [signal@Gtk.Adjustment::changed]
	 * signal when setting multiple adjustment properties.
	 *
	 * Params:
	 *     pageIncrement = the new page increment
	 */
	public void setPageIncrement(double pageIncrement)
	{
		gtk_adjustment_set_page_increment(gtkAdjustment, pageIncrement);
	}

	/**
	 * Sets the page size of the adjustment.
	 *
	 * See [method@Gtk.Adjustment.set_lower] about how to compress
	 * multiple emissions of the [signal@Gtk.Adjustment::changed]
	 * signal when setting multiple adjustment properties.
	 *
	 * Params:
	 *     pageSize = the new page size
	 */
	public void setPageSize(double pageSize)
	{
		gtk_adjustment_set_page_size(gtkAdjustment, pageSize);
	}

	/**
	 * Sets the step increment of the adjustment.
	 *
	 * See [method@Gtk.Adjustment.set_lower] about how to compress
	 * multiple emissions of the [signal@Gtk.Adjustment::changed]
	 * signal when setting multiple adjustment properties.
	 *
	 * Params:
	 *     stepIncrement = the new step increment
	 */
	public void setStepIncrement(double stepIncrement)
	{
		gtk_adjustment_set_step_increment(gtkAdjustment, stepIncrement);
	}

	/**
	 * Sets the maximum value of the adjustment.
	 *
	 * Note that values will be restricted by `upper - page-size`
	 * if the page-size property is nonzero.
	 *
	 * See [method@Gtk.Adjustment.set_lower] about how to compress
	 * multiple emissions of the [signal@Gtk.Adjustment::changed]
	 * signal when setting multiple adjustment properties.
	 *
	 * Params:
	 *     upper = the new maximum value
	 */
	public void setUpper(double upper)
	{
		gtk_adjustment_set_upper(gtkAdjustment, upper);
	}

	/**
	 * Sets the `GtkAdjustment` value.
	 *
	 * The value is clamped to lie between [property@Gtk.Adjustment:lower]
	 * and [property@Gtk.Adjustment:upper].
	 *
	 * Note that for adjustments which are used in a `GtkScrollbar`,
	 * the effective range of allowed values goes from
	 * [property@Gtk.Adjustment:lower] to
	 * [property@Gtk.Adjustment:upper] - [property@Gtk.Adjustment:page-size].
	 *
	 * Params:
	 *     value = the new value
	 */
	public void setValue(double value)
	{
		gtk_adjustment_set_value(gtkAdjustment, value);
	}

	/**
	 * Emitted when one or more of the `GtkAdjustment` properties have been
	 * changed.
	 *
	 * Note that the [property@Gtk.Adjustment:value] property is
	 * covered by the [signal@Gtk.Adjustment::value-changed] signal.
	 */
	gulong addOnChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the value has been changed.
	 */
	gulong addOnValueChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "value-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
