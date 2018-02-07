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
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * The #GtkAdjustment object represents a value which has an associated lower
 * and upper bound, together with step and page increments, and a page size.
 * It is used within several GTK+ widgets, including #GtkSpinButton, #GtkViewport,
 * and #GtkRange (which is a base class for #GtkScrollbar and #GtkScale).
 * 
 * The #GtkAdjustment object does not update the value itself. Instead
 * it is left up to the owner of the #GtkAdjustment to control the value.
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
	 * Creates a new #GtkAdjustment.
	 *
	 * Params:
	 *     value = the initial value
	 *     lower = the minimum value
	 *     upper = the maximum value
	 *     stepIncrement = the step increment
	 *     pageIncrement = the page increment
	 *     pageSize = the page size
	 *
	 * Returns: a new #GtkAdjustment
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		auto p = gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkAdjustment*) p);
	}

	/**
	 * Emits a #GtkAdjustment::changed signal from the #GtkAdjustment.
	 * This is typically called by the owner of the #GtkAdjustment after it has
	 * changed any of the #GtkAdjustment properties other than the value.
	 *
	 * Deprecated: GTK+ emits #GtkAdjustment::changed itself whenever any
	 * of the properties (other than value) change
	 */
	public void changed()
	{
		gtk_adjustment_changed(gtkAdjustment);
	}

	/**
	 * Updates the #GtkAdjustment:value property to ensure that the range
	 * between @lower and @upper is in the current page (i.e. between
	 * #GtkAdjustment:value and #GtkAdjustment:value + #GtkAdjustment:page-size).
	 * If the range is larger than the page size, then only the start of it will
	 * be in the current page.
	 *
	 * A #GtkAdjustment::value-changed signal will be emitted if the value is changed.
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
	 * #GtkAdjustment::changed signal. See gtk_adjustment_set_lower()
	 * for an alternative way of compressing multiple emissions of
	 * #GtkAdjustment::changed into one.
	 *
	 * Params:
	 *     value = the new value
	 *     lower = the new minimum value
	 *     upper = the new maximum value
	 *     stepIncrement = the new step increment
	 *     pageIncrement = the new page increment
	 *     pageSize = the new page size
	 *
	 * Since: 2.14
	 */
	public void configure(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		gtk_adjustment_configure(gtkAdjustment, value, lower, upper, stepIncrement, pageIncrement, pageSize);
	}

	/**
	 * Retrieves the minimum value of the adjustment.
	 *
	 * Returns: The current minimum value of the adjustment
	 *
	 * Since: 2.14
	 */
	public double getLower()
	{
		return gtk_adjustment_get_lower(gtkAdjustment);
	}

	/**
	 * Gets the smaller of step increment and page increment.
	 *
	 * Returns: the minimum increment of @adjustment
	 *
	 * Since: 3.2
	 */
	public double getMinimumIncrement()
	{
		return gtk_adjustment_get_minimum_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the page increment of the adjustment.
	 *
	 * Returns: The current page increment of the adjustment
	 *
	 * Since: 2.14
	 */
	public double getPageIncrement()
	{
		return gtk_adjustment_get_page_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the page size of the adjustment.
	 *
	 * Returns: The current page size of the adjustment
	 *
	 * Since: 2.14
	 */
	public double getPageSize()
	{
		return gtk_adjustment_get_page_size(gtkAdjustment);
	}

	/**
	 * Retrieves the step increment of the adjustment.
	 *
	 * Returns: The current step increment of the adjustment.
	 *
	 * Since: 2.14
	 */
	public double getStepIncrement()
	{
		return gtk_adjustment_get_step_increment(gtkAdjustment);
	}

	/**
	 * Retrieves the maximum value of the adjustment.
	 *
	 * Returns: The current maximum value of the adjustment
	 *
	 * Since: 2.14
	 */
	public double getUpper()
	{
		return gtk_adjustment_get_upper(gtkAdjustment);
	}

	/**
	 * Gets the current value of the adjustment.
	 * See gtk_adjustment_set_value().
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
	 * setters, multiple #GtkAdjustment::changed signals will be emitted.
	 * However, since the emission of the #GtkAdjustment::changed signal
	 * is tied to the emission of the #GObject::notify signals of the changed
	 * properties, it’s possible to compress the #GtkAdjustment::changed
	 * signals into one by calling g_object_freeze_notify() and
	 * g_object_thaw_notify() around the calls to the individual setters.
	 *
	 * Alternatively, using a single g_object_set() for all the properties
	 * to change, or using gtk_adjustment_configure() has the same effect
	 * of compressing #GtkAdjustment::changed emissions.
	 *
	 * Params:
	 *     lower = the new minimum value
	 *
	 * Since: 2.14
	 */
	public void setLower(double lower)
	{
		gtk_adjustment_set_lower(gtkAdjustment, lower);
	}

	/**
	 * Sets the page increment of the adjustment.
	 *
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the #GtkAdjustment::changed signal when setting
	 * multiple adjustment properties.
	 *
	 * Params:
	 *     pageIncrement = the new page increment
	 *
	 * Since: 2.14
	 */
	public void setPageIncrement(double pageIncrement)
	{
		gtk_adjustment_set_page_increment(gtkAdjustment, pageIncrement);
	}

	/**
	 * Sets the page size of the adjustment.
	 *
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the GtkAdjustment::changed signal when setting
	 * multiple adjustment properties.
	 *
	 * Params:
	 *     pageSize = the new page size
	 *
	 * Since: 2.14
	 */
	public void setPageSize(double pageSize)
	{
		gtk_adjustment_set_page_size(gtkAdjustment, pageSize);
	}

	/**
	 * Sets the step increment of the adjustment.
	 *
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the #GtkAdjustment::changed signal when setting
	 * multiple adjustment properties.
	 *
	 * Params:
	 *     stepIncrement = the new step increment
	 *
	 * Since: 2.14
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
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the #GtkAdjustment::changed signal when setting
	 * multiple adjustment properties.
	 *
	 * Params:
	 *     upper = the new maximum value
	 *
	 * Since: 2.14
	 */
	public void setUpper(double upper)
	{
		gtk_adjustment_set_upper(gtkAdjustment, upper);
	}

	/**
	 * Sets the #GtkAdjustment value. The value is clamped to lie between
	 * #GtkAdjustment:lower and #GtkAdjustment:upper.
	 *
	 * Note that for adjustments which are used in a #GtkScrollbar, the
	 * effective range of allowed values goes from #GtkAdjustment:lower to
	 * #GtkAdjustment:upper - #GtkAdjustment:page-size.
	 *
	 * Params:
	 *     value = the new value
	 */
	public void setValue(double value)
	{
		gtk_adjustment_set_value(gtkAdjustment, value);
	}

	/**
	 * Emits a #GtkAdjustment::value-changed signal from the #GtkAdjustment.
	 * This is typically called by the owner of the #GtkAdjustment after it has
	 * changed the #GtkAdjustment:value property.
	 *
	 * Deprecated: GTK+ emits #GtkAdjustment::value-changed itself whenever
	 * the value changes
	 */
	public void valueChanged()
	{
		gtk_adjustment_value_changed(gtkAdjustment);
	}

	/**
	 * Emitted when one or more of the #GtkAdjustment properties have been
	 * changed, other than the #GtkAdjustment:value property.
	 */
	gulong addOnChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the #GtkAdjustment:value property has been changed.
	 */
	gulong addOnValueChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "value-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
