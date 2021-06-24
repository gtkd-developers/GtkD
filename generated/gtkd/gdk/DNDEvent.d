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


module gdk.DNDEvent;

private import gdk.Drop;
private import gdk.Event;
private import gdk.c.functions;
public  import gdk.c.types;
private import gobject.ObjectG;


/**
 * An event related to drag and drop operations.
 */
public class DNDEvent : Event
{
	/** the main Gtk struct */
	protected GdkDNDEvent* gdkDNDEvent;

	/** Get the main Gtk struct */
	public GdkDNDEvent* getDNDEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDNDEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDNDEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDNDEvent* gdkDNDEvent, bool ownedRef = false)
	{
		this.gdkDNDEvent = gdkDNDEvent;
		super(cast(GdkEvent*)gdkDNDEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_dnd_event_get_type();
	}

	/**
	 * Gets the `GdkDrop` object from a DND event.
	 *
	 * Returns: the drop
	 */
	public Drop getDrop()
	{
		auto __p = gdk_dnd_event_get_drop(cast(GdkEvent*)gdkDNDEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drop)(cast(GdkDrop*) __p);
	}
}
