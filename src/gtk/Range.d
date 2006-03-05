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
 * outFile = Range
 * strct   = GtkRange
 * realStrct=
 * clss    = Range
 * extend  = 
 * prefixes:
 * 	- gtk_range_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * local aliases:
 */

module gtk.Range;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Adjustment;
/**
 * Description
 */
private import gtk.Widget;
public class Range : Widget
{
	
	/** the main Gtk struct */
	protected GtkRange* gtkRange;
	
	
	public GtkRange* getRangeStruct()
	{
		return gtkRange;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkRange;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkRange* gtkRange)
	{
		super(cast(GtkWidget*)gtkRange);
		this.gtkRange = gtkRange;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(gdouble, Range)[] onAdjustBoundsListeners;
	void addOnAdjustBounds(void delegate(gdouble, Range) dlg)
	{
		if ( !("adjust-bounds" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"adjust-bounds",
			cast(GCallback)&callBackAdjustBounds,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["adjust-bounds"] = 1;
		}
		onAdjustBoundsListeners ~= dlg;
	}
	extern(C) static void callBackAdjustBounds(GtkRange* rangeStruct, gdouble arg1, Range range)
	{
		bit consumed = false;
		
		foreach ( void delegate(gdouble, Range) dlg ; range.onAdjustBoundsListeners )
		{
			dlg(arg1, range);
		}
		
		return consumed;
	}
	
	gboolean delegate(GtkScrollType, gdouble, Range)[] onChangeValueListeners;
	void addOnChangeValue(gboolean delegate(GtkScrollType, gdouble, Range) dlg)
	{
		if ( !("change-value" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-value",
			cast(GCallback)&callBackChangeValue,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["change-value"] = 1;
		}
		onChangeValueListeners ~= dlg;
	}
	extern(C) static void callBackChangeValue(GtkRange* rangeStruct, GtkScrollType scroll, gdouble value, Range range)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(GtkScrollType, gdouble, Range) dlg ; range.onChangeValueListeners )
		{
			dlg(scroll, value, range);
		}
		
		return consumed;
	}
	
	void delegate(GtkScrollType, Range)[] onMoveSliderListeners;
	void addOnMoveSlider(void delegate(GtkScrollType, Range) dlg)
	{
		if ( !("move-slider" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"move-slider",
			cast(GCallback)&callBackMoveSlider,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["move-slider"] = 1;
		}
		onMoveSliderListeners ~= dlg;
	}
	extern(C) static void callBackMoveSlider(GtkRange* rangeStruct, GtkScrollType arg1, Range range)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkScrollType, Range) dlg ; range.onMoveSliderListeners )
		{
			dlg(arg1, range);
		}
		
