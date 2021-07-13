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


module gdk.ScrollEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a scrolling motion.
 */
public class ScrollEvent : Event
{
	/** the main Gtk struct */
	protected GdkScrollEvent* gdkScrollEvent;

	/** Get the main Gtk struct */
	public GdkScrollEvent* getScrollEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkScrollEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkScrollEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkScrollEvent* gdkScrollEvent, bool ownedRef = false)
	{
		this.gdkScrollEvent = gdkScrollEvent;
		super(cast(GdkEvent*)gdkScrollEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_scroll_event_get_type();
	}

	/**
	 * Extracts the scroll deltas of a scroll event.
	 *
	 * The deltas will be zero unless the scroll direction
	 * is %GDK_SCROLL_SMOOTH.
	 *
	 * Params:
	 *     deltaX = return location for x scroll delta
	 *     deltaY = return location for y scroll delta
	 */
	public void getDeltas(out double deltaX, out double deltaY)
	{
		gdk_scroll_event_get_deltas(cast(GdkEvent*)gdkScrollEvent, &deltaX, &deltaY);
	}

	/**
	 * Extracts the direction of a scroll event.
	 *
	 * Returns: the scroll direction of @event
	 */
	public GdkScrollDirection getDirection()
	{
		return gdk_scroll_event_get_direction(cast(GdkEvent*)gdkScrollEvent);
	}

	/**
	 * Check whether a scroll event is a stop scroll event.
	 *
	 * Scroll sequences with smooth scroll information may provide
	 * a stop scroll event once the interaction with the device finishes,
	 * e.g. by lifting a finger. This stop scroll event is the signal
	 * that a widget may trigger kinetic scrolling based on the current
	 * velocity.
	 *
	 * Stop scroll events always have a delta of 0/0.
	 *
	 * Returns: %TRUE if the event is a scroll stop event
	 */
	public bool isStop()
	{
		return gdk_scroll_event_is_stop(cast(GdkEvent*)gdkScrollEvent) != 0;
	}
}
