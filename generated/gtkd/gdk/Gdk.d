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


module gdk.Gdk;

private import gdk.Cursor;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
public  import gtkc.gdktypes;


/** */
public struct Gdk
{

	/**
	 * Emits a short beep on the default display.
	 */
	public static void beep()
	{
		gdk_beep();
	}

	/**
	 * Removes an error trap pushed with gdk_error_trap_push().
	 * May block until an error has been definitively received
	 * or not received from the X server. gdk_error_trap_pop_ignored()
	 * is preferred if you don’t need to know whether an error
	 * occurred, because it never has to block. If you don't
	 * need the return value of gdk_error_trap_pop(), use
	 * gdk_error_trap_pop_ignored().
	 *
	 * Prior to GDK 3.0, this function would not automatically
	 * sync for you, so you had to gdk_flush() if your last
	 * call to Xlib was not a blocking round trip.
	 *
	 * Returns: X error code or 0 on success
	 */
	public static int errorTrapPop()
	{
		return gdk_error_trap_pop();
	}

	/**
	 * Removes an error trap pushed with gdk_error_trap_push(), but
	 * without bothering to wait and see whether an error occurred.  If an
	 * error arrives later asynchronously that was triggered while the
	 * trap was pushed, that error will be ignored.
	 *
	 * Since: 3.0
	 */
	public static void errorTrapPopIgnored()
	{
		gdk_error_trap_pop_ignored();
	}

	/**
	 * This function allows X errors to be trapped instead of the normal
	 * behavior of exiting the application. It should only be used if it
	 * is not possible to avoid the X error in any other way. Errors are
	 * ignored on all #GdkDisplay currently known to the
	 * #GdkDisplayManager. If you don’t care which error happens and just
	 * want to ignore everything, pop with gdk_error_trap_pop_ignored().
	 * If you need the error code, use gdk_error_trap_pop() which may have
	 * to block and wait for the error to arrive from the X server.
	 *
	 * This API exists on all platforms but only does anything on X.
	 *
	 * You can use gdk_x11_display_error_trap_push() to ignore errors
	 * on only a single display.
	 *
	 * ## Trapping an X error
	 *
	 * |[<!-- language="C" -->
	 * gdk_error_trap_push ();
	 *
	 * // ... Call the X function which may cause an error here ...
	 *
	 *
	 * if (gdk_error_trap_pop ())
	 * {
	 * // ... Handle the error here ...
	 * }
	 * ]|
	 */
	public static void errorTrapPush()
	{
		gdk_error_trap_push();
	}

	/**
	 * Flushes the output buffers of all display connections and waits
	 * until all requests have been processed.
	 * This is rarely needed by applications.
	 */
	public static void flush()
	{
		gdk_flush();
	}

