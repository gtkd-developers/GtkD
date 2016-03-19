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
private import gdk.Screen;
private import gdk.Seat;
private import gdk.Window;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Value;
private import gtkc.gdk;
public  import gtkc.gdktypes;


/**
 * A #GdkEvent contains a union of all of the event types,
 * and allows access to the data fields in a number of ways.
 * 
 * The event type is always the first field in all of the event types, and
 * can always be accessed with the following code, no matter what type of
 * event it is:
 * |[<!-- language="C" -->
 * GdkEvent *event;
 * GdkEventType type;
 * 
 * type = event->type;
 * ]|
 * 
 * To access other fields of the event, the pointer to the event
 * can be cast to the appropriate event type, or the union member
 * name can be used. For example if the event type is %GDK_BUTTON_PRESS
 * then the x coordinate of the button press can be accessed with:
 * |[<!-- language="C" -->
 * GdkEvent *event;
 * gdouble x;
 * 
 * x = ((GdkEventButton*)event)->x;
 * ]|
 * or:
 * |[<!-- language="C" -->
 * GdkEvent *event;
 * gdouble x;
 * 
 * x = event->button.x;
 * ]|
 */
public class Event
{
	/** the main Gtk struct */
	protected GdkEvent* gdkEvent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GdkEvent* getEventStruct()
	{
		return gdkEvent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkEvent* gdkEvent, bool ownedRef = false)
	{
		this.gdkEvent = gdkEvent;
		this.ownedRef = ownedRef;
	}

	/**
	 * Specifies the type of the event.
	 */
	public EventType type()
	{
		return gdkEvent.type;
	}
	
