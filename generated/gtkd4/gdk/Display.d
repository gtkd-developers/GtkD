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
private import gdk.Clipboard;
private import gdk.Device;
private import gdk.Event;
private import gdk.Keymap;
private import gdk.MonitorG;
private import gdk.Seat;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import std.algorithm;


/**
 * GdkDisplay objects are the GDK representation of a workstation.
 * 
 * Their purpose are two-fold:
 * - To manage and provide information about input devices (pointers, keyboards, etc)
 * - To manage and provide information about output devices (monitors, projectors, etc)
 * 
 * Most of the input device handling has been factored out into separate #GdkSeat
 * objects. Every display has a one or more seats, which can be accessed with
 * gdk_display_get_default_seat() and gdk_display_list_seats().
 * 
 * Output devices are represented by #GdkMonitor objects, which can be accessed
 * with gdk_display_get_monitor() and similar APIs.
 */
public class Display : ObjectG
{
	/** the main Gtk struct */
	protected GdkDisplay* gdkDisplay;

	/** Get the main Gtk struct */
	public GdkDisplay* getDisplayStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkDisplay;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDisplay;
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
	 * Returns: a #GdkDisplay, or %NULL if
	 *     there is no default display.
	 */
	public static Display getDefault()
	{
		auto __p = gdk_display_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Opens a display.
	 *
	 * Params:
	 *     displayName = the name of the display to open
	 *
	 * Returns: a #GdkDisplay, or %NULL if the
	 *     display could not be opened
	 */
	public static Display open(string displayName)
	{
		auto __p = gdk_display_open(Str.toStringz(displayName));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Emits a short beep on @display
	 */
	public void beep()
	{
		gdk_display_beep(gdkDisplay);
	}

	/**
	 * Closes the connection to the windowing system for the given display,
	 * and cleans up associated resources.
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
	 * Returns: %TRUE if there is a grab in effect for @device.
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
	 */
	public void flush()
	{
		gdk_display_flush(gdkDisplay);
	}

	/**
	 * Returns a #GdkAppLaunchContext suitable for launching
	 * applications on the given display.
	 *
	 * Returns: a new #GdkAppLaunchContext for @display.
	 *     Free with g_object_unref() when done
	 */
	public AppLaunchContext getAppLaunchContext()
	{
		auto __p = gdk_display_get_app_launch_context(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(AppLaunchContext)(cast(GdkAppLaunchContext*) __p, true);
	}

	/**
	 * Gets the clipboard used for copy/paste operations.
	 *
	 * Returns: the display's clipboard
	 */
	public Clipboard getClipboard()
	{
		auto __p = gdk_display_get_clipboard(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GdkClipboard*) __p);
	}

	/**
	 * Returns the default group leader surface for all toplevel surfaces
	 * on @display. This surface is implicitly created by GDK.
	 * See gdk_surface_set_group().
	 *
	 * Returns: The default group leader surface
	 *     for @display
	 */
	public Surface getDefaultGroup()
	{
		auto __p = gdk_display_get_default_group(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Surface)(cast(GdkSurface*) __p);
	}

	/**
	 * Returns the default #GdkSeat for this display.
	 *
	 * Returns: the default seat.
	 */
	public Seat getDefaultSeat()
	{
		auto __p = gdk_display_get_default_seat(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Seat)(cast(GdkSeat*) __p);
	}

	/**
	 * Gets the next #GdkEvent to be processed for @display, fetching events from the
	 * windowing system if necessary.
	 *
	 * Returns: the next #GdkEvent to be processed,
	 *     or %NULL if no events are pending
	 */
	public Event getEvent()
	{
		auto __p = gdk_display_get_event(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p, true);
	}

	/**
	 * Returns the #GdkKeymap attached to @display.
	 *
	 * Returns: the #GdkKeymap attached to @display.
	 */
	public Keymap getKeymap()
	{
		auto __p = gdk_display_get_keymap(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Keymap)(cast(GdkKeymap*) __p);
	}

	/**
	 * Gets a monitor associated with this display.
	 *
	 * Params:
	 *     monitorNum = number of the monitor
	 *
	 * Returns: the #GdkMonitor, or %NULL if
	 *     @monitor_num is not a valid monitor number
	 */
	public MonitorG getMonitor(int monitorNum)
	{
		auto __p = gdk_display_get_monitor(gdkDisplay, monitorNum);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) __p);
	}

