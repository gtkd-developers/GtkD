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
 * inFile  = GdkDisplay.html
 * outPack = gdk
 * outFile = Display
 * strct   = GdkDisplay
 * realStrct=
 * ctorStrct=
 * clss    = Display
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_display_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Display
 * 	- gdk.Screen
 * 	- glib.ListG
 * 	- gdk.Event
 * 	- gdk.Window
 * structWrap:
 * 	- GList* -> ListG
 * 	- GdkDisplay* -> Display
 * 	- GdkEvent* -> Event
 * 	- GdkScreen* -> Screen
 * 	- GdkWindow* -> Window
 * module aliases:
 * local aliases:
 */

module gdk.Display;

version(noAssert)
{
	version(Tango)
	{
		import tango.io.Stdout;	// use the tango loging?
	}
}

private import gtkc.gdktypes;

private import gtkc.gdk;


private import glib.Str;
private import gdk.Display;
private import gdk.Screen;
private import glib.ListG;
private import gdk.Event;
private import gdk.Window;




/**
 * Description
 * GdkDisplay objects purpose are two fold:
 * To grab/ungrab keyboard focus and mouse pointer
 * To manage and provide information about the GdkScreen(s)
 * 		available for this GdkDisplay
 *  GdkDisplay objects are the GDK representation of the X Display which can be
 *  described as a workstation consisting of a keyboard a pointing
 *  device (such as a mouse) and one or more screens.
 *  It is used to open and keep track of various GdkScreen objects currently
 *  instanciated by the application. It is also used to grab and release the keyboard
 *  and the mouse pointer.
 */
