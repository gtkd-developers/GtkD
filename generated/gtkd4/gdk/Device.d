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
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * The #GdkDevice object represents a single input device, such
 * as a keyboard, a mouse, a touchpad, etc.
 * 
 * See the #GdkSeat documentation for more information
 * about the various kinds of master and slave devices, and their
 * relationships.
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
	 * Frees an array of #GdkTimeCoord that was returned by gdk_device_get_history().
	 *
	 * Params:
	 *     events = an array of #GdkTimeCoord.
	 */
	public static void freeHistory(GdkTimeCoord*[] events)
	{
		gdk_device_free_history(events.ptr, cast(int)events.length);
	}

	/**
	 * Returns the associated device to @device, if @device is of type
	 * %GDK_DEVICE_TYPE_MASTER, it will return the paired pointer or
	 * keyboard.
	 *
	 * If @device is of type %GDK_DEVICE_TYPE_SLAVE, it will return
	 * the master device to which @device is attached to.
	 *
	 * If @device is of type %GDK_DEVICE_TYPE_FLOATING, %NULL will be
	 * returned, as there is no associated device.
	 *
	 * Returns: The associated device, or
	 *     %NULL
	 */
	public Device getAssociatedDevice()
	{
		auto __p = gdk_device_get_associated_device(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * Returns the axes currently available on the device.
	 */
	public GdkAxisFlags getAxes()
	{
		return gdk_device_get_axes(gdkDevice);
	}

	/**
	 * Interprets an array of double as axis values for a given device,
	 * and locates the value in the array for a given axis use.
	 *
	 * Params:
	 *     axes = pointer to an array of axes
	 *     use = the use to look for
	 *     value = location to store the found value.
	 *
	 * Returns: %TRUE if the given axis use was found, otherwise %FALSE
	 */
	public bool getAxis(double[] axes, GdkAxisUse use, out double value)
	{
		return gdk_device_get_axis(gdkDevice, axes.ptr, use, &value) != 0;
	}

	/**
	 * Returns the axis use for @index_.
	 *
	 * Params:
	 *     index = the index of the axis.
	 *
	 * Returns: a #GdkAxisUse specifying how the axis is used.
	 */
	public GdkAxisUse getAxisUse(uint index)
	{
		return gdk_device_get_axis_use(gdkDevice, index);
	}

	/**
	 * Interprets an array of double as axis values for a given device,
	 * and locates the value in the array for a given axis label, as returned
	 * by gdk_device_list_axes()
	 *
	 * Params:
	 *     axes = pointer to an array of axes
	 *     axisLabel = name of the label
	 *     value = location to store the found value.
	 *
	 * Returns: %TRUE if the given axis use was found, otherwise %FALSE.
	 */
	public bool getAxisValue(double[] axes, GdkAtom axisLabel, out double value)
	{
		return gdk_device_get_axis_value(gdkDevice, axes.ptr, axisLabel, &value) != 0;
	}

	/**
	 * Returns the device type for @device.
	 *
	 * Returns: the #GdkDeviceType for @device.
	 */
	public GdkDeviceType getDeviceType()
	{
		return gdk_device_get_device_type(gdkDevice);
	}

	/**
	 * Returns the #GdkDisplay to which @device pertains.
	 *
	 * Returns: a #GdkDisplay. This memory is owned
	 *     by GTK+, and must not be freed or unreffed.
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
	 * This is not meaningful for keyboard devices, which don't have a pointer.
	 *
	 * Returns: %TRUE if the pointer follows device motion
	 */
	public bool getHasCursor()
	{
		return gdk_device_get_has_cursor(gdkDevice) != 0;
	}

	/**
	 * Obtains the motion history for a pointer device; given a starting and
	 * ending timestamp, return all events in the motion history for
	 * the device in the given range of time. Some windowing systems
	 * do not support motion history, in which case, %FALSE will
	 * be returned. (This is not distinguishable from the case where
	 * motion history is supported and no events were found.)
	 *
	 * Note that there is also gdk_surface_set_event_compression() to get
	 * more motion events delivered directly, independent of the windowing
	 * system.
	 *
	 * Params:
	 *     surface = the surface with respect to which which the event coordinates will be reported
	 *     start = starting timestamp for range of events to return
	 *     stop = ending timestamp for the range of events to return
	 *     events = location to store a newly-allocated array of #GdkTimeCoord, or
	 *         %NULL
	 *
	 * Returns: %TRUE if the windowing system supports motion history and
	 *     at least one event was found.
	 */
	public bool getHistory(Surface surface, uint start, uint stop, out GdkTimeCoord*[] events)
	{
		GdkTimeCoord** outevents = null;
		int nEvents;

		auto __p = gdk_device_get_history(gdkDevice, (surface is null) ? null : surface.getSurfaceStruct(), start, stop, &outevents, &nEvents) != 0;

		events = outevents[0 .. nEvents];

		return __p;
	}

	/**
	 * If @index_ has a valid keyval, this function will return %TRUE
	 * and fill in @keyval and @modifiers with the keyval settings.
	 *
	 * Params:
	 *     index = the index of the macro button to get.
	 *     keyval = return value for the keyval.
	 *     modifiers = return value for modifiers.
	 *
	 * Returns: %TRUE if keyval is set for @index.
	 */
	public bool getKey(uint index, out uint keyval, out GdkModifierType modifiers)
	{
		return gdk_device_get_key(gdkDevice, index, &keyval, &modifiers) != 0;
	}

	/**
	 * Gets information about which surface the given pointer device is in, based on events
	 * that have been received so far from the display server. If another application
	 * has a pointer grab, or this application has a grab with owner_events = %FALSE,
	 * %NULL may be returned even if the pointer is physically over one of this
	 * application's surfaces.
	 *
	 * Returns: the last surface the device
	 */
	public Surface getLastEventSurface()
	{
		auto __p = gdk_device_get_last_event_surface(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Determines the mode of the device.
	 *
	 * Returns: a #GdkInputSource
	 */
	public GdkInputMode getMode()
	{
		return gdk_device_get_mode(gdkDevice);
	}

	/**
	 * Returns the number of axes the device currently has.
	 *
	 * Returns: the number of axes.
	 */
	public int getNAxes()
	{
		return gdk_device_get_n_axes(gdkDevice);
	}

	/**
	 * Returns the number of keys the device currently has.
	 *
	 * Returns: the number of keys.
	 */
	public int getNKeys()
	{
		return gdk_device_get_n_keys(gdkDevice);
	}

	/**
	 * Determines the name of the device.
	 *
	 * Returns: a name
	 */
	public string getName()
	{
		return Str.toString(gdk_device_get_name(gdkDevice));
	}

	/**
	 * Returns the product ID of this device, or %NULL if this information couldn't
	 * be obtained. This ID is retrieved from the device, and is thus constant for
	 * it. See gdk_device_get_vendor_id() for more information.
	 *
	 * Returns: the product ID, or %NULL
	 */
	public string getProductId()
	{
		return Str.toString(gdk_device_get_product_id(gdkDevice));
	}

	/**
	 * Returns the #GdkSeat the device belongs to.
	 *
	 * Returns: A #GdkSeat. This memory is owned by GTK+ and
	 *     must not be freed.
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
	 * Returns: a #GdkInputSource
	 */
	public GdkInputSource getSource()
	{
		return gdk_device_get_source(gdkDevice);
	}

	/**
	 * Gets the current state of a pointer device relative to @surface. As a slave
	 * device’s coordinates are those of its master pointer, this
	 * function may not be called on devices of type %GDK_DEVICE_TYPE_SLAVE,
	 * unless there is an ongoing grab on them. See gdk_seat_grab().
	 *
	 * Params:
	 *     surface = a #GdkSurface.
	 *     axes = an array of doubles to store the values of
	 *         the axes of @device in, or %NULL.
	 *     mask = location to store the modifiers, or %NULL.
	 */
	public void getState(Surface surface, double[] axes, out GdkModifierType mask)
	{
		gdk_device_get_state(gdkDevice, (surface is null) ? null : surface.getSurfaceStruct(), axes.ptr, &mask);
	}

	/**
	 * Obtains the surface underneath @device, returning the location of the device in @win_x and @win_y in
	 * double precision. Returns %NULL if the surface tree under @device is not known to GDK (for example,
	 * belongs to another application).
	 *
	 * As a slave device coordinates are those of its master pointer, This
	 * function may not be called on devices of type %GDK_DEVICE_TYPE_SLAVE,
	 * unless there is an ongoing grab on them, see gdk_seat_grab().
	 *
	 * Params:
	 *     winX = return location for the X coordinate of the device location,
	 *         relative to the surface origin, or %NULL.
	 *     winY = return location for the Y coordinate of the device location,
	 *         relative to the surface origin, or %NULL.
	 *
	 * Returns: the #GdkSurface under the
	 *     device position, or %NULL.
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
	 * Returns the vendor ID of this device, or %NULL if this information couldn't
	 * be obtained. This ID is retrieved from the device, and is thus constant for
	 * it.
	 *
	 * This function, together with gdk_device_get_product_id(), can be used to eg.
	 * compose #GSettings paths to store settings for this device.
	 *
	 * |[<!-- language="C" -->
	 * static GSettings *
	 * get_device_settings (GdkDevice *device)
	 * {
	 * const gchar *vendor, *product;
	 * GSettings *settings;
	 * GdkDevice *device;
	 * gchar *path;
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
	 * ]|
	 *
	 * Returns: the vendor ID, or %NULL
	 */
	public string getVendorId()
	{
		return Str.toString(gdk_device_get_vendor_id(gdkDevice));
	}

	/**
	 * Returns a #GList of #GdkAtoms, containing the labels for
	 * the axes that @device currently has.
	 *
	 * Returns: A #GList of strings, free with g_list_free().
	 */
	public ListG listAxes()
	{
		auto __p = gdk_device_list_axes(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * If the device if of type %GDK_DEVICE_TYPE_MASTER, it will return
	 * the list of slave devices attached to it, otherwise it will return
	 * %NULL
	 *
	 * Returns: the list of slave devices, or %NULL. The list must be
	 *     freed with g_list_free(), the contents of the list are
	 *     owned by GTK+ and should not be freed.
	 */
	public ListG listSlaveDevices()
	{
		auto __p = gdk_device_list_slave_devices(gdkDevice);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Specifies how an axis of a device is used.
	 *
	 * Params:
	 *     index = the index of the axis
	 *     use = specifies how the axis is used
	 */
	public void setAxisUse(uint index, GdkAxisUse use)
	{
		gdk_device_set_axis_use(gdkDevice, index, use);
	}

	/**
	 * Specifies the X key event to generate when a macro button of a device
	 * is pressed.
	 *
	 * Params:
	 *     index = the index of the macro button to set
	 *     keyval = the keyval to generate
	 *     modifiers = the modifiers to set
	 */
	public void setKey(uint index, uint keyval, GdkModifierType modifiers)
	{
		gdk_device_set_key(gdkDevice, index, keyval, modifiers);
	}

	/**
	 * Sets a the mode of an input device. The mode controls if the
	 * device is active and whether the device’s range is mapped to the
	 * entire screen or to a single surface.
	 *
	 * Note: This is only meaningful for floating devices, master devices (and
	 * slaves connected to these) drive the pointer cursor, which is not limited
	 * by the input mode.
	 *
	 * Params:
	 *     mode = the input mode.
	 *
	 * Returns: %TRUE if the mode was successfully changed.
	 */
	public bool setMode(GdkInputMode mode)
	{
		return gdk_device_set_mode(gdkDevice, mode) != 0;
	}

	/**
	 * The ::changed signal is emitted either when the #GdkDevice
	 * has changed the number of either axes or keys. For example
	 * In X this will normally happen when the slave device routing
	 * events through the master device changes (for example, user
	 * switches from the USB mouse to a tablet), in that case the
	 * master device will change to reflect the new slave device
	 * axes and keys.
	 */
	gulong addOnChanged(void delegate(Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::tool-changed signal is emitted on pen/eraser
	 * #GdkDevices whenever tools enter or leave proximity.
	 *
	 * Params:
	 *     tool = The new current tool
	 */
	gulong addOnToolChanged(void delegate(DeviceTool, Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "tool-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
