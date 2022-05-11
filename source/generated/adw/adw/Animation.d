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


module adw.Animation;

private import adw.AnimationTarget;
private import adw.c.functions;
public  import adw.c.types;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import std.algorithm;


/**
 * A base class for animations.
 * 
 * `AdwAnimation` represents an animation on a widget. It has a target that
 * provides a value to animate, and a state indicating whether the
 * animation hasn't been started yet, is playing, paused or finished.
 * 
 * Currently there are two concrete animation types:
 * [class@TimedAnimation] and [class@SpringAnimation].
 * 
 * `AdwAnimation` will automatically skip the animation if
 * [property@Animation:widget] is unmapped, or if
 * [property@Gtk.Settings:gtk-enable-animations] is `FALSE`.
 * 
 * The [signal@Animation::done] signal can be used to perform an action after
 * the animation ends, for example hiding a widget after animating its
 * [property@Gtk.Widget:opacity] to 0.
 * 
 * `AdwAnimation` will be kept alive while the animation is playing. As such,
 * it's safe to create an animation, start it and immediately unref it:
 * A fire-and-forget animation:
 * 
 * ```c
 * static void
 * animation_cb (double    value,
 * MyObject *self)
 * {
 * // Do something with @value
 * }
 * 
 * static void
 * my_object_animate (MyObject *self)
 * {
 * AdwAnimationTarget *target =
 * adw_callback_animation_target_new ((AdwAnimationTargetFunc) animation_cb,
 * self, NULL);
 * g_autoptr (AdwAnimation) animation =
 * adw_timed_animation_new (widget, 0, 1, 250, target);
 * 
 * adw_animation_play (animation);
 * }
 * ```
 * 
 * If there's a chance the previous animation for the same target hasn't yet
 * finished, the previous animation should be stopped first, or the existing
 * `AdwAnimation` object can be reused.
 *
 * Since: 1.0
 */
public class Animation : ObjectG
{
	/** the main Gtk struct */
	protected AdwAnimation* adwAnimation;

	/** Get the main Gtk struct */
	public AdwAnimation* getAnimationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwAnimation;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwAnimation;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwAnimation* adwAnimation, bool ownedRef = false)
	{
		this.adwAnimation = adwAnimation;
		super(cast(GObject*)adwAnimation, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return adw_animation_get_type();
	}

	/**
	 * Gets the current value of @self.
	 *
	 * The state indicates whether @self is currently playing, paused, finished or
	 * hasn't been started yet.
	 *
	 * Returns: the animation value
	 *
	 * Since: 1.0
	 */
	public AdwAnimationState getState()
	{
		return adw_animation_get_state(adwAnimation);
	}

	/**
	 * Gets the target @self animates.
	 *
	 * Returns: the animation target
	 *
	 * Since: 1.0
	 */
	public AnimationTarget getTarget()
	{
		auto __p = adw_animation_get_target(adwAnimation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AnimationTarget)(cast(AdwAnimationTarget*) __p);
	}

	/**
	 * Gets the current value of @self.
	 *
	 * Returns: the current value
	 *
	 * Since: 1.0
	 */
	public double getValue()
	{
		return adw_animation_get_value(adwAnimation);
	}

	/**
	 * Gets the widget @self was created for.
	 *
	 * Returns: the animation widget
	 *
	 * Since: 1.0
	 */
	public Widget getWidget()
	{
		auto __p = adw_animation_get_widget(adwAnimation);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Widget)(cast(GtkWidget*) __p);
	}

	/**
	 * Pauses a playing animation for @self.
	 *
	 * Does nothing if the current state of @self isn't `ADW_ANIMATION_PLAYING`.
	 *
	 * Sets [property@Animation:state] to `ADW_ANIMATION_PAUSED`.
	 *
	 * Since: 1.0
	 */
	public void pause()
	{
		adw_animation_pause(adwAnimation);
	}

	/**
	 * Starts the animation for @self.
	 *
	 * If the animation is playing, paused or has been completed, restarts it from
	 * the beginning. This allows to easily play an animation regardless of whether
	 * it's already playing or not.
	 *
	 * Sets [property@Animation:state] to `ADW_ANIMATION_PLAYING`.
	 *
	 * The animation will be automatically skipped if [property@Animation:widget] is
	 * unmapped, or if [property@Gtk.Settings:gtk-enable-animations] is `FALSE`.
	 *
	 * As such, it's not guaranteed that the animation will actually run. For
	 * example, when using [func@GLib.idle_add] and starting an animation
	 * immediately afterwards, it's entirely possible that the idle callback will
	 * run after the animation has already finished, and not while it's playing.
	 *
	 * Since: 1.0
	 */
	public void play()
	{
		adw_animation_play(adwAnimation);
	}

	/**
	 * Resets the animation for @self.
	 *
	 * Sets [property@Animation:state] to `ADW_ANIMATION_IDLE`.
	 *
	 * Since: 1.0
	 */
	public void reset()
	{
		adw_animation_reset(adwAnimation);
	}

	/**
	 * Resumes a paused animation for @self.
	 *
	 * This function must only be used if the animation has been paused with
	 * [method@Animation.pause].
	 *
	 * Sets [property@Animation:state] to `ADW_ANIMATION_PLAYING`.
	 *
	 * Since: 1.0
	 */
	public void resume()
	{
		adw_animation_resume(adwAnimation);
	}

	/**
	 * Skips the animation for @self.
	 *
	 * If the animation hasn't been started yet, is playing, or is paused, instantly
	 * skips the animation to the end and causes [signal@Animation::done] to be
	 * emitted.
	 *
	 * Sets [property@Animation:state] to `ADW_ANIMATION_FINISHED`.
	 *
	 * Since: 1.0
	 */
	public void skip()
	{
		adw_animation_skip(adwAnimation);
	}

	/**
	 * This signal is emitted when the animation has been completed, either on its
	 * own or via calling [method@Animation.skip].
	 *
	 * Since: 1.0
	 */
	gulong addOnDone(void delegate(Animation) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "done", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
