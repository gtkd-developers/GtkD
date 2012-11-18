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
 * inFile  = gdk3-Events.html
 * outPack = gdk
 * outFile = Event
 * strct   = GdkEvent
 * realStrct=
 * ctorStrct=
 * clss    = Event
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_event_
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gobject.Value
 * 	- gdk.Device
 * 	- gdk.Screen
 * structWrap:
 * 	- GValue* -> Value
 * 	- GdkDevice* -> Device
 * 	- GdkEvent* -> Event
 * 	- GdkScreen* -> Screen
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Event;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gobject.Value;
private import gdk.Device;
private import gdk.Screen;




/**
 * Description
 * This section describes functions dealing with events from the window
 * system.
 * In GTK+ applications the events are handled automatically in
 * gtk_main_do_event() and passed on to the appropriate widgets, so these
 * functions are rarely needed. Though some of the fields in the
 * Event Structures are useful.
 */
public class Event
{
	
	/** the main Gtk struct */
	protected GdkEvent* gdkEvent;
	
	
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
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkEvent* gdkEvent)
	{
		this.gdkEvent = gdkEvent;
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
	 * Description
	 * The event structs contain data specific to each type of event in GDK.
	 * Note
	 * A common mistake is to forget to set the event mask of a widget so that
	 * the required events are received. See gtk_widget_set_events().
	 */
	
	/**
	 * Checks if any events are ready to be processed for any display.
	 * Returns: TRUE if any events are pending.
	 */
	public static int eventsPending()
	{
		// gboolean gdk_events_pending (void);
		return gdk_events_pending();
	}
	
	/**
	 * If there is an event waiting in the event queue of some open
	 * display, returns a copy of it. See gdk_display_peek_event().
	 * Returns: a copy of the first GdkEvent on some event queue, or NULL if no events are in any queues. The returned GdkEvent should be freed with gdk_event_free().
	 */
	public static Event peek()
	{
		// GdkEvent * gdk_event_peek (void);
		auto p = gdk_event_peek();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p);
	}
	
	/**
	 * Checks all open displays for a GdkEvent to process,to be processed
	 * on, fetching events from the windowing system if necessary.
	 * See gdk_display_get_event().
	 * Returns: the next GdkEvent to be processed, or NULL if no events are pending. The returned GdkEvent should be freed with gdk_event_free().
	 */
	public static Event get()
	{
		// GdkEvent * gdk_event_get (void);
		auto p = gdk_event_get();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p);
	}
	
	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for event->any.window's display, or the default event
	 * queue if event->any.window is NULL. See gdk_display_put_event().
	 */
	public void put()
	{
		// void gdk_event_put (const GdkEvent *event);
		gdk_event_put(gdkEvent);
	}
	
	/**
	 * Creates a new event of the given type. All fields are set to 0.
	 * Since 2.2
	 * Params:
	 * type = a GdkEventType
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GdkEventType type)
	{
		// GdkEvent * gdk_event_new (GdkEventType type);
		auto p = gdk_event_new(type);
		if(p is null)
		{
			throw new ConstructionException("null returned by gdk_event_new(type)");
		}
		this(cast(GdkEvent*) p);
	}
	
	/**
	 * Copies a GdkEvent, copying or incrementing the reference count of the
	 * resources associated with it (e.g. GdkWindow's and strings).
	 * Returns: a copy of event. The returned GdkEvent should be freed with gdk_event_free().
	 */
	public Event copy()
	{
		// GdkEvent * gdk_event_copy (const GdkEvent *event);
		auto p = gdk_event_copy(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p);
	}
	
	/**
	 * Frees a GdkEvent, freeing or decrementing any resources associated with it.
	 * Note that this function should only be called with events returned from
	 * functions such as gdk_event_peek(), gdk_event_get(), gdk_event_copy()
	 * and gdk_event_new().
	 */
	public void free()
	{
		// void gdk_event_free (GdkEvent *event);
		gdk_event_free(gdkEvent);
	}
	
	/**
	 * Extract the axis value for a particular axis use from
	 * an event structure.
	 * Params:
	 * axisUse = the axis use to look for
	 * value = location to store the value found. [out]
	 * Returns: TRUE if the specified axis was found, otherwise FALSE
	 */
	public int getAxis(GdkAxisUse axisUse, out double value)
	{
		// gboolean gdk_event_get_axis (const GdkEvent *event,  GdkAxisUse axis_use,  gdouble *value);
		return gdk_event_get_axis(gdkEvent, axisUse, &value);
	}
	
	/**
	 * Extract the button number from an event.
	 * Params:
	 * button = location to store mouse button number. [out]
	 * Returns: TRUE if the event delivered a button number Since 3.2
	 */
	public int getButton(out uint button)
	{
		// gboolean gdk_event_get_button (const GdkEvent *event,  guint *button);
		return gdk_event_get_button(gdkEvent, &button);
	}
	
	/**
	 * Extracts the click count from an event.
	 * Params:
	 * clickCount = location to store click count. [out]
	 * Returns: TRUE if the event delivered a click count Since 3.2
	 */
	public int getClickCount(out uint clickCount)
	{
		// gboolean gdk_event_get_click_count (const GdkEvent *event,  guint *click_count);
		return gdk_event_get_click_count(gdkEvent, &clickCount);
	}
	
	/**
	 * Extract the event window relative x/y coordinates from an event.
	 * Params:
	 * xWin = location to put event window x coordinate. [out]
	 * yWin = location to put event window y coordinate. [out]
	 * Returns: TRUE if the event delivered event window coordinates
	 */
	public int getCoords(out double xWin, out double yWin)
	{
		// gboolean gdk_event_get_coords (const GdkEvent *event,  gdouble *x_win,  gdouble *y_win);
		return gdk_event_get_coords(gdkEvent, &xWin, &yWin);
	}
	
	/**
	 * Extracts the hardware keycode from an event.
	 * Params:
	 * keycode = location to store the keycode. [out]
	 * Returns: TRUE if the event delivered a hardware keycode Since 3.2
	 */
	public int getKeycode(out ushort keycode)
	{
		// gboolean gdk_event_get_keycode (const GdkEvent *event,  guint16 *keycode);
		return gdk_event_get_keycode(gdkEvent, &keycode);
	}
	
	/**
	 * Extracts the keyval from an event.
	 * Params:
	 * keyval = location to store the keyval. [out]
	 * Returns: TRUE if the event delivered a key symbol Since 3.2
	 */
	public int getKeyval(out uint keyval)
	{
		// gboolean gdk_event_get_keyval (const GdkEvent *event,  guint *keyval);
		return gdk_event_get_keyval(gdkEvent, &keyval);
	}
	
	/**
	 * Extract the root window relative x/y coordinates from an event.
	 * Params:
	 * xRoot = location to put root window x coordinate. [out]
	 * yRoot = location to put root window y coordinate. [out]
	 * Returns: TRUE if the event delivered root window coordinates
	 */
	public int getRootCoords(out double xRoot, out double yRoot)
	{
		// gboolean gdk_event_get_root_coords (const GdkEvent *event,  gdouble *x_root,  gdouble *y_root);
		return gdk_event_get_root_coords(gdkEvent, &xRoot, &yRoot);
	}
	
	/**
	 * Extracts the scroll direction from an event.
	 * Params:
	 * direction = location to store the scroll direction. [out]
	 * Returns: TRUE if the event delivered a scroll direction Since 3.2
	 */
	public int getScrollDirection(out GdkScrollDirection direction)
	{
		// gboolean gdk_event_get_scroll_direction (const GdkEvent *event,  GdkScrollDirection *direction);
		return gdk_event_get_scroll_direction(gdkEvent, &direction);
	}
	
	/**
	 * Retrieves the scroll deltas from a GdkEvent
	 * Params:
	 * deltaX = return location for X delta. [out]
	 * deltaY = return location for Y delta. [out]
	 * Returns: TRUE if the event contains smooth scroll information Since 3.4
	 */
	public int getScrollDeltas(out double deltaX, out double deltaY)
	{
		// gboolean gdk_event_get_scroll_deltas (const GdkEvent *event,  gdouble *delta_x,  gdouble *delta_y);
		return gdk_event_get_scroll_deltas(gdkEvent, &deltaX, &deltaY);
	}
	
	/**
	 * If the event contains a "state" field, puts that field in state. Otherwise
	 * stores an empty state (0). Returns TRUE if there was a state field
	 * in the event. event may be NULL, in which case it's treated
	 * as if the event had no state field.
	 * Params:
	 * state = return location for state. [out]
	 * Returns: TRUE if there was a state field in the event
	 */
	public int getState(out GdkModifierType state)
	{
		// gboolean gdk_event_get_state (const GdkEvent *event,  GdkModifierType *state);
		return gdk_event_get_state(gdkEvent, &state);
	}
	
	/**
	 * returns GDK_CURRENT_TIME. If event is NULL, returns GDK_CURRENT_TIME.
	 * Returns: time stamp field from event
	 */
	public uint getTime()
	{
		// guint32 gdk_event_get_time (const GdkEvent *event);
		return gdk_event_get_time(gdkEvent);
	}
	
	/**
	 * If event if of type GDK_TOUCH_BEGIN, GDK_TOUCH_UPDATE,
	 * GDK_TOUCH_END or GDK_TOUCH_CANCEL, returns the GdkEventSequence
	 * to which the event belongs. Otherwise, return NULL.
	 * Returns: the event sequence that the event belongs to Since 3.4
	 */
	public GdkEventSequence* getEventSequence()
	{
		// GdkEventSequence * gdk_event_get_event_sequence (const GdkEvent *event);
		return gdk_event_get_event_sequence(gdkEvent);
	}
	
	/**
	 * Request more motion notifies if event is a motion notify hint event.
	 * This function should be used instead of gdk_window_get_pointer() to
	 * request further motion notifies, because it also works for extension
	 * events where motion notifies are provided for devices other than the
	 * core pointer. Coordinate extraction, processing and requesting more
	 * Since 2.12
	 * Params:
	 * event = a valid GdkEvent
	 */
	public static void requestMotions(GdkEventMotion* event)
	{
		// void gdk_event_request_motions (const GdkEventMotion *event);
		gdk_event_request_motions(event);
	}
	
	/**
	 * If both events contain X/Y information, this function will return TRUE
	 * and return in angle the relative angle from event1 to event2. The rotation
	 * direction for positive angles is from the positive X axis towards the positive
	 * Y axis.
	 * Params:
	 * event2 = second GdkEvent
	 * angle = return location for the relative angle between both events. [out]
	 * Returns: TRUE if the angle could be calculated. Since 3.0
	 */
	public int eventsGetAngle(Event event2, out double angle)
	{
		// gboolean gdk_events_get_angle (GdkEvent *event1,  GdkEvent *event2,  gdouble *angle);
		return gdk_events_get_angle(gdkEvent, (event2 is null) ? null : event2.getEventStruct(), &angle);
	}
	
	/**
	 * If both events contain X/Y information, the center of both coordinates
	 * will be returned in x and y.
	 * Params:
	 * event2 = second GdkEvent
	 * x = return location for the X coordinate of the center. [out]
	 * y = return location for the Y coordinate of the center. [out]
	 * Returns: TRUE if the center could be calculated. Since 3.0
	 */
	public int eventsGetCenter(Event event2, out double x, out double y)
	{
		// gboolean gdk_events_get_center (GdkEvent *event1,  GdkEvent *event2,  gdouble *x,  gdouble *y);
		return gdk_events_get_center(gdkEvent, (event2 is null) ? null : event2.getEventStruct(), &x, &y);
	}
	
	/**
	 * If both events have X/Y information, the distance between both coordinates
	 * (as in a straight line going from event1 to event2) will be returned.
	 * Params:
	 * event2 = second GdkEvent
	 * distance = return location for the distance. [out]
	 * Returns: TRUE if the distance could be calculated. Since 3.0
	 */
	public int eventsGetDistance(Event event2, out double distance)
	{
		// gboolean gdk_events_get_distance (GdkEvent *event1,  GdkEvent *event2,  gdouble *distance);
		return gdk_events_get_distance(gdkEvent, (event2 is null) ? null : event2.getEventStruct(), &distance);
	}
	
	/**
	 * This function returns whether a GdkEventButton should trigger a
	 * context menu, according to platform conventions. The right mouse
	 * button always triggers context menus. Additionally, if
	 * gdk_keymap_get_modifier_mask() returns a non-0 mask for
	 * GDK_MODIFIER_INTENT_CONTEXT_MENU, then the left mouse button will
	 * also trigger a context menu if this modifier is pressed.
	 * This function should always be used instead of simply checking for
	 * event->button == GDK_BUTTON_SECONDARY.
	 * Returns: TRUE if the event should trigger a context menu. Since 3.4
	 */
	public int triggersContextMenu()
	{
		// gboolean gdk_event_triggers_context_menu (const GdkEvent *event);
		return gdk_event_triggers_context_menu(gdkEvent);
	}
	
	/**
	 * Sets the function to call to handle all events from GDK.
	 * Note that GTK+ uses this to install its own event handler, so it is
	 * usually not useful for GTK+ applications. (Although an application
	 * can call this function then call gtk_main_do_event() to pass
	 * events to GTK+.)
	 * Params:
	 * func = the function to call to handle events from GDK.
	 * data = user data to pass to the function.
	 * notify = the function to call when the handler function is removed, i.e. when
	 * gdk_event_handler_set() is called with another event handler.
	 */
	public static void handlerSet(GdkEventFunc func, void* data, GDestroyNotify notify)
	{
		// void gdk_event_handler_set (GdkEventFunc func,  gpointer data,  GDestroyNotify notify);
		gdk_event_handler_set(func, data, notify);
	}
	
	/**
	 * Gets whether event debugging output is enabled.
	 * Returns: TRUE if event debugging output is enabled.
	 */
	public static int getShowEvents()
	{
		// gboolean gdk_get_show_events (void);
		return gdk_get_show_events();
	}
	
	/**
	 * Sets whether a trace of received events is output.
	 * Note that GTK+ must be compiled with debugging (that is,
	 * configured using the --enable-debug option)
	 * to use this option.
	 * Params:
	 * showEvents = TRUE to output event debugging information.
	 */
	public static void setShowEvents(int showEvents)
	{
		// void gdk_set_show_events (gboolean show_events);
		gdk_set_show_events(showEvents);
	}
	
	/**
	 * Sets the screen for event to screen. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 * Since 2.2
	 * Params:
	 * screen = a GdkScreen
	 */
	public void setScreen(Screen screen)
	{
		// void gdk_event_set_screen (GdkEvent *event,  GdkScreen *screen);
		gdk_event_set_screen(gdkEvent, (screen is null) ? null : screen.getScreenStruct());
	}
	
	/**
	 * Returns the screen for the event. The screen is
	 * typically the screen for event->any.window, but
	 * for events such as mouse events, it is the screen
	 * where the pointer was when the event occurs -
	 * that is, the screen which has the root window
	 * to which event->motion.x_root and
	 * event->motion.y_root are relative.
	 * Since 2.2
	 * Returns: the screen for the event. [transfer none]
	 */
	public Screen getScreen()
	{
		// GdkScreen * gdk_event_get_screen (const GdkEvent *event);
		auto p = gdk_event_get_screen(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}
	
	/**
	 * If the event contains a "device" field, this function will return
	 * it, else it will return NULL.
	 * Returns: a GdkDevice, or NULL. [transfer none] Since 3.0
	 */
	public Device getDevice()
	{
		// GdkDevice * gdk_event_get_device (const GdkEvent *event);
		auto p = gdk_event_get_device(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * Sets the device for event to device. The event must
	 * have been allocated by GTK+, for instance, by
	 * gdk_event_copy().
	 * Params:
	 * device = a GdkDevice
	 * Since 3.0
	 */
	public void setDevice(Device device)
	{
		// void gdk_event_set_device (GdkEvent *event,  GdkDevice *device);
		gdk_event_set_device(gdkEvent, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * This function returns the hardware (slave) GdkDevice that has
	 * triggered the event, falling back to the virtual (master) device
	 * (as in gdk_event_get_device()) if the event wasn't caused by
	 * interaction with a hardware device. This may happen for example
	 * in synthesized crossing events after a GdkWindow updates its
	 * geometry or a grab is acquired/released.
	 * If the event does not contain a device field, this function will
	 * return NULL.
	 * Returns: a GdkDevice, or NULL. [transfer none] Since 3.0
	 */
	public Device getSourceDevice()
	{
		// GdkDevice * gdk_event_get_source_device (const GdkEvent *event);
		auto p = gdk_event_get_source_device(gdkEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * Sets the slave device for event to device.
	 * The event must have been allocated by GTK+,
	 * for instance by gdk_event_copy().
	 * Params:
	 * device = a GdkDevice
	 * Since 3.0
	 */
	public void setSourceDevice(Device device)
	{
		// void gdk_event_set_source_device (GdkEvent *event,  GdkDevice *device);
		gdk_event_set_source_device(gdkEvent, (device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Obtains a desktop-wide setting, such as the double-click time,
	 * for the default screen. See gdk_screen_get_setting().
	 * Params:
	 * name = the name of the setting.
	 * value = location to store the value of the setting.
	 * Returns: TRUE if the setting existed and a value was stored in value, FALSE otherwise.
	 */
	public static int settingGet(string name, Value value)
	{
		// gboolean gdk_setting_get (const gchar *name,  GValue *value);
		return gdk_setting_get(Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
}
