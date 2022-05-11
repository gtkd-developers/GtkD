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


module gdk.PadEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a pad-based device.
 */
public class PadEvent : Event
{
	/** the main Gtk struct */
	protected GdkPadEvent* gdkPadEvent;

	/** Get the main Gtk struct */
	public GdkPadEvent* getPadEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkPadEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkPadEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkPadEvent* gdkPadEvent, bool ownedRef = false)
	{
		this.gdkPadEvent = gdkPadEvent;
		super(cast(GdkEvent*)gdkPadEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_pad_event_get_type();
	}

	/**
	 * Extracts the information from a pad strip or ring event.
	 *
	 * Params:
	 *     index = Return location for the axis index
	 *     value = Return location for the axis value
	 */
	public void getAxisValue(out uint index, out double value)
	{
		gdk_pad_event_get_axis_value(cast(GdkEvent*)gdkPadEvent, &index, &value);
	}

	/**
	 * Extracts information about the pressed button from
	 * a pad event.
	 *
	 * Returns: the button of @event
	 */
	public uint getButton()
	{
		return gdk_pad_event_get_button(cast(GdkEvent*)gdkPadEvent);
	}

	/**
	 * Extracts group and mode information from a pad event.
	 *
	 * Params:
	 *     group = return location for the group
	 *     mode = return location for the mode
	 */
	public void getGroupMode(out uint group, out uint mode)
	{
		gdk_pad_event_get_group_mode(cast(GdkEvent*)gdkPadEvent, &group, &mode);
	}
}
