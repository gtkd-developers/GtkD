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


module gdk.TouchEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a touch-based device.
 */
public class TouchEvent : Event
{
	/** the main Gtk struct */
	protected GdkTouchEvent* gdkTouchEvent;

	/** Get the main Gtk struct */
	public GdkTouchEvent* getTouchEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkTouchEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkTouchEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkTouchEvent* gdkTouchEvent, bool ownedRef = false)
	{
		this.gdkTouchEvent = gdkTouchEvent;
		super(cast(GdkEvent*)gdkTouchEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_touch_event_get_type();
	}

	/**
	 * Extracts whether a touch event is emulating a pointer event.
	 *
	 * Returns: %TRUE if @event is emulating
	 */
	public bool getEmulatingPointer()
	{
		return gdk_touch_event_get_emulating_pointer(cast(GdkEvent*)gdkTouchEvent) != 0;
	}
}
