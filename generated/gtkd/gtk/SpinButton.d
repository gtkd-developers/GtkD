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


module gtk.SpinButton;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.Entry;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * A #GtkSpinButton is an ideal way to allow the user to set the value of
 * some attribute. Rather than having to directly type a number into a
 * #GtkEntry, GtkSpinButton allows the user to click on one of two arrows
 * to increment or decrement the displayed value. A value can still be
 * typed in, with the bonus that it can be checked to ensure it is in a
 * given range.
 * 
 * The main properties of a GtkSpinButton are through an adjustment.
 * See the #GtkAdjustment section for more details about an adjustment's
 * properties. Note that GtkSpinButton will by default make its entry
 * large enough to accomodate the lower and upper bounds of the adjustment,
 * which can lead to surprising results. Best practice is to set both
 * the #GtkEntry:width-chars and #GtkEntry:max-width-chars poperties
 * to the desired number of characters to display in the entry.
 * 
 * # CSS nodes
 * 
 * |[<!-- language="plain" -->
 * spinbutton.horizontal
 * ├── undershoot.left
 * ├── undershoot.right
 * ├── entry
 * │   ╰── ...
 * ├── button.down
 * ╰── button.up
 * ]|
 * 
 * |[<!-- language="plain" -->
 * spinbutton.vertical
 * ├── undershoot.left
 * ├── undershoot.right
 * ├── button.up
 * ├── entry
 * │   ╰── ...
 * ╰── button.down
 * ]|
 * 
 * GtkSpinButtons main CSS node has the name spinbutton. It creates subnodes
 * for the entry and the two buttons, with these names. The button nodes have
 * the style classes .up and .down. The GtkEntry subnodes (if present) are put
 * below the entry node. The orientation of the spin button is reflected in
 * the .vertical or .horizontal style class on the main node.
 * 
 * ## Using a GtkSpinButton to get an integer
 * 
 * |[<!-- language="C" -->
 * // Provides a function to retrieve an integer value from a GtkSpinButton
 * // and creates a spin button to model percentage values.
 * 
 * gint
 * grab_int_value (GtkSpinButton *button,
 * gpointer       user_data)
 * {
 * return gtk_spin_button_get_value_as_int (button);
 * }
 * 
 * void
 * create_integer_spin_button (void)
 * {
 * 
 * GtkWidget *window, *button;
 * GtkAdjustment *adjustment;
 * 
 * adjustment = gtk_adjustment_new (50.0, 0.0, 100.0, 1.0, 5.0, 0.0);
 * 
 * window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
 * gtk_container_set_border_width (GTK_CONTAINER (window), 5);
 * 
 * // creates the spinbutton, with no decimal places
 * button = gtk_spin_button_new (adjustment, 1.0, 0);
 * gtk_container_add (GTK_CONTAINER (window), button);
 * 
 * gtk_widget_show_all (window);
 * }
 * ]|
 * 
 * ## Using a GtkSpinButton to get a floating point value
 * 
 * |[<!-- language="C" -->
 * // Provides a function to retrieve a floating point value from a
 * // GtkSpinButton, and creates a high precision spin button.
 * 
 * gfloat
 * grab_float_value (GtkSpinButton *button,
 * gpointer       user_data)
 * {
 * return gtk_spin_button_get_value (button);
 * }
 * 
 * void
 * create_floating_spin_button (void)
 * {
 * GtkWidget *window, *button;
 * GtkAdjustment *adjustment;
 * 
 * adjustment = gtk_adjustment_new (2.500, 0.0, 5.0, 0.001, 0.1, 0.0);
 * 
 * window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
 * gtk_container_set_border_width (GTK_CONTAINER (window), 5);
 * 
 * // creates the spinbutton, with three decimal places
 * button = gtk_spin_button_new (adjustment, 0.001, 3);
 * gtk_container_add (GTK_CONTAINER (window), button);
 * 
 * gtk_widget_show_all (window);
 * }
 * ]|
 */
