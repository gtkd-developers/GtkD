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


module gdk.Device;

private import gdk.DeviceTool;
private import gdk.Display;
private import gdk.Seat;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The `GdkDevice` object represents an input device, such
 * as a keyboard, a mouse, or a touchpad.
 * 
 * See the [class@Gdk.Seat] documentation for more information
 * about the various kinds of devices, and their relationships.
 */
public class Device : ObjectG
{
	/** the main Gtk struct */
	protected GdkDevice* gdkDevice;

	/** Get the main Gtk struct */
	public GdkDevice* getDeviceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDevice;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDevice;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDevice* gdkDevice, bool ownedRef = false)
	{
		this.gdkDevice = gdkDevice;
		super(cast(GObject*)gdkDevice, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_device_get_type();
	}

	/**
	 * Retrieves whether the Caps Lock modifier of the keyboard is locked.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * Returns: %TRUE if Caps Lock is on for @device
	 */
	public bool getCapsLockState()
	{
		return gdk_device_get_caps_lock_state(gdkDevice) != 0;
	}

	/**
	 * Retrieves the current tool for @device.
	 *
	 * Returns: the `GdkDeviceTool`
	 */
	public DeviceTool getDeviceTool()
	{
		auto __p = gdk_device_get_device_tool(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceTool)(cast(GdkDeviceTool*) __p);
	}

	/**
	 * Returns the direction of effective layout of the keyboard.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * The direction of a layout is the direction of the majority
	 * of its symbols. See [func@Pango.unichar_direction].
	 *
	 * Returns: %PANGO_DIRECTION_LTR or %PANGO_DIRECTION_RTL
	 *     if it can determine the direction. %PANGO_DIRECTION_NEUTRAL
	 *     otherwise
	 */
	public PangoDirection getDirection()
	{
		return gdk_device_get_direction(gdkDevice);
	}

	/**
	 * Returns the `GdkDisplay` to which @device pertains.
	 *
	 * Returns: a `GdkDisplay`
	 */
	public Display getDisplay()
	{
		auto __p = gdk_device_get_display(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Determines whether the pointer follows device motion.
	 *
	 * This is not meaningful for keyboard devices, which
	 * don't have a pointer.
	 *
	 * Returns: %TRUE if the pointer follows device motion
	 */
	public bool getHasCursor()
	{
		return gdk_device_get_has_cursor(gdkDevice) != 0;
	}

	/**
	 * Retrieves the current modifier state of the keyboard.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * Returns: the current modifier state
	 */
	public GdkModifierType getModifierState()
	{
		return gdk_device_get_modifier_state(gdkDevice);
	}

	/**
	 * The name of the device, suitable for showing in a user interface.
	 *
	 * Returns: a name
	 */
	public string getName()
	{
		return Str.toString(gdk_device_get_name(gdkDevice));
	}

	/**
	 * Retrieves whether the Num Lock modifier of the keyboard is locked.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * Returns: %TRUE if Num Lock is on for @device
	 */
	public bool getNumLockState()
	{
		return gdk_device_get_num_lock_state(gdkDevice) != 0;
	}

	/**
	 * Retrieves the number of touch points associated to @device.
	 *
	 * Returns: the number of touch points
	 */
	public uint getNumTouches()
	{
		return gdk_device_get_num_touches(gdkDevice);
	}

	/**
	 * Returns the product ID of this device.
	 *
	 * This ID is retrieved from the device, and does not change.
	 * See [method@Gdk.Device.get_vendor_id] for more information.
	 *
	 * Returns: the product ID
	 */
	public string getProductId()
	{
		return Str.toString(gdk_device_get_product_id(gdkDevice));
	}

	/**
	 * Retrieves whether the Scroll Lock modifier of the keyboard is locked.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * Returns: %TRUE if Scroll Lock is on for @device
	 */
	public bool getScrollLockState()
	{
		return gdk_device_get_scroll_lock_state(gdkDevice) != 0;
	}

	/**
	 * Returns the `GdkSeat` the device belongs to.
	 *
	 * Returns: a `GdkSeat`
	 */
	public Seat getSeat()
	{
		auto __p = gdk_device_get_seat(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Seat)(cast(GdkSeat*) __p);
	}

	/**
	 * Determines the type of the device.
	 *
	 * Returns: a `GdkInputSource`
	 */
	public GdkInputSource getSource()
	{
		return gdk_device_get_source(gdkDevice);
	}

	/**
	 * Obtains the surface underneath @device, returning the location of the
	 * device in @win_x and @win_y.
	 *
	 * Returns %NULL if the surface tree under @device is not known to GDK
	 * (for example, belongs to another application).
	 *
	 * Params:
	 *     winX = return location for the X coordinate
	 *         of the device location relative to the surface origin
	 *     winY = return location for the Y coordinate
	 *         of the device location relative to the surface origin
	 *
	 * Returns: the `GdkSurface` under the
	 *     device position
	 */
	public Surface getSurfaceAtPosition(out double winX, out double winY)
	{
		auto __p = gdk_device_get_surface_at_position(gdkDevice, &winX, &winY);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Returns the timestamp of the last activity for this device.
	 *
	 * In practice, this means the timestamp of the last event that was
	 * received from the OS for this device. (GTK may occasionally produce
	 * events for a device that are not received from the OS, and will not
	 * update the timestamp).
	 *
	 * Returns: the timestamp of the last activity for this device
	 *
	 * Since: 4.2
	 */
	public uint getTimestamp()
	{
		return gdk_device_get_timestamp(gdkDevice);
	}

	/**
	 * Returns the vendor ID of this device.
	 *
	 * This ID is retrieved from the device, and does not change.
	 *
	 * This function, together with [method@Gdk.Device.get_product_id],
	 * can be used to eg. compose `GSettings` paths to store settings
	 * for this device.
	 *
	 * ```c
	 * static GSettings *
	 * get_device_settings (GdkDevice *device)
	 * {
	 * const char *vendor, *product;
	 * GSettings *settings;
	 * GdkDevice *device;
	 * char *path;
	 *
	 * vendor = gdk_device_get_vendor_id (device);
	 * product = gdk_device_get_product_id (device);
	 *
	 * path = g_strdup_printf ("/org/example/app/devices/%s:%s/", vendor, product);
	 * settings = g_settings_new_with_path (DEVICE_SCHEMA, path);
	 * g_free (path);
	 *
	 * return settings;
	 * }
	 * ```
	 *
	 * Returns: the vendor ID
	 */
	public string getVendorId()
	{
		return Str.toString(gdk_device_get_vendor_id(gdkDevice));
	}

	/**
	 * Determines if layouts for both right-to-left and
	 * left-to-right languages are in use on the keyboard.
	 *
	 * This is only relevant for keyboard devices.
	 *
	 * Returns: %TRUE if there are layouts with both directions, %FALSE otherwise
	 */
	public bool hasBidiLayouts()
	{
		return gdk_device_has_bidi_layouts(gdkDevice) != 0;
	}

	/**
	 * Emitted either when the number of either axes or keys changes.
	 *
	 * On X11 this will normally happen when the physical device
	 * routing events through the logical device changes (for
	 * example, user switches from the USB mouse to a tablet); in
	 * that case the logical device will change to reflect the axes
	 * and keys on the new physical device.
	 */
	gulong addOnChanged(void delegate(Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted on pen/eraser devices whenever tools enter or leave proximity.
	 *
	 * Params:
	 *     tool = The new current tool
	 */
	gulong addOnToolChanged(void delegate(DeviceTool, Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tool-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
