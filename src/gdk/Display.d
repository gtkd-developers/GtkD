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


module gdk.Display;

private import gdk.AppLaunchContext;
private import gdk.Device;
private import gdk.DeviceManager;
private import gdk.Event;
private import gdk.MonitorG;
private import gdk.Screen;
private import gdk.Seat;
private import gdk.Window;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtkc.gdk;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * #GdkDisplay objects purpose are two fold:
 * 
 * - To manage and provide information about input devices (pointers and keyboards)
 * 
 * - To manage and provide information about the available #GdkScreens
 * 
 * GdkDisplay objects are the GDK representation of an X Display,
 * which can be described as a workstation consisting of
 * a keyboard, a pointing device (such as a mouse) and one or more
 * screens.
 * It is used to open and keep track of various GdkScreen objects
 * currently instantiated by the application. It is also used to
 * access the keyboard(s) and mouse pointer(s) of the display.
 * 
 * Most of the input device handling has been factored out into
 * the separate #GdkDeviceManager object. Every display has a
 * device manager, which you can obtain using
 * gdk_display_get_device_manager().
 */
public class Display : ObjectG
{
	/** the main Gtk struct */
	protected GdkDisplay* gdkDisplay;

	/** Get the main Gtk struct */
	public GdkDisplay* getDisplayStruct()
	{
		return gdkDisplay;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDisplay;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkDisplay = cast(GdkDisplay*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDisplay* gdkDisplay, bool ownedRef = false)
	{
		this.gdkDisplay = gdkDisplay;
		super(cast(GObject*)gdkDisplay, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_display_get_type();
	}

	/**
	 * Gets the default #GdkDisplay. This is a convenience
	 * function for:
	 * `gdk_display_manager_get_default_display (gdk_display_manager_get ())`.
	 *
	 * Return: a #GdkDisplay, or %NULL if
	 *     there is no default display.
	 *
	 * Since: 2.2
	 */
	public static Display getDefault()
	{
		auto p = gdk_display_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Opens a display.
	 *
	 * Params:
	 *     displayName = the name of the display to open
	 *
	 * Return: a #GdkDisplay, or %NULL if the
	 *     display could not be opened
	 *
	 * Since: 2.2
	 */
	public static Display open(string displayName)
	{
		auto p = gdk_display_open(Str.toStringz(displayName));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Opens the default display specified by command line arguments or
	 * environment variables, sets it as the default display, and returns
	 * it. gdk_parse_args() must have been called first. If the default
	 * display has previously been set, simply returns that. An internal
	 * function that should not be used by applications.
	 *
	 * Deprecated: This symbol was never meant to be used outside
	 * of GTK+
	 *
	 * Return: the default display, if it
	 *     could be opened, otherwise %NULL.
	 */
	public static Display openDefaultLibgtkOnly()
	{
		auto p = gdk_display_open_default_libgtk_only();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Emits a short beep on @display
	 *
	 * Since: 2.2
	 */
	public void beep()
	{
		gdk_display_beep(gdkDisplay);
	}

	/**
	 * Closes the connection to the windowing system for the given display,
	 * and cleans up associated resources.
	 *
	 * Since: 2.2
	 */
	public void close()
	{
		gdk_display_close(gdkDisplay);
	}

	/**
	 * Returns %TRUE if there is an ongoing grab on @device for @display.
	 *
	 * Params:
	 *     device = a #GdkDevice
	 *
	 * Return: %TRUE if there is a grab in effect for @device.
	 */
	public bool deviceIsGrabbed(Device device)
	{
		return gdk_display_device_is_grabbed(gdkDisplay, (device is null) ? null : device.getDeviceStruct()) != 0;
	}

	/**
	 * Flushes any requests queued for the windowing system; this happens automatically
	 * when the main loop blocks waiting for new events, but if your application
	 * is drawing without returning control to the main loop, you may need
	 * to call this function explicitly. A common case where this function
	 * needs to be called is when an application is executing drawing commands
	 * from a thread other than the thread where the main loop is running.
	 *
	 * This is most useful for X11. On windowing systems where requests are
	 * handled synchronously, this function will do nothing.
	 *
	 * Since: 2.4
	 */
	public void flush()
	{
		gdk_display_flush(gdkDisplay);
	}

	/**
	 * Returns a #GdkAppLaunchContext suitable for launching
	 * applications on the given display.
	 *
	 * Return: a new #GdkAppLaunchContext for @display.
	 *     Free with g_object_unref() when done
	 *
	 * Since: 3.0
	 */
	public AppLaunchContext getAppLaunchContext()
	{
		auto p = gdk_display_get_app_launch_context(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(AppLaunchContext)(cast(GdkAppLaunchContext*) p, true);
	}

	/**
	 * Returns the default size to use for cursors on @display.
	 *
	 * Return: the default cursor size.
	 *
	 * Since: 2.4
	 */
	public uint getDefaultCursorSize()
	{
		return gdk_display_get_default_cursor_size(gdkDisplay);
	}

	/**
	 * Returns the default group leader window for all toplevel windows
	 * on @display. This window is implicitly created by GDK.
	 * See gdk_window_set_group().
	 *
	 * Return: The default group leader window
	 *     for @display
	 *
	 * Since: 2.4
	 */
	public Window getDefaultGroup()
	{
		auto p = gdk_display_get_default_group(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Get the default #GdkScreen for @display.
	 *
	 * Return: the default #GdkScreen object for @display
	 *
	 * Since: 2.2
	 */
	public Screen getDefaultScreen()
	{
		auto p = gdk_display_get_default_screen(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Returns the default #GdkSeat for this display.
	 *
	 * Return: the default seat.
	 *
	 * Since: 3.20
	 */
	public Seat getDefaultSeat()
	{
		auto p = gdk_display_get_default_seat(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Seat)(cast(GdkSeat*) p);
	}

	/**
	 * Returns the #GdkDeviceManager associated to @display.
	 *
	 * Deprecated: Use gdk_display_get_default_seat() and #GdkSeat operations.
	 *
	 * Return: A #GdkDeviceManager, or
	 *     %NULL. This memory is owned by GDK and must not be freed
	 *     or unreferenced.
	 *
	 * Since: 3.0
	 */
	public DeviceManager getDeviceManager()
	{
		auto p = gdk_display_get_device_manager(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DeviceManager)(cast(GdkDeviceManager*) p);
	}

	/**
	 * Gets the next #GdkEvent to be processed for @display, fetching events from the
	 * windowing system if necessary.
	 *
	 * Return: the next #GdkEvent to be processed, or %NULL
	 *     if no events are pending. The returned #GdkEvent should be freed
	 *     with gdk_event_free().
	 *
	 * Since: 2.2
	 */
	public Event getEvent()
	{
		auto p = gdk_display_get_event(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * Gets the maximal size to use for cursors on @display.
	 *
	 * Params:
	 *     width = the return location for the maximal cursor width
	 *     height = the return location for the maximal cursor height
	 *
	 * Since: 2.4
	 */
	public void getMaximalCursorSize(out uint width, out uint height)
	{
		gdk_display_get_maximal_cursor_size(gdkDisplay, &width, &height);
	}

	/**
	 * Gets a monitor associated with this display.
	 *
	 * Params:
	 *     monitorNum = number of the monitor
	 *
	 * Return: the #GdkMonitor, or %NULL if
	 *     @monitor_num is not a valid monitor number
	 *
	 * Since: 3.22
	 */
	public MonitorG getMonitor(int monitorNum)
	{
		auto p = gdk_display_get_monitor(gdkDisplay, monitorNum);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) p);
	}

	/**
	 * Gets the monitor in which the point (@x, @y) is located,
	 * or a nearby monitor if the point is not in any monitor.
	 *
	 * Params:
	 *     x = the x coordinate of the point
	 *     y = the y coordinate of the point
	 *
	 * Return: the monitor containing the point
	 *
	 * Since: 3.22
	 */
	public MonitorG getMonitorAtPoint(int x, int y)
	{
		auto p = gdk_display_get_monitor_at_point(gdkDisplay, x, y);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) p);
	}

	/**
	 * Gets the monitor in which the largest area of @window
	 * resides, or a monitor close to @window if it is outside
	 * of all monitors.
	 *
	 * Params:
	 *     window = a #GdkWindow
	 *
	 * Return: the monitor with the largest overlap with @window
	 *
	 * Since: 3.22
	 */
	public MonitorG getMonitorAtWindow(Window window)
	{
		auto p = gdk_display_get_monitor_at_window(gdkDisplay, (window is null) ? null : window.getWindowStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) p);
	}

	/**
	 * Gets the number of monitors that belong to @display.
	 *
	 * The returned number is valid until the next emission of the
	 * #GdkDisplay::monitor-added or #GdkDisplay::monitor-removed signal.
	 *
	 * Return: the number of monitors
	 *
	 * Since: 3.22
	 */
	public int getNMonitors()
	{
		return gdk_display_get_n_monitors(gdkDisplay);
	}

	/**
	 * Gets the number of screen managed by the @display.
	 *
	 * Deprecated: The number of screens is always 1.
	 *
	 * Return: number of screens.
	 *
	 * Since: 2.2
	 */
	public int getNScreens()
	{
		return gdk_display_get_n_screens(gdkDisplay);
	}

	/**
	 * Gets the name of the display.
	 *
	 * Return: a string representing the display name. This string is owned
	 *     by GDK and should not be modified or freed.
	 *
	 * Since: 2.2
	 */
	public string getName()
	{
		return Str.toString(gdk_display_get_name(gdkDisplay));
	}

	/**
	 * Gets the current location of the pointer and the current modifier
	 * mask for a given display.
	 *
	 * Deprecated: Use gdk_device_get_position() instead.
	 *
	 * Params:
	 *     screen = location to store the screen that the
	 *         cursor is on, or %NULL.
	 *     x = location to store root window X coordinate of pointer, or %NULL.
	 *     y = location to store root window Y coordinate of pointer, or %NULL.
	 *     mask = location to store current modifier mask, or %NULL
	 *
	 * Since: 2.2
	 */
	public void getPointer(out Screen screen, out int x, out int y, out GdkModifierType mask)
	{
		GdkScreen* outscreen = null;
		
		gdk_display_get_pointer(gdkDisplay, &outscreen, &x, &y, &mask);
		
		screen = ObjectG.getDObject!(Screen)(outscreen);
	}

	/**
	 * Gets the primary monitor for the display.
	 *
	 * The primary monitor is considered the monitor where the “main desktop”
	 * lives. While normal application windows typically allow the window
	 * manager to place the windows, specialized desktop applications
	 * such as panels should place themselves on the primary monitor.
	 *
	 * Return: the primary monitor, or %NULL if no primary
	 *     monitor is configured by the user
	 *
	 * Since: 3.22
	 */
	public MonitorG getPrimaryMonitor()
	{
		auto p = gdk_display_get_primary_monitor(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) p);
	}

	/**
	 * Returns a screen object for one of the screens of the display.
	 *
	 * Deprecated: There is only one screen; use gdk_display_get_default_screen() to get it.
	 *
	 * Params:
	 *     screenNum = the screen number
	 *
	 * Return: the #GdkScreen object
	 *
	 * Since: 2.2
	 */
	public Screen getScreen(int screenNum)
	{
		auto p = gdk_display_get_screen(gdkDisplay, screenNum);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Obtains the window underneath the mouse pointer, returning the location
	 * of the pointer in that window in @win_x, @win_y for @screen. Returns %NULL
	 * if the window under the mouse pointer is not known to GDK (for example,
	 * belongs to another application).
	 *
	 * Deprecated: Use gdk_device_get_window_at_position() instead.
	 *
	 * Params:
	 *     winX = return location for x coordinate of the pointer location relative
	 *         to the window origin, or %NULL
	 *     winY = return location for y coordinate of the pointer location relative
	 *         &    to the window origin, or %NULL
	 *
	 * Return: the window under the mouse
	 *     pointer, or %NULL
	 *
	 * Since: 2.2
	 */
	public Window getWindowAtPointer(out int winX, out int winY)
	{
		auto p = gdk_display_get_window_at_pointer(gdkDisplay, &winX, &winY);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Returns whether the display has events that are waiting
	 * to be processed.
	 *
	 * Return: %TRUE if there are events ready to be processed.
	 *
	 * Since: 3.0
	 */
	public bool hasPending()
	{
		return gdk_display_has_pending(gdkDisplay) != 0;
	}

	/**
	 * Finds out if the display has been closed.
	 *
	 * Return: %TRUE if the display is closed.
	 *
	 * Since: 2.22
	 */
	public bool isClosed()
	{
		return gdk_display_is_closed(gdkDisplay) != 0;
	}

	/**
	 * Release any keyboard grab
	 *
	 * Deprecated: Use gdk_device_ungrab(), together with gdk_device_grab()
	 * instead.
	 *
	 * Params:
	 *     time = a timestap (e.g #GDK_CURRENT_TIME).
	 *
	 * Since: 2.2
	 */
	public void keyboardUngrab(uint time)
	{
		gdk_display_keyboard_ungrab(gdkDisplay, time);
	}

	/**
	 * Returns the list of available input devices attached to @display.
	 * The list is statically allocated and should not be freed.
	 *
	 * Deprecated: Use gdk_device_manager_list_devices() instead.
	 *
	 * Return: a list of #GdkDevice
	 *
	 * Since: 2.2
	 */
	public ListG listDevices()
	{
		auto p = gdk_display_list_devices(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Returns the list of seats known to @display.
	 *
	 * Return: the
	 *     list of seats known to the #GdkDisplay
	 *
	 * Since: 3.20
	 */
	public ListG listSeats()
	{
		auto p = gdk_display_list_seats(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Indicates to the GUI environment that the application has
	 * finished loading, using a given identifier.
	 *
	 * GTK+ will call this function automatically for #GtkWindow
	 * with custom startup-notification identifier unless
	 * gtk_window_set_auto_startup_notification() is called to
	 * disable that feature.
	 *
	 * Params:
	 *     startupId = a startup-notification identifier, for which
	 *         notification process should be completed
	 *
	 * Since: 3.0
	 */
	public void notifyStartupComplete(string startupId)
	{
		gdk_display_notify_startup_complete(gdkDisplay, Str.toStringz(startupId));
	}

	/**
	 * Gets a copy of the first #GdkEvent in the @display’s event queue, without
	 * removing the event from the queue.  (Note that this function will
	 * not get more events from the windowing system.  It only checks the events
	 * that have already been moved to the GDK event queue.)
	 *
	 * Return: a copy of the first #GdkEvent on the event
	 *     queue, or %NULL if no events are in the queue. The returned
	 *     #GdkEvent should be freed with gdk_event_free().
	 *
	 * Since: 2.2
	 */
	public Event peekEvent()
	{
		auto p = gdk_display_peek_event(gdkDisplay);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Event)(cast(GdkEvent*) p, true);
	}

	/**
	 * Test if the pointer is grabbed.
	 *
	 * Deprecated: Use gdk_display_device_is_grabbed() instead.
	 *
	 * Return: %TRUE if an active X pointer grab is in effect
	 *
	 * Since: 2.2
	 */
	public bool pointerIsGrabbed()
	{
		return gdk_display_pointer_is_grabbed(gdkDisplay) != 0;
	}

	/**
	 * Release any pointer grab.
	 *
	 * Deprecated: Use gdk_device_ungrab(), together with gdk_device_grab()
	 * instead.
	 *
	 * Params:
	 *     time = a timestap (e.g. %GDK_CURRENT_TIME).
	 *
	 * Since: 2.2
	 */
	public void pointerUngrab(uint time)
	{
		gdk_display_pointer_ungrab(gdkDisplay, time);
	}

	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for @display.
	 *
	 * Params:
	 *     event = a #GdkEvent.
	 *
	 * Since: 2.2
	 */
	public void putEvent(Event event)
	{
		gdk_display_put_event(gdkDisplay, (event is null) ? null : event.getEventStruct());
	}

	/**
	 * Request #GdkEventOwnerChange events for ownership changes
	 * of the selection named by the given atom.
	 *
	 * Params:
	 *     selection = the #GdkAtom naming the selection for which
	 *         ownership change notification is requested
	 *
	 * Return: whether #GdkEventOwnerChange events will
	 *     be sent.
	 *
	 * Since: 2.6
	 */
	public bool requestSelectionNotification(GdkAtom selection)
	{
		return gdk_display_request_selection_notification(gdkDisplay, selection) != 0;
	}

	/**
	 * Sets the double click distance (two clicks within this distance
	 * count as a double click and result in a #GDK_2BUTTON_PRESS event).
	 * See also gdk_display_set_double_click_time().
	 * Applications should not set this, it is a global
	 * user-configured setting.
	 *
	 * Params:
	 *     distance = distance in pixels
	 *
	 * Since: 2.4
	 */
	public void setDoubleClickDistance(uint distance)
	{
		gdk_display_set_double_click_distance(gdkDisplay, distance);
	}

	/**
	 * Sets the double click time (two clicks within this time interval
	 * count as a double click and result in a #GDK_2BUTTON_PRESS event).
	 * Applications should not set this, it is a global
	 * user-configured setting.
	 *
	 * Params:
	 *     msec = double click time in milliseconds (thousandths of a second)
	 *
	 * Since: 2.2
	 */
	public void setDoubleClickTime(uint msec)
	{
		gdk_display_set_double_click_time(gdkDisplay, msec);
	}

	/**
	 * Issues a request to the clipboard manager to store the
	 * clipboard data. On X11, this is a special program that works
	 * according to the
	 * [FreeDesktop Clipboard Specification](http://www.freedesktop.org/Standards/clipboard-manager-spec).
	 *
	 * Params:
	 *     clipboardWindow = a #GdkWindow belonging to the clipboard owner
	 *     time = a timestamp
	 *     targets = an array of targets
	 *         that should be saved, or %NULL
	 *         if all available targets should be saved.
	 *     nTargets = length of the @targets array
	 *
	 * Since: 2.6
	 */
	public void storeClipboard(Window clipboardWindow, uint time, GdkAtom[] targets)
	{
		gdk_display_store_clipboard(gdkDisplay, (clipboardWindow is null) ? null : clipboardWindow.getWindowStruct(), time, targets.ptr, cast(int)targets.length);
	}

	/**
	 * Returns whether the speicifed display supports clipboard
	 * persistance; i.e. if it’s possible to store the clipboard data after an
	 * application has quit. On X11 this checks if a clipboard daemon is
	 * running.
	 *
	 * Return: %TRUE if the display supports clipboard persistance.
	 *
	 * Since: 2.6
	 */
	public bool supportsClipboardPersistence()
	{
		return gdk_display_supports_clipboard_persistence(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if gdk_window_set_composited() can be used
	 * to redirect drawing on the window using compositing.
	 *
	 * Currently this only works on X11 with XComposite and
	 * XDamage extensions available.
	 *
	 * Deprecated: Compositing is an outdated technology that
	 * only ever worked on X11.
	 *
	 * Return: %TRUE if windows may be composited.
	 *
	 * Since: 2.12
	 */
	public bool supportsComposite()
	{
		return gdk_display_supports_composite(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if cursors can use an 8bit alpha channel
	 * on @display. Otherwise, cursors are restricted to bilevel
	 * alpha (i.e. a mask).
	 *
	 * Return: whether cursors can have alpha channels.
	 *
	 * Since: 2.4
	 */
	public bool supportsCursorAlpha()
	{
		return gdk_display_supports_cursor_alpha(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if multicolored cursors are supported
	 * on @display. Otherwise, cursors have only a forground
	 * and a background color.
	 *
	 * Return: whether cursors can have multiple colors.
	 *
	 * Since: 2.4
	 */
	public bool supportsCursorColor()
	{
		return gdk_display_supports_cursor_color(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if gdk_window_input_shape_combine_mask() can
	 * be used to modify the input shape of windows on @display.
	 *
	 * Return: %TRUE if windows with modified input shape are supported
	 *
	 * Since: 2.10
	 */
	public bool supportsInputShapes()
	{
		return gdk_display_supports_input_shapes(gdkDisplay) != 0;
	}

	/**
	 * Returns whether #GdkEventOwnerChange events will be
	 * sent when the owner of a selection changes.
	 *
	 * Return: whether #GdkEventOwnerChange events will
	 *     be sent.
	 *
	 * Since: 2.6
	 */
	public bool supportsSelectionNotification()
	{
		return gdk_display_supports_selection_notification(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if gdk_window_shape_combine_mask() can
	 * be used to create shaped windows on @display.
	 *
	 * Return: %TRUE if shaped windows are supported
	 *
	 * Since: 2.10
	 */
	public bool supportsShapes()
	{
		return gdk_display_supports_shapes(gdkDisplay) != 0;
	}

	/**
	 * Flushes any requests queued for the windowing system and waits until all
	 * requests have been handled. This is often used for making sure that the
	 * display is synchronized with the current state of the program. Calling
	 * gdk_display_sync() before gdk_error_trap_pop() makes sure that any errors
	 * generated from earlier requests are handled before the error trap is
	 * removed.
	 *
	 * This is most useful for X11. On windowing systems where requests are
	 * handled synchronously, this function will do nothing.
	 *
	 * Since: 2.2
	 */
	public void sync()
	{
		gdk_display_sync(gdkDisplay);
	}

	/**
	 * Warps the pointer of @display to the point @x,@y on
	 * the screen @screen, unless the pointer is confined
	 * to a window by a grab, in which case it will be moved
	 * as far as allowed by the grab. Warping the pointer
	 * creates events as if the user had moved the mouse
	 * instantaneously to the destination.
	 *
	 * Note that the pointer should normally be under the
	 * control of the user. This function was added to cover
	 * some rare use cases like keyboard navigation support
	 * for the color picker in the #GtkColorSelectionDialog.
	 *
	 * Deprecated: Use gdk_device_warp() instead.
	 *
	 * Params:
	 *     screen = the screen of @display to warp the pointer to
	 *     x = the x coordinate of the destination
	 *     y = the y coordinate of the destination
	 *
	 * Since: 2.8
	 */
	public void warpPointer(Screen screen, int x, int y)
	{
		gdk_display_warp_pointer(gdkDisplay, (screen is null) ? null : screen.getScreenStruct(), x, y);
	}

	protected class OnClosedDelegateWrapper
	{
		void delegate(bool, Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(bool, Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnClosedDelegateWrapper[] onClosedListeners;

	/**
	 * The ::closed signal is emitted when the connection to the windowing
	 * system for @display is closed.
	 *
	 * Params:
	 *     isError = %TRUE if the display was closed due to an error
	 *
	 * Since: 2.2
	 */
	gulong addOnClosed(void delegate(bool, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onClosedListeners ~= new OnClosedDelegateWrapper(dlg, 0, connectFlags);
		onClosedListeners[onClosedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"closed",
			cast(GCallback)&callBackClosed,
			cast(void*)onClosedListeners[onClosedListeners.length - 1],
			cast(GClosureNotify)&callBackClosedDestroy,
			connectFlags);
		return onClosedListeners[onClosedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackClosed(GdkDisplay* displayStruct, bool isError,OnClosedDelegateWrapper wrapper)
	{
		wrapper.dlg(isError, wrapper.outer);
	}
	
	extern(C) static void callBackClosedDestroy(OnClosedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnClosed(wrapper);
	}

	protected void internalRemoveOnClosed(OnClosedDelegateWrapper source)
	{
		foreach(index, wrapper; onClosedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onClosedListeners[index] = null;
				onClosedListeners = std.algorithm.remove(onClosedListeners, index);
				break;
			}
		}
	}
	

	protected class OnMonitorAddedDelegateWrapper
	{
		void delegate(MonitorG, Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MonitorG, Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMonitorAddedDelegateWrapper[] onMonitorAddedListeners;

	/**
	 * The ::monitor-added signal is emitted whenever a monitor is
	 * added.
	 *
	 * Params:
	 *     monitor = the monitor that was just added
	 *
	 * Since: 3.22
	 */
	gulong addOnMonitorAdded(void delegate(MonitorG, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMonitorAddedListeners ~= new OnMonitorAddedDelegateWrapper(dlg, 0, connectFlags);
		onMonitorAddedListeners[onMonitorAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"monitor-added",
			cast(GCallback)&callBackMonitorAdded,
			cast(void*)onMonitorAddedListeners[onMonitorAddedListeners.length - 1],
			cast(GClosureNotify)&callBackMonitorAddedDestroy,
			connectFlags);
		return onMonitorAddedListeners[onMonitorAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMonitorAdded(GdkDisplay* displayStruct, GdkMonitor* monitor,OnMonitorAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(MonitorG)(monitor), wrapper.outer);
	}
	
	extern(C) static void callBackMonitorAddedDestroy(OnMonitorAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMonitorAdded(wrapper);
	}

	protected void internalRemoveOnMonitorAdded(OnMonitorAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onMonitorAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMonitorAddedListeners[index] = null;
				onMonitorAddedListeners = std.algorithm.remove(onMonitorAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnMonitorRemovedDelegateWrapper
	{
		void delegate(MonitorG, Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(MonitorG, Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnMonitorRemovedDelegateWrapper[] onMonitorRemovedListeners;

	/**
	 * The ::monitor-removed signal is emitted whenever a monitor is
	 * removed.
	 *
	 * Params:
	 *     monitor = the monitor that was just removed
	 *
	 * Since: 3.22
	 */
	gulong addOnMonitorRemoved(void delegate(MonitorG, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onMonitorRemovedListeners ~= new OnMonitorRemovedDelegateWrapper(dlg, 0, connectFlags);
		onMonitorRemovedListeners[onMonitorRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"monitor-removed",
			cast(GCallback)&callBackMonitorRemoved,
			cast(void*)onMonitorRemovedListeners[onMonitorRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackMonitorRemovedDestroy,
			connectFlags);
		return onMonitorRemovedListeners[onMonitorRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackMonitorRemoved(GdkDisplay* displayStruct, GdkMonitor* monitor,OnMonitorRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(MonitorG)(monitor), wrapper.outer);
	}
	
	extern(C) static void callBackMonitorRemovedDestroy(OnMonitorRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnMonitorRemoved(wrapper);
	}

	protected void internalRemoveOnMonitorRemoved(OnMonitorRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onMonitorRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onMonitorRemovedListeners[index] = null;
				onMonitorRemovedListeners = std.algorithm.remove(onMonitorRemovedListeners, index);
				break;
			}
		}
	}
	

	protected class OnOpenedDelegateWrapper
	{
		void delegate(Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnOpenedDelegateWrapper[] onOpenedListeners;

	/**
	 * The ::opened signal is emitted when the connection to the windowing
	 * system for @display is opened.
	 */
	gulong addOnOpened(void delegate(Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onOpenedListeners ~= new OnOpenedDelegateWrapper(dlg, 0, connectFlags);
		onOpenedListeners[onOpenedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"opened",
			cast(GCallback)&callBackOpened,
			cast(void*)onOpenedListeners[onOpenedListeners.length - 1],
			cast(GClosureNotify)&callBackOpenedDestroy,
			connectFlags);
		return onOpenedListeners[onOpenedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackOpened(GdkDisplay* displayStruct,OnOpenedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackOpenedDestroy(OnOpenedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnOpened(wrapper);
	}

	protected void internalRemoveOnOpened(OnOpenedDelegateWrapper source)
	{
		foreach(index, wrapper; onOpenedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onOpenedListeners[index] = null;
				onOpenedListeners = std.algorithm.remove(onOpenedListeners, index);
				break;
			}
		}
	}
	

	protected class OnSeatAddedDelegateWrapper
	{
		void delegate(Seat, Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Seat, Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSeatAddedDelegateWrapper[] onSeatAddedListeners;

	/**
	 * The ::seat-added signal is emitted whenever a new seat is made
	 * known to the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just added
	 *
	 * Since: 3.20
	 */
	gulong addOnSeatAdded(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSeatAddedListeners ~= new OnSeatAddedDelegateWrapper(dlg, 0, connectFlags);
		onSeatAddedListeners[onSeatAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"seat-added",
			cast(GCallback)&callBackSeatAdded,
			cast(void*)onSeatAddedListeners[onSeatAddedListeners.length - 1],
			cast(GClosureNotify)&callBackSeatAddedDestroy,
			connectFlags);
		return onSeatAddedListeners[onSeatAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSeatAdded(GdkDisplay* displayStruct, GdkSeat* seat,OnSeatAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Seat)(seat), wrapper.outer);
	}
	
	extern(C) static void callBackSeatAddedDestroy(OnSeatAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSeatAdded(wrapper);
	}

	protected void internalRemoveOnSeatAdded(OnSeatAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onSeatAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSeatAddedListeners[index] = null;
				onSeatAddedListeners = std.algorithm.remove(onSeatAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnSeatRemovedDelegateWrapper
	{
		void delegate(Seat, Display) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Seat, Display) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnSeatRemovedDelegateWrapper[] onSeatRemovedListeners;

	/**
	 * The ::seat-removed signal is emitted whenever a seat is removed
	 * by the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just removed
	 *
	 * Since: 3.20
	 */
	gulong addOnSeatRemoved(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onSeatRemovedListeners ~= new OnSeatRemovedDelegateWrapper(dlg, 0, connectFlags);
		onSeatRemovedListeners[onSeatRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"seat-removed",
			cast(GCallback)&callBackSeatRemoved,
			cast(void*)onSeatRemovedListeners[onSeatRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackSeatRemovedDestroy,
			connectFlags);
		return onSeatRemovedListeners[onSeatRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackSeatRemoved(GdkDisplay* displayStruct, GdkSeat* seat,OnSeatRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Seat)(seat), wrapper.outer);
	}
	
	extern(C) static void callBackSeatRemovedDestroy(OnSeatRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnSeatRemoved(wrapper);
	}

	protected void internalRemoveOnSeatRemoved(OnSeatRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onSeatRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onSeatRemovedListeners[index] = null;
				onSeatRemovedListeners = std.algorithm.remove(onSeatRemovedListeners, index);
				break;
			}
		}
	}
	
}
