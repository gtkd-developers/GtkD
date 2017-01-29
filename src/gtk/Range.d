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
public  import gtkc.gdktypes;
private import gtkc.gtk;
public  import gtkc.gtktypes;
private import std.algorithm;


/**
 * #GtkRange is the common base class for widgets which visualize an
 * adjustment, e.g #GtkScale or #GtkScrollbar.
 * 
 * Apart from signals for monitoring the parameters of the adjustment,
 * #GtkRange provides properties and methods for influencing the sensitivity
 * of the “steppers”. It also provides properties and methods for setting a
 * “fill level” on range widgets. See gtk_range_set_fill_level().
 */
public class Range : Widget, OrientableIF
{
	/** the main Gtk struct */
	protected GtkRange* gtkRange;

	/** Get the main Gtk struct */
	public GtkRange* getRangeStruct()
	{
		return gtkRange;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkRange;
	}

	protected override void setStruct(GObject* obj)
	{
		gtkRange = cast(GtkRange*)obj;
		super.setStruct(obj);
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
	 * Get the #GtkAdjustment which is the “model” object for #GtkRange.
	 * See gtk_range_set_adjustment() for details.
	 * The return value does not have a reference added, so should not
	 * be unreferenced.
	 *
	 * Return: a #GtkAdjustment
	 */
	public Adjustment getAdjustment()
	{
		auto p = gtk_range_get_adjustment(gtkRange);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Adjustment)(cast(GtkAdjustment*) p);
	}

	/**
	 * Gets the current position of the fill level indicator.
	 *
	 * Return: The current fill level
	 *
	 * Since: 2.12
	 */
	public double getFillLevel()
	{
		return gtk_range_get_fill_level(gtkRange);
	}

	/**
	 * Gets the value set by gtk_range_set_flippable().
	 *
	 * Return: %TRUE if the range is flippable
	 *
	 * Since: 2.18
	 */
	public bool getFlippable()
	{
		return gtk_range_get_flippable(gtkRange) != 0;
	}

	/**
	 * Gets the value set by gtk_range_set_inverted().
	 *
	 * Return: %TRUE if the range is inverted
	 */
	public bool getInverted()
	{
		return gtk_range_get_inverted(gtkRange) != 0;
	}

	/**
	 * Gets the sensitivity policy for the stepper that points to the
	 * 'lower' end of the GtkRange’s adjustment.
	 *
	 * Return: The lower stepper’s sensitivity policy.
	 *
	 * Since: 2.10
	 */
	public GtkSensitivityType getLowerStepperSensitivity()
	{
		return gtk_range_get_lower_stepper_sensitivity(gtkRange);
	}

	/**
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * See gtk_range_set_min_slider_size().
	 *
	 * Deprecated: Use the min-height/min-width CSS properties on the slider
	 * node.
	 *
	 * Return: The minimum size of the range’s slider.
	 *
	 * Since: 2.20
	 */
	public int getMinSliderSize()
	{
		return gtk_range_get_min_slider_size(gtkRange);
	}

	/**
	 * This function returns the area that contains the range’s trough
	 * and its steppers, in widget->window coordinates.
	 *
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * Params:
	 *     rangeRect = return location for the range rectangle
	 *
	 * Since: 2.20
	 */
	public void getRangeRect(out GdkRectangle rangeRect)
	{
		gtk_range_get_range_rect(gtkRange, &rangeRect);
	}

	/**
	 * Gets whether the range is restricted to the fill level.
	 *
	 * Return: %TRUE if @range is restricted to the fill level.
	 *
	 * Since: 2.12
	 */
	public bool getRestrictToFillLevel()
	{
		return gtk_range_get_restrict_to_fill_level(gtkRange) != 0;
	}

	/**
	 * Gets the number of digits to round the value to when
	 * it changes. See #GtkRange::change-value.
	 *
	 * Return: the number of digits to round to
	 *
	 * Since: 2.24
	 */
	public int getRoundDigits()
	{
		return gtk_range_get_round_digits(gtkRange);
	}

