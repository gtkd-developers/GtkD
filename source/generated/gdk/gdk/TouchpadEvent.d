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


module gdk.TouchpadEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a gesture on a touchpad device.
 * 
 * Unlike touchscreens, where the windowing system sends basic
 * sequences of begin, update, end events, and leaves gesture
 * recognition to the clients, touchpad gestures are typically
 * processed by the system, resulting in these events.
 */
public class TouchpadEvent : Event
{
	/** the main Gtk struct */
	protected GdkTouchpadEvent* gdkTouchpadEvent;

	/** Get the main Gtk struct */
	public GdkTouchpadEvent* getTouchpadEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkTouchpadEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkTouchpadEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkTouchpadEvent* gdkTouchpadEvent, bool ownedRef = false)
	{
		this.gdkTouchpadEvent = gdkTouchpadEvent;
		super(cast(GdkEvent*)gdkTouchpadEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_touchpad_event_get_type();
	}

	/**
	 * Extracts delta information from a touchpad event.
	 *
	 * Params:
	 *     dx = return location for x
	 *     dy = return location for y
	 */
	public void getDeltas(out double dx, out double dy)
	{
		gdk_touchpad_event_get_deltas(cast(GdkEvent*)gdkTouchpadEvent, &dx, &dy);
	}

	/**
	 * Extracts the touchpad gesture phase from a touchpad event.
	 *
	 * Returns: the gesture phase of @event
	 */
	public GdkTouchpadGesturePhase getGesturePhase()
	{
		return gdk_touchpad_event_get_gesture_phase(cast(GdkEvent*)gdkTouchpadEvent);
	}

	/**
	 * Extracts the number of fingers from a touchpad event.
	 *
	 * Returns: the number of fingers for @event
	 */
	public uint getNFingers()
	{
		return gdk_touchpad_event_get_n_fingers(cast(GdkEvent*)gdkTouchpadEvent);
	}

	/**
	 * Extracts the angle delta from a touchpad pinch event.
	 *
	 * Returns: the angle delta of @event
	 */
	public double getPinchAngleDelta()
	{
		return gdk_touchpad_event_get_pinch_angle_delta(cast(GdkEvent*)gdkTouchpadEvent);
	}

	/**
	 * Extracts the scale from a touchpad pinch event.
	 *
	 * Returns: the scale of @event
	 */
	public double getPinchScale()
	{
		return gdk_touchpad_event_get_pinch_scale(cast(GdkEvent*)gdkTouchpadEvent);
	}
}
