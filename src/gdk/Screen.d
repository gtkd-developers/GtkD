/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = gdk
 * outFile = Screen
 * strct   = GdkScreen
 * realStrct=
 * clss    = Screen
 * extend  = 
 * prefixes:
 * 	- gdk_screen_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gdk.Screen
 * 	- gdk.Colormap
 * 	- gdk.Visual
 * 	- gdk.Window
 * 	- gdk.Display
 * 	- glib.ListG
 * 	- gdk.Rectangle
 * 	- gdk.Event
 * 	- gobject.Value
 * structWrap:
 * 	- GList* -> ListG
 * 	- GValue* -> Value
 * 	- GdkColormap* -> Colormap
 * 	- GdkDisplay* -> Display
 * 	- GdkEvent* -> Event
 * 	- GdkRectangle* -> Rectangle
 * 	- GdkScreen* -> Screen
 * 	- GdkVisual* -> Visual
 * 	- GdkWindow* -> Window
 * local aliases:
 */

module gdk.Screen;

private import gdk.typedefs;

private import lib.gdk;

private import glib.Str;
private import gdk.Screen;
private import gdk.Colormap;
private import gdk.Visual;
private import gdk.Window;
private import gdk.Display;
private import glib.ListG;
private import gdk.Rectangle;
private import gdk.Event;
private import gobject.Value;

/**
 * Description
 *  GdkScreen objects are the GDK representation of a physical screen. It is used
 *  throughout GDK and GTK+ to specify which screen the top level windows
 *  are to be displayed on.
 *  It is also used to query the screen specification and default settings such as
 *  the default colormap (gdk_screen_get_default_colormap()),
 *  the screen width (gdk_screen_get_width()), etc.
 * Note that a screen may consist of multiple monitors which are merged to
 * form a large screen area.
 */
private import gobject.ObjectG;
public class Screen : ObjectG
{
	
