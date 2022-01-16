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


module gdk.FocusEvent;

private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;


/**
 * An event related to a keyboard focus change.
 */
public class FocusEvent : Event
{
	/** the main Gtk struct */
	protected GdkFocusEvent* gdkFocusEvent;

	/** Get the main Gtk struct */
	public GdkFocusEvent* getFocusEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkFocusEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkFocusEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkFocusEvent* gdkFocusEvent, bool ownedRef = false)
	{
		this.gdkFocusEvent = gdkFocusEvent;
		super(cast(GdkEvent*)gdkFocusEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_focus_event_get_type();
	}

	/**
	 * Extracts whether this event is about focus entering or
	 * leaving the surface.
	 *
	 * Returns: %TRUE of the focus is entering
	 */
	public bool getIn()
	{
		return gdk_focus_event_get_in(cast(GdkEvent*)gdkFocusEvent) != 0;
	}
}
