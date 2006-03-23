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
 * outFile = SpinButton
 * strct   = GtkSpinButton
 * realStrct=
 * clss    = SpinButton
 * template for:
 * extend  = 
 * prefixes:
 * 	- gtk_spin_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtk.Widget
 * 	- gtk.Adjustment
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkWidget* -> Widget
 * local aliases:
 */

module gtk.SpinButton;

private import gtk.typedefs;

private import lib.gtk;

private import gtk.Widget;
private import gtk.Adjustment;

/**
 * Description
 * A GtkSpinButton is an ideal way to allow the user to set the value of some
 * attribute. Rather than having to directly type a number into a GtkEntry,
 * GtkSpinButton allows the user to click on one of two arrows to increment or
 * decrement the displayed value. A value can still be typed in, with the bonus
 * that it can be checked to ensure it is in a given range.
 * The main properties of a GtkSpinButton are through a GtkAdjustment. See the
 * GtkAdjustment section for more details about an adjustment's properties.
 * Example1.Using a GtkSpinButton to get an integer.
 * /+* Provides a function to retrieve an integer value from a GtkSpinButton
 *  * and creates a spin button to model percentage values.
 *  +/
 * gint grab_int_value (GtkSpinButton *a_spinner, gpointer user_data) {
	 *  return gtk_spin_button_get_value_as_int (a_spinner);
 * }
 * void create_integer_spin_button (void) {
	 *  GtkWidget *window, *spinner;
	 *  GtkAdjustment *spinner_adj;
	 *  spinner_adj = (GtkAdjustment *) gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 5.0);
	 *  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 *  gtk_container_set_border_width (GTK_CONTAINER (window), 5);
	 *  /+* creates the spinner, with no decimal places +/
	 *  spinner = gtk_spin_button_new (spinner_adj, 1.0, 0);
	 *  gtk_container_add (GTK_CONTAINER (window), spinner);
	 *  gtk_widget_show_all (window);
	 *  return;
 * }
 * Example2.Using a GtkSpinButton to get a floating point value.
 * /+* Provides a function to retrieve a floating point value from a
 *  * GtkSpinButton, and creates a high precision spin button.
 *  +/
 * gfloat grab_int_value (GtkSpinButton *a_spinner, gpointer user_data) {
	 *  return gtk_spin_button_get_value (a_spinner);
 * }
 * void create_floating_spin_button (void) {
	 *  GtkWidget *window, *spinner;
	 *  GtkAdjustment *spinner_adj;
	 *  spinner_adj = (GtkAdjustment *) gtk_adjustment_new (2.500, 0.0, 5.0, 0.001, 0.1, 0.1);
	 *  window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
	 *  gtk_container_set_border_width (GTK_CONTAINER (window), 5);
	 *  /+* creates the spinner, with three decimal places +/
	 *  spinner = gtk_spin_button_new (spinner_adj, 0.001, 3);
	 *  gtk_container_add (GTK_CONTAINER (window), spinner);
	 *  gtk_widget_show_all (window);
	 *  return;
 * }
 */
private import gtk.Entry;
public class SpinButton : Entry
{
	