	/** Get a specific event. */
	public GdkEventAny* any()
	{
		return cast(GdkEventAny*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventExpose* expose()
	{
		return cast(GdkEventExpose*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventVisibility* visibility()
	{
		return cast(GdkEventVisibility*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventMotion* motion()
	{
		return cast(GdkEventMotion*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventButton* button()
	{
		return cast(GdkEventButton*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventScroll* scroll()
	{
		return cast(GdkEventScroll*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventKey* key()
	{
		return cast(GdkEventKey*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventCrossing* crossing()
	{
		return cast(GdkEventCrossing*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventFocus* focus()
	{
		return cast(GdkEventFocus*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventConfigure* configure()
	{
		return cast(GdkEventConfigure*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventProperty* property()
	{
		return cast(GdkEventProperty*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventSelection* selection()
	{
		return cast(GdkEventSelection*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventOwnerChange* ownerChange()
	{
		return cast(GdkEventOwnerChange*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventProximity* proximity()
	{
		return cast(GdkEventProximity*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventDND* dnd()
	{
		return cast(GdkEventDND*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventWindowState* windowState()
	{
		return cast(GdkEventWindowState*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventSetting* setting()
	{
		return cast(GdkEventSetting*)gdkEvent;
	}
	
	/** ditto */
	public GdkEventGrabBroken* grabBroken()
	{
		return cast(GdkEventGrabBroken*)gdkEvent;
	}
	
	/** */
	public static bool isDoubleClick(GdkEventButton* eventButton, int buttonNumber=1)
	{
		return eventButton.button==buttonNumber
		&& eventButton.type == EventType.DOUBLE_BUTTON_PRESS;
	}
	
	/** */
	public static bool isTripleClick(GdkEventButton* eventButton, int buttonNumber=1)
	{
		return eventButton.button==buttonNumber
		&& eventButton.type == EventType.TRIPLE_BUTTON_PRESS;
	}

	/**
	 */

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
	 * Return: a newly-allocated #GdkEvent. The returned #GdkEvent
	 *     should be freed with gdk_event_free().
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GdkEventType type)
	{
		auto p = gdk_event_new(type);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GdkEvent*) p);
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
	 * Return: %TRUE if the angle could be calculated.
	 *
	 * Since: 3.0
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
	 * Return: %TRUE if the center could be calculated.
	 *
	 * Since: 3.0
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
	 * Return: %TRUE if the distance could be calculated.
	 *
	 * Since: 3.0
	 */
	public static bool getDistance(Event event1, Event event2, out double distance)
	{
		return gdk_events_get_distance((event1 is null) ? null : event1.getEventStruct(), (event2 is null) ? null : event2.getEventStruct(), &distance) != 0;
	}

	/**
	 * Copies a #GdkEvent, copying or incrementing the reference count of the
	 * resources associated with it (e.g. #GdkWindow’s and strings).
	 *
	 * Return: a copy of @event. The returned #GdkEvent should be freed with
	 *     gdk_event_free().
	 */
	public Event copy()
	{
		auto p = gdk_event_copy(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * Frees a #GdkEvent, freeing or decrementing any resources associated with it.
	 * Note that this function should only be called with events returned from
	 * functions such as gdk_event_peek(), gdk_event_get(), gdk_event_copy()
	 * and gdk_event_new().
	 */
	public void free()
	{
		gdk_event_free(gdkEvent);
	}

	/**
	 * Extract the axis value for a particular axis use from
	 * an event structure.
	 *
	 * Params:
	 *     axisUse = the axis use to look for
	 *     value = location to store the value found
	 *
	 * Return: %TRUE if the specified axis was found, otherwise %FALSE
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
	 * Return: %TRUE if the event delivered a button number
	 *
	 * Since: 3.2
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
	 * Return: %TRUE if the event delivered a click count
	 *
	 * Since: 3.2
	 */
	public bool getClickCount(out uint clickCount)
	{
		return gdk_event_get_click_count(gdkEvent, &clickCount) != 0;
	}

	/**
	 * Extract the event window relative x/y coordinates from an event.
	 *
	 * Params:
	 *     xWin = location to put event window x coordinate
	 *     yWin = location to put event window y coordinate
	 *
	 * Return: %TRUE if the event delivered event window coordinates
	 */
	public bool getCoords(out double xWin, out double yWin)
	{
		return gdk_event_get_coords(gdkEvent, &xWin, &yWin) != 0;
	}

	/**
	 * If the event contains a “device” field, this function will return
	 * it, else it will return %NULL.
	 *
	 * Return: a #GdkDevice, or %NULL.
	 *
	 * Since: 3.0
	 */
	public Device getDevice()
	{
		auto p = gdk_event_get_device(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}

	/**
	 * If @event if of type %GDK_TOUCH_BEGIN, %GDK_TOUCH_UPDATE,
	 * %GDK_TOUCH_END or %GDK_TOUCH_CANCEL, returns the #GdkEventSequence
	 * to which the event belongs. Otherwise, return %NULL.
	 *
	 * Return: the event sequence that the event belongs to
	 *
	 * Since: 3.4
	 */
	public GdkEventSequence* getEventSequence()
	{
		return gdk_event_get_event_sequence(gdkEvent);
	}

	/**
	 * Retrieves the type of the event.
	 *
	 * Return: a #GdkEventType
	 *
	 * Since: 3.10
	 */
	public GdkEventType getEventType()
	{
		return gdk_event_get_event_type(gdkEvent);
	}

	/**
	 * Extracts the hardware keycode from an event.
	 *
	 * Params:
	 *     keycode = location to store the keycode
	 *
	 * Return: %TRUE if the event delivered a hardware keycode
	 *
	 * Since: 3.2
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
	 * Return: %TRUE if the event delivered a key symbol
	 *
	 * Since: 3.2
	 */
	public bool getKeyval(out uint keyval)
	{
		return gdk_event_get_keyval(gdkEvent, &keyval) != 0;
	}

	/**
	 * Extract the root window relative x/y coordinates from an event.
	 *
	 * Params:
	 *     xRoot = location to put root window x coordinate
	 *     yRoot = location to put root window y coordinate
	 *
	 * Return: %TRUE if the event delivered root window coordinates
	 */
	public bool getRootCoords(out double xRoot, out double yRoot)
	{
		return gdk_event_get_root_coords(gdkEvent, &xRoot, &yRoot) != 0;
	}

	/**
	 * Returns the screen for the event. The screen is
	 * typically the screen for `event->any.window`, but
	 * for events such as mouse events, it is the screen
	 * where the pointer was when the event occurs -
	 * that is, the screen which has the root window
	 * to which `event->motion.x_root` and
	 * `event->motion.y_root` are relative.
	 *
	 * Return: the screen for the event
	 *
	 * Since: 2.2
	 */
	public Screen getScreen()
	{
		auto p = gdk_event_get_screen(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Retrieves the scroll deltas from a #GdkEvent
	 *
	 * Params:
	 *     deltaX = return location for X delta
	 *     deltaY = return location for Y delta
	 *
	 * Return: %TRUE if the event contains smooth scroll information
	 *
	 * Since: 3.4
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
	 * Return: %TRUE if the event delivered a scroll direction
	 *
	 * Since: 3.2
	 */
	public bool getScrollDirection(out GdkScrollDirection direction)
	{
		return gdk_event_get_scroll_direction(gdkEvent, &direction) != 0;
	}

	/**
	 * Returns the #GdkSeat this event was generated for.
	 *
	 * Return: The #GdkSeat of this event
	 *
	 * Since: 3.20
	 */
	public Seat getSeat()
	{
		auto p = gdk_event_get_seat(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Seat)(cast(GdkSeat*) p);
	}

	/**
	 * This function returns the hardware (slave) #GdkDevice that has
	 * triggered the event, falling back to the virtual (master) device
	 * (as in gdk_event_get_device()) if the event wasn’t caused by
	 * interaction with a hardware device. This may happen for example
	 * in synthesized crossing events after a #GdkWindow updates its
	 * geometry or a grab is acquired/released.
	 *
	 * If the event does not contain a device field, this function will
	 * return %NULL.
	 *
	 * Return: a #GdkDevice, or %NULL.
	 *
	 * Since: 3.0
	 */
	public Device getSourceDevice()
	{
		auto p = gdk_event_get_source_device(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}

	/**
	 * If the event contains a “state” field, puts that field in @state. Otherwise
	 * stores an empty state (0). Returns %TRUE if there was a state field
	 * in the event. @event may be %NULL, in which case it’s treated
	 * as if the event had no state field.
	 *
	 * Params:
	 *     state = return location for state
	 *
	 * Return: %TRUE if there was a state field in the event
	 */
	public bool getState(out GdkModifierType state)
	{
		return gdk_event_get_state(gdkEvent, &state) != 0;
	}

	/**
	 * Returns the time stamp from @event, if there is one; otherwise
	 * returns #GDK_CURRENT_TIME. If @event is %NULL, returns #GDK_CURRENT_TIME.
	 *
	 * Return: time stamp field from @event
	 */
	public uint getTime()
	{
		return gdk_event_get_time(gdkEvent);
	}

	/**
	 * Extracts the #GdkWindow associated with an event.
	 *
	 * Return: The #GdkWindow associated with the event
	 *
	 * Since: 3.10
	 */
	public Window getWindow()
	{
		auto p = gdk_event_get_window(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Check whether a scroll event is a stop scroll event. Scroll sequences
	 * with smooth scroll information may provide a stop scroll event once the
	 * interaction with the device finishes, e.g. by lifting a finger. This
	 * stop scroll event is the signal that a widget may trigger kinetic
	 * scrolling based on the current velocity.
	 *
	 * Stop scroll events always have a a delta of 0/0.
	 *
	 * Return: %TRUE if the event is a scroll stop event
	 *
	 * Since: 3.20
	 */
	public bool isScrollStopEvent()
	{
		return gdk_event_is_scroll_stop_event(gdkEvent) != 0;
	}

	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for event->any.window’s display, or the default event
	 * queue if event->any.window is %NULL. See gdk_display_put_event().
	 */
	public void put()
	{
		gdk_event_put(gdkEvent);
	}

	/**
	 * Sets the device for @event to @device. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *
	 * Since: 3.0
	 */
	public void setDevice(Device device)
	{
		gdk_event_set_device(gdkEvent, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Sets the screen for @event to @screen. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 *
	 * Params:
	 *     screen = a #GdkScreen
	 *
	 * Since: 2.2
	 */
	public void setScreen(Screen screen)
	{
		gdk_event_set_screen(gdkEvent, (screen is null) ? null : screen.getScreenStruct());
	}

	/**
	 * Sets the slave device for @event to @device.
	 *
	 * The event must have been allocated by GTK+,
	 * for instance by gdk_event_copy().
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *
	 * Since: 3.0
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
	 * Return: %TRUE if the event should trigger a context menu.
	 *
	 * Since: 3.4
	 */
	public bool triggersContextMenu()
	{
		return gdk_event_triggers_context_menu(gdkEvent) != 0;
	}

	/**
	 * Checks all open displays for a #GdkEvent to process,to be processed
	 * on, fetching events from the windowing system if necessary.
	 * See gdk_display_get_event().
	 *
	 * Return: the next #GdkEvent to be processed, or %NULL
	 *     if no events are pending. The returned #GdkEvent should be freed
	 *     with gdk_event_free().
	 */
	public static Event get()
	{
		auto p = gdk_event_get();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * Sets the function to call to handle all events from GDK.
	 *
	 * Note that GTK+ uses this to install its own event handler, so it is
	 * usually not useful for GTK+ applications. (Although an application
	 * can call this function then call gtk_main_do_event() to pass
	 * events to GTK+.)
	 *
	 * Params:
	 *     func = the function to call to handle events from GDK.
	 *     data = user data to pass to the function.
	 *     notify = the function to call when the handler function is removed, i.e. when
	 *         gdk_event_handler_set() is called with another event handler.
	 */
	public static void handlerSet(GdkEventFunc func, void* data, GDestroyNotify notify)
	{
		gdk_event_handler_set(func, data, notify);
	}

	/**
	 * If there is an event waiting in the event queue of some open
	 * display, returns a copy of it. See gdk_display_peek_event().
	 *
	 * Return: a copy of the first #GdkEvent on some event
	 *     queue, or %NULL if no events are in any queues. The returned
	 *     #GdkEvent should be freed with gdk_event_free().
	 */
	public static Event peek()
	{
		auto p = gdk_event_peek();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * Request more motion notifies if @event is a motion notify hint event.
	 *
	 * This function should be used instead of gdk_window_get_pointer() to
	 * request further motion notifies, because it also works for extension
	 * events where motion notifies are provided for devices other than the
	 * core pointer. Coordinate extraction, processing and requesting more
	 * motion events from a %GDK_MOTION_NOTIFY event usually works like this:
	 *
	 * |[<!-- language="C" -->
	 * {
	 * // motion_event handler
	 * x = motion_event->x;
	 * y = motion_event->y;
	 * // handle (x,y) motion
	 * gdk_event_request_motions (motion_event); // handles is_hint events
	 * }
	 * ]|
	 *
	 * Params:
	 *     event = a valid #GdkEvent
	 *
	 * Since: 2.12
	 */
	public static void requestMotions(GdkEventMotion* event)
	{
		gdk_event_request_motions(event);
	}

	/**
	 * Checks if any events are ready to be processed for any display.
	 *
	 * Return: %TRUE if any events are pending.
	 */
	public static bool pending()
	{
		return gdk_events_pending() != 0;
	}

	/**
	 * Gets whether event debugging output is enabled.
	 *
	 * Return: %TRUE if event debugging output is enabled.
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

	/**
	 * Obtains a desktop-wide setting, such as the double-click time,
	 * for the default screen. See gdk_screen_get_setting().
	 *
	 * Params:
	 *     name = the name of the setting.
	 *     value = location to store the value of the setting.
	 *
	 * Return: %TRUE if the setting existed and a value was stored
	 *     in @value, %FALSE otherwise.
	 */
	public static bool settingGet(string name, Value value)
	{
		return gdk_setting_get(Str.toStringz(name), (value is null) ? null : value.getValueStruct()) != 0;
	}
}