		return consumed;
	}
	
	void delegate(Range)[] onValueChangedListeners;
	void addOnValueChanged(void delegate(Range) dlg)
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
	extern(C) static void callBackValueChanged(GtkRange* rangeStruct, Range range)
	{
		bit consumed = false;
		
		foreach ( void delegate(Range) dlg ; range.onValueChangedListeners )
		{
			dlg(range);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Get the GtkAdjustment which is the "model" object for GtkRange.
	 * See gtk_range_set_adjustment() for details.
	 * The return value does not have a reference added, so should not
	 * be unreferenced.
	 * range:
	 *  a GtkRange
	 * Returns:
	 *  a GtkAdjustment
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment* gtk_range_get_adjustment (GtkRange *range);
		return new Adjustment( gtk_range_get_adjustment(gtkRange) );
	}
	
	/**
	 * Sets the update policy for the range. GTK_UPDATE_CONTINUOUS means that
	 * anytime the range slider is moved, the range value will change and the
	 * value_changed signal will be emitted. GTK_UPDATE_DELAYED means that
	 * the value will be updated after a brief timeout where no slider motion
	 * occurs, so updates are spaced by a short time rather than
	 * continuous. GTK_UPDATE_DISCONTINUOUS means that the value will only
	 * be updated when the user releases the button and ends the slider
	 * drag operation.
	 * range:
	 *  a GtkRange
	 * policy:
	 *  update policy
	 */
	public void setUpdatePolicy(GtkUpdateType policy)
	{
		// void gtk_range_set_update_policy (GtkRange *range,  GtkUpdateType policy);
		gtk_range_set_update_policy(gtkRange, policy);
	}
	
	/**
	 * Sets the adjustment to be used as the "model" object for this range
	 * widget. The adjustment indicates the current range value, the
	 * minimum and maximum range values, the step/page increments used
	 * for keybindings and scrolling, and the page size. The page size
	 * is normally 0 for GtkScale and nonzero for GtkScrollbar, and
	 * indicates the size of the visible area of the widget being scrolled.
	 * The page size affects the size of the scrollbar slider.
	 * range:
	 *  a GtkRange
	 * adjustment:
	 *  a GtkAdjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_range_set_adjustment (GtkRange *range,  GtkAdjustment *adjustment);
		gtk_range_set_adjustment(gtkRange, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Gets the value set by gtk_range_set_inverted().
	 * range:
	 *  a GtkRange
	 * Returns:
	 *  TRUE if the range is inverted
	 */
	public int getInverted()
	{
		// gboolean gtk_range_get_inverted (GtkRange *range);
		return gtk_range_get_inverted(gtkRange);
	}
	
	/**
	 * Ranges normally move from lower to higher values as the
	 * slider moves from top to bottom or left to right. Inverted
	 * ranges have higher values at the top or on the right rather than
	 * on the bottom or left.
	 * range:
	 *  a GtkRange
	 * setting:
	 *  TRUE to invert the range
	 */
	public void setInverted(int setting)
	{
		// void gtk_range_set_inverted (GtkRange *range,  gboolean setting);
		gtk_range_set_inverted(gtkRange, setting);
	}
	
	/**
	 * Gets the update policy of range. See gtk_range_set_update_policy().
	 * range:
	 *  a GtkRange
	 * Returns:
	 *  the current update policy
	 */
	public GtkUpdateType getUpdatePolicy()
	{
		// GtkUpdateType gtk_range_get_update_policy (GtkRange *range);
		return gtk_range_get_update_policy(gtkRange);
	}
	
	/**
	 * Gets the current value of the range.
	 * range:
	 *  a GtkRange
	 * Returns:
	 *  current value of the range.
	 */
	public double getValue()
	{
		// gdouble gtk_range_get_value (GtkRange *range);
		return gtk_range_get_value(gtkRange);
	}
	
	/**
	 * Sets the step and page sizes for the range.
	 * The step size is used when the user clicks the GtkScrollbar
	 * arrows or moves GtkScale via arrow keys. The page size
	 * is used for example when moving via Page Up or Page Down keys.
	 * range:
	 *  a GtkRange
	 * step:
	 *  step size
	 * page:
	 *  page size
	 */
	public void setIncrements(double step, double page)
	{
		// void gtk_range_set_increments (GtkRange *range,  gdouble step,  gdouble page);
		gtk_range_set_increments(gtkRange, step, page);
	}
	
	/**
	 * Sets the allowable values in the GtkRange, and clamps the range
	 * value to be between min and max. (If the range has a non-zero
	 * page size, it is clamped between min and max - page-size.)
	 * range:
	 *  a GtkRange
	 * min:
	 *  minimum range value
	 * max:
	 *  maximum range value
	 */
	public void setRange(double min, double max)
	{
		// void gtk_range_set_range (GtkRange *range,  gdouble min,  gdouble max);
		gtk_range_set_range(gtkRange, min, max);
	}
	
	/**
	 * Sets the current value of the range; if the value is outside the
	 * minimum or maximum range values, it will be clamped to fit inside
	 * them. The range emits the "value_changed" signal if the value
	 * changes.
	 * range:
	 *  a GtkRange
	 * value:
	 *  new value of the range
	 * Property Details
	 * The "adjustment" property
	 *  "adjustment" GtkAdjustment : Read / Write / Construct
	 * The GtkAdjustment that contains the current value of this range object.
	 */
	public void setValue(double value)
	{
		// void gtk_range_set_value (GtkRange *range,  gdouble value);
		gtk_range_set_value(gtkRange, value);
	}
	
	
	
	
	
	
	
	
	
	
}
