/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = gdk-General.html
 * outPack = gdk
 * outFile = Gdk
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Gdk
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Window
 * 	- gdk.Cursor
 * structWrap:
 * 	- GdkCursor* -> Cursor
 * 	- GdkWindow* -> Window
 * local aliases:
 */

module gdk.Gdk;

private import gtkc.gdktypes;

private import gtkc.gdk;

private import glib.Str;
private import gdk.Window;
private import gdk.Cursor;

/**
 * Description
 * This section describes the GDK initialization functions and miscellaneous
 * utility functions.
 */
public class Gdk
{
	
	/**
	 */
	
	/**
	 * Initializes the GDK library and connects to the X server.
	 * If initialization fails, a warning message is output and the application
	 * terminates with a call to exit(1).
	 * Any arguments used by GDK are removed from the array and argc and argv are
	 * updated accordingly.
	 * GTK+ initializes GDK in gtk_init() and so this function is not usually needed
	 * by GTK+ applications.
	 * argc:
	 * the number of command line arguments.
	 * argv:
	 * the array of command line arguments.
	 */
	public static void init(int* argc, char*** argv)
	{
		// void gdk_init (gint *argc,  gchar ***argv);
		gdk_init(argc, argv);
	}
	
	/**
	 * Initializes the GDK library and connects to the X server, returning TRUE on
	 * success.
	 * Any arguments used by GDK are removed from the array and argc and argv are
	 * updated accordingly.
	 * GTK+ initializes GDK in gtk_init() and so this function is not usually needed
	 * by GTK+ applications.
	 * argc:
	 * the number of command line arguments.
	 * argv:
	 * the array of command line arguments.
	 * Returns:
	 * TRUE if initialization succeeded.
	 */
	public static int initCheck(int* argc, char*** argv)
	{
		// gboolean gdk_init_check (gint *argc,  gchar ***argv);
		return gdk_init_check(argc, argv);
	}
	
	/**
	 * Parse command line arguments, and store for future
	 * use by calls to gdk_display_open().
	 * Any arguments used by GDK are removed from the array and argc and argv are
	 * updated accordingly.
	 * You shouldn't call this function explicitely if you are using
	 * gtk_init(), gtk_init_check(), gdk_init(), or gdk_init_check().
	 * argc:
	 *  the number of command line arguments.
	 * argv:
	 *  the array of command line arguments.
	 * Since 2.2
	 */
	public static void parseArgs(int* argc, char*** argv)
	{
		// void gdk_parse_args (gint *argc,  gchar ***argv);
		gdk_parse_args(argc, argv);
	}
	
	/**
	 * Gets the display name specified in the command line arguments passed
	 * to gdk_init() or gdk_parse_args(), if any.
	 * Returns:
	 *  the display name, if specified explicitely, otherwise NULL
	 *  this string is owned by GTK+ and must not be modified or freed.
	 * Since 2.2
	 */
	public static char[] getDisplayArgName()
	{
		// const gchar* gdk_get_display_arg_name (void);
		return Str.toString(gdk_get_display_arg_name() );
	}
	
	/**
	 * Initializes the support for internationalization by calling the setlocale()
	 * system call. This function is called by gtk_set_locale() and so GTK+
	 * applications should use that instead.
	 * The locale to use is determined by the LANG environment variable,
	 * so to run an application in a certain locale you can do something like this:
	 *  export LANG="fr"
	 *  ... run application ...
	 * If the locale is not supported by X then it is reset to the standard "C"
	 * locale.
	 * Returns:
	 * the resulting locale.
	 */
	public static char[] setLocale()
	{
		// gchar* gdk_set_locale (void);
		return Str.toString(gdk_set_locale() );
	}
	
	/**
	 * Sets the SM_CLIENT_ID property on the application's leader window so that
	 * the window manager can save the application's state using the X11R6 ICCCM
	 * session management protocol.
	 * See the X Session Management Library documentation for more information on
	 * session management and the Inter-Client Communication Conventions Manual
	 * (ICCCM) for information on the WM_CLIENT_LEADER property.
	 * (Both documents are part of the X Window System distribution.)
	 * sm_client_id:
	 *  the client id assigned by the session manager when the
	 *  connection was opened, or NULL to remove the property.
	 */
	public static void setSmClientId(char[] smClientId)
	{
		// void gdk_set_sm_client_id (const gchar *sm_client_id);
		gdk_set_sm_client_id(Str.toStringz(smClientId));
	}
	