	/**
	 * Gets whether the range displays the fill level graphically.
	 *
	 * Return: %TRUE if @range shows the fill level.
	 *
	 * Since: 2.12
	 */
	public bool getShowFillLevel()
	{
		return gtk_range_get_show_fill_level(gtkRange) != 0;
	}

	/**
	 * This function returns sliders range along the long dimension,
	 * in widget->window coordinates.
	 *
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * Params:
	 *     sliderStart = return location for the slider's
	 *         start, or %NULL
	 *     sliderEnd = return location for the slider's
	 *         end, or %NULL
	 *
	 * Since: 2.20
	 */
	public void getSliderRange(out int sliderStart, out int sliderEnd)
	{
		gtk_range_get_slider_range(gtkRange, &sliderStart, &sliderEnd);
	}

	/**
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * See gtk_range_set_slider_size_fixed().
	 *
	 * Return: whether the range’s slider has a fixed size.
	 *
	 * Since: 2.20
	 */
	public bool getSliderSizeFixed()
	{
		return gtk_range_get_slider_size_fixed(gtkRange) != 0;
	}

	/**
	 * Gets the sensitivity policy for the stepper that points to the
	 * 'upper' end of the GtkRange’s adjustment.
	 *
	 * Return: The upper stepper’s sensitivity policy.
	 *
	 * Since: 2.10
	 */
	public GtkSensitivityType getUpperStepperSensitivity()
	{
		return gtk_range_get_upper_stepper_sensitivity(gtkRange);
	}

	/**
	 * Gets the current value of the range.
	 *
	 * Return: current value of the range.
	 */
	public double getValue()
	{
		return gtk_range_get_value(gtkRange);
	}

	/**
	 * Sets the adjustment to be used as the “model” object for this range
	 * widget. The adjustment indicates the current range value, the
	 * minimum and maximum range values, the step/page increments used
	 * for keybindings and scrolling, and the page size. The page size
	 * is normally 0 for #GtkScale and nonzero for #GtkScrollbar, and
	 * indicates the size of the visible area of the widget being scrolled.
	 * The page size affects the size of the scrollbar slider.
	 *
	 * Params:
	 *     adjustment = a #GtkAdjustment
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
	 * display, use gtk_range_set_show_fill_level(). The range defaults
	 * to not showing the fill level.
	 *
	 * Additionally, it’s possible to restrict the range’s slider position
	 * to values which are smaller than the fill level. This is controller
	 * by gtk_range_set_restrict_to_fill_level() and is by default
	 * enabled.
	 *
	 * Params:
	 *     fillLevel = the new position of the fill level indicator
	 *
	 * Since: 2.12
	 */
	public void setFillLevel(double fillLevel)
	{
		gtk_range_set_fill_level(gtkRange, fillLevel);
	}

	/**
	 * If a range is flippable, it will switch its direction if it is
	 * horizontal and its direction is %GTK_TEXT_DIR_RTL.
	 *
	 * See gtk_widget_get_direction().
	 *
	 * Params:
	 *     flippable = %TRUE to make the range flippable
	 *
	 * Since: 2.18
	 */
	public void setFlippable(bool flippable)
	{
		gtk_range_set_flippable(gtkRange, flippable);
	}

	/**
	 * Sets the step and page sizes for the range.
	 * The step size is used when the user clicks the #GtkScrollbar
	 * arrows or moves #GtkScale via arrow keys. The page size
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
	 * Ranges normally move from lower to higher values as the
	 * slider moves from top to bottom or left to right. Inverted
	 * ranges have higher values at the top or on the right rather than
	 * on the bottom or left.
	 *
	 * Params:
	 *     setting = %TRUE to invert the range
	 */
	public void setInverted(bool setting)
	{
		gtk_range_set_inverted(gtkRange, setting);
	}

	/**
	 * Sets the sensitivity policy for the stepper that points to the
	 * 'lower' end of the GtkRange’s adjustment.
	 *
	 * Params:
	 *     sensitivity = the lower stepper’s sensitivity policy.
	 *
	 * Since: 2.10
	 */
	public void setLowerStepperSensitivity(GtkSensitivityType sensitivity)
	{
		gtk_range_set_lower_stepper_sensitivity(gtkRange, sensitivity);
	}