public class SpinButton : Entry, OrientableIF
{
	/** the main Gtk struct */
	protected GtkSpinButton* gtkSpinButton;

	/** Get the main Gtk struct */
	public GtkSpinButton* getSpinButtonStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkSpinButton;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkSpinButton;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkSpinButton* gtkSpinButton, bool ownedRef = false)
	{
		this.gtkSpinButton = gtkSpinButton;
		super(cast(GtkEntry*)gtkSpinButton, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkSpinButton);


	/** */
	public static GType getType()
	{
		return gtk_spin_button_get_type();
	}

	/**
	 * Creates a new #GtkSpinButton.
	 *
	 * Params:
	 *     adjustment = the #GtkAdjustment object that this spin
	 *         button should use, or %NULL
	 *     climbRate = specifies how much the spin button changes when an arrow
	 *         is clicked on
	 *     digits = the number of decimal places to display
	 *
	 * Returns: The new spin button as a #GtkWidget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Adjustment adjustment, double climbRate, uint digits)
	{
		auto p = gtk_spin_button_new((adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits);

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkSpinButton*) p);
	}

	/**
	 * This is a convenience constructor that allows creation of a numeric
	 * #GtkSpinButton without manually creating an adjustment. The value is
	 * initially set to the minimum value and a page increment of 10 * @step
	 * is the default. The precision of the spin button is equivalent to the
	 * precision of @step.
	 *
	 * Note that the way in which the precision is derived works best if @step
	 * is a power of ten. If the resulting precision is not suitable for your
	 * needs, use gtk_spin_button_set_digits() to correct it.
	 *
	 * Params:
	 *     min = Minimum allowable value
	 *     max = Maximum allowable value
	 *     step = Increment added or subtracted by spinning the widget
	 *
	 * Returns: The new spin button as a #GtkWidget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double min, double max, double step)
	{
		auto p = gtk_spin_button_new_with_range(min, max, step);

		if(p is null)
		{
			throw new ConstructionException("null returned by new_with_range");
		}

		this(cast(GtkSpinButton*) p);
	}

	/**
	 * Changes the properties of an existing spin button. The adjustment,
	 * climb rate, and number of decimal places are updated accordingly.
	 *
	 * Params:
	 *     adjustment = a #GtkAdjustment to replace the spin button’s
	 *         existing adjustment, or %NULL to leave its current adjustment unchanged
	 *     climbRate = the new climb rate
	 *     digits = the number of decimal places to display in the spin button
	 */
	public void configure(Adjustment adjustment, double climbRate, uint digits)
	{
		gtk_spin_button_configure(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct(), climbRate, digits);
	}

	/**
	 * Get the adjustment associated with a #GtkSpinButton
	 *
	 * Returns: the #GtkAdjustment of @spin_button
	 */
	public Adjustment getAdjustment()
	{
		auto p = gtk_spin_button_get_adjustment(gtkSpinButton);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Fetches the precision of @spin_button. See gtk_spin_button_set_digits().
	 *
	 * Returns: the current precision
	 */
	public uint getDigits()
	{
		return gtk_spin_button_get_digits(gtkSpinButton);
	}

	/**
	 * Gets the current step and page the increments used by @spin_button. See
	 * gtk_spin_button_set_increments().
	 *
	 * Params:
	 *     step = location to store step increment, or %NULL
	 *     page = location to store page increment, or %NULL
	 */
	public void getIncrements(out double step, out double page)
	{
		gtk_spin_button_get_increments(gtkSpinButton, &step, &page);
	}

	/**
	 * Returns whether non-numeric text can be typed into the spin button.
	 * See gtk_spin_button_set_numeric().
	 *
	 * Returns: %TRUE if only numeric text can be entered
	 */
	public bool getNumeric()
	{
		return gtk_spin_button_get_numeric(gtkSpinButton) != 0;
	}

	/**
	 * Gets the range allowed for @spin_button.
	 * See gtk_spin_button_set_range().
	 *
	 * Params:
	 *     min = location to store minimum allowed value, or %NULL
	 *     max = location to store maximum allowed value, or %NULL
	 */
	public void getRange(out double min, out double max)
	{
		gtk_spin_button_get_range(gtkSpinButton, &min, &max);
	}

	/**
	 * Returns whether the values are corrected to the nearest step.
	 * See gtk_spin_button_set_snap_to_ticks().
	 *
	 * Returns: %TRUE if values are snapped to the nearest step
	 */
	public bool getSnapToTicks()
	{
		return gtk_spin_button_get_snap_to_ticks(gtkSpinButton) != 0;
	}

	/**
	 * Gets the update behavior of a spin button.
	 * See gtk_spin_button_set_update_policy().
	 *
	 * Returns: the current update policy
	 */
	public GtkSpinButtonUpdatePolicy getUpdatePolicy()
	{
		return gtk_spin_button_get_update_policy(gtkSpinButton);
	}

	/**
	 * Get the value in the @spin_button.
	 *
	 * Returns: the value of @spin_button
	 */
	public double getValue()
	{
		return gtk_spin_button_get_value(gtkSpinButton);
	}

	/**
	 * Get the value @spin_button represented as an integer.
	 *
	 * Returns: the value of @spin_button
	 */
	public int getValueAsInt()
	{
		return gtk_spin_button_get_value_as_int(gtkSpinButton);
	}

	/**
	 * Returns whether the spin button’s value wraps around to the
	 * opposite limit when the upper or lower limit of the range is
	 * exceeded. See gtk_spin_button_set_wrap().
	 *
	 * Returns: %TRUE if the spin button wraps around
	 */
	public bool getWrap()
	{
		return gtk_spin_button_get_wrap(gtkSpinButton) != 0;
	}

	/**
	 * Replaces the #GtkAdjustment associated with @spin_button.
	 *
	 * Params:
	 *     adjustment = a #GtkAdjustment to replace the existing adjustment
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_spin_button_set_adjustment(gtkSpinButton, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Set the precision to be displayed by @spin_button. Up to 20 digit precision
	 * is allowed.
	 *
	 * Params:
	 *     digits = the number of digits after the decimal point to be displayed for the spin button’s value
	 */
	public void setDigits(uint digits)
	{
		gtk_spin_button_set_digits(gtkSpinButton, digits);
	}

	/**
	 * Sets the step and page increments for spin_button.  This affects how
	 * quickly the value changes when the spin button’s arrows are activated.
	 *
	 * Params:
	 *     step = increment applied for a button 1 press.
	 *     page = increment applied for a button 2 press.
	 */
	public void setIncrements(double step, double page)
	{
		gtk_spin_button_set_increments(gtkSpinButton, step, page);
	}

	/**
	 * Sets the flag that determines if non-numeric text can be typed
	 * into the spin button.
	 *
	 * Params:
	 *     numeric = flag indicating if only numeric entry is allowed
	 */
	public void setNumeric(bool numeric)
	{
		gtk_spin_button_set_numeric(gtkSpinButton, numeric);
	}

	/**
	 * Sets the minimum and maximum allowable values for @spin_button.
	 *
	 * If the current value is outside this range, it will be adjusted
	 * to fit within the range, otherwise it will remain unchanged.
	 *
	 * Params:
	 *     min = minimum allowable value
	 *     max = maximum allowable value
	 */
	public void setRange(double min, double max)
	{
		gtk_spin_button_set_range(gtkSpinButton, min, max);
	}

	/**
	 * Sets the policy as to whether values are corrected to the
	 * nearest step increment when a spin button is activated after
	 * providing an invalid value.
	 *
	 * Params:
	 *     snapToTicks = a flag indicating if invalid values should be corrected
	 */
	public void setSnapToTicks(bool snapToTicks)
	{
		gtk_spin_button_set_snap_to_ticks(gtkSpinButton, snapToTicks);
	}

	/**
	 * Sets the update behavior of a spin button.
	 * This determines whether the spin button is always updated
	 * or only when a valid value is set.
	 *
	 * Params:
	 *     policy = a #GtkSpinButtonUpdatePolicy value
	 */
	public void setUpdatePolicy(GtkSpinButtonUpdatePolicy policy)
	{
		gtk_spin_button_set_update_policy(gtkSpinButton, policy);
	}

	/**
	 * Sets the value of @spin_button.
	 *
	 * Params:
	 *     value = the new value
	 */
	public void setValue(double value)
	{
		gtk_spin_button_set_value(gtkSpinButton, value);
	}

	/**
	 * Sets the flag that determines if a spin button value wraps
	 * around to the opposite limit when the upper or lower limit
	 * of the range is exceeded.
	 *
	 * Params:
	 *     wrap = a flag indicating if wrapping behavior is performed
	 */
	public void setWrap(bool wrap)
	{
		gtk_spin_button_set_wrap(gtkSpinButton, wrap);
	}

	/**
	 * Increment or decrement a spin button’s value in a specified
	 * direction by a specified amount.
	 *
	 * Params:
	 *     direction = a #GtkSpinType indicating the direction to spin
	 *     increment = step increment to apply in the specified direction
	 */
	public void spin(GtkSpinType direction, double increment)
	{
		gtk_spin_button_spin(gtkSpinButton, direction, increment);
	}

	/**
	 * Manually force an update of the spin button.
	 */
	public void update()
	{
		gtk_spin_button_update(gtkSpinButton);
	}

	/**
	 * The ::change-value signal is a [keybinding signal][GtkBindingSignal]
	 * which gets emitted when the user initiates a value change.
	 *
	 * Applications should not connect to it, but may emit it with
	 * g_signal_emit_by_name() if they need to control the cursor
	 * programmatically.
	 *
	 * The default bindings for this signal are Up/Down and PageUp and/PageDown.
	 *
	 * Params:
	 *     scroll = a #GtkScrollType to specify the speed and amount of change
	 */
	gulong addOnChangeValue(void delegate(GtkScrollType, SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-value", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::input signal can be used to influence the conversion of
	 * the users input into a double value. The signal handler is
	 * expected to use gtk_entry_get_text() to retrieve the text of
	 * the entry and set @new_value to the new value.
	 *
	 * The default conversion uses g_strtod().
	 *
	 * Params:
	 *     newValue = return location for the new value
	 *
	 * Returns: %TRUE for a successful conversion, %FALSE if the input
	 *     was not handled, and %GTK_INPUT_ERROR if the conversion failed.
	 */
	gulong addOnInput(int delegate(void*, SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "input", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::output signal can be used to change to formatting
	 * of the value that is displayed in the spin buttons entry.
	 * |[<!-- language="C" -->
	 * // show leading zeros
	 * static gboolean
	 * on_output (GtkSpinButton *spin,
	 * gpointer       data)
	 * {
	 * GtkAdjustment *adjustment;
	 * gchar *text;
	 * int value;
	 *
	 * adjustment = gtk_spin_button_get_adjustment (spin);
	 * value = (int)gtk_adjustment_get_value (adjustment);
	 * text = g_strdup_printf ("%02d", value);
	 * gtk_entry_set_text (GTK_ENTRY (spin), text);
	 * g_free (text);
	 *
	 * return TRUE;
	 * }
	 * ]|
	 *
	 * Returns: %TRUE if the value has been displayed
	 */
	gulong addOnOutput(bool delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "output", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::value-changed signal is emitted when the value represented by
	 * @spinbutton changes. Also see the #GtkSpinButton::output signal.
	 */
	gulong addOnValueChanged(void delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "value-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::wrapped signal is emitted right after the spinbutton wraps
	 * from its maximum to minimum value or vice-versa.
	 *
	 * Since: 2.10
	 */
	gulong addOnWrapped(void delegate(SpinButton) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "wrapped", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