	/**
	 * Gets the name of the display, which usually comes from the
	 * `DISPLAY` environment variable or the
	 * `--display` command line option.
	 *
	 * Deprecated: Call gdk_display_get_name (gdk_display_get_default ()))
	 * instead.
	 *
	 * Returns: the name of the display.
	 */
	public static string getDisplay()
	{
		auto retStr = gdk_get_display();

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the display name specified in the command line arguments passed
	 * to gdk_init() or gdk_parse_args(), if any.
	 *
	 * Returns: the display name, if specified explicitly,
	 *     otherwise %NULL this string is owned by GTK+ and must not be
	 *     modified or freed.
	 *
	 * Since: 2.2
	 */
	public static string getDisplayArgName()
	{
		return Str.toString(gdk_get_display_arg_name());
	}

	/**
	 * Gets the program class. Unless the program class has explicitly
	 * been set with gdk_set_program_class() or with the `--class`
	 * commandline option, the default value is the program name (determined
	 * with g_get_prgname()) with the first character converted to uppercase.
	 *
	 * Returns: the program class.
	 */
	public static string getProgramClass()
	{
		return Str.toString(gdk_get_program_class());
	}

	/**
	 * Initializes the GDK library and connects to the windowing system.
	 * If initialization fails, a warning message is output and the application
	 * terminates with a call to `exit(1)`.
	 *
	 * Any arguments used by GDK are removed from the array and @argc and @argv
	 * are updated accordingly.
	 *
	 * GTK+ initializes GDK in gtk_init() and so this function is not usually
	 * needed by GTK+ applications.
	 *
	 * Params:
	 *     argv = the array of command line arguments.
	 */
	public static void init(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		gdk_init(&argc, &outargv);

		argv = Str.toStringArray(outargv, argc);
	}

	/**
	 * Initializes the GDK library and connects to the windowing system,
	 * returning %TRUE on success.
	 *
	 * Any arguments used by GDK are removed from the array and @argc and @argv
	 * are updated accordingly.
	 *
	 * GTK+ initializes GDK in gtk_init() and so this function is not usually
	 * needed by GTK+ applications.
	 *
	 * Params:
	 *     argv = the array of command line arguments.
	 *
	 * Returns: %TRUE if initialization succeeded.
	 */
	public static bool initCheck(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		auto p = gdk_init_check(&argc, &outargv) != 0;

		argv = Str.toStringArray(outargv, argc);

		return p;
	}

	/**
	 * Grabs the keyboard so that all events are passed to this
	 * application until the keyboard is ungrabbed with gdk_keyboard_ungrab().
	 * This overrides any previous keyboard grab by this client.
	 *
	 * If you set up anything at the time you take the grab that needs to be cleaned
	 * up when the grab ends, you should handle the #GdkEventGrabBroken events that
	 * are emitted when the grab ends unvoluntarily.
	 *
	 * Deprecated: Use gdk_device_grab() instead.
	 *
	 * Params:
	 *     window = the #GdkWindow which will own the grab (the grab window).
	 *     ownerEvents = if %FALSE then all keyboard events are reported with respect to
	 *         @window. If %TRUE then keyboard events for this application are
	 *         reported as normal, but keyboard events outside this application
	 *         are reported with respect to @window. Both key press and key
	 *         release events are always reported, independant of the event mask
	 *         set by the application.
	 *     time = a timestamp from a #GdkEvent, or %GDK_CURRENT_TIME if no timestamp is
	 *         available.
	 *
	 * Returns: %GDK_GRAB_SUCCESS if the grab was successful.
	 */
	public static GdkGrabStatus keyboardGrab(Window window, bool ownerEvents, uint time)
	{
		return gdk_keyboard_grab((window is null) ? null : window.getWindowStruct(), ownerEvents, time);
	}

	/**
	 * Ungrabs the keyboard on the default display, if it is grabbed by this
	 * application.
	 *
	 * Deprecated: Use gdk_device_ungrab(), together with gdk_device_grab()
	 * instead.
	 *
	 * Params:
	 *     time = a timestamp from a #GdkEvent, or %GDK_CURRENT_TIME if no
	 *         timestamp is available.
	 */
	public static void keyboardUngrab(uint time)
	{
		gdk_keyboard_ungrab(time);
	}

	/**
	 * Indicates to the GUI environment that the application has finished
	 * loading. If the applications opens windows, this function is
	 * normally called after opening the application’s initial set of
	 * windows.
	 *
	 * GTK+ will call this function automatically after opening the first
	 * #GtkWindow unless gtk_window_set_auto_startup_notification() is called
	 * to disable that feature.
	 *
	 * Since: 2.2
	 */
	public static void notifyStartupComplete()
	{
		gdk_notify_startup_complete();
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
	 * Since: 2.12
	 */
	public static void notifyStartupCompleteWithId(string startupId)
	{
		gdk_notify_startup_complete_with_id(Str.toStringz(startupId));
	}

	/**
	 * Parse command line arguments, and store for future
	 * use by calls to gdk_display_open().
	 *
	 * Any arguments used by GDK are removed from the array and @argc and @argv are
	 * updated accordingly.
	 *
	 * You shouldn’t call this function explicitly if you are using
	 * gtk_init(), gtk_init_check(), gdk_init(), or gdk_init_check().
	 *
	 * Params:
	 *     argv = the array of command line arguments.
	 *
	 * Since: 2.2
	 */
	public static void parseArgs(ref string[] argv)
	{
		int argc = cast(int)argv.length;
		char** outargv = Str.toStringzArray(argv);

		gdk_parse_args(&argc, &outargv);

		argv = Str.toStringArray(outargv, argc);
	}

	/**
	 * Grabs the pointer (usually a mouse) so that all events are passed to this
	 * application until the pointer is ungrabbed with gdk_pointer_ungrab(), or
	 * the grab window becomes unviewable.
	 * This overrides any previous pointer grab by this client.
	 *
	 * Pointer grabs are used for operations which need complete control over mouse
	 * events, even if the mouse leaves the application.
	 * For example in GTK+ it is used for Drag and Drop, for dragging the handle in
	 * the #GtkHPaned and #GtkVPaned widgets.
	 *
	 * Note that if the event mask of an X window has selected both button press and
	 * button release events, then a button press event will cause an automatic
	 * pointer grab until the button is released.
	 * X does this automatically since most applications expect to receive button
	 * press and release events in pairs.
	 * It is equivalent to a pointer grab on the window with @owner_events set to
	 * %TRUE.
	 *
	 * If you set up anything at the time you take the grab that needs to be cleaned
	 * up when the grab ends, you should handle the #GdkEventGrabBroken events that
	 * are emitted when the grab ends unvoluntarily.
	 *
	 * Deprecated: Use gdk_device_grab() instead.
	 *
	 * Params:
	 *     window = the #GdkWindow which will own the grab (the grab window).
	 *     ownerEvents = if %FALSE then all pointer events are reported with respect to
	 *         @window and are only reported if selected by @event_mask. If %TRUE then pointer
	 *         events for this application are reported as normal, but pointer events outside
	 *         this application are reported with respect to @window and only if selected by
	 *         @event_mask. In either mode, unreported events are discarded.
	 *     eventMask = specifies the event mask, which is used in accordance with
	 *         @owner_events. Note that only pointer events (i.e. button and motion events)
	 *         may be selected.
	 *     confineTo = If non-%NULL, the pointer will be confined to this
	 *         window during the grab. If the pointer is outside @confine_to, it will
	 *         automatically be moved to the closest edge of @confine_to and enter
	 *         and leave events will be generated as necessary.
	 *     cursor = the cursor to display while the grab is active. If this is %NULL then
	 *         the normal cursors are used for @window and its descendants, and the cursor
	 *         for @window is used for all other windows.
	 *     time = the timestamp of the event which led to this pointer grab. This usually
	 *         comes from a #GdkEventButton struct, though %GDK_CURRENT_TIME can be used if
	 *         the time isn’t known.
	 *
	 * Returns: %GDK_GRAB_SUCCESS if the grab was successful.
	 */
	public static GdkGrabStatus pointerGrab(Window window, bool ownerEvents, GdkEventMask eventMask, Window confineTo, Cursor cursor, uint time)
	{
		return gdk_pointer_grab((window is null) ? null : window.getWindowStruct(), ownerEvents, eventMask, (confineTo is null) ? null : confineTo.getWindowStruct(), (cursor is null) ? null : cursor.getCursorStruct(), time);
	}

	/**
	 * Returns %TRUE if the pointer on the default display is currently
	 * grabbed by this application.
	 *
	 * Note that this does not take the inmplicit pointer grab on button
	 * presses into account.
	 *
	 * Deprecated: Use gdk_display_device_is_grabbed() instead.
	 *
	 * Returns: %TRUE if the pointer is currently grabbed by this application.
	 */
	public static bool pointerIsGrabbed()
	{
		return gdk_pointer_is_grabbed() != 0;
	}

	/**
	 * Ungrabs the pointer on the default display, if it is grabbed by this
	 * application.
	 *
	 * Deprecated: Use gdk_device_ungrab(), together with gdk_device_grab()
	 * instead.
	 *
	 * Params:
	 *     time = a timestamp from a #GdkEvent, or %GDK_CURRENT_TIME if no
	 *         timestamp is available.
	 */
	public static void pointerUngrab(uint time)
	{
		gdk_pointer_ungrab(time);
	}

	/**
	 * Sets a list of backends that GDK should try to use.
	 *
	 * This can be be useful if your application does not
	 * work with certain GDK backends.
	 *
	 * By default, GDK tries all included backends.
	 *
	 * For example,
	 * |[<!-- language="C" -->
	 * gdk_set_allowed_backends ("wayland,quartz,*");
	 * ]|
	 * instructs GDK to try the Wayland backend first,
	 * followed by the Quartz backend, and then all
	 * others.
	 *
	 * If the `GDK_BACKEND` environment variable
	 * is set, it determines what backends are tried in what
	 * order, while still respecting the set of allowed backends
	 * that are specified by this function.
	 *
	 * The possible backend names are x11, win32, quartz,
	 * broadway, wayland. You can also include a * in the
	 * list to try all remaining backends.
	 *
	 * This call must happen prior to gdk_display_open(),
	 * gtk_init(), gtk_init_with_args() or gtk_init_check()
	 * in order to take effect.
	 *
	 * Params:
	 *     backends = a comma-separated list of backends
	 *
	 * Since: 3.10
	 */
	public static void setAllowedBackends(string backends)
	{
		gdk_set_allowed_backends(Str.toStringz(backends));
	}

	/**
	 * Set the double click time for the default display. See
	 * gdk_display_set_double_click_time().
	 * See also gdk_display_set_double_click_distance().
	 * Applications should not set this, it is a
	 * global user-configured setting.
	 *
	 * Params:
	 *     msec = double click time in milliseconds (thousandths of a second)
	 */
	public static void setDoubleClickTime(uint msec)
	{
		gdk_set_double_click_time(msec);
	}

	/**
	 * Sets the program class. The X11 backend uses the program class to set
	 * the class name part of the `WM_CLASS` property on
	 * toplevel windows; see the ICCCM.
	 *
	 * The program class can still be overridden with the --class command
	 * line option.
	 *
	 * Params:
	 *     programClass = a string.
	 */
	public static void setProgramClass(string programClass)
	{
		gdk_set_program_class(Str.toStringz(programClass));
	}
}