	/**
	 * Warning
	 * gdk_exit is deprecated and should not be used in newly-written code.
	 * Exits the application using the exit() system call.
	 * This routine is provided mainly for backwards compatibility, since it used to
	 * perform tasks necessary to exit the application cleanly. Those tasks are now
	 * performed in a function which is automatically called on exit (via the use
	 * of g_atexit()).
	 * error_code:
	 * the error code to pass to the exit() call.
	 */
	public static void exit(int errorCode)
	{
		// void gdk_exit (gint error_code);
		gdk_exit(errorCode);
	}
	
	/**
	 * Indicates to the GUI environment that the application has finished
	 * loading. If the applications opens windows, this function is
	 * normally called after opening the application's initial set of
	 * windows.
	 * GTK+ will call this function automatically after opening the first
	 * GtkWindow unless gtk_window_set_auto_startup_notification() is called
	 * to disable that feature.
	 * Since 2.2
	 */
	public static void notifyStartupComplete()
	{
		// void gdk_notify_startup_complete (void);
		gdk_notify_startup_complete();
	}
	
	/**
	 * Gets the program class. Unless the program class has explicitly
	 * been set with gdk_set_program_class() or with the --class
	 * commandline option, the default value is the program name (determined
	 * with g_get_prgname()) with the first character converted to uppercase.
	 * Returns:
	 * the program class.
	 */
	public static char[] getProgramClass()
	{
		// const char* gdk_get_program_class (void);
		return Str.toString(gdk_get_program_class() );
	}
	
	/**
	 * Sets the program class. The X11 backend uses the program class to set
	 * the class name part of the WM_CLASS property on
	 * toplevel windows; see the ICCCM.
	 * program_class:
	 * a string.
	 */
	public static void setProgramClass(char[] programClass)
	{
		// void gdk_set_program_class (const char *program_class);
		gdk_set_program_class(Str.toStringz(programClass));
	}
	
	/**
	 * Gets the name of the display, which usually comes from the DISPLAY
	 * environment variable or the --display command line option.
	 * Returns:
	 * the name of the display.
	 */
	public static char[] getDisplay()
	{
		// gchar* gdk_get_display (void);
		return Str.toString(gdk_get_display() );
	}
	
	/**
	 * Flushes the X output buffer and waits until all requests have been processed
	 * by the server. This is rarely needed by applications. It's main use is for
	 * trapping X errors with gdk_error_trap_push() and gdk_error_trap_pop().
	 */
	public static void flush()
	{
		// void gdk_flush (void);
		gdk_flush();
	}
	
	/**
	 * Returns the width of the default screen in pixels.
	 * Returns:
	 *  the width of the default screen in pixels.
	 */
	public static int screenWidth()
	{
		// gint gdk_screen_width (void);
		return gdk_screen_width();
	}
	
	/**
	 * Returns the height of the default screen in pixels.
	 * Returns:
	 *  the height of the default screen in pixels.
	 */
	public static int screenHeight()
	{
		// gint gdk_screen_height (void);
		return gdk_screen_height();
	}
	
	/**
	 * Returns the width of the default screen in millimeters.
	 * Note that on many X servers this value will not be correct.
	 * Returns:
	 *  the width of the default screen in millimeters,
	 * though it is not always correct.
	 */
	public static int screenWidthMm()
	{
		// gint gdk_screen_width_mm (void);
		return gdk_screen_width_mm();
	}
	
	/**
	 * Returns the height of the default screen in millimeters.
	 * Note that on many X servers this value will not be correct.
	 * Returns:
	 *  the height of the default screen in millimeters,
	 * though it is not always correct.
	 */
	public static int screenHeightMm()
	{
		// gint gdk_screen_height_mm (void);
		return gdk_screen_height_mm();
	}
	