	/**
	 * Sets the minimum size of the range’s slider.
	 *
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * Deprecated: Use the min-height/min-width CSS properties on the slider
	 * node.
	 *
	 * Params:
	 *     minSize = The slider’s minimum size
	 *
	 * Since: 2.20
	 */
	public void setMinSliderSize(int minSize)
	{
		gtk_range_set_min_slider_size(gtkRange, minSize);
	}

	/**
	 * Sets the allowable values in the #GtkRange, and clamps the range
	 * value to be between @min and @max. (If the range has a non-zero
	 * page size, it is clamped between @min and @max - page-size.)
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
	 * Sets whether the slider is restricted to the fill level. See
	 * gtk_range_set_fill_level() for a general description of the fill
	 * level concept.
	 *
	 * Params:
	 *     restrictToFillLevel = Whether the fill level restricts slider movement.
	 *
	 * Since: 2.12
	 */
	public void setRestrictToFillLevel(bool restrictToFillLevel)
	{
		gtk_range_set_restrict_to_fill_level(gtkRange, restrictToFillLevel);
	}

	/**
	 * Sets the number of digits to round the value to when
	 * it changes. See #GtkRange::change-value.
	 *
	 * Params:
	 *     roundDigits = the precision in digits, or -1
	 *
	 * Since: 2.24
	 */
	public void setRoundDigits(int roundDigits)
	{
		gtk_range_set_round_digits(gtkRange, roundDigits);
	}

	/**
	 * Sets whether a graphical fill level is show on the trough. See
	 * gtk_range_set_fill_level() for a general description of the fill
	 * level concept.
	 *
	 * Params:
	 *     showFillLevel = Whether a fill level indicator graphics is shown.
	 *
	 * Since: 2.12
	 */
	public void setShowFillLevel(bool showFillLevel)
	{
		gtk_range_set_show_fill_level(gtkRange, showFillLevel);
	}

	/**
	 * Sets whether the range’s slider has a fixed size, or a size that
	 * depends on its adjustment’s page size.
	 *
	 * This function is useful mainly for #GtkRange subclasses.
	 *
	 * Params:
	 *     sizeFixed = %TRUE to make the slider size constant
	 *
	 * Since: 2.20
	 */
	public void setSliderSizeFixed(bool sizeFixed)
	{
		gtk_range_set_slider_size_fixed(gtkRange, sizeFixed);
	}

	/**
	 * Sets the sensitivity policy for the stepper that points to the
	 * 'upper' end of the GtkRange’s adjustment.
	 *
	 * Params:
	 *     sensitivity = the upper stepper’s sensitivity policy.
	 *
	 * Since: 2.10
	 */
	public void setUpperStepperSensitivity(GtkSensitivityType sensitivity)
	{
		gtk_range_set_upper_stepper_sensitivity(gtkRange, sensitivity);
	}

	/**
	 * Sets the current value of the range; if the value is outside the
	 * minimum or maximum range values, it will be clamped to fit inside
	 * them. The range emits the #GtkRange::value-changed signal if the
	 * value changes.
	 *
	 * Params:
	 *     value = new value of the range
	 */
	public void setValue(double value)
	{
		gtk_range_set_value(gtkRange, value);
	}

	protected class OnAdjustBoundsDelegateWrapper
	{
		static OnAdjustBoundsDelegateWrapper[] listeners;
		void delegate(double, Range) dlg;
		gulong handlerId;
		
