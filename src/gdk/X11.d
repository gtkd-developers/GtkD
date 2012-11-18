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
 * inFile  = gdk3-X-Window-System-Interaction.html
 * outPack = gdk
 * outFile = X11
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = X11
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_x11_
 * omit structs:
 * omit prefixes:
 * 	- gdkx_visual_get
 * 	- gdkx_colormap_get
 * 	- gdk_pixmap_foreign_new
 * 	- gdk_pixmap_foreign_new_for_display
 * 	- gdk_pixmap_foreign_new_for_screen
 * 	- gdk_window_foreign_new_for_display
 * 	- gdk_xid_table_lookup_for_display
 * 	- gdk_window_lookup_for_display
 * 	- gdk_x11_lookup_xdisplay
 * 	- gdk_net_wm_supports
 * 	- gdk_x11_screen_supports_net_wm_hint
 * 	- gdk_x11_screen_get_window_manager_name
 * 	- gdk_x11_screen_lookup_visual
 * 	- gdk_x11_display_get_user_time
 * 	- gdk_x11_colormap_foreign_new
 * 	- gdk_x11_colormap_get_xcolormap
 * 	- gdk_x11_colormap_get_xdisplay
 * 	- gdk_x11_cursor_get_xcursor
 * 	- gdk_x11_cursor_get_xdisplay
 * 	- gdk_x11_display_get_xdisplay
 * 	- gdk_x11_display_grab
 * 	- gdk_x11_display_ungrab
 * 	- gdk_x11_display_set_cursor_theme
 * 	- gdk_x11_register_standard_event_type
 * 	- gdk_x11_drawable_get_xdisplay
 * 	- gdk_x11_font_get_xdisplay
 * 	- gdk_x11_gc_get_xdisplay
 * 	- gdk_x11_gc_get_xgc
 * 	- gdk_x11_get_default_root_xwindow
 * 	- gdk_x11_get_default_xdisplay
 * 	- gdk_x11_image_get_xdisplay
 * 	- gdk_x11_image_get_ximage
 * 	- gdk_x11_screen_get_screen_number
 * 	- gdk_x11_screen_get_xscreen
 * 	- gdk_x11_visual_get_xvisual
 * 	- gdk_x11_atom_to_xatom
 * 	- gdk_x11_atom_to_xatom_for_display
 * 	- gdk_x11_xatom_to_atom
 * 	- gdk_x11_xatom_to_atom_for_display
 * 	- gdk_x11_get_xatom_by_name
 * 	- gdk_x11_get_xatom_by_name_for_display
 * 	- gdk_x11_get_xatom_name
 * 	- gdk_x11_get_xatom_name_for_display
 * 	- gdk_x11_window_foreign_new_for_display
 * 	- gdk_x11_window_lookup_for_display
 * omit code:
 * 	- gdk_x11_window_get_xid
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gdk.Device
 * 	- gdk.DeviceManager
 * 	- gdk.Display
 * 	- gdk.Keymap
 * 	- gdk.Screen
 * 	- gdk.Window
 * structWrap:
 * 	- GdkDevice* -> Device
 * 	- GdkDeviceManager* -> DeviceManager
 * 	- GdkDisplay* -> Display
 * 	- GdkKeymap* -> Keymap
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.X11;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import gdk.Device;
private import gdk.DeviceManager;
private import gdk.Display;
private import gdk.Keymap;
private import gdk.Screen;
private import gdk.Window;




/**
 * Description
 * The functions in this section are specific to the GDK X11 backend.
 * To use them, you need to include the <gdk/gdkx.h>
 * header and use the X11-specific pkg-config files to build your
 * application (either gdk-x11-3.0 or
 * gtk+-x11-3.0).
 * To make your code compile with other GDK backends, guard backend-specific
 * calls by an ifdef as follows. Since GDK may be built with multiple
 * backends, you should also check for the backend that is in use (e.g. by
 * using the GDK_IS_X11_DISPLAY() macro).
 * $(DDOC_COMMENT example)
 */
public class X11
{
	