	/**
	 * Grabs the pointer (usually a mouse) so that all events are passed to this
	 * application until the pointer is ungrabbed with gdk_pointer_ungrab(), or
	 * the grab window becomes unviewable.
	 * This overrides any previous pointer grab by this client.
	 * Pointer grabs are used for operations which need complete control over mouse
	 * events, even if the mouse leaves the application.
	 * For example in GTK+ it is used for Drag and Drop, for dragging the handle in
	 * the GtkHPaned and GtkVPaned widgets, and for resizing columns in GtkCList
	 * widgets.
	 * Note that if the event mask of an X window has selected both button press and
	 * button release events, then a button press event will cause an automatic
	 * pointer grab until the button is released.
	 * X does this automatically since most applications expect to receive button
	 * press and release events in pairs.
	 * It is equivalent to a pointer grab on the window with owner_events set to
	 * TRUE.
	 * If you set up anything at the time you take the grab that needs to be cleaned
	 * up when the grab ends, you should handle the GdkEventGrabBroken events that
	 * are emitted when the grab ends unvoluntarily.
	 * window:
	 * the GdkWindow which will own the grab (the grab window).
	 * owner_events:
	 * if FALSE then all pointer events are reported with respect to
	 * window and are only reported if selected by event_mask. If TRUE then pointer
	 * events for this application are reported as normal, but pointer events outside
	 * this application are reported with respect to window and only if selected by
	 * event_mask. In either mode, unreported events are discarded.
	 * event_mask:
	 * specifies the event mask, which is used in accordance with
	 * owner_events. Note that only pointer events (i.e. button and motion events)
	 *  may be selected.
	 * confine_to:
	 * If non-NULL, the pointer will be confined to this
	 * window during the grab. If the pointer is outside confine_to, it will
	 * automatically be moved to the closest edge of confine_to and enter
	 * and leave events will be generated as necessary.
	 * cursor:
	 * the cursor to display while the grab is active. If this is NULL then
	 * the normal cursors are used for window and its descendants, and the cursor
	 * for window is used for all other windows.
	 * time_:
	 * the timestamp of the event which led to this pointer grab. This usually
	 * comes from a GdkEventButton struct, though GDK_CURRENT_TIME can be used if
	 * the time isn't known.
	 * Returns:
	 * GDK_GRAB_SUCCESS if the grab was successful.
	 */
	public static GdkGrabStatus pointerGrab(Window window, int ownerEvents, GdkEventMask eventMask, Window confineTo, Cursor cursor, uint time)
	{
		// GdkGrabStatus gdk_pointer_grab (GdkWindow *window,  gboolean owner_events,  GdkEventMask event_mask,  GdkWindow *confine_to,  GdkCursor *cursor,  guint32 time_);
		return gdk_pointer_grab((window is null) ? null : window.getWindowStruct(), ownerEvents, eventMask, (confineTo is null) ? null : confineTo.getWindowStruct(), (cursor is null) ? null : cursor.getCursorStruct(), time);
	}
	
	
	/**
	 * Ungrabs the pointer, if it is grabbed by this application.
	 * time_:
	 *  a timestamp from a GdkEvent, or GDK_CURRENT_TIME if no
	 *  timestamp is available.
	 */
	public static void pointerUngrab(uint time)
	{
		// void gdk_pointer_ungrab (guint32 time_);
		gdk_pointer_ungrab(time);
	}
	
	/**
	 * Returns TRUE if the pointer is currently grabbed by this application.
	 * Note that this does not take the inmplicit pointer grab on button
	 * presses into account.
	 * Returns:
	 *  TRUE if the pointer is currently grabbed by this application.*
	 */
	public static int pointerIsGrabbed()
	{
		// gboolean gdk_pointer_is_grabbed (void);
		return gdk_pointer_is_grabbed();
	}
	
	/**
	 * Set the double click time for the default display. See
	 * gdk_display_set_double_click_time().
	 * See also gdk_display_set_double_click_distance().
	 * Applications should not set this, it is a
	 * global user-configured setting.
	 * msec:
	 *  double click time in milliseconds (thousandths of a second)
	 */
	public static void setDoubleClickTime(uint msec)
	{
		// void gdk_set_double_click_time (guint msec);
		gdk_set_double_click_time(msec);
	}
	