	/**
	 * Gets the monitor in which the largest area of @surface
	 * resides, or a monitor close to @surface if it is outside
	 * of all monitors.
	 *
	 * Params:
	 *     surface = a #GdkSurface
	 *
	 * Returns: the monitor with the largest overlap with @surface
	 */
	public MonitorG getMonitorAtSurface(Surface surface)
	{
		auto __p = gdk_display_get_monitor_at_surface(gdkDisplay, (surface is null) ? null : surface.getSurfaceStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) __p);
	}

	/**
	 * Gets the number of monitors that belong to @display.
	 *
	 * The returned number is valid until the next emission of the
	 * #GdkDisplay::monitor-added or #GdkDisplay::monitor-removed signal.
	 *
	 * Returns: the number of monitors
	 */
	public int getNMonitors()
	{
		return gdk_display_get_n_monitors(gdkDisplay);
	}

	/**
	 * Gets the name of the display.
	 *
	 * Returns: a string representing the display name. This string is owned
	 *     by GDK and should not be modified or freed.
	 */
	public string getName()
	{
		return Str.toString(gdk_display_get_name(gdkDisplay));
	}

	/**
	 * Gets the clipboard used for the primary selection. On backends where the
	 * primary clipboard is not supported natively, GDK emulates this clipboard
	 * locally.
	 *
	 * Returns: the primary clipboard
	 */
	public Clipboard getPrimaryClipboard()
	{
		auto __p = gdk_display_get_primary_clipboard(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Clipboard)(cast(GdkClipboard*) __p);
	}

	/**
	 * Gets the primary monitor for the display.
	 *
	 * The primary monitor is considered the monitor where the “main desktop”
	 * lives. While normal application surfaces typically allow the window
	 * manager to place the surfaces, specialized desktop applications
	 * such as panels should place themselves on the primary monitor.
	 *
	 * If no monitor is the designated primary monitor, any monitor
	 * (usually the first) may be returned. To make sure there is a dedicated
	 * primary monitor, use gdk_monitor_is_primary() on the returned monitor.
	 *
	 * Returns: the primary monitor, or any monitor if no
	 *     primary monitor is configured by the user
	 */
	public MonitorG getPrimaryMonitor()
	{
		auto __p = gdk_display_get_primary_monitor(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonitorG)(cast(GdkMonitor*) __p);
	}

	/**
	 * Retrieves a desktop-wide setting such as double-click time
	 * for the @display.
	 *
	 * Params:
	 *     name = the name of the setting
	 *     value = location to store the value of the setting
	 *
	 * Returns: %TRUE if the setting existed and a value was stored
	 *     in @value, %FALSE otherwise
	 */
	public bool getSetting(string name, Value value)
	{
		return gdk_display_get_setting(gdkDisplay, Str.toStringz(name), (value is null) ? null : value.getValueStruct()) != 0;
	}

	/**
	 * Gets the startup notification ID for a Wayland display, or %NULL
	 * if no ID has been defined.
	 *
	 * Returns: the startup notification ID for @display, or %NULL
	 */
	public string getStartupNotificationId()
	{
		return Str.toString(gdk_display_get_startup_notification_id(gdkDisplay));
	}

	/**
	 * Returns whether the display has events that are waiting
	 * to be processed.
	 *
	 * Returns: %TRUE if there are events ready to be processed.
	 */
	public bool hasPending()
	{
		return gdk_display_has_pending(gdkDisplay) != 0;
	}

	/**
	 * Finds out if the display has been closed.
	 *
	 * Returns: %TRUE if the display is closed.
	 */
	public bool isClosed()
	{
		return gdk_display_is_closed(gdkDisplay) != 0;
	}

	/**
	 * Returns whether surfaces can reasonably be expected to have
	 * their alpha channel drawn correctly on the screen. Check
	 * gdk_display_is_rgba() for wether the display supports an
	 * alpha channel.
	 *
	 * On X11 this function returns whether a compositing manager is
	 * compositing on @display.
	 *
	 * On modern displays, this value is always %TRUE.
	 *
	 * Returns: Whether surfaces with RGBA visuals can reasonably be
	 *     expected to have their alpha channels drawn correctly on the screen.
	 */
	public bool isComposited()
	{
		return gdk_display_is_composited(gdkDisplay) != 0;
	}

	/**
	 * Returns wether surfaces on this @display are created with an
	 * alpha channel.
	 *
	 * Even if a %TRUE is returned, it is possible that the
	 * surface’s alpha channel won’t be honored when displaying the
	 * surface on the screen: in particular, for X an appropriate
	 * windowing manager and compositing manager must be running to
	 * provide appropriate display. Use gdk_display_is_composited()
	 * to check if that is the case.
	 *
	 * For setting an overall opacity for a top-level surface, see
	 * gdk_surface_set_opacity().
	 *
	 * On modern displays, this value is always %TRUE.
	 *
	 * Returns: %TRUE if surfaces are created with an alpha channel or
	 *     %FALSE if the display does not support this functionality.
	 */
	public bool isRgba()
	{
		return gdk_display_is_rgba(gdkDisplay) != 0;
	}

	/**
	 * Returns the list of seats known to @display.
	 *
	 * Returns: the
	 *     list of seats known to the #GdkDisplay
	 */
	public ListG listSeats()
	{
		auto __p = gdk_display_list_seats(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
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
	 * Returns: the first #GdkEvent on the
	 *     event queue
	 */
	public Event peekEvent()
	{
		auto __p = gdk_display_peek_event(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Event)(cast(GdkEvent*) __p, true);
	}

	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for @display.
	 *
	 * Params:
	 *     event = a #GdkEvent.
	 */
	public void putEvent(Event event)
	{
		gdk_display_put_event(gdkDisplay, (event is null) ? null : event.getEventStruct());
	}

	/**
	 * Returns %TRUE if gdk_surface_input_shape_combine_mask() can
	 * be used to modify the input shape of surfaces on @display.
	 *
	 * Returns: %TRUE if surfaces with modified input shape are supported
	 */
	public bool supportsInputShapes()
	{
		return gdk_display_supports_input_shapes(gdkDisplay) != 0;
	}

	/**
	 * Returns %TRUE if gdk_surface_shape_combine_mask() can
	 * be used to create shaped windows on @display.
	 *
	 * Returns: %TRUE if shaped windows are supported
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
	 */
	public void sync()
	{
		gdk_display_sync(gdkDisplay);
	}

	/**
	 * The ::closed signal is emitted when the connection to the windowing
	 * system for @display is closed.
	 *
	 * Params:
	 *     isError = %TRUE if the display was closed due to an error
	 */
	gulong addOnClosed(void delegate(bool, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::monitor-added signal is emitted whenever a monitor is
	 * added.
	 *
	 * Params:
	 *     monitor = the monitor that was just added
	 */
	gulong addOnMonitorAdded(void delegate(MonitorG, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "monitor-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::monitor-removed signal is emitted whenever a monitor is
	 * removed.
	 *
	 * Params:
	 *     monitor = the monitor that was just removed
	 */
	gulong addOnMonitorRemoved(void delegate(MonitorG, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "monitor-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::opened signal is emitted when the connection to the windowing
	 * system for @display is opened.
	 */
	gulong addOnOpened(void delegate(Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "opened", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::seat-added signal is emitted whenever a new seat is made
	 * known to the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just added
	 */
	gulong addOnSeatAdded(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "seat-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::seat-removed signal is emitted whenever a seat is removed
	 * by the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just removed
	 */
	gulong addOnSeatRemoved(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "seat-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::setting-changed signal is emitted whenever a setting
	 * changes its value.
	 *
	 * Params:
	 *     setting = the name of the setting that changed
	 */
	gulong addOnSettingChanged(void delegate(string, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "setting-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