	/**
	 * Returns the X resource (window) belonging to a GdkWindow.
	 * Params:
	 * window = a native GdkWindow.
	 * Returns: the ID of drawable's X resource.
	 */
	public static gulong windowGetXid(Window window)
	{
		// Window gdk_x11_window_get_xid (GdkWindow *window);
		return gdk_x11_window_get_xid((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 */
	
	/**
	 * Routine to get the current X server time stamp.
	 * Params:
	 * window = a GdkWindow, used for communication
	 * with the server. The window must have
	 * GDK_PROPERTY_CHANGE_MASK in its events mask or a hang will
	 * result. [type GdkX11Window]
	 * Returns: the time stamp.
	 */
	public static uint getServerTime(Window window)
	{
		// guint32 gdk_x11_get_server_time (GdkWindow *window);
		return gdk_x11_get_server_time((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Returns the device ID as seen by XInput2.
	 * Note
	 *  If gdk_disable_multidevice() has been called, this function
	 *  will respectively return 2/3 for the core pointer and keyboard,
	 *  (matching the IDs for the Virtual Core Pointer and Keyboard in
	 *  XInput 2), but calling this function on any slave devices (i.e.
	 *  those managed via XInput 1.x), will return 0.
	 * Params:
	 * device = a GdkDevice
	 * Returns: the XInput2 device ID. Since 3.2
	 */
	public static int deviceGetId(Device device)
	{
		// gint gdk_x11_device_get_id (GdkDevice *device);
		return gdk_x11_device_get_id((device is null) ? null : device.getDeviceStruct());
	}
	
	/**
	 * Returns the GdkDevice that wraps the given device ID.
	 * Params:
	 * deviceManager = a GdkDeviceManager
	 * deviceId = a device ID, as understood by the XInput2 protocol
	 * Returns: (allow-none): The GdkDevice wrapping the device ID, or NULL if the given ID doesn't currently represent a device. [transfer none] Since 3.2
	 */
	public static Device deviceManagerLookup(DeviceManager deviceManager, int deviceId)
	{
		// GdkDevice * gdk_x11_device_manager_lookup (GdkDeviceManager *device_manager,  gint device_id);
		auto p = gdk_x11_device_manager_lookup((deviceManager is null) ? null : deviceManager.getDeviceManagerStruct(), deviceId);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}
	
	/**
	 * Gets the startup notification ID for a display.
	 * Since 2.12
	 * Params:
	 * display = a GdkDisplay. [type GdkX11Display]
	 * Returns: the startup notification ID for display
	 */
	public static string displayGetStartupNotificationId(Display display)
	{
		// const gchar * gdk_x11_display_get_startup_notification_id  (GdkDisplay *display);
		return Str.toString(gdk_x11_display_get_startup_notification_id((display is null) ? null : display.getDisplayStruct()));
	}
	
	/**
	 * Sets the startup notification ID for a display.
	 * This is usually taken from the value of the DESKTOP_STARTUP_ID
	 * environment variable, but in some cases (such as the application not
	 * being launched using exec()) it can come from other sources.
	 * If the ID contains the string "_TIME" then the portion following that
	 * string is taken to be the X11 timestamp of the event that triggered
	 * the application to be launched and the GDK current event time is set
	 * accordingly.
	 * The startup ID is also what is used to signal that the startup is
	 * complete (for example, when opening a window or when calling
	 * gdk_notify_startup_complete()).
	 * Params:
	 * display = a GdkDisplay. [type GdkX11Display]
	 * startupId = the startup notification ID (must be valid utf8)
	 * Since 3.0
	 */
	public static void displaySetStartupNotificationId(Display display, string startupId)
	{
		// void gdk_x11_display_set_startup_notification_id  (GdkDisplay *display,  const gchar *startup_id);
		gdk_x11_display_set_startup_notification_id((display is null) ? null : display.getDisplayStruct(), Str.toStringz(startupId));
	}
	
	/**
	 * Begins a range of X requests on display for which X error events
	 * will be ignored. Unignored errors (when no trap is pushed) will abort
	 * the application. Use gdk_x11_display_error_trap_pop() or
	 * gdk_x11_display_error_trap_pop_ignored()to lift a trap pushed
	 * with this function.
	 * See also gdk_error_trap_push() to push a trap on all displays.
	 * Params:
	 * display = a GdkDisplay. [type GdkX11Display]
	 * Since 3.0
	 */
	public static void displayErrorTrapPush(Display display)
	{
		// void gdk_x11_display_error_trap_push (GdkDisplay *display);
		gdk_x11_display_error_trap_push((display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Pops the error trap pushed by gdk_x11_display_error_trap_push().
	 * Will XSync() if necessary and will always block until
	 * the error is known to have occurred or not occurred,
	 * so the error code can be returned.
	 * If you don't need to use the return value,
	 * gdk_x11_display_error_trap_pop_ignored() would be more efficient.
	 * See gdk_error_trap_pop() for the all-displays-at-once
	 * equivalent.
	 * Params:
	 * display = the display. [type GdkX11Display]
	 * Returns: X error code or 0 on success Since 3.0
	 */
	public static int displayErrorTrapPop(Display display)
	{
		// gint gdk_x11_display_error_trap_pop (GdkDisplay *display);
		return gdk_x11_display_error_trap_pop((display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Pops the error trap pushed by gdk_x11_display_error_trap_push().
	 * Does not block to see if an error occurred; merely records the
	 * range of requests to ignore errors for, and ignores those errors
	 * if they arrive asynchronously.
	 * See gdk_error_trap_pop_ignored() for the all-displays-at-once
	 * equivalent.
	 * Params:
	 * display = the display. [type GdkX11Display]
	 * Since 3.0
	 */
	public static void displayErrorTrapPopIgnored(Display display)
	{
		// void gdk_x11_display_error_trap_pop_ignored  (GdkDisplay *display);
		gdk_x11_display_error_trap_pop_ignored((display is null) ? null : display.getDisplayStruct());
	}
	
	/**
	 * Gets the XID of the specified output/monitor.
	 * If the X server does not support version 1.2 of the RANDR
	 * extension, 0 is returned.
	 * Since 2.14
	 * Params:
	 * screen = a GdkScreen. [type GdkX11Screen]
	 * monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 * Returns: the XID of the monitor
	 */
	public static uint screenGetMonitorOutput(Screen screen, int monitorNum)
	{
		// XID gdk_x11_screen_get_monitor_output (GdkScreen *screen,  gint monitor_num);
		return gdk_x11_screen_get_monitor_output((screen is null) ? null : screen.getScreenStruct(), monitorNum);
	}
	
	/**
	 * Set a hint for the window manager, requesting that the titlebar
	 * should be hidden when the window is maximized.
	 * Note that this property is automatically updated by GTK+, so this
	 * function should only be used by applications which do not use GTK+
	 * to create toplevel windows.
	 * Params:
	 * window = a GdkWindow. [type GdkX11Window]
	 * hideTitlebarWhenMaximized = whether to hide the titlebar when
	 * maximized
	 * Since 3.4
	 */
	public static void windowSetHideTitlebarWhenMaximized(Window window, int hideTitlebarWhenMaximized)
	{
		// void gdk_x11_window_set_hide_titlebar_when_maximized  (GdkWindow *window,  gboolean hide_titlebar_when_maximized);
		gdk_x11_window_set_hide_titlebar_when_maximized((window is null) ? null : window.getWindowStruct(), hideTitlebarWhenMaximized);
	}
	
	/**
	 * GTK+ applications can request a dark theme variant. In order to
	 * make other applications - namely window managers using GTK+ for
	 * themeing - aware of this choice, GTK+ uses this function to
	 * export the requested theme variant as _GTK_THEME_VARIANT property
	 * on toplevel windows.
	 * Note that this property is automatically updated by GTK+, so this
	 * function should only be used by applications which do not use GTK+
	 * to create toplevel windows.
	 * Params:
	 * window = a GdkWindow. [type GdkX11Window]
	 * variant = the theme variant to export
	 * Since 3.2
	 */
	public static void windowSetThemeVariant(Window window, string variant)
	{
		// void gdk_x11_window_set_theme_variant (GdkWindow *window,  char *variant);
		gdk_x11_window_set_theme_variant((window is null) ? null : window.getWindowStruct(), Str.toStringz(variant));
	}
	
	/**
	 * The application can use this call to update the _NET_WM_USER_TIME
	 * property on a toplevel window. This property stores an Xserver
	 * time which represents the time of the last user input event
	 * received for this window. This property may be used by the window
	 * manager to alter the focus, stacking, and/or placement behavior of
	 * windows when they are mapped depending on whether the new window
	 * was created by a user action or is a "pop-up" window activated by a
	 * timer or some other event.
	 * Note that this property is automatically updated by GDK, so this
	 * function should only be used by applications which handle input
	 * events bypassing GDK.
	 * Since 2.6
	 * Params:
	 * window = A toplevel GdkWindow. [type GdkX11Window]
	 * timestamp = An XServer timestamp to which the property should be set
	 */
	public static void windowSetUserTime(Window window, uint timestamp)
	{
		// void gdk_x11_window_set_user_time (GdkWindow *window,  guint32 timestamp);
		gdk_x11_window_set_user_time((window is null) ? null : window.getWindowStruct(), timestamp);
	}
	
	/**
	 * Moves the window to the correct workspace when running under a
	 * window manager that supports multiple workspaces, as described
	 * in the Extended
	 * Window Manager Hints. Will not do anything if the
	 * window is already on all workspaces.
	 * Since 2.8
	 * Params:
	 * window = a GdkWindow. [type GdkX11Window]
	 */
	public static void windowMoveToCurrentDesktop(Window window)
	{
		// void gdk_x11_window_move_to_current_desktop  (GdkWindow *window);
		gdk_x11_window_move_to_current_desktop((window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets the default GTK+ screen number.
	 * Returns: returns the screen number specified by the --display command line option or the DISPLAY environment variable when gdk_init() calls XOpenDisplay().
	 */
	public static int getDefaultScreen()
	{
		// gint gdk_x11_get_default_screen (void);
		return gdk_x11_get_default_screen();
	}
	
	/**
	 * Call gdk_x11_display_grab() on the default display.
	 * To ungrab the server again, use gdk_x11_ungrab_server().
	 * gdk_x11_grab_server()/gdk_x11_ungrab_server() calls can be nested.
	 */
	public static void grabServer()
	{
		// void gdk_x11_grab_server (void);
		gdk_x11_grab_server();
	}
	
	/**
	 * Ungrab the default display after it has been grabbed with
	 * gdk_x11_grab_server().
	 */
	public static void ungrabServer()
	{
		// void gdk_x11_ungrab_server (void);
		gdk_x11_ungrab_server();
	}
	
	/**
	 * Extracts the group from the state field sent in an X Key event.
	 * This is only needed for code processing raw X events, since GdkEventKey
	 * directly includes an is_modifier field.
	 * Params:
	 * keymap = a GdkX11Keymap
	 * state = raw state returned from X
	 * Returns: the index of the active keyboard group for the event Since 3.6
	 */
	public static int keymapGetGroupForState(Keymap keymap, uint state)
	{
		// gint gdk_x11_keymap_get_group_for_state (GdkKeymap *keymap,  guint state);
		return gdk_x11_keymap_get_group_for_state((keymap is null) ? null : keymap.getKeymapStruct(), state);
	}
	
	/**
	 * Determines whether a particular key code represents a key that
	 * is a modifier. That is, it's a key that normally just affects
	 * the keyboard state and the behavior of other keys rather than
	 * producing a direct effect itself. This is only needed for code
	 * processing raw X events, since GdkEventKey directly includes
	 * an is_modifier field.
	 * Params:
	 * keymap = a GdkX11Keymap
	 * keycode = the hardware keycode from a key event
	 * Returns: TRUE if the hardware keycode is a modifier key Since 3.6
	 */
	public static int keymapKeyIsModifier(Keymap keymap, uint keycode)
	{
		// gboolean gdk_x11_keymap_key_is_modifier (GdkKeymap *keymap,  guint keycode);
		return gdk_x11_keymap_key_is_modifier((keymap is null) ? null : keymap.getKeymapStruct(), keycode);
	}
	
	/**
	 * Sets the SM_CLIENT_ID property on the application's leader window so that
	 * the window manager can save the application's state using the X11R6 ICCCM
	 * session management protocol.
	 * See the X Session Management Library documentation for more information on
	 * session management and the Inter-Client Communication Conventions Manual
	 * Since 2.24
	 * Params:
	 * smClientId = the client id assigned by the session manager when the
	 * connection was opened, or NULL to remove the property.
	 */
	public static void setSmClientId(string smClientId)
	{
		// void gdk_x11_set_sm_client_id (const gchar *sm_client_id);
		gdk_x11_set_sm_client_id(Str.toStringz(smClientId));
	}
	
	/**
	 * Convert a text string from the encoding as it is stored
	 * in a property into an array of strings in the encoding of
	 * the current locale. (The elements of the array represent the
	 * nul-separated elements of the original text string.)
	 * Since 2.24
	 * Params:
	 * display = The GdkDisplay where the encoding is defined. [type GdkX11Display]
	 * encoding = an atom representing the encoding. The most
	 * common values for this are STRING, or COMPOUND_TEXT.
	 * This is value used as the type for the property
	 * format = the format of the property
	 * text = The text data
	 * list = location to store an array of strings in
	 * the encoding of the current locale. This array should be
	 * freed using gdk_free_text_list().
	 * Returns: the number of strings stored in list, or 0, if the conversion failed
	 */
	public static int displayTextPropertyToTextList(Display display, GdkAtom encoding, int format, char[] text, out string[] list)
	{
		// gint gdk_x11_display_text_property_to_text_list  (GdkDisplay *display,  GdkAtom encoding,  gint format,  const guchar *text,  gint length,  gchar ***list);
		char** outlist = null;
		int length;
		
		auto p = gdk_x11_display_text_property_to_text_list((display is null) ? null : display.getDisplayStruct(), encoding, format, text.ptr, length, &outlist);
		
		list = null;
		foreach ( cstr; outlist[0 .. length] )
		{
			list ~= Str.toString(cstr);
		}
		return p;
	}
	
	/**
	 * Frees the array of strings created by
	 * gdk_x11_display_text_property_to_text_list().
	 * Since 2.24
	 * Params:
	 * list = the value stored in the list parameter by
	 * a call to gdk_x11_display_text_property_to_text_list().
	 */
	public static void freeTextList(ref string list)
	{
		// void gdk_x11_free_text_list (gchar **list);
		char* outlist = Str.toStringz(list);
		
		gdk_x11_free_text_list(&outlist);
		
		list = Str.toString(outlist);
	}
	
	/**
	 * Convert a string from the encoding of the current
	 * locale into a form suitable for storing in a window property.
	 * Since 2.24
	 * Params:
	 * display = the GdkDisplay where the encoding is defined. [type GdkX11Display]
	 * str = a nul-terminated string
	 * encoding = location to store the encoding atom
	 * (to be used as the type for the property). [out][transfer none]
	 * format = location to store the format of the property. [out]
	 * ctext = location to store newly
	 * allocated data for the property. [out][array length=length]
	 * Returns: 0 upon success, non-zero upon failure
	 */
	public static int displayStringToCompoundText(Display display, string str, out GdkAtom encoding, out int format, out char[] ctext)
	{
		// gint gdk_x11_display_string_to_compound_text  (GdkDisplay *display,  const gchar *str,  GdkAtom *encoding,  gint *format,  guchar **ctext,  gint *length);
		guchar* outctext = null;
		int length;
		
		auto p = gdk_x11_display_string_to_compound_text((display is null) ? null : display.getDisplayStruct(), Str.toStringz(str), &encoding, &format, &outctext, &length);
		
		ctext = outctext[0 .. length];
		return p;
	}
	
	/**
	 * Converts from UTF-8 to compound text.
	 * Since 2.24
	 * Params:
	 * display = a GdkDisplay. [type GdkX11Display]
	 * str = a UTF-8 string
	 * encoding = location to store resulting encoding. [out]
	 * format = location to store format of the result. [out]
	 * ctext = location to store the data of the result. [out][array length=length]
	 * Returns: TRUE if the conversion succeeded, otherwise FALSE
	 */
	public static int displayUtf8_ToCompoundText(Display display, string str, out GdkAtom encoding, out int format, out char[] ctext)
	{
		// gboolean gdk_x11_display_utf8_to_compound_text  (GdkDisplay *display,  const gchar *str,  GdkAtom *encoding,  gint *format,  guchar **ctext,  gint *length);
		guchar* outctext = null;
		int length;
		
		auto p = gdk_x11_display_utf8_to_compound_text((display is null) ? null : display.getDisplayStruct(), Str.toStringz(str), &encoding, &format, &outctext, &length);
		
		ctext = outctext[0 .. length];
		return p;
	}
	
	/**
	 * Frees the data returned from gdk_x11_display_string_to_compound_text().
	 * Since 2.24
	 * Params:
	 * ctext = The pointer stored in ctext from a call to
	 * gdk_x11_display_string_to_compound_text().
	 */
	public static void freeCompoundText(ref char ctext)
	{
		// void gdk_x11_free_compound_text (guchar *ctext);
		gdk_x11_free_compound_text(&ctext);
	}
}