	/**
	 * Grabs the keyboard so that all events are passed to this
	 * application until the keyboard is ungrabbed with gdk_keyboard_ungrab().
	 * This overrides any previous keyboard grab by this client.
	 * If you set up anything at the time you take the grab that needs to be cleaned
	 * up when the grab ends, you should handle the GdkEventGrabBroken events that
	 * are emitted when the grab ends unvoluntarily.
	 * window:
	 * the GdkWindow which will own the grab (the grab window).
	 * owner_events:
	 * if FALSE then all keyboard events are reported with respect to
	 * window. If TRUE then keyboard events for this application are reported as
	 * normal, but keyboard events outside this application are reported with respect
	 * to window. Both key press and key release events are always reported,
	 * independant of the event mask set by the application.
	 * time_:
	 * a timestamp from a GdkEvent, or GDK_CURRENT_TIME if no timestamp is
	 * available.
	 * Returns:
	 * GDK_GRAB_SUCCESS if the grab was successful.
	 */
	public static GdkGrabStatus keyboardGrab(Window window, int ownerEvents, uint time)
	{
		// GdkGrabStatus gdk_keyboard_grab (GdkWindow *window,  gboolean owner_events,  guint32 time_);
		return gdk_keyboard_grab((window is null) ? null : window.getWindowStruct(), ownerEvents, time);
	}
	
	/**
	 * Ungrabs the keyboard, if it is grabbed by this application.
	 * time_:
	 *  a timestamp from a GdkEvent, or GDK_CURRENT_TIME if no
	 *  timestamp is available.
	 */
	public static void keyboardUngrab(uint time)
	{
		// void gdk_keyboard_ungrab (guint32 time_);
		gdk_keyboard_ungrab(time);
	}
	
	/**
	 * Emits a short beep.
	 */
	public static void beep()
	{
		// void gdk_beep (void);
		gdk_beep();
	}
	
	/**
	 * Warning
	 * gdk_get_use_xshm is deprecated and should not be used in newly-written code.
	 * Returns TRUE if GDK will attempt to use the MIT-SHM shared memory extension.
	 * The shared memory extension is used for GdkImage, and consequently for
	 * GdkRGB.
	 * It enables much faster drawing by communicating with the X server through
	 * SYSV shared memory calls. However, it can only be used if the X client and
	 * server are on the same machine and the server supports it.
	 * Returns:
	 * TRUE if use of the MIT shared memory extension will be attempted.
	 */
	public static int getUseXshm()
	{
		// gboolean gdk_get_use_xshm (void);
		return gdk_get_use_xshm();
	}
	
	/**
	 * Warning
	 * gdk_set_use_xshm is deprecated and should not be used in newly-written code.
	 * Sets whether the use of the MIT shared memory extension should be attempted.
	 * This function is mainly for internal use. It is only safe for an application
	 * to set this to FALSE, since if it is set to TRUE and the server does not
	 * support the extension it may cause warning messages to be output.
	 * use_xshm:
	 * TRUE if use of the MIT shared memory extension should be attempted.
	 */
	public static void setUseXshm(int useXshm)
	{
		// void gdk_set_use_xshm (gboolean use_xshm);
		gdk_set_use_xshm(useXshm);
	}
	
	/**
	 * This function allows X errors to be trapped instead of the normal behavior
	 * of exiting the application. It should only be used if it is not possible to
	 * avoid the X error in any other way.
	 * Example1.Trapping an X error
	 *  gdk_error_trap_push ();
	 *  /+* ... Call the X function which may cause an error here ... +/
	 *  /+* Flush the X queue to catch errors now. +/
	 *  gdk_flush ();
	 *  if (gdk_error_trap_pop ())
	 *  {
		 *  /+* ... Handle the error here ... +/
	 *  }
	 */
	public static void errorTrapPush()
	{
		// void gdk_error_trap_push (void);
		gdk_error_trap_push();
	}
	
	/**
	 * Removes the X error trap installed with gdk_error_trap_push().
	 * Returns:
	 * the X error code, or 0 if no error occurred.
	 */
	public static int errorTrapPop()
	{
		// gint gdk_error_trap_pop (void);
		return gdk_error_trap_pop();
	}
	
	
	
}
