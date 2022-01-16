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


module adw.SpringAnimation;

private import adw.Animation;
private import adw.AnimationTarget;
private import adw.SpringParams;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.Widget;


/**
 * A spring-based [class@Animation].
 * 
 * `AdwSpringAnimation` implements an animation driven by a physical model of a
 * spring described by [struct@SpringParams], with a resting position in
 * [property@SpringAnimation:value-to], stretched to
 * [property@SpringAnimation:value-from].
 * 
 * Since the animation is physically simulated, spring animations don't have a
 * fixed duration. The animation will stop when the simulated spring comes to a
 * rest - when the amplitude of the oscillations becomes smaller than
 * [property@SpringAnimation:epsilon], or immediately when it reaches
 * [property@SpringAnimation:value-to] if
 * [property@SpringAnimation:clamp] is set to `TRUE`. The estimated duration can
 * be obtained with [property@SpringAnimation:estimated-duration].
 * 
 * Due to the nature of spring-driven motion the animation can overshoot
 * [property@SpringAnimation:value-to] before coming to a rest. Whether the
 * animation will overshoot or not depends on the damping ratio of the spring.
 * See [struct@SpringParams] for more information about specific damping ratio
 * values.
 * 
 * If [property@SpringAnimation:clamp] is `TRUE`, the animation will abruptly
 * end as soon as it reaches the final value, preventing overshooting.
 * 
 * Animations can have an initial velocity value, set via
 * [property@SpringAnimation:initial-velocity], which adjusts the curve without
 * changing the duration. This makes spring animations useful for deceleration
 * at the end of gestures.
 * 
 * If the initial and final values are equal, and the initial velocity is not 0,
 * the animation value will bounce and return to its resting position.
 *
 * Since: 1.0
 */
public class SpringAnimation : Animation
{
	/** the main Gtk struct */
	protected AdwSpringAnimation* adwSpringAnimation;

	/** Get the main Gtk struct */
	public AdwSpringAnimation* getSpringAnimationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwSpringAnimation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwSpringAnimation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwSpringAnimation* adwSpringAnimation, bool ownedRef = false)
	{
		this.adwSpringAnimation = adwSpringAnimation;
		super(cast(AdwAnimation*)adwSpringAnimation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_spring_animation_get_type();
	}

	/**
	 * Creates a new `AdwSpringAnimation` on @widget.
	 *
	 * The animation will animate @target from @from to @to with the dynamics of a
	 * spring described by @spring_params.
	 *
	 * Params:
	 *     widget = a widget to create animation on
	 *     from = a value to animate from
	 *     to = a value to animate to
	 *     springParams = physical parameters of the spring
	 *     target = a target value to animate
	 *
	 * Returns: the newly created animation
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Widget widget, double from, double to, SpringParams springParams, AnimationTarget target)
	{
		auto __p = adw_spring_animation_new((widget is null) ? null : widget.getWidgetStruct(), from, to, (springParams is null) ? null : springParams.getSpringParamsStruct(true), (target is null) ? null : target.getAnimationTargetStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwSpringAnimation*) __p);
	}

	/**
	 * Gets whether @self should be clamped.
	 *
	 * Returns: whether @self is clamped
	 *
	 * Since: 1.0
	 */
	public bool getClamp()
	{
		return adw_spring_animation_get_clamp(adwSpringAnimation) != 0;
	}

	/**
	 * Gets the precision used to determine the duration of @self.
	 *
	 * Returns: the epsilon value
	 *
	 * Since: 1.0
	 */
	public double getEpsilon()
	{
		return adw_spring_animation_get_epsilon(adwSpringAnimation);
	}

	/**
	 * Gets the estimated duration of @self.
	 *
	 * Returns: the estimated duration
	 *
	 * Since: 1.0
	 */
	public uint getEstimatedDuration()
	{
		return adw_spring_animation_get_estimated_duration(adwSpringAnimation);
	}

	/**
	 * Gets the initial velocity of @self.
	 *
	 * Returns: the initial velocity
	 *
	 * Since: 1.0
	 */
	public double getInitialVelocity()
	{
		return adw_spring_animation_get_initial_velocity(adwSpringAnimation);
	}

	/**
	 * Gets the physical parameters of the spring of @self.
	 *
	 * Returns: the spring parameters
	 *
	 * Since: 1.0
	 */
	public SpringParams getSpringParams()
	{
		auto __p = adw_spring_animation_get_spring_params(adwSpringAnimation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SpringParams)(cast(AdwSpringParams*) __p);
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
		return adw_spring_animation_get_value_from(adwSpringAnimation);
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
		return adw_spring_animation_get_value_to(adwSpringAnimation);
	}

	/**
	 * Gets the current velocity of @self.
	 *
	 * Returns: the current velocity
	 *
	 * Since: 1.0
	 */
	public double getVelocity()
	{
		return adw_spring_animation_get_velocity(adwSpringAnimation);
	}

	/**
	 * Sets whether @self should be clamped.
	 *
	 * Params:
	 *     clamp = the new value
	 *
	 * Since: 1.0
	 */
	public void setClamp(bool clamp)
	{
		adw_spring_animation_set_clamp(adwSpringAnimation, clamp);
	}

	/**
	 * Sets the precision used to determine the duration of @self.
	 *
	 * Params:
	 *     epsilon = the new value
	 *
	 * Since: 1.0
	 */
	public void setEpsilon(double epsilon)
	{
		adw_spring_animation_set_epsilon(adwSpringAnimation, epsilon);
	}

	/**
	 * Sets the initial velocity of @self.
	 *
	 * Params:
	 *     velocity = the initial velocity
	 *
	 * Since: 1.0
	 */
	public void setInitialVelocity(double velocity)
	{
		adw_spring_animation_set_initial_velocity(adwSpringAnimation, velocity);
	}

	/**
	 * Sets the physical parameters of the spring of @self.
	 *
	 * Params:
	 *     springParams = the new spring parameters
	 *
	 * Since: 1.0
	 */
	public void setSpringParams(SpringParams springParams)
	{
		adw_spring_animation_set_spring_params(adwSpringAnimation, (springParams is null) ? null : springParams.getSpringParamsStruct());
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
		adw_spring_animation_set_value_from(adwSpringAnimation, value);
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
		adw_spring_animation_set_value_to(adwSpringAnimation, value);
	}
}