	/** the main Gtk struct */
	protected GdkScreen* gdkScreen;
	
	
	public GdkScreen* getScreenStruct()
	{
		return gdkScreen;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gdkScreen;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GdkScreen* gdkScreen)
	{
		super(cast(GObject*)gdkScreen);
		this.gdkScreen = gdkScreen;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gdk.typedefs;
	int[char[]] connectedSignals;
	
	void delegate(Screen)[] onSizeChangedListeners;
	void addOnSizeChanged(void delegate(Screen) dlg)
	{
		if ( !("size-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-changed",
			cast(GCallback)&callBackSizeChanged,
			this,
			null,
			GConnectFlags.AFTER);
			connectedSignals["size-changed"] = 1;
		}
		onSizeChangedListeners ~= dlg;
	}
	extern(C) static void callBackSizeChanged(GdkScreen* screenStruct, Screen screen)
	{
		bit consumed = false;
		
		foreach ( void delegate(Screen) dlg ; screen.onSizeChangedListeners )
		{
			dlg(screen);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Gets the default screen for the default display. (See
	 * gdk_display_get_default()).
	 * Returns:
	 *  a GdkScreen, or NULL if there is no default display.
	 * Since 2.2
	 */
	public static Screen getDefault()
	{
		// GdkScreen* gdk_screen_get_default (void);
		return new Screen( gdk_screen_get_default() );
	}
	
	/**
	 * Gets the default colormap for screen.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the default GdkColormap.
	 * Since 2.2
	 */
	public Colormap getDefaultColormap()
	{
		// GdkColormap* gdk_screen_get_default_colormap  (GdkScreen *screen);
		return new Colormap( gdk_screen_get_default_colormap(gdkScreen) );
	}
	
	/**
	 * Sets the default colormap for screen.
	 * screen:
	 *  a GdkScreen
	 * colormap:
	 *  a GdkColormap
	 * Since 2.2
	 */
	public void setDefaultColormap(Colormap colormap)
	{
		// void gdk_screen_set_default_colormap (GdkScreen *screen,  GdkColormap *colormap);
		gdk_screen_set_default_colormap(gdkScreen, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Gets the system's default colormap for screen
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the default colormap for screen.
	 * Since 2.2
	 */
	public Colormap getSystemColormap()
	{
		// GdkColormap* gdk_screen_get_system_colormap (GdkScreen *screen);
		return new Colormap( gdk_screen_get_system_colormap(gdkScreen) );
	}
	
	/**
	 * Get the system's default visual for screen.
	 * This is the visual for the root window of the display.
	 * The return value should not be freed.
	 * screen:
	 *  a GdkScreen.
	 * Returns:
	 *  the system visual
	 * Since 2.2
	 */
	public Visual getSystemVisual()
	{
		// GdkVisual* gdk_screen_get_system_visual (GdkScreen *screen);
		return new Visual( gdk_screen_get_system_visual(gdkScreen) );
	}
	
	/**
	 * Gets the preferred colormap for rendering image data on screen.
	 * Not a very useful function; historically, GDK could only render RGB
	 * image data to one colormap and visual, but in the current version
	 * it can render to any colormap and visual. So there's no need to
	 * call this function.
	 * screen:
	 *  a GdkScreen.
	 * Returns:
	 *  the preferred colormap
	 * Since 2.2
	 */
	public Colormap getRgbColormap()
	{
		// GdkColormap* gdk_screen_get_rgb_colormap (GdkScreen *screen);
		return new Colormap( gdk_screen_get_rgb_colormap(gdkScreen) );
	}
	
	/**
	 * Gets a "preferred visual" chosen by GdkRGB for rendering image data
	 * on screen. In previous versions of
	 * GDK, this was the only visual GdkRGB could use for rendering. In
	 * current versions, it's simply the visual GdkRGB would have chosen as
	 * the optimal one in those previous versions. GdkRGB can now render to
	 * drawables with any visual.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  The GdkVisual chosen by GdkRGB.
	 * Since 2.2
	 */
	public Visual getRgbVisual()
	{
		// GdkVisual* gdk_screen_get_rgb_visual (GdkScreen *screen);
		return new Visual( gdk_screen_get_rgb_visual(gdkScreen) );
	}
	
	/**
	 * Gets a colormap to use for creating windows or pixmaps with an
	 * alpha channel. The windowing system on which GTK+ is running
	 * may not support this capability, in which case NULL will
	 * be returned. Even if a non-NULL value is returned, its
	 * possible that the window's alpha channel won't be honored
	 * when displaying the window on the screen: in particular, for
	 * X an appropriate windowing manager and compositing manager
	 * must be running to provide appropriate display.
	 * screen:
	 *  a GdkScreen.
	 * Returns:
	 *  a colormap to use for windows with an alpha channel
	 *  or NULL if the capability is not available.
	 * Since 2.8
	 */
	public Colormap getRgbaColormap()
	{
		// GdkColormap* gdk_screen_get_rgba_colormap (GdkScreen *screen);
		return new Colormap( gdk_screen_get_rgba_colormap(gdkScreen) );
	}
	
	/**
	 * Gets a visual to use for creating windows or pixmaps with an
	 * alpha channel. See the docs for gdk_screen_get_rgba_colormap()
	 * for caveats.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  a visual to use for windows with an alpha channel
	 *  or NULL if the capability is not available.
	 * Since 2.8
	 */
	public Visual getRgbaVisual()
	{
		// GdkVisual* gdk_screen_get_rgba_visual (GdkScreen *screen);
		return new Visual( gdk_screen_get_rgba_visual(gdkScreen) );
	}
	
	/**
	 * Gets the root window of screen.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the root window
	 * Since 2.2
	 */
	public Window getRootWindow()
	{
		// GdkWindow* gdk_screen_get_root_window (GdkScreen *screen);
		return new Window( gdk_screen_get_root_window(gdkScreen) );
	}
	
	/**
	 * Gets the display to which the screen belongs.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the display to which screen belongs
	 * Since 2.2
	 */
	public Display getDisplay()
	{
		// GdkDisplay* gdk_screen_get_display (GdkScreen *screen);
		return new Display( gdk_screen_get_display(gdkScreen) );
	}
	
	/**
	 * Gets the index of screen among the screens in the display
	 * to which it belongs. (See gdk_screen_get_display())
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the index
	 * Since 2.2
	 */
	public int getNumber()
	{
		// gint gdk_screen_get_number (GdkScreen *screen);
		return gdk_screen_get_number(gdkScreen);
	}
	
	/**
	 * Gets the width of screen in pixels
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the width of screen in pixels.
	 * Since 2.2
	 */
	public int getWidth()
	{
		// gint gdk_screen_get_width (GdkScreen *screen);
		return gdk_screen_get_width(gdkScreen);
	}
	
	/**
	 * Gets the height of screen in pixels
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the height of screen in pixels.
	 * Since 2.2
	 */
	public int getHeight()
	{
		// gint gdk_screen_get_height (GdkScreen *screen);
		return gdk_screen_get_height(gdkScreen);
	}
	
	/**
	 * Gets the width of screen in millimeters.
	 * Note that on some X servers this value will not be correct.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the width of screen in millimeters.
	 * Since 2.2
	 */
	public int getWidthMm()
	{
		// gint gdk_screen_get_width_mm (GdkScreen *screen);
		return gdk_screen_get_width_mm(gdkScreen);
	}
	
	/**
	 * Returns the height of screen in millimeters.
	 * Note that on some X servers this value will not be correct.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  the heigth of screen in millimeters.
	 * Since 2.2
	 */
	public int getHeightMm()
	{
		// gint gdk_screen_get_height_mm (GdkScreen *screen);
		return gdk_screen_get_height_mm(gdkScreen);
	}
	
	/**
	 * Lists the available visuals for the specified screen.
	 * A visual describes a hardware image data format.
	 * For example, a visual might support 24-bit color, or 8-bit color,
	 * and might expect pixels to be in a certain format.
	 * Call g_list_free() on the return value when you're finished with it.
	 * screen:
	 *  the relevant GdkScreen.
	 * Returns:
	 *  a list of visuals; the list must be freed, but not its
	 * contents
	 * Since 2.2
	 */
	public ListG listVisuals()
	{
		// GList* gdk_screen_list_visuals (GdkScreen *screen);
		return new ListG( gdk_screen_list_visuals(gdkScreen) );
	}
	
	/**
	 * Obtains a list of all toplevel windows known to GDK on the screen screen.
	 * A toplevel window is a child of the root window (see
	 * gdk_get_default_root_window()).
	 * The returned list should be freed with g_list_free(), but
	 * its elements need not be freed.
	 * screen:
	 *  The GdkScreen where the toplevels are located.
	 * Returns:
	 *  list of toplevel windows, free with g_list_free()
	 * Since 2.2
	 */
	public ListG getToplevelWindows()
	{
		// GList* gdk_screen_get_toplevel_windows (GdkScreen *screen);
		return new ListG( gdk_screen_get_toplevel_windows(gdkScreen) );
	}
	
	/**
	 * Determines the name to pass to gdk_display_open() to get
	 * a GdkDisplay with this screen as the default screen.
	 * screen:
	 *  a GdkScreen
	 * Returns:
	 *  a newly allocated string, free with g_free()
	 * Since 2.2
	 */
	public char[] makeDisplayName()
	{
		// gchar* gdk_screen_make_display_name (GdkScreen *screen);
		return Str.toString(gdk_screen_make_display_name(gdkScreen) );
	}
	
	/**
	 * Returns the number of monitors which screen consists of.
	 * screen:
	 *  a GdkScreen.
	 * Returns:
	 *  number of monitors which screen consists of.
	 * Since 2.2
	 */
	public int getN_Monitors()
	{
		// gint gdk_screen_get_n_monitors (GdkScreen *screen);
		return gdk_screen_get_n_monitors(gdkScreen);
	}
	
	/**
	 * Retrieves the GdkRectangle representing the size and position of
	 * the individual monitor within the entire screen area.
	 * Note that the size of the entire screen area can be retrieved via
	 * gdk_screen_get_width() and gdk_screen_get_height().
	 * screen:
	 *  a GdkScreen.
	 * monitor_num:
	 *  the monitor number.
	 * dest:
	 *  a GdkRectangle to be filled with the monitor geometry
	 * Since 2.2
	 */
	public void getMonitorGeometry(int monitorNum, Rectangle dest)
	{
		// void gdk_screen_get_monitor_geometry (GdkScreen *screen,  gint monitor_num,  GdkRectangle *dest);
		gdk_screen_get_monitor_geometry(gdkScreen, monitorNum, (dest is null) ? null : dest.getRectangleStruct());
	}
	
	/**
	 * Returns the monitor number in which the point (x,y) is located.
	 * screen:
	 *  a GdkScreen.
	 * x:
	 *  the x coordinate in the virtual screen.
	 * y:
	 *  the y coordinate in the virtual screen.
	 * Returns:
	 *  the monitor number in which the point (x,y) lies, or
	 *  a monitor close to (x,y) if the point is not in any monitor.
	 * Since 2.2
	 */
	public int getMonitorAtPoint(int x, int y)
	{
		// gint gdk_screen_get_monitor_at_point (GdkScreen *screen,  gint x,  gint y);
		return gdk_screen_get_monitor_at_point(gdkScreen, x, y);
	}
	
	/**
	 * Returns the number of the monitor in which the largest area of the
	 * bounding rectangle of window resides.
	 * screen:
	 *  a GdkScreen.
	 * window:
	 *  a GdkWindow
	 * Returns:
	 *  the monitor number in which most of window is located,
	 *  or if window does not intersect any monitors, a monitor,
	 *  close to window.
	 * Since 2.2
	 */
	public int getMonitorAtWindow(Window window)
	{
		// gint gdk_screen_get_monitor_at_window  (GdkScreen *screen,  GdkWindow *window);
		return gdk_screen_get_monitor_at_window(gdkScreen, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * On X11, sends an X ClientMessage event to all toplevel windows on
	 * screen.
	 * Toplevel windows are determined by checking for the WM_STATE property,
	 * as described in the Inter-Client Communication Conventions Manual (ICCCM).
	 * If no windows are found with the WM_STATE property set, the message is
	 * sent to all children of the root window.
	 * On Windows, broadcasts a message registered with the name
	 * GDK_WIN32_CLIENT_MESSAGE to all top-level windows. The amount of
	 * data is limited to one long, i.e. four bytes.
	 * screen:
	 *  the GdkScreen where the event will be broadcasted.
	 * event:
	 *  the GdkEvent.
	 * Since 2.2
	 */
	public void broadcastClientMessage(Event event)
	{
		// void gdk_screen_broadcast_client_message  (GdkScreen *screen,  GdkEvent *event);
		gdk_screen_broadcast_client_message(gdkScreen, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Retrieves a desktop-wide setting such as double-click time
	 * for the GdkScreen screen.
	 * FIXME needs a list of valid settings here, or a link to
	 * more information.
	 * screen:
	 *  the GdkScreen where the setting is located
	 * name:
	 *  the name of the setting
	 * value:
	 *  location to store the value of the setting
	 * Returns:
	 *  TRUE if the setting existed and a value was stored
	 *  in value, FALSE otherwise.
	 * Since 2.2
	 */
	public int getSetting(char[] name, Value value)
	{
		// gboolean gdk_screen_get_setting (GdkScreen *screen,  const gchar *name,  GValue *value);
		return gdk_screen_get_setting(gdkScreen, Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Like g_spawn_async(), except the child process is spawned in such
	 * an environment that on calling gdk_display_open() it would be
	 * returned a GdkDisplay with screen as the default screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * screen:
	 *  a GdkScreen
	 * working_directory:
	 *  child's current working directory, or NULL to
	 *  inherit parent's
	 * argv:
	 *  child's argument vector
	 * envp:
	 *  child's environment, or NULL to inherit parent's
	 * flags:
	 *  flags from GSpawnFlags
	 * child_setup:
	 *  function to run in the child just before exec()
	 * user_data:
	 *  user data for child_setup
	 * child_pid:
	 *  return location for child process ID, or NULL
	 * error:
	 *  return location for error
	 * Returns:
	 *  TRUE on success, FALSE if error is set
	 * Since 2.4
	 */
	public int gdkSpawnOnScreen(char[] workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, int* childPid, GError** error)
	{
		// gboolean gdk_spawn_on_screen (GdkScreen *screen,  const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  gint *child_pid,  GError **error);
		return gdk_spawn_on_screen(gdkScreen, Str.toStringz(workingDirectory), argv, envp, flags, childSetup, userData, childPid, error);
	}
	
	/**
	 * Like g_spawn_async_with_pipes(), except the child process is
	 * spawned in such an environment that on calling gdk_display_open()
	 * it would be returned a GdkDisplay with screen as the default
	 * screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * screen:
	 *  a GdkScreen
	 * working_directory:
	 *  child's current working directory, or NULL to
	 *  inherit parent's
	 * argv:
	 *  child's argument vector
	 * envp:
	 *  child's environment, or NULL to inherit parent's
	 * flags:
	 *  flags from GSpawnFlags
	 * child_setup:
	 *  function to run in the child just before exec()
	 * user_data:
	 *  user data for child_setup
	 * child_pid:
	 *  return location for child process ID, or NULL
	 * standard_input:
	 *  return location for file descriptor to write to
	 *  child's stdin, or NULL
	 * standard_output:
	 *  return location for file descriptor to read child's
	 *  stdout, or NULL
	 * standard_error:
	 *  return location for file descriptor to read child's
	 *  stderr, or NULL
	 * error:
	 *  return location for error
	 * Returns:
	 *  TRUE on success, FALSE if an error was set
	 * Since 2.4
	 */
	public int gdkSpawnOnScreenWithPipes(char[] workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, int* childPid, int* standardInput, int* standardOutput, int* standardError, GError** error)
	{
		// gboolean gdk_spawn_on_screen_with_pipes (GdkScreen *screen,  const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  gint *child_pid,  gint *standard_input,  gint *standard_output,  gint *standard_error,  GError **error);
		return gdk_spawn_on_screen_with_pipes(gdkScreen, Str.toStringz(workingDirectory), argv, envp, flags, childSetup, userData, childPid, standardInput, standardOutput, standardError, error);
	}
	
	/**
	 * Like g_spawn_command_line_async(), except the child process is
	 * spawned in such an environment that on calling gdk_display_open()
	 * it would be returned a GdkDisplay with screen as the default
	 * screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * screen:
	 *  a GdkScreen
	 * command_line:
	 *  a command line
	 * error:
	 *  return location for errors
	 * Returns:
	 *  TRUE on success, FALSE if error is set.
	 * Since 2.4
	 * Signal Details
	 * The "size-changed" signal
	 * void user_function (GdkScreen *screen,
	 *  gpointer user_data) : Run last
	 * The ::size_changed signal is emitted when the pixel width or
	 * height of a screen changes.
	 * screen:
	 *  the object on which the signal is emitted
	 * user_data:
	 * user data set when the signal handler was connected.
	 * Since 2.2
	 */
	public int gdkSpawnCommandLineOnScreen(char[] commandLine, GError** error)
	{
		// gboolean gdk_spawn_command_line_on_screen  (GdkScreen *screen,  const gchar *command_line,  GError **error);
		return gdk_spawn_command_line_on_screen(gdkScreen, Str.toStringz(commandLine), error);
	}
}
