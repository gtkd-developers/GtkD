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


module gdk.Event;

private import gdk.Device;
private import gdk.DeviceTool;
private import gdk.Display;
private import gdk.Drop;
private import gdk.Seat;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ConstructionException;
private import glib.ListG;
private import gobject.ObjectG;


/**
 * The GdkEvent struct contains only private fields and
 * should not be accessed directly.
 */
public class Event : ObjectG
{
	/** the main Gtk struct */
	protected GdkEvent* gdkEvent;

	/** Get the main Gtk struct */
	public GdkEvent* getEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkEvent* gdkEvent, bool ownedRef = false)
	{
		this.gdkEvent = gdkEvent;
		super(cast(GObject*)gdkEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_event_get_type();
	}

	/**
	 * Creates a new event of the given type. All fields are set to 0.
	 *
	 * Params:
	 *     type = a #GdkEventType
	 *
	 * Returns: a newly-allocated #GdkEvent. Free with g_object_unref()
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkEventType type)
	{
		auto __p = gdk_event_new(type);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GdkEvent*) __p, true);
	}

	/**
	 * If both events contain X/Y information, this function will return %TRUE
	 * and return in @angle the relative angle from @event1 to @event2. The rotation
	 * direction for positive angles is from the positive X axis towards the positive
	 * Y axis.
	 *
	 * Params:
	 *     event1 = first #GdkEvent
	 *     event2 = second #GdkEvent
	 *     angle = return location for the relative angle between both events
	 *
	 * Returns: %TRUE if the angle could be calculated.
	 */
	public static bool getAngle(Event event1, Event event2, out double angle)
	{
		return gdk_events_get_angle((event1 is null) ? null : event1.getEventStruct(), (event2 is null) ? null : event2.getEventStruct(), &angle) != 0;
	}

	/**
	 * If both events contain X/Y information, the center of both coordinates
	 * will be returned in @x and @y.
	 *
	 * Params:
	 *     event1 = first #GdkEvent
	 *     event2 = second #GdkEvent
	 *     x = return location for the X coordinate of the center
	 *     y = return location for the Y coordinate of the center
	 *
	 * Returns: %TRUE if the center could be calculated.
	 */
	public static bool getCenter(Event event1, Event event2, out double x, out double y)
	{
		return gdk_events_get_center((event1 is null) ? null : event1.getEventStruct(), (event2 is null) ? null : event2.getEventStruct(), &x, &y) != 0;
	}

	/**
	 * If both events have X/Y information, the distance between both coordinates
	 * (as in a straight line going from @event1 to @event2) will be returned.
	 *
	 * Params:
	 *     event1 = first #GdkEvent
	 *     event2 = second #GdkEvent
	 *     distance = return location for the distance
	 *
	 * Returns: %TRUE if the distance could be calculated.
	 */
	public static bool getDistance(Event event1, Event event2, out double distance)
	{
		return gdk_events_get_distance((event1 is null) ? null : event1.getEventStruct(), (event2 is null) ? null : event2.getEventStruct(), &distance) != 0;
	}

	/**
	 * Copies a #GdkEvent, copying or incrementing the reference count of the
	 * resources associated with it (e.g. #GdkSurface’s and strings).
	 *
	 * Returns: a copy of @event. Free with g_object_unref()
	 */
	public Event copy()
	{
		auto __p = gdk_event_copy(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p, true);
	}

	/**
	 * Extracts all axis values from an event.
	 *
	 * Params:
	 *     axes = the array of values for all axes
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getAxes(out double[] axes)
	{
		double* outaxes = null;
		uint nAxes;

		auto __p = gdk_event_get_axes(gdkEvent, &outaxes, &nAxes) != 0;

		axes = outaxes[0 .. nAxes];

		return __p;
	}

	/**
	 * Extract the axis value for a particular axis use from
	 * an event structure.
	 *
	 * Params:
	 *     axisUse = the axis use to look for
	 *     value = location to store the value found
	 *
	 * Returns: %TRUE if the specified axis was found, otherwise %FALSE
	 */
	public bool getAxis(GdkAxisUse axisUse, out double value)
	{
		return gdk_event_get_axis(gdkEvent, axisUse, &value) != 0;
	}

	/**
	 * Extract the button number from an event.
	 *
	 * Params:
	 *     button = location to store mouse button number
	 *
	 * Returns: %TRUE if the event delivered a button number
	 */
	public bool getButton(out uint button)
	{
		return gdk_event_get_button(gdkEvent, &button) != 0;
	}

	/**
	 * Extracts the click count from an event.
	 *
	 * Params:
	 *     clickCount = location to store click count
	 *
	 * Returns: %TRUE if the event delivered a click count
	 */
	public bool getClickCount(out uint clickCount)
	{
		return gdk_event_get_click_count(gdkEvent, &clickCount) != 0;
	}

	/**
	 * Extract the event surface relative x/y coordinates from an event.
	 *
	 * Params:
	 *     xWin = location to put event surface x coordinate
	 *     yWin = location to put event surface y coordinate
	 *
	 * Returns: %TRUE if the event delivered event surface coordinates
	 */
	public bool getCoords(out double xWin, out double yWin)
	{
		return gdk_event_get_coords(gdkEvent, &xWin, &yWin) != 0;
	}

	/**
	 * Extracts the crossing detail from an event.
	 *
	 * Params:
	 *     detail = return location for the crossing detail
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getCrossingDetail(out GdkNotifyType detail)
	{
		return gdk_event_get_crossing_detail(gdkEvent, &detail) != 0;
	}

	/**
	 * Extracts the crossing mode from an event.
	 *
	 * Params:
	 *     mode = return location for the crossing mode
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getCrossingMode(out GdkCrossingMode mode)
	{
		return gdk_event_get_crossing_mode(gdkEvent, &mode) != 0;
	}

	/**
	 * If the event contains a “device” field, this function will return
	 * it, else it will return %NULL.
	 *
	 * Returns: a #GdkDevice, or %NULL.
	 */
	public Device getDevice()
	{
		auto __p = gdk_event_get_device(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * If the event was generated by a device that supports
	 * different tools (eg. a tablet), this function will
	 * return a #GdkDeviceTool representing the tool that
	 * caused the event. Otherwise, %NULL will be returned.
	 *
	 * Note: the #GdkDeviceTool<!-- -->s will be constant during
	 * the application lifetime, if settings must be stored
	 * persistently across runs, see gdk_device_tool_get_serial()
	 *
	 * Returns: The current device tool, or %NULL
	 */
	public DeviceTool getDeviceTool()
	{
		auto __p = gdk_event_get_device_tool(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DeviceTool)(cast(GdkDeviceTool*) __p);
	}

	/**
	 * Retrieves the #GdkDisplay associated to the @event.
	 *
	 * Returns: a #GdkDisplay
	 */
	public Display getDisplay()
	{
		auto __p = gdk_event_get_display(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Gets the #GdkDrop from a DND event.
	 *
	 * Returns: the drop
	 */
	public Drop getDrop()
	{
		auto __p = gdk_event_get_drop(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Drop)(cast(GdkDrop*) __p);
	}

	/**
	 * If @event if of type %GDK_TOUCH_BEGIN, %GDK_TOUCH_UPDATE,
	 * %GDK_TOUCH_END or %GDK_TOUCH_CANCEL, returns the #GdkEventSequence
	 * to which the event belongs. Otherwise, return %NULL.
	 *
	 * Returns: the event sequence that the event belongs to
	 */
	public GdkEventSequence* getEventSequence()
	{
		return gdk_event_get_event_sequence(gdkEvent);
	}

	/**
	 * Retrieves the type of the event.
	 *
	 * Returns: a #GdkEventType
	 */
	public GdkEventType getEventType()
	{
		return gdk_event_get_event_type(gdkEvent);
	}

	/**
	 * Extracts whether this is a focus-in or focus-out event.
	 *
	 * Params:
	 *     focusIn = return location for focus direction
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getFocusIn(out bool focusIn)
	{
		int outfocusIn;

		auto __p = gdk_event_get_focus_in(gdkEvent, &outfocusIn) != 0;

		focusIn = (outfocusIn == 1);

		return __p;
	}

	/**
	 * Extracts the grab surface from a grab broken event.
	 *
	 * Params:
	 *     surface = Return location for the grab surface
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getGrabSurface(out Surface surface)
	{
		GdkSurface* outsurface = null;

		auto __p = gdk_event_get_grab_surface(gdkEvent, &outsurface) != 0;

		surface = ObjectG.getDObject!(Surface)(outsurface);

		return __p;
	}

	/**
	 * Extracts the key group from an event.
	 *
	 * Params:
	 *     group = return location for the key group
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getKeyGroup(out uint group)
	{
		return gdk_event_get_key_group(gdkEvent, &group) != 0;
	}

	/**
	 * Extracts whether the event is a key event for
	 * a modifier key.
	 *
	 * Params:
	 *     isModifier = return location for the value
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getKeyIsModifier(out bool isModifier)
	{
		int outisModifier;

		auto __p = gdk_event_get_key_is_modifier(gdkEvent, &outisModifier) != 0;

		isModifier = (outisModifier == 1);

		return __p;
	}

	/**
	 * Extracts the hardware keycode from an event.
	 *
	 * Also see gdk_event_get_scancode().
	 *
	 * Params:
	 *     keycode = location to store the keycode
	 *
	 * Returns: %TRUE if the event delivered a hardware keycode
	 */
	public bool getKeycode(out ushort keycode)
	{
		return gdk_event_get_keycode(gdkEvent, &keycode) != 0;
	}

	/**
	 * Extracts the keyval from an event.
	 *
	 * Params:
	 *     keyval = location to store the keyval
	 *
	 * Returns: %TRUE if the event delivered a key symbol
	 */
	public bool getKeyval(out uint keyval)
	{
		return gdk_event_get_keyval(gdkEvent, &keyval) != 0;
	}

	/**
	 * Retrieves the history of the @event motion, as a list of time and
	 * coordinates.
	 *
	 * Returns: a list
	 *     of time and coordinates
	 */
	public ListG getMotionHistory()
	{
		auto __p = gdk_event_get_motion_history(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Extracts the information from a pad event.
	 *
	 * Params:
	 *     index = Return location for the axis index
	 *     value = Return location for the axis value
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getPadAxisValue(out uint index, out double value)
	{
		return gdk_event_get_pad_axis_value(gdkEvent, &index, &value) != 0;
	}

	/**
	 * Extracts information about the pressed button from
	 * a pad event.
	 *
	 * Params:
	 *     button = Return location for the button
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getPadButton(out uint button)
	{
		return gdk_event_get_pad_button(gdkEvent, &button) != 0;
	}

	/**
	 * Extracts group and mode information from a pad event.
	 *
	 * Params:
	 *     group = return location for the group
	 *     mode = return location for the mode
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getPadGroupMode(out uint group, out uint mode)
	{
		return gdk_event_get_pad_group_mode(gdkEvent, &group, &mode) != 0;
	}

	/**
	 * Returns whether this event is an 'emulated' pointer event (typically
	 * from a touch event), as opposed to a real one.
	 *
	 * Returns: %TRUE if this event is emulated
	 */
	public bool getPointerEmulated()
	{
		return gdk_event_get_pointer_emulated(gdkEvent) != 0;
	}

	/**
	 * Gets the keyboard low-level scancode of a key event.
	 *
	 * This is usually hardware_keycode. On Windows this is the high
	 * word of WM_KEY{DOWN,UP} lParam which contains the scancode and
	 * some extended flags.
	 *
	 * Returns: The associated keyboard scancode or 0
	 */
	public int getScancode()
	{
		return gdk_event_get_scancode(gdkEvent);
	}

	/**
	 * Retrieves the scroll deltas from a #GdkEvent
	 *
	 * Params:
	 *     deltaX = return location for X delta
	 *     deltaY = return location for Y delta
	 *
	 * Returns: %TRUE if the event contains smooth scroll information
	 */
	public bool getScrollDeltas(out double deltaX, out double deltaY)
	{
		return gdk_event_get_scroll_deltas(gdkEvent, &deltaX, &deltaY) != 0;
	}

	/**
	 * Extracts the scroll direction from an event.
	 *
	 * Params:
	 *     direction = location to store the scroll direction
	 *
	 * Returns: %TRUE if the event delivered a scroll direction
	 */
	public bool getScrollDirection(out GdkScrollDirection direction)
	{
		return gdk_event_get_scroll_direction(gdkEvent, &direction) != 0;
	}

	/**
	 * Returns the #GdkSeat this event was generated for.
	 *
	 * Returns: The #GdkSeat of this event
	 */
	public Seat getSeat()
	{
		auto __p = gdk_event_get_seat(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Seat)(cast(GdkSeat*) __p);
	}

	/**
	 * This function returns the hardware (slave) #GdkDevice that has
	 * triggered the event, falling back to the virtual (master) device
	 * (as in gdk_event_get_device()) if the event wasn’t caused by
	 * interaction with a hardware device. This may happen for example
	 * in synthesized crossing events after a #GdkSurface updates its
	 * geometry or a grab is acquired/released.
	 *
	 * If the event does not contain a device field, this function will
	 * return %NULL.
	 *
	 * Returns: a #GdkDevice, or %NULL.
	 */
	public Device getSourceDevice()
	{
		auto __p = gdk_event_get_source_device(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Device)(cast(GdkDevice*) __p);
	}

	/**
	 * If the event contains a “state” field, puts that field in @state.
	 *
	 * Otherwise stores an empty state (0).
	 * @event may be %NULL, in which case it’s treated
	 * as if the event had no state field.
	 *
	 * Params:
	 *     state = return location for state
	 *
	 * Returns: %TRUE if there was a state field in the event
	 */
	public bool getState(out GdkModifierType state)
	{
		return gdk_event_get_state(gdkEvent, &state) != 0;
	}

	/**
	 * Extracts the #GdkSurface associated with an event.
	 *
	 * Returns: The #GdkSurface associated with the event
	 */
	public Surface getSurface()
	{
		auto __p = gdk_event_get_surface(gdkEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Returns the time stamp from @event, if there is one; otherwise
	 * returns #GDK_CURRENT_TIME. If @event is %NULL, returns #GDK_CURRENT_TIME.
	 *
	 * Returns: time stamp field from @event
	 */
	public uint getTime()
	{
		return gdk_event_get_time(gdkEvent);
	}

	/**
	 * Extracts whether a touch event is emulating a pointer event.
	 *
	 * Params:
	 *     emulating = Return location for information
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchEmulatingPointer(out bool emulating)
	{
		int outemulating;

		auto __p = gdk_event_get_touch_emulating_pointer(gdkEvent, &outemulating) != 0;

		emulating = (outemulating == 1);

		return __p;
	}

	/**
	 * Extracts the angle from a touchpad event.
	 *
	 * Params:
	 *     delta = Return location for angle
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchpadAngleDelta(out double delta)
	{
		return gdk_event_get_touchpad_angle_delta(gdkEvent, &delta) != 0;
	}

	/**
	 * Extracts delta information from a touchpad event.
	 *
	 * Params:
	 *     dx = return location for x
	 *     dy = return location for y
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchpadDeltas(out double dx, out double dy)
	{
		return gdk_event_get_touchpad_deltas(gdkEvent, &dx, &dy) != 0;
	}

	/**
	 * Extracts the number of fingers from a touchpad event.
	 *
	 * Params:
	 *     nFingers = return location for the number of fingers
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchpadGestureNFingers(out uint nFingers)
	{
		return gdk_event_get_touchpad_gesture_n_fingers(gdkEvent, &nFingers) != 0;
	}

	/**
	 * Extracts the touchpad gesture phase from a touchpad event.
	 *
	 * Params:
	 *     phase = Return location for the gesture phase
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchpadGesturePhase(out GdkTouchpadGesturePhase phase)
	{
		return gdk_event_get_touchpad_gesture_phase(gdkEvent, &phase) != 0;
	}

	/**
	 * Extracts the scale from a touchpad event.
	 *
	 * Params:
	 *     scale = Return location for scale
	 *
	 * Returns: %TRUE on success, otherwise %FALSE
	 */
	public bool getTouchpadScale(out double scale)
	{
		return gdk_event_get_touchpad_scale(gdkEvent, &scale) != 0;
	}

	/**
	 * Check whether a scroll event is a stop scroll event. Scroll sequences
	 * with smooth scroll information may provide a stop scroll event once the
	 * interaction with the device finishes, e.g. by lifting a finger. This
	 * stop scroll event is the signal that a widget may trigger kinetic
	 * scrolling based on the current velocity.
	 *
	 * Stop scroll events always have a delta of 0/0.
	 *
	 * Returns: %TRUE if the event is a scroll stop event
	 */
	public bool isScrollStopEvent()
	{
		return gdk_event_is_scroll_stop_event(gdkEvent) != 0;
	}

	/**
	 * Returns whether the event was sent explicitly.
	 *
	 * Returns: %TRUE if the event was sent explicitly
	 */
	public bool isSent()
	{
		return gdk_event_is_sent(gdkEvent) != 0;
	}

	/** */
	public void setCoords(double x, double y)
	{
		gdk_event_set_coords(gdkEvent, x, y);
	}

	/**
	 * Sets the device for @event to @device. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 *
	 * Params:
	 *     device = a #GdkDevice
	 */
	public void setDevice(Device device)
	{
		gdk_event_set_device(gdkEvent, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Sets the device tool for this event, should be rarely used.
	 *
	 * Params:
	 *     tool = tool to set on the event, or %NULL
	 */
	public void setDeviceTool(DeviceTool tool)
	{
		gdk_event_set_device_tool(gdkEvent, (tool is null) ? null : tool.getDeviceToolStruct());
	}

	/**
	 * Sets the display that an event is associated with.
	 *
	 * Params:
	 *     display = a #GdkDisplay
	 */
	public void setDisplay(Display display)
	{
		gdk_event_set_display(gdkEvent, (display is null) ? null : display.getDisplayStruct());
	}

	/** */
	public void setKeyval(uint keyval)
	{
		gdk_event_set_keyval(gdkEvent, keyval);
	}

	/**
	 * Sets the slave device for @event to @device.
	 *
	 * The event must have been allocated by GTK+,
	 * for instance by gdk_event_copy().
	 *
	 * Params:
	 *     device = a #GdkDevice
	 */
	public void setSourceDevice(Device device)
	{
		gdk_event_set_source_device(gdkEvent, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * This function returns whether a #GdkEventButton should trigger a
	 * context menu, according to platform conventions. The right mouse
	 * button always triggers context menus. Additionally, if
	 * gdk_keymap_get_modifier_mask() returns a non-0 mask for
	 * %GDK_MODIFIER_INTENT_CONTEXT_MENU, then the left mouse button will
	 * also trigger a context menu if this modifier is pressed.
	 *
	 * This function should always be used instead of simply checking for
	 * event->button == %GDK_BUTTON_SECONDARY.
	 *
	 * Returns: %TRUE if the event should trigger a context menu.
	 */
	public bool triggersContextMenu()
	{
		return gdk_event_triggers_context_menu(gdkEvent) != 0;
	}

	/**
	 * Gets whether event debugging output is enabled.
	 *
	 * Returns: %TRUE if event debugging output is enabled.
	 */
	public static bool getShowEvents()
	{
		return gdk_get_show_events() != 0;
	}

	/**
	 * Sets whether a trace of received events is output.
	 * Note that GTK+ must be compiled with debugging (that is,
	 * configured using the `--enable-debug` option)
	 * to use this option.
	 *
	 * Params:
	 *     showEvents = %TRUE to output event debugging information.
	 */
	public static void setShowEvents(bool showEvents)
	{
		gdk_set_show_events(showEvents);
	}
}
