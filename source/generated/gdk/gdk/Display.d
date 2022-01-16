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
private import gdk.GLContext;
private import gdk.MonitorGdk;
private import gdk.Seat;
private import gdk.Surface;
private import gdk.c.functions;
public  import gdk.c.types;
private import gio.ListModelIF;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import std.algorithm;


/**
 * `GdkDisplay` objects are the GDK representation of a workstation.
 * 
 * Their purpose are two-fold:
 * 
 * - To manage and provide information about input devices (pointers, keyboards, etc)
 * - To manage and provide information about output devices (monitors, projectors, etc)
 * 
 * Most of the input device handling has been factored out into separate
 * [class@Gdk.Seat] objects. Every display has a one or more seats, which
 * can be accessed with [method@Gdk.Display.get_default_seat] and
 * [method@Gdk.Display.list_seats].
 * 
 * Output devices are represented by [class@Gdk.Monitor] objects, which can
 * be accessed with [method@Gdk.Display.get_monitor_at_surface] and similar APIs.
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
	 * Gets the default `GdkDisplay`.
	 *
	 * This is a convenience function for:
	 *
	 * gdk_display_manager_get_default_display (gdk_display_manager_get ())
	 *
	 * Returns: a `GdkDisplay`, or %NULL if
	 *     there is no default display
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
	 * If opening the display fails, `NULL` is returned.
	 *
	 * Params:
	 *     displayName = the name of the display to open
	 *
	 * Returns: a `GdkDisplay`
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
	 * Closes the connection to the windowing system for the given display.
	 *
	 * This cleans up associated resources.
	 */
	public void close()
	{
		gdk_display_close(gdkDisplay);
	}

	/**
	 * Creates a new `GdkGLContext` for the `GdkDisplay`.
	 *
	 * The context is disconnected from any particular surface or surface
	 * and cannot be used to draw to any surface. It can only be used to
	 * draw to non-surface framebuffers like textures.
	 *
	 * If the creation of the `GdkGLContext` failed, @error will be set.
	 * Before using the returned `GdkGLContext`, you will need to
	 * call [method@Gdk.GLContext.make_current] or [method@Gdk.GLContext.realize].
	 *
	 * Returns: the newly created `GdkGLContext`
	 *
	 * Since: 4.6
	 *
	 * Throws: GException on failure.
	 */
	public GLContext createGlContext()
	{
		GError* err = null;

		auto __p = gdk_display_create_gl_context(gdkDisplay, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GLContext)(cast(GdkGLContext*) __p, true);
	}

	/**
	 * Returns %TRUE if there is an ongoing grab on @device for @display.
	 *
	 * Params:
	 *     device = a `GdkDevice`
	 *
	 * Returns: %TRUE if there is a grab in effect for @device.
	 */
	public bool deviceIsGrabbed(Device device)
	{
		return gdk_display_device_is_grabbed(gdkDisplay, (device is null) ? null : device.getDeviceStruct()) != 0;
	}

	/**
	 * Flushes any requests queued for the windowing system.
	 *
	 * This happens automatically when the main loop blocks waiting for new events,
	 * but if your application is drawing without returning control to the main loop,
	 * you may need to call this function explicitly. A common case where this function
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
	 * Returns a `GdkAppLaunchContext` suitable for launching
	 * applications on the given display.
	 *
	 * Returns: a new `GdkAppLaunchContext` for @display
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
	 * Returns the default `GdkSeat` for this display.
	 *
	 * Note that a display may not have a seat. In this case,
	 * this function will return %NULL.
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
	 * Gets the monitor in which the largest area of @surface
	 * resides.
	 *
	 * Returns a monitor close to @surface if it is outside
	 * of all monitors.
	 *
	 * Params:
	 *     surface = a `GdkSurface`
	 *
	 * Returns: the monitor with the largest
	 *     overlap with @surface
	 */
	public MonitorGdk getMonitorAtSurface(Surface surface)
	{
		auto __p = gdk_display_get_monitor_at_surface(gdkDisplay, (surface is null) ? null : surface.getSurfaceStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MonitorGdk)(cast(GdkMonitor*) __p);
	}

	/**
	 * Gets the list of monitors associated with this display.
	 *
	 * Subsequent calls to this function will always return the
	 * same list for the same display.
	 *
	 * You can listen to the GListModel::items-changed signal on
	 * this list to monitor changes to the monitor of this display.
	 *
	 * Returns: a `GListModel` of `GdkMonitor`
	 */
	public ListModelIF getMonitors()
	{
		auto __p = gdk_display_get_monitors(gdkDisplay);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ListModelIF)(cast(GListModel*) __p);
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
	 * Gets the clipboard used for the primary selection.
	 *
	 * On backends where the primary clipboard is not supported natively,
	 * GDK emulates this clipboard locally.
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
	 * Returns: the startup notification ID for @display
	 */
	public string getStartupNotificationId()
	{
		return Str.toString(gdk_display_get_startup_notification_id(gdkDisplay));
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
	 * their alpha channel drawn correctly on the screen.
	 *
	 * Check [method@Gdk.Display.is_rgba] for whether the display
	 * supports an alpha channel.
	 *
	 * On X11 this function returns whether a compositing manager is
	 * compositing on @display.
	 *
	 * On modern displays, this value is always %TRUE.
	 *
	 * Returns: Whether surfaces with RGBA visuals can reasonably
	 *     be expected to have their alpha channels drawn correctly
	 *     on the screen.
	 */
	public bool isComposited()
	{
		return gdk_display_is_composited(gdkDisplay) != 0;
	}

	/**
	 * Returns whether surfaces on this @display are created with an
	 * alpha channel.
	 *
	 * Even if a %TRUE is returned, it is possible that the
	 * surface’s alpha channel won’t be honored when displaying the
	 * surface on the screen: in particular, for X an appropriate
	 * windowing manager and compositing manager must be running to
	 * provide appropriate display. Use [method@Gdk.Display.is_composited]
	 * to check if that is the case.
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
	 *     list of seats known to the `GdkDisplay`
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
	 * Returns the keyvals bound to @keycode.
	 *
	 * The Nth `GdkKeymapKey` in @keys is bound to the Nth keyval in @keyvals.
	 *
	 * When a keycode is pressed by the user, the keyval from
	 * this list of entries is selected by considering the effective
	 * keyboard group and level.
	 *
	 * Free the returned arrays with g_free().
	 *
	 * Params:
	 *     keycode = a keycode
	 *     keys = return
	 *         location for array of `GdkKeymapKey`
	 *     keyvals = return
	 *         location for array of keyvals
	 *
	 * Returns: %TRUE if there were any entries
	 */
	public bool mapKeycode(uint keycode, out GdkKeymapKey[] keys, out uint[] keyvals)
	{
		GdkKeymapKey* outkeys;
		uint* outkeyvals;
		int nEntries;

		auto __p = gdk_display_map_keycode(gdkDisplay, keycode, &outkeys, &outkeyvals, &nEntries) != 0;

		keys = outkeys[0 .. nEntries];
		keyvals = outkeyvals[0 .. nEntries];

		return __p;
	}

	/**
	 * Obtains a list of keycode/group/level combinations that will
	 * generate @keyval.
	 *
	 * Groups and levels are two kinds of keyboard mode; in general, the level
	 * determines whether the top or bottom symbol on a key is used, and the
	 * group determines whether the left or right symbol is used.
	 *
	 * On US keyboards, the shift key changes the keyboard level, and there
	 * are no groups. A group switch key might convert a keyboard between
	 * Hebrew to English modes, for example.
	 *
	 * `GdkEventKey` contains a %group field that indicates the active
	 * keyboard group. The level is computed from the modifier mask.
	 *
	 * The returned array should be freed with g_free().
	 *
	 * Params:
	 *     keyval = a keyval, such as %GDK_KEY_a, %GDK_KEY_Up, %GDK_KEY_Return, etc.
	 *     keys = return location
	 *         for an array of `GdkKeymapKey`
	 *
	 * Returns: %TRUE if keys were found and returned
	 */
	public bool mapKeyval(uint keyval, out GdkKeymapKey[] keys)
	{
		GdkKeymapKey* outkeys;
		int nKeys;

		auto __p = gdk_display_map_keyval(gdkDisplay, keyval, &outkeys, &nKeys) != 0;

		keys = outkeys[0 .. nKeys];

		return __p;
	}

	/**
	 * Indicates to the GUI environment that the application has
	 * finished loading, using a given identifier.
	 *
	 * GTK will call this function automatically for [class@Gtk.Window]
	 * with custom startup-notification identifier unless
	 * [method@Gtk.Window.set_auto_startup_notification]
	 * is called to disable that feature.
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
	 * Checks that OpenGL is available for @self and ensures that it is
	 * properly initialized.
	 * When this fails, an @error will be set describing the error and this
	 * function returns %FALSE.
	 *
	 * Note that even if this function succeeds, creating a `GdkGLContext`
	 * may still fail.
	 *
	 * This function is idempotent. Calling it multiple times will just
	 * return the same value or error.
	 *
	 * You never need to call this function, GDK will call it automatically
	 * as needed. But you can use it as a check when setting up code that
	 * might make use of OpenGL.
	 *
	 * Returns: %TRUE if the display supports OpenGL
	 *
	 * Since: 4.4
	 *
	 * Throws: GException on failure.
	 */
	public bool prepareGl()
	{
		GError* err = null;

		auto __p = gdk_display_prepare_gl(gdkDisplay, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Appends the given event onto the front of the event
	 * queue for @display.
	 *
	 * This function is only useful in very special situations
	 * and should not be used by applications.
	 *
	 * Params:
	 *     event = a `GdkEvent`
	 */
	public void putEvent(Event event)
	{
		gdk_display_put_event(gdkDisplay, (event is null) ? null : event.getEventStruct());
	}

	/**
	 * Returns %TRUE if the display supports input shapes.
	 *
	 * This means that [method@Gdk.Surface.set_input_region] can
	 * be used to modify the input shape of surfaces on @display.
	 *
	 * On modern displays, this value is always %TRUE.
	 *
	 * Returns: %TRUE if surfaces with modified input shape are supported
	 */
	public bool supportsInputShapes()
	{
		return gdk_display_supports_input_shapes(gdkDisplay) != 0;
	}

	/**
	 * Flushes any requests queued for the windowing system and waits until all
	 * requests have been handled.
	 *
	 * This is often used for making sure that the display is synchronized
	 * with the current state of the program. Calling [method@Gdk.Display.sync]
	 * before [method@GdkX11.Display.error_trap_pop] makes sure that any errors
	 * generated from earlier requests are handled before the error trap is removed.
	 *
	 * This is most useful for X11. On windowing systems where requests are
	 * handled synchronously, this function will do nothing.
	 */
	public void sync()
	{
		gdk_display_sync(gdkDisplay);
	}

	/**
	 * Translates the contents of a `GdkEventKey` into a keyval, effective group,
	 * and level.
	 *
	 * Modifiers that affected the translation and are thus unavailable for
	 * application use are returned in @consumed_modifiers.
	 *
	 * The @effective_group is the group that was actually used for the
	 * translation; some keys such as Enter are not affected by the active
	 * keyboard group. The @level is derived from @state.
	 *
	 * @consumed_modifiers gives modifiers that should be masked out
	 * from @state when comparing this key press to a keyboard shortcut.
	 * For instance, on a US keyboard, the `plus` symbol is shifted, so
	 * when comparing a key press to a `<Control>plus` accelerator `<Shift>`
	 * should be masked out.
	 *
	 * This function should rarely be needed, since `GdkEventKey` already
	 * contains the translated keyval. It is exported for the benefit of
	 * virtualized test environments.
	 *
	 * Params:
	 *     keycode = a keycode
	 *     state = a modifier state
	 *     group = active keyboard group
	 *     keyval = return location for keyval
	 *     effectiveGroup = return location for effective group
	 *     level = return location for level
	 *     consumed = return location for modifiers that were used
	 *         to determine the group or level
	 *
	 * Returns: %TRUE if there was a keyval bound to keycode/state/group.
	 */
	public bool translateKey(uint keycode, GdkModifierType state, int group, out uint keyval, out int effectiveGroup, out int level, out GdkModifierType consumed)
	{
		return gdk_display_translate_key(gdkDisplay, keycode, state, group, &keyval, &effectiveGroup, &level, &consumed) != 0;
	}

	/**
	 * Emitted when the connection to the windowing system for @display is closed.
	 *
	 * Params:
	 *     isError = %TRUE if the display was closed due to an error
	 */
	gulong addOnClosed(void delegate(bool, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the connection to the windowing system for @display is opened.
	 */
	gulong addOnOpened(void delegate(Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "opened", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a new seat is made known to the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just added
	 */
	gulong addOnSeatAdded(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "seat-added", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a seat is removed by the windowing system.
	 *
	 * Params:
	 *     seat = the seat that was just removed
	 */
	gulong addOnSeatRemoved(void delegate(Seat, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "seat-removed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever a setting changes its value.
	 *
	 * Params:
	 *     setting = the name of the setting that changed
	 */
	gulong addOnSettingChanged(void delegate(string, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "setting-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
