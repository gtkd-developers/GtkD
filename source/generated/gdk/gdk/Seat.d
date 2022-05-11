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


module gdk.Seat;

private import gdk.Device;
private import gdk.DeviceTool;
private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The `GdkSeat` object represents a collection of input devices
 * that belong to a user.
 */
public class Seat : ObjectG
{
	/** the main Gtk struct */
	protected GdkSeat* gdkSeat;

	/** Get the main Gtk struct */
	public GdkSeat* getSeatStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkSeat;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkSeat;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkSeat* gdkSeat, bool ownedRef = false)
	{
		this.gdkSeat = gdkSeat;
		super(cast(GObject*)gdkSeat, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_seat_get_type();
	}

	/**
	 * Returns the capabilities this `GdkSeat` currently has.
	 *
	 * Returns: the seat capabilities
	 */
	public GdkSeatCapabilities getCapabilities()
	{
		return gdk_seat_get_capabilities(gdkSeat);
	}

	/**
	 * Returns the devices that match the given capabilities.
	 *
	 * Params:
	 *     capabilities = capabilities to get devices for
	 *
	 * Returns: A list
	 *     of `GdkDevices`. The list must be freed with g_list_free(),
	 *     the elements are owned by GTK and must not be freed.
	 */
	public ListG getDevices(GdkSeatCapabilities capabilities)
	{
		auto __p = gdk_seat_get_devices(gdkSeat, capabilities);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns the `GdkDisplay` this seat belongs to.
	 *
	 * Returns: a `GdkDisplay`. This object
	 *     is owned by GTK and must not be freed.
	 */
	public Display getDisplay()
	{
		auto __p = gdk_seat_get_display(gdkSeat);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Returns the device that routes keyboard events.
	 *
	 * Returns: a `GdkDevice` with keyboard
	 *     capabilities. This object is owned by GTK and must not be freed.
	 */
	public Device getKeyboard()
	{
		auto __p = gdk_seat_get_keyboard(gdkSeat);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Returns the device that routes pointer events.
	 *
	 * Returns: a `GdkDevice` with pointer
	 *     capabilities. This object is owned by GTK and must not be freed.
	 */
	public Device getPointer()
	{
		auto __p = gdk_seat_get_pointer(gdkSeat);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Returns all `GdkDeviceTools` that are known to the application.
	 *
	 * Returns: A list of tools. Free with g_list_free().
	 */
	public ListG getTools()
	{
		auto __p = gdk_seat_get_tools(gdkSeat);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Emitted when a new input device is related to this seat.
	 *
	 * Params:
	 *     device = the newly added `GdkDevice`.
	 */
	gulong addOnDeviceAdded(void delegate(Device, Seat) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "device-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an input device is removed (e.g. unplugged).
	 *
	 * Params:
	 *     device = the just removed `GdkDevice`.
	 */
	gulong addOnDeviceRemoved(void delegate(Device, Seat) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "device-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a new tool is made known to the seat.
	 *
	 * The tool may later be assigned to a device (i.e. on
	 * proximity with a tablet). The device will emit the
	 * [signal@Gdk.Device::tool-changed] signal accordingly.
	 *
	 * A same tool may be used by several devices.
	 *
	 * Params:
	 *     tool = the new `GdkDeviceTool` known to the seat
	 */
	gulong addOnToolAdded(void delegate(DeviceTool, Seat) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tool-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a tool is no longer known to this @seat.
	 *
	 * Params:
	 *     tool = the just removed `GdkDeviceTool`
	 */
	gulong addOnToolRemoved(void delegate(DeviceTool, Seat) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tool-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
