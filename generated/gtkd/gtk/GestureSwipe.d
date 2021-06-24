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


module gtk.GestureSwipe;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Gesture;
private import gtk.GestureSingle;
private import gtk.c.functions;
public  import gtk.c.types;
private import std.algorithm;


/**
 * `GtkGestureSwipe` is a `GtkGesture` for swipe gestures.
 * 
 * After a press/move/.../move/release sequence happens, the
 * [signal@Gtk.GestureSwipe::swipe] signal will be emitted,
 * providing the velocity and directionality of the sequence
 * at the time it was lifted.
 * 
 * If the velocity is desired in intermediate points,
 * [method@Gtk.GestureSwipe.get_velocity] can be called in a
 * [signal@Gtk.Gesture::update] handler.
 * 
 * All velocities are reported in pixels/sec units.
 */
public class GestureSwipe : GestureSingle
{
	/** the main Gtk struct */
	protected GtkGestureSwipe* gtkGestureSwipe;

	/** Get the main Gtk struct */
	public GtkGestureSwipe* getGestureSwipeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gtkGestureSwipe;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkGestureSwipe;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GtkGestureSwipe* gtkGestureSwipe, bool ownedRef = false)
	{
		this.gtkGestureSwipe = gtkGestureSwipe;
		super(cast(GtkGestureSingle*)gtkGestureSwipe, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gtk_gesture_swipe_get_type();
	}

	/**
	 * Returns a newly created `GtkGesture` that recognizes swipes.
	 *
	 * Returns: a newly created `GtkGestureSwipe`
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gtk_gesture_swipe_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GtkGestureSwipe*) __p, true);
	}

	/**
	 * Gets the current velocity.
	 *
	 * If the gesture is recognized, this function returns %TRUE and fills
	 * in @velocity_x and @velocity_y with the recorded velocity, as per the
	 * last events processed.
	 *
	 * Params:
	 *     velocityX = return value for the velocity in the X axis, in pixels/sec
	 *     velocityY = return value for the velocity in the Y axis, in pixels/sec
	 *
	 * Returns: whether velocity could be calculated
	 */
	public bool getVelocity(out double velocityX, out double velocityY)
	{
		return gtk_gesture_swipe_get_velocity(gtkGestureSwipe, &velocityX, &velocityY) != 0;
	}

	/**
	 * Emitted when the recognized gesture is finished.
	 *
	 * Velocity and direction are a product of previously recorded events.
	 *
	 * Params:
	 *     velocityX = velocity in the X axis, in pixels/sec
	 *     velocityY = velocity in the Y axis, in pixels/sec
	 */
	gulong addOnSwipe(void delegate(double, double, GestureSwipe) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "swipe", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
