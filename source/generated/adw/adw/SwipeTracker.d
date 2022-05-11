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


module adw.SwipeTracker;

private import adw.SwipeableIF;
private import adw.c.functions;
public  import adw.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import std.algorithm;


/**
 * A swipe tracker used in [class@Carousel], [class@Flap] and [class@Leaflet].
 * 
 * The `AdwSwipeTracker` object can be used for implementing widgets with swipe
 * gestures. It supports touch-based swipes, pointer dragging, and touchpad
 * scrolling.
 * 
 * The widgets will probably want to expose the [property@SwipeTracker:enabled]
 * property. If they expect to use horizontal orientation,
 * [property@SwipeTracker:reversed] can be used for supporting RTL text
 * direction.
 *
 * Since: 1.0
 */
public class SwipeTracker : ObjectG, OrientableIF
{
	/** the main Gtk struct */
	protected AdwSwipeTracker* adwSwipeTracker;

	/** Get the main Gtk struct */
	public AdwSwipeTracker* getSwipeTrackerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return adwSwipeTracker;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)adwSwipeTracker;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (AdwSwipeTracker* adwSwipeTracker, bool ownedRef = false)
	{
		this.adwSwipeTracker = adwSwipeTracker;
		super(cast(GObject*)adwSwipeTracker, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(AdwSwipeTracker);


	/** */
	public static GType getType()
	{
		return adw_swipe_tracker_get_type();
	}

	/**
	 * Creates a new `AdwSwipeTracker` for @widget.
	 *
	 * Params:
	 *     swipeable = a widget to add the tracker on
	 *
	 * Returns: the newly created `AdwSwipeTracker`
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SwipeableIF swipeable)
	{
		auto __p = adw_swipe_tracker_new((swipeable is null) ? null : swipeable.getSwipeableStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(AdwSwipeTracker*) __p, true);
	}

	/**
	 * Gets whether to allow swiping for more than one snap point at a time.
	 *
	 * Returns: whether long swipes are allowed
	 *
	 * Since: 1.0
	 */
	public bool getAllowLongSwipes()
	{
		return adw_swipe_tracker_get_allow_long_swipes(adwSwipeTracker) != 0;
	}

	/**
	 * Gets whether @self can be dragged with mouse pointer.
	 *
	 * Returns: whether mouse dragging is allowed
	 *
	 * Since: 1.0
	 */
	public bool getAllowMouseDrag()
	{
		return adw_swipe_tracker_get_allow_mouse_drag(adwSwipeTracker) != 0;
	}

	/**
	 * Gets whether @self is enabled.
	 *
	 * Returns: whether @self is enabled
	 *
	 * Since: 1.0
	 */
	public bool getEnabled()
	{
		return adw_swipe_tracker_get_enabled(adwSwipeTracker) != 0;
	}

	/**
	 * Gets whether @self is reversing the swipe direction.
	 *
	 * Returns: whether the direction is reversed
	 *
	 * Since: 1.0
	 */
	public bool getReversed()
	{
		return adw_swipe_tracker_get_reversed(adwSwipeTracker) != 0;
	}

	/**
	 * Get the widget @self is attached to.
	 *
	 * Returns: the swipeable widget
	 *
	 * Since: 1.0
	 */
	public SwipeableIF getSwipeable()
	{
		auto __p = adw_swipe_tracker_get_swipeable(adwSwipeTracker);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SwipeableIF)(cast(AdwSwipeable*) __p);
	}

	/**
	 * Sets whether to allow swiping for more than one snap point at a time.
	 *
	 * Params:
	 *     allowLongSwipes = whether to allow long swipes
	 *
	 * Since: 1.0
	 */
	public void setAllowLongSwipes(bool allowLongSwipes)
	{
		adw_swipe_tracker_set_allow_long_swipes(adwSwipeTracker, allowLongSwipes);
	}

	/**
	 * Sets whether @self can be dragged with mouse pointer.
	 *
	 * Params:
	 *     allowMouseDrag = whether to allow mouse dragging
	 *
	 * Since: 1.0
	 */
	public void setAllowMouseDrag(bool allowMouseDrag)
	{
		adw_swipe_tracker_set_allow_mouse_drag(adwSwipeTracker, allowMouseDrag);
	}

	/**
	 * Sets whether @self is enabled.
	 *
	 * Params:
	 *     enabled = whether @self is enabled
	 *
	 * Since: 1.0
	 */
	public void setEnabled(bool enabled)
	{
		adw_swipe_tracker_set_enabled(adwSwipeTracker, enabled);
	}

	/**
	 * Sets whether to reverse the swipe direction.
	 *
	 * Params:
	 *     reversed = whether to reverse the swipe direction
	 *
	 * Since: 1.0
	 */
	public void setReversed(bool reversed)
	{
		adw_swipe_tracker_set_reversed(adwSwipeTracker, reversed);
	}

	/**
	 * Moves the current progress value by @delta.
	 *
	 * This can be used to adjust the current position if snap points move during
	 * the gesture.
	 *
	 * Params:
	 *     delta = the position delta
	 *
	 * Since: 1.0
	 */
	public void shiftPosition(double delta)
	{
		adw_swipe_tracker_shift_position(adwSwipeTracker, delta);
	}

	/**
	 * This signal is emitted right before a swipe will be started, after the
	 * drag threshold has been passed.
	 *
	 * Since: 1.0
	 */
	gulong addOnBeginSwipe(void delegate(SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "begin-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted as soon as the gesture has stopped.
	 *
	 * The user is expected to animate the deceleration from the current progress
	 * value to @to with an animation using @velocity as the initial velocity,
	 * provided in pixels per second. [class@SpringAnimation] is usually a good
	 * fit for this.
	 *
	 * Params:
	 *     velocity = the velocity of the swipe
	 *     to = the progress value to animate to
	 *
	 * Since: 1.0
	 */
	gulong addOnEndSwipe(void delegate(double, double, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "end-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a possible swipe is detected.
	 *
	 * The @direction value can be used to restrict the swipe to a certain
	 * direction.
	 *
	 * Params:
	 *     direction = the direction of the swipe
	 *
	 * Since: 1.0
	 */
	gulong addOnPrepare(void delegate(AdwNavigationDirection, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "prepare", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted every time the progress value changes.
	 *
	 * Params:
	 *     progress = the current animation progress value
	 *
	 * Since: 1.0
	 */
	gulong addOnUpdateSwipe(void delegate(double, SwipeTracker) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "update-swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