private import gobject.ObjectG;
public class Display : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkDisplay* gdkDisplay;
	
	
	public GdkDisplay* getDisplayStruct()
	{
		return gdkDisplay;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkDisplay;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkDisplay* gdkDisplay)
	{
		version(noAssert)
		{
			if ( gdkDisplay is null )
			{
				int zero = 0;
				version(Tango)
				{
					Stdout("struct gdkDisplay is null on constructor").newline;
				}
				else
				{
					printf("struct gdkDisplay is null on constructor");
				}
				zero = zero / zero;
			}
		}
		else
		{
			assert(gdkDisplay !is null, "struct gdkDisplay is null on constructor");
		}
		super(cast(GObject*)gdkDisplay);
		this.gdkDisplay = gdkDisplay;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(gboolean, Display)[] onClosedListeners;
	void addOnClosed(void delegate(gboolean, Display) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("closed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"closed",
			cast(GCallback)&callBackClosed,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["closed"] = 1;
		}
		onClosedListeners ~= dlg;
	}
	extern(C) static void callBackClosed(GdkDisplay* displayStruct, gboolean isError, Display display)
	{
		bool consumed = false;
		
		foreach ( void delegate(gboolean, Display) dlg ; display.onClosedListeners )
		{
			dlg(isError, display);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Opens a display.
	 * display_name:
	 *  the name of the display to open
	 * Returns:
	 *  a GdkDisplay, or NULL if the display
	 *  could not be opened.
	 * Since 2.2
	 */
	public static Display open(char[] displayName)
	{
		// GdkDisplay* gdk_display_open (const gchar *display_name);
		return new Display( gdk_display_open(Str.toStringz(displayName)) );
	}
	
	/**
	 * Gets the default GdkDisplay. This is a convenience
	 * function for:
	 *  gdk_display_manager_get_default_display (gdk_display_manager_get ())
	 * Returns:
	 *  a GdkDisplay, or NULL if there is no default
	 *  display.
	 * Since 2.2
	 */
	public static Display getDefault()
	{
		// GdkDisplay* gdk_display_get_default (void);
		return new Display( gdk_display_get_default() );
	}
	
	/**
	 * Gets the name of the display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  a string representing the display name. This string is owned
	 * by GDK and should not be modified or freed.
	 * Since 2.2
	 */
	public char[] getName()
	{
		// const gchar* gdk_display_get_name (GdkDisplay *display);
		return Str.toString(gdk_display_get_name(gdkDisplay) );
	}
	
	/**
	 * Gets the number of screen managed by the display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  number of screens.
	 * Since 2.2
	 */
	public int getNScreens()
	{
		// gint gdk_display_get_n_screens (GdkDisplay *display);
		return gdk_display_get_n_screens(gdkDisplay);
	}
	
	/**
	 * Returns a screen object for one of the screens of the display.
	 * display:
	 *  a GdkDisplay
	 * screen_num:
	 *  the screen number
	 * Returns:
	 *  the GdkScreen object
	 * Since 2.2
	 */
	public Screen getScreen(int screenNum)
	{
		// GdkScreen* gdk_display_get_screen (GdkDisplay *display,  gint screen_num);
		return new Screen( gdk_display_get_screen(gdkDisplay, screenNum) );
	}
	
	/**
	 * Get the default GdkScreen for display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  the default GdkScreen object for display
	 * Since 2.2
	 */
	public Screen getDefaultScreen()
	{
		// GdkScreen* gdk_display_get_default_screen (GdkDisplay *display);
		return new Screen( gdk_display_get_default_screen(gdkDisplay) );
	}
	
	/**
	 * Release any pointer grab.
	 * display:
	 *  a GdkDisplay.
	 * time_:
	 *  a timestap (e.g. GDK_CURRENT_TIME).
	 * Since 2.2
	 */
	public void pointerUngrab(uint time)
	{
		// void gdk_display_pointer_ungrab (GdkDisplay *display,  guint32 time_);
		gdk_display_pointer_ungrab(gdkDisplay, time);
	}
	
	/**
	 * Release any keyboard grab
	 * display:
	 *  a GdkDisplay.
	 * time_:
	 *  a timestap (e.g GDK_CURRENT_TIME).
	 * Since 2.2
	 */
	public void keyboardUngrab(uint time)
	{
		// void gdk_display_keyboard_ungrab (GdkDisplay *display,  guint32 time_);
		gdk_display_keyboard_ungrab(gdkDisplay, time);
	}
	
	/**
	 * Test if the pointer is grabbed.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  TRUE if an active X pointer grab is in effect
	 * Since 2.2
	 */
	public int pointerIsGrabbed()
	{
		// gboolean gdk_display_pointer_is_grabbed (GdkDisplay *display);
		return gdk_display_pointer_is_grabbed(gdkDisplay);
	}
	
	/**
	 * Emits a short beep on display
	 * display:
	 *  a GdkDisplay
	 * Since 2.2
	 */
	public void beep()
	{
		// void gdk_display_beep (GdkDisplay *display);
		gdk_display_beep(gdkDisplay);
	}
	
	/**
	 * Flushes any requests queued for the windowing system and waits until all
	 * requests have been handled. This is often used for making sure that the
	 * display is synchronized with the current state of the program. Calling
	 * gdk_display_sync() before gdk_error_trap_pop() makes sure that any errors
	 * generated from earlier requests are handled before the error trap is
	 * removed.
	 * This is most useful for X11. On windowing systems where requests are
	 * handled synchronously, this function will do nothing.
	 * display:
	 *  a GdkDisplay
	 * Since 2.2
	 */
	public void sync()
	{
		// void gdk_display_sync (GdkDisplay *display);
		gdk_display_sync(gdkDisplay);
	}
	
	/**
	 * Flushes any requests queued for the windowing system; this happens automatically
	 * when the main loop blocks waiting for new events, but if your application
	 * is drawing without returning control to the main loop, you may need
	 * to call this function explicitely. A common case where this function
	 * needs to be called is when an application is executing drawing commands
	 * from a thread other than the thread where the main loop is running.
	 * This is most useful for X11. On windowing systems where requests are
	 * handled synchronously, this function will do nothing.
	 * display:
	 *  a GdkDisplay
	 * Since 2.4
	 */
	public void flush()
	{
		// void gdk_display_flush (GdkDisplay *display);
		gdk_display_flush(gdkDisplay);
	}
	
	/**
	 * Closes the connection to the windowing system for the given display,
	 * and cleans up associated resources.
	 * display:
	 *  a GdkDisplay
	 * Since 2.2
	 */
	public void close()
	{
		// void gdk_display_close (GdkDisplay *display);
		gdk_display_close(gdkDisplay);
	}
	
	/**
	 * Returns the list of available input devices attached to display.
	 * The list is statically allocated and should not be freed.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  a list of GdkDevice
	 * Since 2.2
	 */
	public ListG listDevices()
	{
		// GList* gdk_display_list_devices (GdkDisplay *display);
		return new ListG( gdk_display_list_devices(gdkDisplay) );
	}
	
	/**
	 * Gets the next GdkEvent to be processed for display, fetching events from the
	 * windowing system if necessary.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  the next GdkEvent to be processed, or NULL if no events
	 * are pending. The returned GdkEvent should be freed with gdk_event_free().
	 * Since 2.2
	 */
	public Event getEvent()
	{
		// GdkEvent* gdk_display_get_event (GdkDisplay *display);
		return new Event( gdk_display_get_event(gdkDisplay) );
	}
	
	/**
	 * Gets a copy of the first GdkEvent in the display's event queue, without
	 * removing the event from the queue. (Note that this function will
	 * not get more events from the windowing system. It only checks the events
	 * that have already been moved to the GDK event queue.)
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  a copy of the first GdkEvent on the event queue, or NULL
	 * if no events are in the queue. The returned GdkEvent should be freed with
	 * gdk_event_free().
	 * Since 2.2
	 */
	public Event peekEvent()
	{
		// GdkEvent* gdk_display_peek_event (GdkDisplay *display);
		return new Event( gdk_display_peek_event(gdkDisplay) );
	}
	
	/**
	 * Appends a copy of the given event onto the front of the event
	 * queue for display.
	 * display:
	 *  a GdkDisplay
	 * event:
	 *  a GdkEvent.
	 * Since 2.2
	 */
	public void putEvent(Event event)
	{
		// void gdk_display_put_event (GdkDisplay *display,  GdkEvent *event);
		gdk_display_put_event(gdkDisplay, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Adds a filter to be called when X ClientMessage events are received.
	 * display:
	 *  a GdkDisplay for which this message filter applies
	 * message_type:
	 *  the type of ClientMessage events to receive.
	 *  This will be checked against the message_type field
	 *  of the XClientMessage event struct.
	 * func:
	 *  the function to call to process the event.
	 * data:
	 *  user data to pass to func.
	 * Since 2.2
	 */
	public void addClientMessageFilter(GdkAtom messageType, GdkFilterFunc func, void* data)
	{
		// void gdk_display_add_client_message_filter  (GdkDisplay *display,  GdkAtom message_type,  GdkFilterFunc func,  gpointer data);
		gdk_display_add_client_message_filter(gdkDisplay, messageType, func, data);
	}
	
	/**
	 * Sets the double click time (two clicks within this time interval
	 * count as a double click and result in a GDK_2BUTTON_PRESS event).
	 * Applications should not set this, it is a global
	 * user-configured setting.
	 * display:
	 *  a GdkDisplay
	 * msec:
	 *  double click time in milliseconds (thousandths of a second)
	 * Since 2.2
	 */
	public void setDoubleClickTime(uint msec)
	{
		// void gdk_display_set_double_click_time (GdkDisplay *display,  guint msec);
		gdk_display_set_double_click_time(gdkDisplay, msec);
	}
	
	/**
	 * Sets the double click distance (two clicks within this distance
	 * count as a double click and result in a GDK_2BUTTON_PRESS event).
	 * See also gdk_display_set_double_click_time().
	 * Applications should not set this, it is a global
	 * user-configured setting.
	 * display:
	 *  a GdkDisplay
	 * distance:
	 *  distance in pixels
	 * Since 2.4
	 */
	public void setDoubleClickDistance(uint distance)
	{
		// void gdk_display_set_double_click_distance  (GdkDisplay *display,  guint distance);
		gdk_display_set_double_click_distance(gdkDisplay, distance);
	}
	
	/**
	 * Gets the current location of the pointer and the current modifier
	 * mask for a given display.
	 * display:
	 *  a GdkDisplay
	 * screen:
	 *  location to store the screen that the
	 *  cursor is on, or NULL.
	 * x:
	 *  location to store root window X coordinate of pointer, or NULL.
	 * y:
	 *  location to store root window Y coordinate of pointer, or NULL.
	 * mask:
	 *  location to store current modifier mask, or NULL
	 * Since 2.2
	 */
	public void getPointer(GdkScreen** screen, int* x, int* y, GdkModifierType* mask)
	{
		// void gdk_display_get_pointer (GdkDisplay *display,  GdkScreen **screen,  gint *x,  gint *y,  GdkModifierType *mask);
		gdk_display_get_pointer(gdkDisplay, screen, x, y, mask);
	}
	
	/**
	 * Obtains the window underneath the mouse pointer, returning the location
	 * of that window in win_x, win_y for screen. Returns NULL if the window
	 * under the mouse pointer is not known to GDK (for example, belongs to
	 * another application).
	 * display:
	 *  a GdkDisplay
	 * win_x:
	 *  return location for origin of the window under the pointer
	 * win_y:
	 *  return location for origin of the window under the pointer
	 * Returns:
	 *  the window under the mouse pointer, or NULL
	 * Since 2.2
	 */
	public Window getWindowAtPointer(int* winX, int* winY)
	{
		// GdkWindow* gdk_display_get_window_at_pointer (GdkDisplay *display,  gint *win_x,  gint *win_y);
		return new Window( gdk_display_get_window_at_pointer(gdkDisplay, winX, winY) );
	}
	
	
	/**
	 * This function allows for hooking into the operation
	 * of getting the current location of the pointer on a particular
	 * display. This is only useful for such low-level tools as an
	 * event recorder. Applications should never have any
	 * reason to use this facility.
	 * display:
	 *  a GdkDisplay
	 * new_hooks:
	 *  a table of pointers to functions for getting
	 *  quantities related to the current pointer position,
	 *  or NULL to restore the default table.
	 * Returns:
	 *  the previous pointer hook table
	 * Since 2.2
	 */
	public GdkDisplayPointerHooks* setPointerHooks(GdkDisplayPointerHooks* newHooks)
	{
		// GdkDisplayPointerHooks* gdk_display_set_pointer_hooks (GdkDisplay *display,  const GdkDisplayPointerHooks *new_hooks);
		return gdk_display_set_pointer_hooks(gdkDisplay, newHooks);
	}
	
	/**
	 * Warps the pointer of display to the point x,y on
	 * the screen screen, unless the pointer is confined
	 * to a window by a grab, in which case it will be moved
	 * as far as allowed by the grab. Warping the pointer
	 * creates events as if the user had moved the mouse
	 * instantaneously to the destination.
	 * Note that the pointer should normally be under the
	 * control of the user. This function was added to cover
	 * some rare use cases like keyboard navigation support
	 * for the color picker in the GtkColorSelectionDialog.
	 * display:
	 *  a GdkDisplay
	 * screen:
	 *  the screen of display to warp the pointer to
	 * x:
	 *  the x coordinate of the destination
	 * y:
	 *  the y coordinate of the destination
	 * Since 2.8
	 */
	public void warpPointer(Screen screen, int x, int y)
	{
		// void gdk_display_warp_pointer (GdkDisplay *display,  GdkScreen *screen,  gint x,  gint y);
		gdk_display_warp_pointer(gdkDisplay, (screen is null) ? null : screen.getScreenStruct(), x, y);
	}
	
	/**
	 * Returns TRUE if multicolored cursors are supported
	 * on display. Otherwise, cursors have only a forground
	 * and a background color.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  whether cursors can have multiple colors.
	 * Since 2.4
	 */
	public int supportsCursorColor()
	{
		// gboolean gdk_display_supports_cursor_color (GdkDisplay *display);
		return gdk_display_supports_cursor_color(gdkDisplay);
	}
	
	/**
	 * Returns TRUE if cursors can use an 8bit alpha channel
	 * on display. Otherwise, cursors are restricted to bilevel
	 * alpha (i.e. a mask).
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  whether cursors can have alpha channels.
	 * Since 2.4
	 */
	public int supportsCursorAlpha()
	{
		// gboolean gdk_display_supports_cursor_alpha (GdkDisplay *display);
		return gdk_display_supports_cursor_alpha(gdkDisplay);
	}
	
	/**
	 * Returns the default size to use for cursors on display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  the default cursor size.
	 * Since 2.4
	 */
	public uint getDefaultCursorSize()
	{
		// guint gdk_display_get_default_cursor_size (GdkDisplay *display);
		return gdk_display_get_default_cursor_size(gdkDisplay);
	}
	
	/**
	 * Gets the maximal size to use for cursors on display.
	 * display:
	 *  a GdkDisplay
	 * width:
	 *  the return location for the maximal cursor width
	 * height:
	 *  the return location for the maximal cursor height
	 * Since 2.4
	 */
	public void getMaximalCursorSize(uint* width, uint* height)
	{
		// void gdk_display_get_maximal_cursor_size (GdkDisplay *display,  guint *width,  guint *height);
		gdk_display_get_maximal_cursor_size(gdkDisplay, width, height);
	}
	
	/**
	 * Returns the default group leader window for all toplevel windows
	 * on display. This window is implicitly created by GDK.
	 * See gdk_window_set_group().
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  The default group leader window for display
	 * Since 2.4
	 */
	public Window getDefaultGroup()
	{
		// GdkWindow* gdk_display_get_default_group (GdkDisplay *display);
		return new Window( gdk_display_get_default_group(gdkDisplay) );
	}
	
	/**
	 * Returns whether GdkEventOwnerChange events will be
	 * sent when the owner of a selection changes.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  whether GdkEventOwnerChange events will
	 *  be sent.
	 * Since 2.6
	 */
	public int supportsSelectionNotification()
	{
		// gboolean gdk_display_supports_selection_notification  (GdkDisplay *display);
		return gdk_display_supports_selection_notification(gdkDisplay);
	}
	
	/**
	 * Request GdkEventOwnerChange events for ownership changes
	 * of the selection named by the given atom.
	 * display:
	 *  a GdkDisplay
	 * selection:
	 *  the GdkAtom naming the selection for which
	 *  ownership change notification is requested
	 * Returns:
	 *  whether GdkEventOwnerChange events will
	 *  be sent.
	 * Since 2.6
	 */
	public int requestSelectionNotification(GdkAtom selection)
	{
		// gboolean gdk_display_request_selection_notification  (GdkDisplay *display,  GdkAtom selection);
		return gdk_display_request_selection_notification(gdkDisplay, selection);
	}
	
	/**
	 * Returns whether the speicifed display supports clipboard
	 * persistance; i.e. if it's possible to store the clipboard data after an
	 * application has quit. On X11 this checks if a clipboard daemon is
	 * running.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  TRUE if the display supports clipboard persistance.
	 * Since 2.6
	 */
	public int supportsClipboardPersistence()
	{
		// gboolean gdk_display_supports_clipboard_persistence  (GdkDisplay *display);
		return gdk_display_supports_clipboard_persistence(gdkDisplay);
	}
	
	/**
	 * Issues a request to the clipboard manager to store the
	 * clipboard data. On X11, this is a special program that works
	 * according to the freedesktop clipboard specification, available at
	 * http://www.freedesktop.org/Standards/clipboard-manager-spec.
	 * display:
	 *  a GdkDisplay
	 * clipboard_window:
	 *  a GdkWindow belonging to the clipboard owner
	 * time_:
	 *  a timestamp
	 * targets:
	 * 	 an array of targets that should be saved, or NULL
	 *  if all available targets should be saved.
	 * n_targets:
	 *  length of the targets array
	 * Since 2.6
	 */
	public void storeClipboard(Window clipboardWindow, uint time, GdkAtom* targets, int nTargets)
	{
		// void gdk_display_store_clipboard (GdkDisplay *display,  GdkWindow *clipboard_window,  guint32 time_,  GdkAtom *targets,  gint n_targets);
		gdk_display_store_clipboard(gdkDisplay, (clipboardWindow is null) ? null : clipboardWindow.getWindowStruct(), time, targets, nTargets);
	}
	
	/**
	 * Returns TRUE if gdk_window_shape_combine_mask() can
	 * be used to create shaped windows on display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  TRUE if shaped windows are supported
	 * Since 2.10
	 */
	public int supportsShapes()
	{
		// gboolean gdk_display_supports_shapes (GdkDisplay *display);
		return gdk_display_supports_shapes(gdkDisplay);
	}
	
	/**
	 * Returns TRUE if gdk_window_input_shape_combine_mask() can
	 * be used to modify the input shape of windows on display.
	 * display:
	 *  a GdkDisplay
	 * Returns:
	 *  TRUE if windows with modified input shape are supported
	 * Since 2.10
	 * Signal Details
	 * The "closed" signal
	 * void user_function (GdkDisplay *display,
	 *  gboolean is_error,
	 *  gpointer user_data) : Run Last
	 * The ::closed signal is emitted when the connection to the windowing
	 * system for display is closed.
	 * display:
	 *  the object on which the signal is emitted
	 * is_error:
	 *  TRUE if the display was closed due to an error
	 * user_data:
	 * user data set when the signal handler was connected.
	 * Since 2.2
	 */
	public int supportsInputShapes()
	{
		// gboolean gdk_display_supports_input_shapes (GdkDisplay *display);
		return gdk_display_supports_input_shapes(gdkDisplay);
	}
}
