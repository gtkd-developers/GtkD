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

/*
 * Conversion parameters:
 * inFile  = GdkDevice.html
 * outPack = gdk
 * outFile = Device
 * strct   = GdkDevice
 * realStrct=
 * ctorStrct=
 * clss    = Device
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_device_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- glib.Str
 * 	- gdk.Cursor
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- gdk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkCursor* -> Cursor
 * 	- GdkDevice* -> Device
 * 	- GdkDisplay* -> Display
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Device;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.ListG;
private import glib.Str;
private import gdk.Cursor;
private import gdk.Display;
private import gdk.Screen;
private import gdk.Window;



private import gobject.ObjectG;

/**
 * Description
 * The GdkDevice object represents a single input device, such
 * as a keyboard, a mouse, a touchpad, etc.
 * See the GdkDeviceManager documentation for more information
 * about the various kinds of master and slave devices, and their
 * relationships.
 */
public class Device : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDevice* gdkDevice;
	
	
	public GdkDevice* getDeviceStruct()
	{
		return gdkDevice;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDevice;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDevice* gdkDevice)
	{
		super(cast(GObject*)gdkDevice);
		this.gdkDevice = gdkDevice;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkDevice = cast(GdkDevice*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Device)[] onChangedListeners;
	/**
	 * The ::changed signal is emitted either when the GdkDevice
	 * has changed the number of either axes or keys. For example
	 * In X this will normally happen when the slave device routing
	 * events through the master device changes (for example, user
	 * switches from the USB mouse to a tablet), in that case the
	 * master device will change to reflect the new slave device
	 * axes and keys.
	 * See Also
	 * GdkDeviceManager
	 */
	void addOnChanged(void delegate(Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GdkDevice* deviceStruct, Device _device)
	{
		foreach ( void delegate(Device) dlg ; _device.onChangedListeners )
		{
			dlg(_device);
		}
	}
	
	
	/**
	 * Determines the name of the device.
	 * Since 2.20
	 * Returns: a name
	 */
	public string getName()
	{
		// const gchar * gdk_device_get_name (GdkDevice *device);
		return Str.toString(gdk_device_get_name(gdkDevice));
	}
	
	/**
	 * Determines the type of the device.
	 * Since 2.20
	 * Returns: a GdkInputSource
	 */
	public GdkInputSource getSource()
	{
		// GdkInputSource gdk_device_get_source (GdkDevice *device);
		return gdk_device_get_source(gdkDevice);
	}
	
	/**
	 * Sets a the mode of an input device. The mode controls if the
	 * device is active and whether the device's range is mapped to the
	 * entire screen or to a single window.
	 * Params:
	 * mode = the input mode.
	 * Returns: TRUE if the mode was successfully changed.
	 */
	public int setMode(GdkInputMode mode)
	{
		// gboolean gdk_device_set_mode (GdkDevice *device,  GdkInputMode mode);
		return gdk_device_set_mode(gdkDevice, mode);
	}
	
	/**
	 * Determines the mode of the device.
	 * Since 2.20
	 * Returns: a GdkInputSource
	 */
	public GdkInputMode getMode()
	{
		// GdkInputMode gdk_device_get_mode (GdkDevice *device);
		return gdk_device_get_mode(gdkDevice);
	}
	
	/**
	 * Specifies the X key event to generate when a macro button of a device
	 * is pressed.
	 * Params:
	 * index = the index of the macro button to set
	 * keyval = the keyval to generate
	 * modifiers = the modifiers to set
	 */
	public void setKey(uint index, uint keyval, GdkModifierType modifiers)
	{
		// void gdk_device_set_key (GdkDevice *device,  guint index_,  guint keyval,  GdkModifierType modifiers);
		gdk_device_set_key(gdkDevice, index, keyval, modifiers);
	}
	
	/**
	 * If index_ has a valid keyval, this function will return TRUE
	 * and fill in keyval and modifiers with the keyval settings.
	 * Since 2.20
	 * Params:
	 * index = the index of the macro button to get.
	 * keyval = return value for the keyval. [out]
	 * modifiers = return value for modifiers. [out]
	 * Returns: TRUE if keyval is set for index.
	 */
	public int getKey(uint index, out uint keyval, out GdkModifierType modifiers)
	{
		// gboolean gdk_device_get_key (GdkDevice *device,  guint index_,  guint *keyval,  GdkModifierType *modifiers);
		return gdk_device_get_key(gdkDevice, index, &keyval, &modifiers);
	}
	
	/**
	 * Specifies how an axis of a device is used.
	 * Params:
	 * index = the index of the axis
	 * use = specifies how the axis is used
	 */
	public void setAxisUse(uint index, GdkAxisUse use)
	{
		// void gdk_device_set_axis_use (GdkDevice *device,  guint index_,  GdkAxisUse use);
		gdk_device_set_axis_use(gdkDevice, index, use);
	}
	
	/**
	 * Returns the axis use for index_.
	 * Since 2.20
	 * Params:
	 * index = the index of the axis.
	 * Returns: a GdkAxisUse specifying how the axis is used.
	 */
	public GdkAxisUse getAxisUse(uint index)
	{
		// GdkAxisUse gdk_device_get_axis_use (GdkDevice *device,  guint index_);
		return gdk_device_get_axis_use(gdkDevice, index);
	}
	
	/**
	 * Returns the associated device to device, if device is of type
	 * GDK_DEVICE_TYPE_MASTER, it will return the paired pointer or
	 * keyboard.
	 * If device is of type GDK_DEVICE_TYPE_SLAVE, it will return
	 * the master device to which device is attached to.
	 * If device is of type GDK_DEVICE_TYPE_FLOATING, NULL will be
	 * returned, as there is no associated device.
	 * Returns: The associated device, or NULL. [transfer none] Since 3.0
	 */
	public Device getAssociatedDevice()
	{
		// GdkDevice * gdk_device_get_associated_device (GdkDevice *device);
		auto p = gdk_device_get_associated_device(gdkDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * If the device if of type GDK_DEVICE_TYPE_MASTER, it will return
	 * the list of slave devices attached to it, otherwise it will return
	 * NULL
	 * Returns: the list of slave devices, or NULL. The list must be freed with g_list_free(), the contents of the list are owned by GTK+ and should not be freed. [transfer container][element-type GdkDevice]
	 */
	public ListG listSlaveDevices()
	{
		// GList * gdk_device_list_slave_devices (GdkDevice *device);
		auto p = gdk_device_list_slave_devices(gdkDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Returns the device type for device.
	 * Returns: the GdkDeviceType for device. Since 3.0
	 */
	public GdkDeviceType getDeviceType()
	{
		// GdkDeviceType gdk_device_get_device_type (GdkDevice *device);
		return gdk_device_get_device_type(gdkDevice);
	}
	
	/**
	 * Returns the GdkDisplay to which device pertains.
	 * Returns: a GdkDisplay. This memory is owned by GTK+, and must not be freed or unreffed. [transfer none] Since 3.0
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gdk_device_get_display (GdkDevice *device);
		auto p = gdk_device_get_display(gdkDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}
	
	/**
	 * Determines whether the pointer follows device motion.
	 * Since 2.20
	 * Returns: TRUE if the pointer follows device motion
	 */
	public int getHasCursor()
	{
		// gboolean gdk_device_get_has_cursor (GdkDevice *device);
		return gdk_device_get_has_cursor(gdkDevice);
	}
	
	/**
	 * Returns the number of axes the device currently has.
	 * Returns: the number of axes. Since 3.0
	 */
	public int getNAxes()
	{
		// gint gdk_device_get_n_axes (GdkDevice *device);
		return gdk_device_get_n_axes(gdkDevice);
	}
	
	/**
	 * Returns the number of keys the device currently has.
	 * Since 2.24
	 * Returns: the number of keys.
	 */
	public int getNKeys()
	{
		// gint gdk_device_get_n_keys (GdkDevice *device);
		return gdk_device_get_n_keys(gdkDevice);
	}
	
	/**
	 * Warps device in display to the point x,y on
	 * the screen screen, unless the device is confined
	 * to a window by a grab, in which case it will be moved
	 * as far as allowed by the grab. Warping the pointer
	 * creates events as if the user had moved the mouse
	 * instantaneously to the destination.
	 * Note that the pointer should normally be under the
	 * control of the user. This function was added to cover
	 * some rare use cases like keyboard navigation support
	 * for the color picker in the GtkColorSelectionDialog.
	 * Params:
	 * screen = the screen to warp device to.
	 * x = the X coordinate of the destination.
	 * y = the Y coordinate of the destination.
	 * Since 3.0
	 */
	public void warp(Screen screen, int x, int y)
	{
		// void gdk_device_warp (GdkDevice *device,  GdkScreen *screen,  gint x,  gint y);
		gdk_device_warp(gdkDevice, (screen is null) ? null : screen.getScreenStruct(), x, y);
	}
	
	/**
	 * Grabs the device so that all events coming from this device are passed to
	 * this application until the device is ungrabbed with gdk_device_ungrab(),
	 * or the window becomes unviewable. This overrides any previous grab on the device
	 * by this client.
	 * Device grabs are used for operations which need complete control over the
	 * given device events (either pointer or keyboard). For example in GTK+ this
	 * is used for Drag and Drop operations, popup menus and such.
	 * Note that if the event mask of an X window has selected both button press
	 * and button release events, then a button press event will cause an automatic
	 * pointer grab until the button is released. X does this automatically since
	 * most applications expect to receive button press and release events in pairs.
	 * It is equivalent to a pointer grab on the window with owner_events set to
	 * TRUE.
	 * If you set up anything at the time you take the grab that needs to be
	 * cleaned up when the grab ends, you should handle the GdkEventGrabBroken
	 * events that are emitted when the grab ends unvoluntarily.
	 * Params:
	 * window = the GdkWindow which will own the grab (the grab window)
	 * grabOwnership = specifies the grab ownership.
	 * ownerEvents = if FALSE then all device events are reported with respect to
	 * window and are only reported if selected by event_mask. If
	 * TRUE then pointer events for this application are reported
	 * as normal, but pointer events outside this application are
	 * reported with respect to window and only if selected by
	 * event_mask. In either mode, unreported events are discarded.
	 * eventMask = specifies the event mask, which is used in accordance with
	 * owner_events.
	 * cursor = the cursor to display while the grab is active if the device is
	 * a pointer. If this is NULL then the normal cursors are used for
	 * window and its descendants, and the cursor for window is used
	 * elsewhere. [allow-none]
	 * time = the timestamp of the event which led to this pointer grab. This
	 * usually comes from the GdkEvent struct, though GDK_CURRENT_TIME
	 * can be used if the time isn't known.
	 * Returns: GDK_GRAB_SUCCESS if the grab was successful. Since 3.0
	 */
	public GdkGrabStatus grab(Window window, GdkGrabOwnership grabOwnership, int ownerEvents, GdkEventMask eventMask, Cursor cursor, uint time)
	{
		// GdkGrabStatus gdk_device_grab (GdkDevice *device,  GdkWindow *window,  GdkGrabOwnership grab_ownership,  gboolean owner_events,  GdkEventMask event_mask,  GdkCursor *cursor,  guint32 time_);
		return gdk_device_grab(gdkDevice, (window is null) ? null : window.getWindowStruct(), grabOwnership, ownerEvents, eventMask, (cursor is null) ? null : cursor.getCursorStruct(), time);
	}
	
	/**
	 * Release any grab on device.
	 * Params:
	 * time = a timestap (e.g. GDK_CURRENT_TIME).
	 * Since 3.0
	 */
	public void ungrab(uint time)
	{
		// void gdk_device_ungrab (GdkDevice *device,  guint32 time_);
		gdk_device_ungrab(gdkDevice, time);
	}
	
	/**
	 * Gets the current state of a pointer device relative to window. As a slave
	 * device coordinates are those of its master pointer, This
	 * function may not be called on devices of type GDK_DEVICE_TYPE_SLAVE,
	 * unless there is an ongoing grab on them, see gdk_device_grab().
	 * Params:
	 * window = a GdkWindow.
	 * axes = an array of doubles to store the values of the axes of device in,
	 * or NULL.
	 * mask = location to store the modifiers, or NULL.
	 */
	public void getState(Window window, double[] axes, out GdkModifierType mask)
	{
		// void gdk_device_get_state (GdkDevice *device,  GdkWindow *window,  gdouble *axes,  GdkModifierType *mask);
		gdk_device_get_state(gdkDevice, (window is null) ? null : window.getWindowStruct(), axes.ptr, &mask);
	}
	
	/**
	 * Gets the current location of device. As a slave device
	 * coordinates are those of its master pointer, This function
	 * may not be called on devices of type GDK_DEVICE_TYPE_SLAVE,
	 * unless there is an ongoing grab on them, see gdk_device_grab().
	 * Params:
	 * screen = location to store the GdkScreen
	 * the device is on, or NULL. [out][transfer none][allow-none]
	 * x = location to store root window X coordinate of device, or NULL. [out][allow-none]
	 * y = location to store root window Y coordinate of device, or NULL. [out][allow-none]
	 * Since 3.0
	 */
	public void getPosition(out Screen screen, out int x, out int y)
	{
		// void gdk_device_get_position (GdkDevice *device,  GdkScreen **screen,  gint *x,  gint *y);
		GdkScreen* outscreen = null;
		
		gdk_device_get_position(gdkDevice, &outscreen, &x, &y);
		
		screen = ObjectG.getDObject!(Screen)(outscreen);
	}
	
	/**
	 * Obtains the window underneath device, returning the location of the device in win_x and win_y. Returns
	 * NULL if the window tree under device is not known to GDK (for example, belongs to another application).
	 * As a slave device coordinates are those of its master pointer, This
	 * function may not be called on devices of type GDK_DEVICE_TYPE_SLAVE,
	 * unless there is an ongoing grab on them, see gdk_device_grab().
	 * Params:
	 * winX = return location for the X coordinate of the device location,
	 * relative to the window origin, or NULL. [out][allow-none]
	 * winY = return location for the Y coordinate of the device location,
	 * relative to the window origin, or NULL. [out][allow-none]
	 * Returns: the GdkWindow under the device position, or NULL. [transfer none] Since 3.0
	 */
	public Window getWindowAtPosition(out int winX, out int winY)
	{
		// GdkWindow * gdk_device_get_window_at_position (GdkDevice *device,  gint *win_x,  gint *win_y);
		auto p = gdk_device_get_window_at_position(gdkDevice, &winX, &winY);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}
	
	/**
	 * Obtains the motion history for a pointer device; given a starting and
	 * ending timestamp, return all events in the motion history for
	 * the device in the given range of time. Some windowing systems
	 * do not support motion history, in which case, FALSE will
	 * be returned. (This is not distinguishable from the case where
	 * motion history is supported and no events were found.)
	 * Params:
	 * window = the window with respect to which which the event coordinates will be reported
	 * start = starting timestamp for range of events to return
	 * stop = ending timestamp for the range of events to return
	 * events = location to store a newly-allocated array of GdkTimeCoord, or NULL. [array length=n_events][out][transfer full]
	 * Returns: TRUE if the windowing system supports motion history and at least one event was found.
	 */
	public int getHistory(Window window, uint start, uint stop, out GdkTimeCoord*[] events)
	{
		// gboolean gdk_device_get_history (GdkDevice *device,  GdkWindow *window,  guint32 start,  guint32 stop,  GdkTimeCoord ***events,  gint *n_events);
		GdkTimeCoord** outevents = null;
		int nEvents;
		
		auto p = gdk_device_get_history(gdkDevice, (window is null) ? null : window.getWindowStruct(), start, stop, &outevents, &nEvents);
		
		events = outevents[0 .. nEvents];
		return p;
	}
	
	/**
	 * Frees an array of GdkTimeCoord that was returned by gdk_device_get_history().
	 * Params:
	 * events = an array of GdkTimeCoord.
	 */
	public static void freeHistory(GdkTimeCoord*[] events)
	{
		// void gdk_device_free_history (GdkTimeCoord **events,  gint n_events);
		gdk_device_free_history(events.ptr, cast(int) events.length);
	}
	
	/**
	 * Interprets an array of double as axis values for a given device,
	 * and locates the value in the array for a given axis use.
	 * Params:
	 * axes = pointer to an array of axes. [array]
	 * use = the use to look for
	 * value = location to store the found value. [out]
	 * Returns: TRUE if the given axis use was found, otherwise FALSE
	 */
	public int getAxis(double[] axes, GdkAxisUse use, out double value)
	{
		// gboolean gdk_device_get_axis (GdkDevice *device,  gdouble *axes,  GdkAxisUse use,  gdouble *value);
		return gdk_device_get_axis(gdkDevice, axes.ptr, use, &value);
	}
	
	/**
	 * Returns a GList of GdkAtoms, containing the labels for
	 * the axes that device currently has.
	 * Returns: A GList of GdkAtoms, free with g_list_free(). [transfer container][element-type GdkAtom] Since 3.0
	 */
	public ListG listAxes()
	{
		// GList * gdk_device_list_axes (GdkDevice *device);
		auto p = gdk_device_list_axes(gdkDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ListG)(cast(GList*) p);
	}
	
	/**
	 * Interprets an array of double as axis values for a given device,
	 * and locates the value in the array for a given axis label, as returned
	 * by gdk_device_list_axes()
	 * Params:
	 * axes = pointer to an array of axes. [array]
	 * axisLabel = GdkAtom with the axis label.
	 * value = location to store the found value.
	 * Returns: TRUE if the given axis use was found, otherwise FALSE. Since 3.0
	 */
	public int getAxisValue(double[] axes, GdkAtom axisLabel, out double value)
	{
		// gboolean gdk_device_get_axis_value (GdkDevice *device,  gdouble *axes,  GdkAtom axis_label,  gdouble *value);
		return gdk_device_get_axis_value(gdkDevice, axes.ptr, axisLabel, &value);
	}
}