	/** the main Gtk struct */
	protected GtkSpinButton* gtkSpinButton;
	
	
	public GtkSpinButton* getSpinButtonStruct()
	{
		return gtkSpinButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
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
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(GtkScrollType, SpinButton)[] onChangeValueListeners;
	void addOnChangeValue(void delegate(GtkScrollType, SpinButton) dlg)
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
	extern(C) static void callBackChangeValue(GtkSpinButton* spinbuttonStruct, GtkScrollType arg1, SpinButton spinButton)
	{
		bit consumed = false;
		
		foreach ( void delegate(GtkScrollType, SpinButton) dlg ; spinButton.onChangeValueListeners )
		{
			dlg(arg1, spinButton);
		}
		
		return consumed;
	}
	
	gint delegate(gpointer, SpinButton)[] onInputListeners;
	void addOnInput(gint delegate(gpointer, SpinButton) dlg)
	{
		if ( !("input" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"input",
			cast(GCallback)&callBackInput,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["input"] = 1;
		}
		onInputListeners ~= dlg;
	}
	extern(C) static void callBackInput(GtkSpinButton* spinbuttonStruct, gpointer arg1, SpinButton spinButton)
	{
		bit consumed = false;
		
		foreach ( gint delegate(gpointer, SpinButton) dlg ; spinButton.onInputListeners )
		{
			dlg(arg1, spinButton);
		}
		
		return consumed;
	}
	
	gboolean delegate(SpinButton)[] onOutputListeners;
	void addOnOutput(gboolean delegate(SpinButton) dlg)
	{
		if ( !("output" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"output",
			cast(GCallback)&callBackOutput,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["output"] = 1;
		}
		onOutputListeners ~= dlg;
	}
	extern(C) static void callBackOutput(GtkSpinButton* spinbuttonStruct, SpinButton spinButton)
	{
		bit consumed = false;
		
		foreach ( gboolean delegate(SpinButton) dlg ; spinButton.onOutputListeners )
		{
			dlg(spinButton);
		}
		
		return consumed;
	}
	
	void delegate(SpinButton)[] onValueChangedListeners;
	void addOnValueChanged(void delegate(SpinButton) dlg)
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
	extern(C) static void callBackValueChanged(GtkSpinButton* spinbuttonStruct, SpinButton spinButton)
	{
		bit consumed = false;
		
		foreach ( void delegate(SpinButton) dlg ; spinButton.onValueChangedListeners )
		{
			dlg(spinButton);
		}
		
		return consumed;
	}
	
	
	
	
	
	/**
	 * Changes the properties of an existing spin button. The adjustment, climb rate, and number of decimal places are all changed accordingly, after this function call.
	 * spin_button:
	 * a GtkSpinButton.
	 * adjustment:
	 * a GtkAdjustment.
	 * climb_rate:
	 * the new climb rate.
	 * digits:
	 * the number of decimal places to display in the spin button.
	 */
	public void configure(Adjustment adjustment, double climbRate, uint digits)
	{
		// void gtk_spin_button_configure (GtkSpinButton *spin_button,  GtkAdjustment *adjustment,  gdouble climb_rate,  guint digits);
		gtk_spin_button_configure(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits);
	}
	
	/**
	 * Creates a new GtkSpinButton.
	 * adjustment:
	 * the GtkAdjustment object that this spin button should use.
	 * climb_rate:
	 * specifies how much the spin button changes when an arrow is clicked on.
	 * digits:
	 * the number of decimal places to display.
	 * Returns:
	 * The new spin button as a GtkWidget.
	 */
	public this (Adjustment adjustment, double climbRate, uint digits)
	{
		// GtkWidget* gtk_spin_button_new (GtkAdjustment *adjustment,  gdouble climb_rate,  guint digits);
		this(cast(GtkSpinButton*)gtk_spin_button_new((adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits) );
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
	 * min:
	 *  Minimum allowable value
	 * max:
	 *  Maximum allowable value
	 * step:
	 *  Increment added or subtracted by spinning the widget
	 * Returns:
	 *  The new spin button as a GtkWidget.
	 */
	public this (double min, double max, double step)
	{
		// GtkWidget* gtk_spin_button_new_with_range (gdouble min,  gdouble max,  gdouble step);
		this(cast(GtkSpinButton*)gtk_spin_button_new_with_range(min, max, step) );
	}
	
	/**
	 * Replaces the GtkAdjustment associated with spin_button.
	 * spin_button:
	 *  a GtkSpinButton
	 * adjustment:
	 *  a GtkAdjustment to replace the existing adjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		// void gtk_spin_button_set_adjustment (GtkSpinButton *spin_button,  GtkAdjustment *adjustment);
		gtk_spin_button_set_adjustment(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}
	
	/**
	 * Get the adjustment associated with a GtkSpinButton
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  the GtkAdjustment of spin_button
	 */
	public Adjustment getAdjustment()
	{
		// GtkAdjustment* gtk_spin_button_get_adjustment  (GtkSpinButton *spin_button);
		return new Adjustment( gtk_spin_button_get_adjustment(gtkSpinButton) );
	}
	
	/**
	 * Set the precision to be displayed by spin_button. Up to 20 digit precision
	 * is allowed.
	 * spin_button:
	 *  a GtkSpinButton
	 * digits:
	 *  the number of digits after the decimal point to be displayed for the spin button's value
	 */
	public void setDigits(uint digits)
	{
		// void gtk_spin_button_set_digits (GtkSpinButton *spin_button,  guint digits);
		gtk_spin_button_set_digits(gtkSpinButton, digits);
	}
	
	/**
	 * Sets the step and page increments for spin_button. This affects how
	 * quickly the value changes when the spin button's arrows are activated.
	 * spin_button:
	 *  a GtkSpinButton
	 * step:
	 *  increment applied for a button 1 press.
	 * page:
	 *  increment applied for a button 2 press.
	 */
	public void setIncrements(double step, double page)
	{
		// void gtk_spin_button_set_increments (GtkSpinButton *spin_button,  gdouble step,  gdouble page);
		gtk_spin_button_set_increments(gtkSpinButton, step, page);
	}
	
	/**
	 * Sets the minimum and maximum allowable values for spin_button
	 * spin_button:
	 *  a GtkSpinButton
	 * min:
	 *  minimum allowable value
	 * max:
	 *  maximum allowable value
	 */
	public void setRange(double min, double max)
	{
		// void gtk_spin_button_set_range (GtkSpinButton *spin_button,  gdouble min,  gdouble max);
		gtk_spin_button_set_range(gtkSpinButton, min, max);
	}
	
	
	/**
	 * Get the value spin_button represented as an integer.
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  the value of spin_button
	 */
	public int getValueAsInt()
	{
		// gint gtk_spin_button_get_value_as_int  (GtkSpinButton *spin_button);
		return gtk_spin_button_get_value_as_int(gtkSpinButton);
	}
	
	/**
	 * Set the value of spin_button.
	 * spin_button:
	 *  a GtkSpinButton
	 * value:
	 *  the new value
	 */
	public void setValue(double value)
	{
		// void gtk_spin_button_set_value (GtkSpinButton *spin_button,  gdouble value);
		gtk_spin_button_set_value(gtkSpinButton, value);
	}
	
	/**
	 * Sets the update behavior of a spin button. This determines whether the
	 * spin button is always updated or only when a valid value is set.
	 * spin_button:
	 *  a GtkSpinButton
	 * policy:
	 *  a GtkSpinButtonUpdatePolicy value
	 */
	public void setUpdatePolicy(GtkSpinButtonUpdatePolicy policy)
	{
		// void gtk_spin_button_set_update_policy  (GtkSpinButton *spin_button,  GtkSpinButtonUpdatePolicy policy);
		gtk_spin_button_set_update_policy(gtkSpinButton, policy);
	}
	
	/**
	 * Sets the flag that determines if non-numeric text can be typed into
	 * the spin button.
	 * spin_button:
	 *  a GtkSpinButton
	 * numeric:
	 *  flag indicating if only numeric entry is allowed.
	 */
	public void setNumeric(int numeric)
	{
		// void gtk_spin_button_set_numeric (GtkSpinButton *spin_button,  gboolean numeric);
		gtk_spin_button_set_numeric(gtkSpinButton, numeric);
	}
	
	/**
	 * Increment or decrement a spin button's value in a specified direction
	 * by a specified amount.
	 * spin_button:
	 *  a GtkSpinButton
	 * direction:
	 *  a GtkSpinType indicating the direction to spin.
	 * increment:
	 *  step increment to apply in the specified direction.
	 */
	public void spin(GtkSpinType direction, double increment)
	{
		// void gtk_spin_button_spin (GtkSpinButton *spin_button,  GtkSpinType direction,  gdouble increment);
		gtk_spin_button_spin(gtkSpinButton, direction, increment);
	}
	
	/**
	 * Sets the flag that determines if a spin button value wraps around to the
	 * opposite limit when the upper or lower limit of the range is exceeded.
	 * spin_button:
	 *  a GtkSpinButton
	 * wrap:
	 *  a flag indicating if wrapping behavior is performed.
	 */
	public void setWrap(int wrap)
	{
		// void gtk_spin_button_set_wrap (GtkSpinButton *spin_button,  gboolean wrap);
		gtk_spin_button_set_wrap(gtkSpinButton, wrap);
	}
	
	/**
	 * Sets the policy as to whether values are corrected to the nearest step
	 * increment when a spin button is activated after providing an invalid value.
	 * spin_button:
	 *  a GtkSpinButton
	 * snap_to_ticks:
	 *  a flag indicating if invalid values should be corrected.
	 */
	public void setSnapToTicks(int snapToTicks)
	{
		// void gtk_spin_button_set_snap_to_ticks  (GtkSpinButton *spin_button,  gboolean snap_to_ticks);
		gtk_spin_button_set_snap_to_ticks(gtkSpinButton, snapToTicks);
	}
	
	/**
	 * Manually force an update of the spin button.
	 * spin_button:
	 *  a GtkSpinButton
	 */
	public void update()
	{
		// void gtk_spin_button_update (GtkSpinButton *spin_button);
		gtk_spin_button_update(gtkSpinButton);
	}
	
	/**
	 * Fetches the precision of spin_button. See gtk_spin_button_set_digits().
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  the current precision
	 */
	public uint getDigits()
	{
		// guint gtk_spin_button_get_digits (GtkSpinButton *spin_button);
		return gtk_spin_button_get_digits(gtkSpinButton);
	}
	
	/**
	 * Gets the current step and page the increments used by spin_button. See
	 * gtk_spin_button_set_increments().
	 * spin_button:
	 *  a GtkSpinButton
	 * step:
	 *  location to store step increment, or NULL
	 * page:
	 *  location to store page increment, or NULL
	 */
	public void getIncrements(double* step, double* page)
	{
		// void gtk_spin_button_get_increments (GtkSpinButton *spin_button,  gdouble *step,  gdouble *page);
		gtk_spin_button_get_increments(gtkSpinButton, step, page);
	}
	
	/**
	 * Returns whether non-numeric text can be typed into the spin button.
	 * See gtk_spin_button_set_numeric().
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  TRUE if only numeric text can be entered
	 */
	public int getNumeric()
	{
		// gboolean gtk_spin_button_get_numeric (GtkSpinButton *spin_button);
		return gtk_spin_button_get_numeric(gtkSpinButton);
	}
	
	/**
	 * Gets the range allowed for spin_button. See
	 * gtk_spin_button_set_range().
	 * spin_button:
	 *  a GtkSpinButton
	 * min:
	 *  location to store minimum allowed value, or NULL
	 * max:
	 *  location to store maximum allowed value, or NULL
	 */
	public void getRange(double* min, double* max)
	{
		// void gtk_spin_button_get_range (GtkSpinButton *spin_button,  gdouble *min,  gdouble *max);
		gtk_spin_button_get_range(gtkSpinButton, min, max);
	}
	
	/**
	 * Returns whether the values are corrected to the nearest step. See
	 * gtk_spin_button_set_snap_to_ticks().
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  TRUE if values are snapped to the nearest step.
	 */
	public int getSnapToTicks()
	{
		// gboolean gtk_spin_button_get_snap_to_ticks  (GtkSpinButton *spin_button);
		return gtk_spin_button_get_snap_to_ticks(gtkSpinButton);
	}
	
	/**
	 * Gets the update behavior of a spin button. See
	 * gtk_spin_button_set_update_policy().
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  the current update policy
	 */
	public GtkSpinButtonUpdatePolicy getUpdatePolicy()
	{
		// GtkSpinButtonUpdatePolicy gtk_spin_button_get_update_policy  (GtkSpinButton *spin_button);
		return gtk_spin_button_get_update_policy(gtkSpinButton);
	}
	
	/**
	 * Get the value in the spin_button.
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  the value of spin_button
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
	 * spin_button:
	 *  a GtkSpinButton
	 * Returns:
	 *  TRUE if the spin button wraps around
	 */
	public int getWrap()
	{
		// gboolean gtk_spin_button_get_wrap (GtkSpinButton *spin_button);
		return gtk_spin_button_get_wrap(gtkSpinButton);
	}
	
	
	
	
	
	
	
	
	
	
	
}
