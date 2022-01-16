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


module gtk.Range;

private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Adjustment;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkRange` is the common base class for widgets which visualize an
 * adjustment.
 * 
 * Widgets that are derived from `GtkRange` include
 * [class@Gtk.Scale] and [class@Gtk.Scrollbar].
 * 
 * Apart from signals for monitoring the parameters of the adjustment,
 * `GtkRange` provides properties and methods for setting a
 * “fill level” on range widgets. See [method@Gtk.Range.set_fill_level].
 */
public class Range : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkRange* gtkRange;

	/** Get the main Gtk struct */
	public GtkRange* getRangeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkRange;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRange;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkRange* gtkRange, bool ownedRef = false)
	{
		this.gtkRange = gtkRange;
		super(cast(GtkWidget*)gtkRange, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(GtkRange);


	/** */
	public static GType getType()
	{
		return gtk_range_get_type();
	}

	/**
	 * Get the adjustment which is the “model” object for `GtkRange`.
	 *
	 * Returns: a `GtkAdjustment`
	 */
	public Adjustment getAdjustment()
	{
		auto __p = gtk_range_get_adjustment(gtkRange);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) __p);
	}

	/**
	 * Gets the current position of the fill level indicator.
	 *
	 * Returns: The current fill level
	 */
	public double getFillLevel()
	{
		return gtk_range_get_fill_level(gtkRange);
	}

	/**
	 * Gets whether the `GtkRange` respects text direction.
	 *
	 * See [method@Gtk.Range.set_flippable].
	 *
	 * Returns: %TRUE if the range is flippable
	 */
	public bool getFlippable()
	{
		return gtk_range_get_flippable(gtkRange) != 0;
	}

	/**
	 * Gets whether the range is inverted.
	 *
	 * See [method@Gtk.Range.set_inverted].
	 *
	 * Returns: %TRUE if the range is inverted
	 */
	public bool getInverted()
	{
		return gtk_range_get_inverted(gtkRange) != 0;
	}

	/**
	 * This function returns the area that contains the range’s trough,
	 * in coordinates relative to @range's origin.
	 *
	 * This function is useful mainly for `GtkRange` subclasses.
	 *
	 * Params:
	 *     rangeRect = return location for the range rectangle
	 */
	public void getRangeRect(out GdkRectangle rangeRect)
	{
		gtk_range_get_range_rect(gtkRange, &rangeRect);
	}

	/**
	 * Gets whether the range is restricted to the fill level.
	 *
	 * Returns: %TRUE if @range is restricted to the fill level.
	 */
	public bool getRestrictToFillLevel()
	{
		return gtk_range_get_restrict_to_fill_level(gtkRange) != 0;
	}

	/**
	 * Gets the number of digits to round the value to when
	 * it changes.
	 *
	 * See [signal@Gtk.Range::change-value].
	 *
	 * Returns: the number of digits to round to
	 */
	public int getRoundDigits()
	{
		return gtk_range_get_round_digits(gtkRange);
	}

	/**
	 * Gets whether the range displays the fill level graphically.
	 *
	 * Returns: %TRUE if @range shows the fill level.
	 */
	public bool getShowFillLevel()
	{
		return gtk_range_get_show_fill_level(gtkRange) != 0;
	}

	/**
	 * This function returns sliders range along the long dimension,
	 * in widget->window coordinates.
	 *
	 * This function is useful mainly for `GtkRange` subclasses.
	 *
	 * Params:
	 *     sliderStart = return location for the slider's start
	 *     sliderEnd = return location for the slider's end
	 */
	public void getSliderRange(out int sliderStart, out int sliderEnd)
	{
		gtk_range_get_slider_range(gtkRange, &sliderStart, &sliderEnd);
	}

	/**
	 * This function is useful mainly for `GtkRange` subclasses.
	 *
	 * See [method@Gtk.Range.set_slider_size_fixed].
	 *
	 * Returns: whether the range’s slider has a fixed size.
	 */
	public bool getSliderSizeFixed()
	{
		return gtk_range_get_slider_size_fixed(gtkRange) != 0;
	}

	/**
	 * Gets the current value of the range.
	 *
	 * Returns: current value of the range.
	 */
	public double getValue()
	{
		return gtk_range_get_value(gtkRange);
	}

	/**
	 * Sets the adjustment to be used as the “model” object for the `GtkRange`
	 *
	 * The adjustment indicates the current range value, the minimum and
	 * maximum range values, the step/page increments used for keybindings
	 * and scrolling, and the page size.
	 *
	 * The page size is normally 0 for `GtkScale` and nonzero for `GtkScrollbar`,
	 * and indicates the size of the visible area of the widget being scrolled.
	 * The page size affects the size of the scrollbar slider.
	 *
	 * Params:
	 *     adjustment = a `GtkAdjustment`
	 */
	public void setAdjustment(Adjustment adjustment)
	{
		gtk_range_set_adjustment(gtkRange, (adjustment is null) ? null : adjustment.getAdjustmentStruct());
	}

	/**
	 * Set the new position of the fill level indicator.
	 *
	 * The “fill level” is probably best described by its most prominent
	 * use case, which is an indicator for the amount of pre-buffering in
	 * a streaming media player. In that use case, the value of the range
	 * would indicate the current play position, and the fill level would
	 * be the position up to which the file/stream has been downloaded.
	 *
	 * This amount of prebuffering can be displayed on the range’s trough
	 * and is themeable separately from the trough. To enable fill level
	 * display, use [method@Gtk.Range.set_show_fill_level]. The range defaults
	 * to not showing the fill level.
	 *
	 * Additionally, it’s possible to restrict the range’s slider position
	 * to values which are smaller than the fill level. This is controlled
	 * by [method@Gtk.Range.set_restrict_to_fill_level] and is by default
	 * enabled.
	 *
	 * Params:
	 *     fillLevel = the new position of the fill level indicator
	 */
	public void setFillLevel(double fillLevel)
	{
		gtk_range_set_fill_level(gtkRange, fillLevel);
	}

	/**
	 * Sets whether the `GtkRange` respects text direction.
	 *
	 * If a range is flippable, it will switch its direction
	 * if it is horizontal and its direction is %GTK_TEXT_DIR_RTL.
	 *
	 * See [method@Gtk.Widget.get_direction].
	 *
	 * Params:
	 *     flippable = %TRUE to make the range flippable
	 */
	public void setFlippable(bool flippable)
	{
		gtk_range_set_flippable(gtkRange, flippable);
	}

	/**
	 * Sets the step and page sizes for the range.
	 *
	 * The step size is used when the user clicks the `GtkScrollbar`
	 * arrows or moves a `GtkScale` via arrow keys. The page size
	 * is used for example when moving via Page Up or Page Down keys.
	 *
	 * Params:
	 *     step = step size
	 *     page = page size
	 */
	public void setIncrements(double step, double page)
	{
		gtk_range_set_increments(gtkRange, step, page);
	}

	/**
	 * Sets whether to invert the range.
	 *
	 * Ranges normally move from lower to higher values as the
	 * slider moves from top to bottom or left to right. Inverted
	 * ranges have higher values at the top or on the right rather
	 * than on the bottom or left.
	 *
	 * Params:
	 *     setting = %TRUE to invert the range
	 */
	public void setInverted(bool setting)
	{
		gtk_range_set_inverted(gtkRange, setting);
	}

	/**
	 * Sets the allowable values in the `GtkRange`.
	 *
	 * The range value is clamped to be between @min and @max.
	 * (If the range has a non-zero page size, it is clamped
	 * between @min and @max - page-size.)
	 *
	 * Params:
	 *     min = minimum range value
	 *     max = maximum range value
	 */
	public void setRange(double min, double max)
	{
		gtk_range_set_range(gtkRange, min, max);
	}

	/**
	 * Sets whether the slider is restricted to the fill level.
	 *
	 * See [method@Gtk.Range.set_fill_level] for a general description
	 * of the fill level concept.
	 *
	 * Params:
	 *     restrictToFillLevel = Whether the fill level restricts slider movement.
	 */
	public void setRestrictToFillLevel(bool restrictToFillLevel)
	{
		gtk_range_set_restrict_to_fill_level(gtkRange, restrictToFillLevel);
	}

	/**
	 * Sets the number of digits to round the value to when
	 * it changes.
	 *
	 * See [signal@Gtk.Range::change-value].
	 *
	 * Params:
	 *     roundDigits = the precision in digits, or -1
	 */
	public void setRoundDigits(int roundDigits)
	{
		gtk_range_set_round_digits(gtkRange, roundDigits);
	}

	/**
	 * Sets whether a graphical fill level is show on the trough.
	 *
	 * See [method@Gtk.Range.set_fill_level] for a general description
	 * of the fill level concept.
	 *
	 * Params:
	 *     showFillLevel = Whether a fill level indicator graphics is shown.
	 */
	public void setShowFillLevel(bool showFillLevel)
	{
		gtk_range_set_show_fill_level(gtkRange, showFillLevel);
	}

	/**
	 * Sets whether the range’s slider has a fixed size, or a size that
	 * depends on its adjustment’s page size.
	 *
	 * This function is useful mainly for `GtkRange` subclasses.
	 *
	 * Params:
	 *     sizeFixed = %TRUE to make the slider size constant
	 */
	public void setSliderSizeFixed(bool sizeFixed)
	{
		gtk_range_set_slider_size_fixed(gtkRange, sizeFixed);
	}

	/**
	 * Sets the current value of the range.
	 *
	 * If the value is outside the minimum or maximum range values,
	 * it will be clamped to fit inside them. The range emits the
	 * [signal@Gtk.Range::value-changed] signal if the value changes.
	 *
	 * Params:
	 *     value = new value of the range
	 */
	public void setValue(double value)
	{
		gtk_range_set_value(gtkRange, value);
	}

	/**
	 * Emitted before clamping a value, to give the application a
	 * chance to adjust the bounds.
	 *
	 * Params:
	 *     value = the value before we clamp
	 */
	gulong addOnAdjustBounds(void delegate(double, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "adjust-bounds", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a scroll action is performed on a range.
	 *
	 * It allows an application to determine the type of scroll event
	 * that occurred and the resultant new value. The application can
	 * handle the event itself and return %TRUE to prevent further
	 * processing. Or, by returning %FALSE, it can pass the event to
	 * other handlers until the default GTK handler is reached.
	 *
	 * The value parameter is unrounded. An application that overrides
	 * the ::change-value signal is responsible for clamping the value
	 * to the desired number of decimal digits; the default GTK
	 * handler clamps the value based on [property@Gtk.Range:round-digits].
	 *
	 * Params:
	 *     scroll = the type of scroll action that was performed
	 *     value = the new value resulting from the scroll action
	 *
	 * Returns: %TRUE to prevent other handlers from being invoked for
	 *     the signal, %FALSE to propagate the signal further
	 */
	gulong addOnChangeValue(bool delegate(GtkScrollType, double, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "change-value", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Virtual function that moves the slider.
	 *
	 * Used for keybindings.
	 *
	 * Params:
	 *     step = how to move the slider
	 */
	gulong addOnMoveSlider(void delegate(GtkScrollType, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "move-slider", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the range value changes.
	 */
	gulong addOnValueChanged(void delegate(Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "value-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
