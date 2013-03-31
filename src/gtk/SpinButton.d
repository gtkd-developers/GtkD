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
 * inFile  = GtkSpinButton.html
 * outPack = gtk
 * outFile = SpinButton
 * strct   = GtkSpinButton
 * realStrct=
 * ctorStrct=
 * clss    = SpinButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_spin_button_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.SpinButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import gtk.Adjustment;



private import gtk.Entry;

/**
 * A GtkSpinButton is an ideal way to allow the user to set the value of
 * some attribute. Rather than having to directly type a number into a
 * GtkEntry, GtkSpinButton allows the user to click on one of two arrows
 * to increment or decrement the displayed value. A value can still be
 * typed in, with the bonus that it can be checked to ensure it is in a
 * given range.
 *
 * The main properties of a GtkSpinButton are through an adjustment.
 * See the GtkAdjustment section for more details about an adjustment's
 * properties.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 */
public class SpinButton : Entry
{
	
	/** the main Gtk struct */
	protected GtkSpinButton* gtkSpinButton;
	
	
	public GtkSpinButton* getSpinButtonStruct()
	{
		return gtkSpinButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSpinButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkSpinButton* gtkSpinButton)
	{
		super(cast(GtkEntry*)gtkSpinButton);
		this.gtkSpinButton = gtkSpinButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkSpinButton = cast(GtkSpinButton*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(GtkScrollType, SpinButton)[] onChangeValueListeners;
	/**
	 */
	void addOnChangeValue(void delegate(GtkScrollType, SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("change-value" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"change-value",
			cast(GCallback)&callBackChangeValue,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["change-value"] = 1;
		}
		onChangeValueListeners ~= dlg;
	}
	extern(C) static void callBackChangeValue(GtkSpinButton* spinbuttonStruct, GtkScrollType arg1, SpinButton _spinButton)
	{
		foreach ( void delegate(GtkScrollType, SpinButton) dlg ; _spinButton.onChangeValueListeners )
		{
			dlg(arg1, _spinButton);
		}
	}
	
	gint delegate(void*, SpinButton)[] onInputListeners;
	/**
	 * The ::input signal can be used to influence the conversion of
	 * the users input into a double value. The signal handler is
	 * expected to use gtk_entry_get_text() to retrieve the text of
	 * the entry and set new_value to the new value.
	 * The default conversion uses g_strtod().
	 * TRUE for a successful conversion, FALSE if the input
	 * was not handled, and GTK_INPUT_ERROR if the conversion failed.
	 */
	void addOnInput(gint delegate(void*, SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("input" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"input",
			cast(GCallback)&callBackInput,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["input"] = 1;
		}
		onInputListeners ~= dlg;
	}
	extern(C) static void callBackInput(GtkSpinButton* spinButtonStruct, void* newValue, SpinButton _spinButton)
	{
		foreach ( gint delegate(void*, SpinButton) dlg ; _spinButton.onInputListeners )
		{
			dlg(newValue, _spinButton);
		}
	}
	
	bool delegate(SpinButton)[] onOutputListeners;
	/**
	 * The ::output signal can be used to change to formatting
	 * of the value that is displayed in the spin buttons entry.
	 * $(DDOC_COMMENT example)
	 * TRUE if the value has been displayed
	 */
	void addOnOutput(bool delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("output" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"output",
			cast(GCallback)&callBackOutput,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["output"] = 1;
		}
		onOutputListeners ~= dlg;
	}
	extern(C) static gboolean callBackOutput(GtkSpinButton* spinButtonStruct, SpinButton _spinButton)
	{
		foreach ( bool delegate(SpinButton) dlg ; _spinButton.onOutputListeners )
		{
			if ( dlg(_spinButton) )
			{
				return 1;
			}
		}
		
		return 0;
	}
	
	void delegate(SpinButton)[] onValueChangedListeners;
	/**
	 */
	void addOnValueChanged(void delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
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
	extern(C) static void callBackValueChanged(GtkSpinButton* spinbuttonStruct, SpinButton _spinButton)
	{
		foreach ( void delegate(SpinButton) dlg ; _spinButton.onValueChangedListeners )
		{
			dlg(_spinButton);
		}
	}
	
	void delegate(SpinButton)[] onWrappedListeners;
	/**
	 * The wrapped signal is emitted right after the spinbutton wraps
	 * from its maximum to minimum value or vice-versa.
	 * Since 2.10
	 * See Also
	 * GtkEntry
	 */
	void addOnWrapped(void delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("wrapped" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"wrapped",
			cast(GCallback)&callBackWrapped,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["wrapped"] = 1;
		}
		onWrappedListeners ~= dlg;
	}
	extern(C) static void callBackWrapped(GtkSpinButton* spinbuttonStruct, SpinButton _spinButton)
	{
		foreach ( void delegate(SpinButton) dlg ; _spinButton.onWrappedListeners )
		{
			dlg(_spinButton);
		}
	}
	
	
	/**
	 * Changes the properties of an existing spin button. The adjustment,
	 * climb rate, and number of decimal places are all changed accordingly,
	 * after this function call.
	 * Params:
	 * adjustment = a GtkAdjustment. [allow-none]
	 * climbRate = the new climb rate
	 * digits = the number of decimal places to display in the spin button
	 */
	public void configure(Adjustment adjustment, double climbRate, uint digits)
	{
		// void gtk_spin_button_configure (GtkSpinButton *spin_button,  GtkAdjustment *adjustment,  gdouble climb_rate,  guint digits);
		gtk_spin_button_configure(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits);
	}
	
	/**
	 * Creates a new GtkSpinButton.
	 * Params:
	 * adjustment = the GtkAdjustment object that this spin
	 * button should use, or NULL. [allow-none]
	 * climbRate = specifies how much the spin button changes when an arrow
	 * is clicked on
	 * digits = the number of decimal places to display
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Adjustment adjustment, double climbRate, uint digits)
	{
		// GtkWidget * gtk_spin_button_new (GtkAdjustment *adjustment,  gdouble climb_rate,  guint digits);
		auto p = gtk_spin_button_new((adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_spin_button_new((adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits)");
		}
		this(cast(GtkSpinButton*) p);
	}
	
	/**
	 * This is a convenience constructor that allows creation of a numeric
	 * GtkSpinButton without manually creating an adjustment. The value is
	 * initially set to the minimum value and a page increment of 10 * step
	 * is the default. The precision of the spin button is equivalent to the
	 * precision of step.
	 * Note that the way in which the precision is derived works best if step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_spin_button_set_digits() to correct it.
	 * Params:
	 * min = Minimum allowable value
	 * max = Maximum allowable value
	 * step = Increment added or subtracted by spinning the widget
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (double min, double max, double step)
	{
		// GtkWidget * gtk_spin_button_new_with_range (gdouble min,  gdouble max,  gdouble step);
		auto p = gtk_spin_button_new_with_range(min, max, step);
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_spin_button_new_with_range(min, max, step)");
		}
		this(cast(GtkSpinButton*) p);
	}
	
	/**
	 * Replaces the GtkAdjustment associated with spin_button.
	 * Params:
	 * adjustment = a GtkAdjustment to replace the existing adjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_spin_button_set_adjustment (GtkSpinButton *spin_button,  GtkAdjustment *adjustment);
		gtk_spin_button_set_adjustment(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Get the adjustment associated with a GtkSpinButton
	 * Returns: the GtkAdjustment of spin_button. [transfer none]
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment * gtk_spin_button_get_adjustment (GtkSpinButton *spin_button);
		auto p = gtk_spin_button_get_adjustment(gtkSpinButton);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Set the precision to be displayed by spin_button. Up to 20 digit precision
	 * is allowed.
	 * Params:
	 * digits = the number of digits after the decimal point to be displayed for the spin button's value
	 */
	public void setDigits(uint digits)
	{
		// void gtk_spin_button_set_digits (GtkSpinButton *spin_button,  guint digits);
		gtk_spin_button_set_digits(gtkSpinButton, digits);
	}
	
	/**
	 * Sets the step and page increments for spin_button. This affects how
	 * quickly the value changes when the spin button's arrows are activated.
	 * Params:
	 * step = increment applied for a button 1 press.
	 * page = increment applied for a button 2 press.
	 */
	public void setIncrements(double step, double page)
	{
		// void gtk_spin_button_set_increments (GtkSpinButton *spin_button,  gdouble step,  gdouble page);
		gtk_spin_button_set_increments(gtkSpinButton, step, page);
	}
	
	/**
	 * Sets the minimum and maximum allowable values for spin_button.
	 * If the current value is outside this range, it will be adjusted
	 * to fit within the range, otherwise it will remain unchanged.
	 * Params:
	 * min = minimum allowable value
	 * max = maximum allowable value
	 */
	public void setRange(double min, double max)
	{
		// void gtk_spin_button_set_range (GtkSpinButton *spin_button,  gdouble min,  gdouble max);
		gtk_spin_button_set_range(gtkSpinButton, min, max);
	}
	
	/**
	 * Get the value spin_button represented as an integer.
	 * Returns: the value of spin_button
	 */
	public int getValueAsInt()
	{
		// gint gtk_spin_button_get_value_as_int (GtkSpinButton *spin_button);
		return gtk_spin_button_get_value_as_int(gtkSpinButton);
	}
	
	/**
	 * Sets the value of spin_button.
	 * Params:
	 * value = the new value
	 */
	public void setValue(double value)
	{
		// void gtk_spin_button_set_value (GtkSpinButton *spin_button,  gdouble value);
		gtk_spin_button_set_value(gtkSpinButton, value);
	}
	
	/**
	 * Sets the update behavior of a spin button.
	 * This determines whether the spin button is always updated
	 * or only when a valid value is set.
	 * Params:
	 * policy = a GtkSpinButtonUpdatePolicy value
	 */
	public void setUpdatePolicy(GtkSpinButtonUpdatePolicy policy)
	{
		// void gtk_spin_button_set_update_policy (GtkSpinButton *spin_button,  GtkSpinButtonUpdatePolicy policy);
		gtk_spin_button_set_update_policy(gtkSpinButton, policy);
	}
	
	/**
	 * Sets the flag that determines if non-numeric text can be typed
	 * into the spin button.
	 * Params:
	 * numeric = flag indicating if only numeric entry is allowed
	 */
	public void setNumeric(int numeric)
	{
		// void gtk_spin_button_set_numeric (GtkSpinButton *spin_button,  gboolean numeric);
		gtk_spin_button_set_numeric(gtkSpinButton, numeric);
	}
	
	/**
	 * Increment or decrement a spin button's value in a specified
	 * direction by a specified amount.
	 * Params:
	 * direction = a GtkSpinType indicating the direction to spin
	 * increment = step increment to apply in the specified direction
	 */
	public void spin(GtkSpinType direction, double increment)
	{
		// void gtk_spin_button_spin (GtkSpinButton *spin_button,  GtkSpinType direction,  gdouble increment);
		gtk_spin_button_spin(gtkSpinButton, direction, increment);
	}
	
	/**
	 * Sets the flag that determines if a spin button value wraps
	 * around to the opposite limit when the upper or lower limit
	 * of the range is exceeded.
	 * Params:
	 * wrap = a flag indicating if wrapping behavior is performed
	 */
	public void setWrap(int wrap)
	{
		// void gtk_spin_button_set_wrap (GtkSpinButton *spin_button,  gboolean wrap);
		gtk_spin_button_set_wrap(gtkSpinButton, wrap);
	}
	
	/**
	 * Sets the policy as to whether values are corrected to the
	 * nearest step increment when a spin button is activated after
	 * providing an invalid value.
	 * Params:
	 * snapToTicks = a flag indicating if invalid values should be corrected
	 */
	public void setSnapToTicks(int snapToTicks)
	{
		// void gtk_spin_button_set_snap_to_ticks (GtkSpinButton *spin_button,  gboolean snap_to_ticks);
		gtk_spin_button_set_snap_to_ticks(gtkSpinButton, snapToTicks);
	}
	
	/**
	 * Manually force an update of the spin button.
	 */
	public void update()
	{
		// void gtk_spin_button_update (GtkSpinButton *spin_button);
		gtk_spin_button_update(gtkSpinButton);
	}
	
	/**
	 * Fetches the precision of spin_button. See gtk_spin_button_set_digits().
	 * Returns: the current precision
	 */
	public uint getDigits()
	{
		// guint gtk_spin_button_get_digits (GtkSpinButton *spin_button);
		return gtk_spin_button_get_digits(gtkSpinButton);
	}
	
	/**
	 * Gets the current step and page the increments used by spin_button. See
	 * gtk_spin_button_set_increments().
	 * Params:
	 * step = location to store step increment, or NULL. [out][allow-none]
	 * page = location to store page increment, or NULL. [out][allow-none]
	 */
	public void getIncrements(out double step, out double page)
	{
		// void gtk_spin_button_get_increments (GtkSpinButton *spin_button,  gdouble *step,  gdouble *page);
		gtk_spin_button_get_increments(gtkSpinButton, &step, &page);
	}
	
	/**
	 * Returns whether non-numeric text can be typed into the spin button.
	 * See gtk_spin_button_set_numeric().
	 * Returns: TRUE if only numeric text can be entered
	 */
	public int getNumeric()
	{
		// gboolean gtk_spin_button_get_numeric (GtkSpinButton *spin_button);
		return gtk_spin_button_get_numeric(gtkSpinButton);
	}
	
	/**
	 * Gets the range allowed for spin_button.
	 * See gtk_spin_button_set_range().
	 * Params:
	 * min = location to store minimum allowed value, or NULL. [out][allow-none]
	 * max = location to store maximum allowed value, or NULL. [out][allow-none]
	 */
	public void getRange(out double min, out double max)
	{
		// void gtk_spin_button_get_range (GtkSpinButton *spin_button,  gdouble *min,  gdouble *max);
		gtk_spin_button_get_range(gtkSpinButton, &min, &max);
	}
	
	/**
	 * Returns whether the values are corrected to the nearest step.
	 * See gtk_spin_button_set_snap_to_ticks().
	 * Returns: TRUE if values are snapped to the nearest step
	 */
	public int getSnapToTicks()
	{
		// gboolean gtk_spin_button_get_snap_to_ticks (GtkSpinButton *spin_button);
		return gtk_spin_button_get_snap_to_ticks(gtkSpinButton);
	}
	
	/**
	 * Gets the update behavior of a spin button.
	 * See gtk_spin_button_set_update_policy().
	 * Returns: the current update policy
	 */
	public GtkSpinButtonUpdatePolicy getUpdatePolicy()
	{
		// GtkSpinButtonUpdatePolicy gtk_spin_button_get_update_policy  (GtkSpinButton *spin_button);
		return gtk_spin_button_get_update_policy(gtkSpinButton);
	}
	
	/**
	 * Get the value in the spin_button.
	 * Returns: the value of spin_button
	 */
	public double getValue()
	{
		// gdouble gtk_spin_button_get_value (GtkSpinButton *spin_button);
		return gtk_spin_button_get_value(gtkSpinButton);
	}
	
	/**
	 * Returns whether the spin button's value wraps around to the
	 * opposite limit when the upper or lower limit of the range is
	 * exceeded. See gtk_spin_button_set_wrap().
	 * Returns: TRUE if the spin button wraps around
	 */
	public int getWrap()
	{
		// gboolean gtk_spin_button_get_wrap (GtkSpinButton *spin_button);
		return gtk_spin_button_get_wrap(gtkSpinButton);
	}
}
