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


module adw.TimedAnimation;

private import adw.Animation;
private import adw.AnimationTarget;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * A time-based [class@Animation].
 * 
 * `AdwTimedAnimation` implements a simple animation interpolating the given
 * value from [property@TimedAnimation:value-from] to
 * [property@TimedAnimation:value-to] over
 * [property@TimedAnimation:duration] milliseconds using the curve described by
 * [property@TimedAnimation:easing].
 * 
 * If [property@TimedAnimation:reverse] is set to `TRUE`, `AdwTimedAnimation`
 * will instead animate from [property@TimedAnimation:value-to] to
 * [property@TimedAnimation:value-from], and the easing curve will be inverted.
 * 
 * The animation can repeat a certain amount of times, or endlessly, depending
 * on the [property@TimedAnimation:repeat-count] value. If
 * [property@TimedAnimation:alternate] is set to `TRUE`, it will also change the
 * direction every other iteration.
 *
 * Since: 1.0
 */
public class TimedAnimation : Animation
{
	/** the main Gtk struct */
	protected AdwTimedAnimation* adwTimedAnimation;

	/** Get the main Gtk struct */
	public AdwTimedAnimation* getTimedAnimationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwTimedAnimation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwTimedAnimation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwTimedAnimation* adwTimedAnimation, bool ownedRef = false)
	{
		this.adwTimedAnimation = adwTimedAnimation;
		super(cast(AdwAnimation*)adwTimedAnimation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_timed_animation_get_type();
	}

	/**
	 * Creates a new `AdwTimedAnimation` on @widget to animate @target from @from
	 * to @to.
	 *
	 * Params:
	 *     widget = a widget to create animation on
	 *     from = a value to animate from
	 *     to = a value to animate to
	 *     duration = a duration for the animation
	 *     target = a target value to animate
	 *
	 * Returns: the newly created animation
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget, double from, double to, uint duration, AnimationTarget target)
	{
		auto __p = adw_timed_animation_new((widget is null) ? null : widget.getWidgetStruct(), from, to, duration, (target is null) ? null : target.getAnimationTargetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwTimedAnimation*) __p);
	}

	/**
	 * Gets whether @self changes direction on every iteration.
	 *
	 * Returns: whether @self alternates
	 *
	 * Since: 1.0
	 */
	public bool getAlternate()
	{
		return adw_timed_animation_get_alternate(adwTimedAnimation) != 0;
	}

	/**
	 * Gets the duration of @self.
	 *
	 * Returns: the duration of @self, in milliseconds
	 *
	 * Since: 1.0
	 */
	public uint getDuration()
	{
		return adw_timed_animation_get_duration(adwTimedAnimation);
	}

	/**
	 * Gets the easing function @self uses.
	 *
	 * Returns: the easing function @self uses
	 *
	 * Since: 1.0
	 */
	public AdwEasing getEasing()
	{
		return adw_timed_animation_get_easing(adwTimedAnimation);
	}

	/**
	 * Gets the number of times @self will play.
	 *
	 * Returns: the number of times @self will play
	 *
	 * Since: 1.0
	 */
	public uint getRepeatCount()
	{
		return adw_timed_animation_get_repeat_count(adwTimedAnimation);
	}

	/**
	 * Gets whether @self plays backwards.
	 *
	 * Returns: whether @self plays backwards
	 *
	 * Since: 1.0
	 */
	public bool getReverse()
	{
		return adw_timed_animation_get_reverse(adwTimedAnimation) != 0;
	}

	/**
	 * Gets the value @self will animate from.
	 *
	 * Returns: the value to animate from
	 *
	 * Since: 1.0
	 */
	public double getValueFrom()
	{
		return adw_timed_animation_get_value_from(adwTimedAnimation);
	}

	/**
	 * Gets the value @self will animate to.
	 *
	 * Returns: the value to animate to
	 *
	 * Since: 1.0
	 */
	public double getValueTo()
	{
		return adw_timed_animation_get_value_to(adwTimedAnimation);
	}

	/**
	 * Sets whether @self changes direction on every iteration.
	 *
	 * Params:
	 *     alternate = whether @self alternates
	 *
	 * Since: 1.0
	 */
	public void setAlternate(bool alternate)
	{
		adw_timed_animation_set_alternate(adwTimedAnimation, alternate);
	}

	/**
	 * Sets the duration of @self.
	 *
	 * If the animation repeats more than once, sets the duration of one iteration.
	 *
	 * Params:
	 *     duration = the duration to use, in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setDuration(uint duration)
	{
		adw_timed_animation_set_duration(adwTimedAnimation, duration);
	}

	/**
	 * Sets the easing function @self will use.
	 *
	 * See [enum@Easing] for the description of specific easing functions.
	 *
	 * Params:
	 *     easing = the easing function to use
	 *
	 * Since: 1.0
	 */
	public void setEasing(AdwEasing easing)
	{
		adw_timed_animation_set_easing(adwTimedAnimation, easing);
	}

	/**
	 * Sets the number of times @self will play.
	 *
	 * If set to 0, @self will repeat endlessly.
	 *
	 * Params:
	 *     repeatCount = the number of times @self will play
	 *
	 * Since: 1.0
	 */
	public void setRepeatCount(uint repeatCount)
	{
		adw_timed_animation_set_repeat_count(adwTimedAnimation, repeatCount);
	}

	/**
	 * Sets whether @self plays backwards.
	 *
	 * Params:
	 *     reverse = whether @self plays backwards
	 *
	 * Since: 1.0
	 */
	public void setReverse(bool reverse)
	{
		adw_timed_animation_set_reverse(adwTimedAnimation, reverse);
	}

	/**
	 * Sets the value @self will animate from.
	 *
	 * Params:
	 *     value = the value to animate from
	 *
	 * Since: 1.0
	 */
	public void setValueFrom(double value)
	{
		adw_timed_animation_set_value_from(adwTimedAnimation, value);
	}

	/**
	 * Sets the value @self will animate to.
	 *
	 * Params:
	 *     value = the value to animate to
	 *
	 * Since: 1.0
	 */
	public void setValueTo(double value)
	{
		adw_timed_animation_set_value_to(adwTimedAnimation, value);
	}
}
