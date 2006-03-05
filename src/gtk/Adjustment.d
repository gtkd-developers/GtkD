/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gtk
 * outFile = Adjustment
 * strct   = GtkAdjustment
 * realStrct=
 * clss    = Adjustment
 * extend  = 
 * prefixes:
 * 	- gtk_adjustment_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.ObjectGtk
 * structWrap:
 * 	- GtkObject* -> ObjectGtk
 * local aliases:
 */

module gtk.Adjustment;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.ObjectGtk;
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
private import gtk.ObjectGtk;
public class Adjustment : ObjectGtk
{
	
	/** the main Gtk struct */
	protected GtkAdjustment* gtkAdjustment;
	
	
	public GtkAdjustment* getAdjustmentStruct()
	{
		return gtkAdjustment;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkAdjustment;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkAdjustment* gtkAdjustment)
	{
		super(cast(GtkObject*)gtkAdjustment);
		this.gtkAdjustment = gtkAdjustment;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Adjustment)[] onChangedListeners;
	void addOnChanged(void delegate(Adjustment) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkAdjustment* adjustmentStruct, Adjustment adjustment)
	{
		bit consumed = false;
		
		foreach ( void delegate(Adjustment) dlg ; adjustment.onChangedListeners )
		{
			dlg(adjustment);
		}
		
		return consumed;
	}
	
	void delegate(Adjustment)[] onValueChangedListeners;
	void addOnValueChanged(void delegate(Adjustment) dlg)
	{
		if ( !("value-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"value-changed",
			cast(GCallback)&callBackValueChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["value-changed"] = 1;
		}
		onValueChangedListeners ~= dlg;
	}
	extern(C) static void callBackValueChanged(GtkAdjustment* adjustmentStruct, Adjustment adjustment)
	{
		bit consumed = false;
		
		foreach ( void delegate(Adjustment) dlg ; adjustment.onValueChangedListeners )
		{
			dlg(adjustment);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Creates a new GtkAdjustment.
	 * value:
	 * the initial value.
	 * lower:
	 * the minimum value.
	 * upper:
	 * the maximum value.
	 * step_increment:
	 * the step increment.
	 * page_increment:
	 * the page increment.
	 * page_size:
	 * the page size.
	 * Returns:
	 * a new GtkAdjustment.
	 */
	public this (double value, double lower, double upper, double stepIncrement, double pageIncrement, double pageSize)
	{
		// GtkObject* gtk_adjustment_new (gdouble value,  gdouble lower,  gdouble upper,  gdouble step_increment,  gdouble page_increment,  gdouble page_size);
		this(cast(GtkAdjustment*)gtk_adjustment_new(value, lower, upper, stepIncrement, pageIncrement, pageSize) );
	}
	
	/**
	 * Gets the current value of the adjustment. See
	 * gtk_adjustment_set_value().
	 * adjustment:
	 *  a GtkAdjustment
	 * Returns:
	 *  The current value of the adjustment.
	 */
	public double getValue()
	{
		// gdouble gtk_adjustment_get_value (GtkAdjustment *adjustment);
		return gtk_adjustment_get_value(gtkAdjustment);
	}
	
	/**
	 * Sets the GtkAdjustment value. The value is clamped to lie between
	 * adjustment->lower and
	 * adjustment->upper.
	 * Note that for adjustments which are used in a GtkScrollbar, the effective
	 * range of allowed values goes from adjustment->lower to
	 * adjustment->upper - adjustment->page_size.
	 * adjustment:
	 * a GtkAdjustment.
	 * value:
	 * the new value.
	 */
	public void setValue(double value)
	{
		// void gtk_adjustment_set_value (GtkAdjustment *adjustment,  gdouble value);
		gtk_adjustment_set_value(gtkAdjustment, value);
	}
	
	/**
	 * Updates the GtkAdjustment value to ensure that the range between lower
	 * and upper is in the current page (i.e. between value and value +
	 * page_size).
	 * If the range is larger than the page size, then only the start of it will
	 * be in the current page.
	 * A "changed" signal will be emitted if the value is changed.
	 * adjustment:
	 * a GtkAdjustment.
	 * lower:
	 * the lower value.
	 * upper:
	 * the upper value.
	 */
	public void clampPage(double lower, double upper)
	{
		// void gtk_adjustment_clamp_page (GtkAdjustment *adjustment,  gdouble lower,  gdouble upper);
		gtk_adjustment_clamp_page(gtkAdjustment, lower, upper);
	}
	
	/**
	 * Emits a "changed" signal from the GtkAdjustment.
	 * This is typically called by the owner of the GtkAdjustment after it has
	 * changed any of the GtkAdjustment fields other than the value.
	 * adjustment:
	 * a GtkAdjustment
	 */
	public void changed()
	{
		// void gtk_adjustment_changed (GtkAdjustment *adjustment);
		gtk_adjustment_changed(gtkAdjustment);
	}
	
	/**
	 * Emits a "value_changed" signal from the GtkAdjustment.
	 * This is typically called by the owner of the GtkAdjustment after it has
	 * changed the GtkAdjustment value field.
	 * adjustment:
	 * a GtkAdjustment
	 * Property Details
	 * The "lower" property
	 *  "lower" gdouble : Read / Write
	 * The minimum value of the adjustment.
	 * Default value: 0
	 * Since 2.4
	 */
	public void valueChanged()
	{
		// void gtk_adjustment_value_changed (GtkAdjustment *adjustment);
		gtk_adjustment_value_changed(gtkAdjustment);
	}
	
	
	
	
	
	
}
