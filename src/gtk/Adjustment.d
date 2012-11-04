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
 * inFile  = GtkAdjustment.html
 * outPack = gtk
 * outFile = Adjustment
 * strct   = GtkAdjustment
 * realStrct=
 * ctorStrct=
 * clss    = Adjustment
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_adjustment_
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

module gtk.Adjustment;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;




private import gobject.ObjectG;

/**
 * Description
 * The GtkAdjustment object represents a value which has an associated lower
 * and upper bound, together with step and page increments, and a page size.
 * It is used within several GTK+ widgets, including
 * GtkSpinButton, GtkViewport, and GtkRange (which is a base class for
 * GtkHScrollbar, GtkVScrollbar, GtkHScale, and GtkVScale).
 * The GtkAdjustment object does not update the value itself. Instead
 * it is left up to the owner of the GtkAdjustment to control the value.
 * The owner of the GtkAdjustment typically calls the
 * gtk_adjustment_value_changed() and gtk_adjustment_changed() functions
 * after changing the value and its bounds. This results in the emission of the
 * "value_changed" or "changed" signal respectively.
 */
public class Adjustment : ObjectG
{
	
	/** the main Gtk struct */
	protected GtkAdjustment* gtkAdjustment;
	
	
	public GtkAdjustment* getAdjustmentStruct()
	{
		return gtkAdjustment;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkAdjustment;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAdjustment* gtkAdjustment)
	{
		super(cast(GObject*)gtkAdjustment);
		this.gtkAdjustment = gtkAdjustment;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkAdjustment = cast(GtkAdjustment*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Adjustment)[] onChangedListeners;
	/**
	 * Emitted when one or more of the GtkAdjustment properties have been
	 * changed, other than the "value" property.
	 */
	void addOnChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackChanged(GtkAdjustment* adjustmentStruct, Adjustment _adjustment)
	{
		foreach ( void delegate(Adjustment) dlg ; _adjustment.onChangedListeners )
		{
			dlg(_adjustment);
		}
	}
	
	void delegate(Adjustment)[] onValueChangedListeners;
	/**
	 * Emitted when the "value" property has been changed.
	 */
	void addOnValueChanged(void delegate(Adjustment) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("value-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"value-changed",
			cast(GCallback)&callBackValueChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["value-changed"] = 1;
		}
		onValueChangedListeners ~= dlg;
	}
	extern(C) static void callBackValueChanged(GtkAdjustment* adjustmentStruct, Adjustment _adjustment)
	{
		foreach ( void delegate(Adjustment) dlg ; _adjustment.onValueChangedListeners )
		{
			dlg(_adjustment);
		}
	}
	
	
	/**
	 * Creates a new GtkAdjustment.
	 * Params:
	 * value = the initial value.
	 * lower = the minimum value.
	 * upper = the maximum value.
	 * stepIncrement = the step increment.
	 * pageIncrement = the page increment.
	 * pageSize = the page size.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		// GtkAdjustment * gtk_adjustment_new (gdouble value,  gdouble lower,  gdouble upper,  gdouble step_increment,  gdouble page_increment,  gdouble page_size);
		auto p = gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize)");
		}
		this(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Gets the current value of the adjustment. See
	 * gtk_adjustment_set_value().
	 * Returns: The current value of the adjustment.
	 */
	public double getValue()
	{
		// gdouble gtk_adjustment_get_value (GtkAdjustment *adjustment);
		return gtk_adjustment_get_value(gtkAdjustment);
	}
	
	/**
	 * Sets the GtkAdjustment value. The value is clamped to lie between
	 * "lower" and "upper".
	 * Note that for adjustments which are used in a GtkScrollbar, the effective
	 * range of allowed values goes from "lower" to
	 * "upper" - "page_size".
	 * Params:
	 * value = the new value.
	 */
	public void setValue(double value)
	{
		// void gtk_adjustment_set_value (GtkAdjustment *adjustment,  gdouble value);
		gtk_adjustment_set_value(gtkAdjustment, value);
	}
	
	/**
	 * Updates the "value" property to ensure that the range
	 * between lower and upper is in the current page (i.e. between
	 * "value" and "value" + "page_size").
	 * If the range is larger than the page size, then only the start of it will
	 * be in the current page.
	 * A "changed" signal will be emitted if the value is changed.
	 * Params:
	 * lower = the lower value.
	 * upper = the upper value.
	 */
	public void clampPage(double lower, double upper)
	{
		// void gtk_adjustment_clamp_page (GtkAdjustment *adjustment,  gdouble lower,  gdouble upper);
		gtk_adjustment_clamp_page(gtkAdjustment, lower, upper);
	}
	
	/**
	 * Emits a "changed" signal from the GtkAdjustment.
	 * This is typically called by the owner of the GtkAdjustment after it has
	 * changed any of the GtkAdjustment properties other than the value.
	 */
	public void changed()
	{
		// void gtk_adjustment_changed (GtkAdjustment *adjustment);
		gtk_adjustment_changed(gtkAdjustment);
	}
	
	/**
	 * Emits a "value_changed" signal from the GtkAdjustment.
	 * This is typically called by the owner of the GtkAdjustment after it has
	 * changed the "value" property.
	 */
	public void valueChanged()
	{
		// void gtk_adjustment_value_changed (GtkAdjustment *adjustment);
		gtk_adjustment_value_changed(gtkAdjustment);
	}
	
	/**
	 * Sets all properties of the adjustment at once.
	 * Use this function to avoid multiple emissions of the "changed"
	 * signal. See gtk_adjustment_set_lower() for an alternative way
	 * of compressing multiple emissions of "changed" into one.
	 * Since 2.14
	 * Params:
	 * value = the new value
	 * lower = the new minimum value
	 * upper = the new maximum value
	 * stepIncrement = the new step increment
	 * pageIncrement = the new page increment
	 * pageSize = the new page size
	 */
	public void configure(double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		// void gtk_adjustment_configure (GtkAdjustment *adjustment,  gdouble value,  gdouble lower,  gdouble upper,  gdouble step_increment,  gdouble page_increment,  gdouble page_size);
		gtk_adjustment_configure(gtkAdjustment, value, lower, upper, stepIncrement, pageIncrement, pageSize);
	}
	
	/**
	 * Retrieves the minimum value of the adjustment.
	 * Since 2.14
	 * Returns: The current minimum value of the adjustment.
	 */
	public double getLower()
	{
		// gdouble gtk_adjustment_get_lower (GtkAdjustment *adjustment);
		return gtk_adjustment_get_lower(gtkAdjustment);
	}
	
	/**
	 * Retrieves the page increment of the adjustment.
	 * Since 2.14
	 * Returns: The current page increment of the adjustment.
	 */
	public double getPageIncrement()
	{
		// gdouble gtk_adjustment_get_page_increment (GtkAdjustment *adjustment);
		return gtk_adjustment_get_page_increment(gtkAdjustment);
	}
	
	/**
	 * Retrieves the page size of the adjustment.
	 * Since 2.14
	 * Returns: The current page size of the adjustment.
	 */
	public double getPageSize()
	{
		// gdouble gtk_adjustment_get_page_size (GtkAdjustment *adjustment);
		return gtk_adjustment_get_page_size(gtkAdjustment);
	}
	
	/**
	 * Retrieves the step increment of the adjustment.
	 * Since 2.14
	 * Returns: The current step increment of the adjustment.
	 */
	public double getStepIncrement()
	{
		// gdouble gtk_adjustment_get_step_increment (GtkAdjustment *adjustment);
		return gtk_adjustment_get_step_increment(gtkAdjustment);
	}
	
	/**
	 * Gets the smaller of step increment and page increment.
	 * Returns: the minimum increment of adjustment Since 3.2
	 */
	public double getMinimumIncrement()
	{
		// gdouble gtk_adjustment_get_minimum_increment  (GtkAdjustment *adjustment);
		return gtk_adjustment_get_minimum_increment(gtkAdjustment);
	}
	
	/**
	 * Retrieves the maximum value of the adjustment.
	 * Since 2.14
	 * Returns: The current maximum value of the adjustment.
	 */
	public double getUpper()
	{
		// gdouble gtk_adjustment_get_upper (GtkAdjustment *adjustment);
		return gtk_adjustment_get_upper(gtkAdjustment);
	}
	
	/**
	 * Sets the minimum value of the adjustment.
	 * When setting multiple adjustment properties via their individual
	 * setters, multiple "changed" signals will be emitted. However, since
	 * the emission of the "changed" signal is tied to the emission of the
	 * "notify" signals of the changed properties, it's possible
	 * to compress the "changed" signals into one by calling
	 * g_object_freeze_notify() and g_object_thaw_notify() around the
	 * calls to the individual setters.
	 * Alternatively, using a single g_object_set() for all the properties
	 * to change, or using gtk_adjustment_configure() has the same effect
	 * of compressing "changed" emissions.
	 * Since 2.14
	 * Params:
	 * lower = the new minimum value
	 */
	public void setLower(double lower)
	{
		// void gtk_adjustment_set_lower (GtkAdjustment *adjustment,  gdouble lower);
		gtk_adjustment_set_lower(gtkAdjustment, lower);
	}
	
	/**
	 * Sets the page increment of the adjustment.
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the "changed" signal when setting multiple adjustment
	 * properties.
	 * Since 2.14
	 * Params:
	 * pageIncrement = the new page increment
	 */
	public void setPageIncrement(double pageIncrement)
	{
		// void gtk_adjustment_set_page_increment (GtkAdjustment *adjustment,  gdouble page_increment);
		gtk_adjustment_set_page_increment(gtkAdjustment, pageIncrement);
	}
	
	/**
	 * Sets the page size of the adjustment.
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the GtkAdjustment::changed signal when setting multiple adjustment
	 * properties.
	 * Since 2.14
	 * Params:
	 * pageSize = the new page size
	 */
	public void setPageSize(double pageSize)
	{
		// void gtk_adjustment_set_page_size (GtkAdjustment *adjustment,  gdouble page_size);
		gtk_adjustment_set_page_size(gtkAdjustment, pageSize);
	}
	
	/**
	 * Sets the step increment of the adjustment.
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the "changed" signal when setting multiple adjustment
	 * properties.
	 * Since 2.14
	 * Params:
	 * stepIncrement = the new step increment
	 */
	public void setStepIncrement(double stepIncrement)
	{
		// void gtk_adjustment_set_step_increment (GtkAdjustment *adjustment,  gdouble step_increment);
		gtk_adjustment_set_step_increment(gtkAdjustment, stepIncrement);
	}
	
	/**
	 * Sets the maximum value of the adjustment.
	 * Note that values will be restricted by
	 * upper - page-size if the page-size
	 * property is nonzero.
	 * See gtk_adjustment_set_lower() about how to compress multiple
	 * emissions of the "changed" signal when setting multiple adjustment
	 * properties.
	 * Since 2.14
	 * Params:
	 * upper = the new maximum value
	 */
	public void setUpper(double upper)
	{
		// void gtk_adjustment_set_upper (GtkAdjustment *adjustment,  gdouble upper);
		gtk_adjustment_set_upper(gtkAdjustment, upper);
	}
}