		this(void delegate(double, Range) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnAdjustBoundsDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
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
		auto wrapper = new OnAdjustBoundsDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"adjust-bounds",
			cast(GCallback)&callBackAdjustBounds,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackAdjustBoundsDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackAdjustBounds(GtkRange* rangeStruct, double value, OnAdjustBoundsDelegateWrapper wrapper)
	{
		wrapper.dlg(value, wrapper.outer);
	}
	
	extern(C) static void callBackAdjustBoundsDestroy(OnAdjustBoundsDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnChangeValueDelegateWrapper
	{
		static OnChangeValueDelegateWrapper[] listeners;
		bool delegate(GtkScrollType, double, Range) dlg;
		gulong handlerId;
		
		this(bool delegate(GtkScrollType, double, Range) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnChangeValueDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * The #GtkRange::change-value signal is emitted when a scroll action is
	 * performed on a range.  It allows an application to determine the
	 * type of scroll event that occurred and the resultant new value.
	 * The application can handle the event itself and return %TRUE to
	 * prevent further processing.  Or, by returning %FALSE, it can pass
	 * the event to other handlers until the default GTK+ handler is
	 * reached.
	 *
	 * The value parameter is unrounded.  An application that overrides
	 * the GtkRange::change-value signal is responsible for clamping the
	 * value to the desired number of decimal digits; the default GTK+
	 * handler clamps the value based on #GtkRange:round-digits.
	 *
	 * It is not possible to use delayed update policies in an overridden
	 * #GtkRange::change-value handler.
	 *
	 * Params:
	 *     scroll = the type of scroll action that was performed
	 *     value = the new value resulting from the scroll action
	 *
	 * Return: %TRUE to prevent other handlers from being invoked for
	 *     the signal, %FALSE to propagate the signal further
	 *
	 * Since: 2.6
	 */
	gulong addOnChangeValue(bool delegate(GtkScrollType, double, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnChangeValueDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"change-value",
			cast(GCallback)&callBackChangeValue,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackChangeValueDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static int callBackChangeValue(GtkRange* rangeStruct, GtkScrollType scroll, double value, OnChangeValueDelegateWrapper wrapper)
	{
		return wrapper.dlg(scroll, value, wrapper.outer);
	}
	
	extern(C) static void callBackChangeValueDestroy(OnChangeValueDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnMoveSliderDelegateWrapper
	{
		static OnMoveSliderDelegateWrapper[] listeners;
		void delegate(GtkScrollType, Range) dlg;
		gulong handlerId;
		
		this(void delegate(GtkScrollType, Range) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnMoveSliderDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Virtual function that moves the slider. Used for keybindings.
	 *
	 * Params:
	 *     step = how to move the slider
	 */
	gulong addOnMoveSlider(void delegate(GtkScrollType, Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnMoveSliderDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"move-slider",
			cast(GCallback)&callBackMoveSlider,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackMoveSliderDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackMoveSlider(GtkRange* rangeStruct, GtkScrollType step, OnMoveSliderDelegateWrapper wrapper)
	{
		wrapper.dlg(step, wrapper.outer);
	}
	
	extern(C) static void callBackMoveSliderDestroy(OnMoveSliderDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}

	protected class OnValueChangedDelegateWrapper
	{
		static OnValueChangedDelegateWrapper[] listeners;
		void delegate(Range) dlg;
		gulong handlerId;
		
		this(void delegate(Range) dlg)
		{
			this.dlg = dlg;
			this.listeners ~= this;
		}
		
		void remove(OnValueChangedDelegateWrapper source)
		{
			foreach(index, wrapper; listeners)
			{
				if (wrapper.handlerId == source.handlerId)
				{
					listeners[index] = null;
					listeners = std.algorithm.remove(listeners, index);
					break;
				}
			}
		}
	}

	/**
	 * Emitted when the range value changes.
	 */
	gulong addOnValueChanged(void delegate(Range) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		auto wrapper = new OnValueChangedDelegateWrapper(dlg);
		wrapper.handlerId = Signals.connectData(
			this,
			"value-changed",
			cast(GCallback)&callBackValueChanged,
			cast(void*)wrapper,
			cast(GClosureNotify)&callBackValueChangedDestroy,
			connectFlags);
		return wrapper.handlerId;
	}
	
	extern(C) static void callBackValueChanged(GtkRange* rangeStruct, OnValueChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackValueChangedDestroy(OnValueChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.remove(wrapper);
	}
}
