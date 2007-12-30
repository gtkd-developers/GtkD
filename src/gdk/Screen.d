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
 * inFile  = GdkScreen.html
 * outPack = gdk
 * outFile = Screen
 * strct   = GdkScreen
 * realStrct=
 * ctorStrct=
 * clss    = Screen
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_screen_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- gtkc.cairotypes
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
 * module aliases:
 * local aliases:
 */

module gdk.Screen;

private import gtkc.gdktypes;

private import gtkc.gdk;


private import gtkc.cairotypes;
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



private import gobject.ObjectG;

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
		if(gdkScreen is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gdkScreen passed to constructor.");
			else return;
		}
		super(cast(GObject*)gdkScreen);
		this.gdkScreen = gdkScreen;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(Screen)[] onCompositedChangedListeners;
	void addOnCompositedChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("composited-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"composited-changed",
			cast(GCallback)&callBackCompositedChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["composited-changed"] = 1;
		}
		onCompositedChangedListeners ~= dlg;
	}
	extern(C) static void callBackCompositedChanged(GdkScreen* screenStruct, Screen screen)
	{
		bool consumed = false;
		
		foreach ( void delegate(Screen) dlg ; screen.onCompositedChangedListeners )
		{
			dlg(screen);
		}
		
		return consumed;
	}
	
	void delegate(Screen)[] onSizeChangedListeners;
	void addOnSizeChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("size-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"size-changed",
			cast(GCallback)&callBackSizeChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["size-changed"] = 1;
		}
		onSizeChangedListeners ~= dlg;
	}
	extern(C) static void callBackSizeChanged(GdkScreen* screenStruct, Screen screen)
	{
		bool consumed = false;
		
		foreach ( void delegate(Screen) dlg ; screen.onSizeChangedListeners )
		{
			dlg(screen);
		}
		
		return consumed;
	}
	
	
	
	/**
	 * Gets the default screen for the default display. (See
	 * gdk_display_get_default()).
	 * Since 2.2
	 * Returns: a GdkScreen, or NULL if there is no default display.
	 */
	public static Screen getDefault()
	{
		// GdkScreen* gdk_screen_get_default (void);
		return new Screen( gdk_screen_get_default() );
	}
	
	/**
	 * Gets the default colormap for screen.
	 * Since 2.2
	 * Returns: the default GdkColormap.
	 */
	public Colormap getDefaultColormap()
	{
		// GdkColormap* gdk_screen_get_default_colormap (GdkScreen *screen);
		return new Colormap( gdk_screen_get_default_colormap(gdkScreen) );
	}
	
	/**
	 * Sets the default colormap for screen.
	 * Since 2.2
	 * Params:
	 * colormap =  a GdkColormap
	 */
	public void setDefaultColormap(Colormap colormap)
	{
		// void gdk_screen_set_default_colormap (GdkScreen *screen,  GdkColormap *colormap);
		gdk_screen_set_default_colormap(gdkScreen, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Gets the system's default colormap for screen
	 * Since 2.2
	 * Returns: the default colormap for screen.
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
	 * Since 2.2
	 * Returns: the system visual
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
	 * Since 2.2
	 * Returns: the preferred colormap
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
	 * Since 2.2
	 * Returns: The GdkVisual chosen by GdkRGB.
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
	 * This functionality is not implemented in the Windows backend.
	 * For setting an overall opacity for a top-level window, see
	 * gdk_window_set_opacity().
	 * Since 2.8
	 * Returns: a colormap to use for windows with an alpha channel or NULL if the capability is not available.
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
	 * Since 2.8
	 * Returns: a visual to use for windows with an alpha channel or NULL if the capability is not available.
	 */
	public Visual getRgbaVisual()
	{
		// GdkVisual* gdk_screen_get_rgba_visual (GdkScreen *screen);
		return new Visual( gdk_screen_get_rgba_visual(gdkScreen) );
	}
	
	/**
	 * Returns whether windows with an RGBA visual can reasonably
	 * be expected to have their alpha channel drawn correctly on
	 * the screen.
	 * On X11 this function returns whether a compositing manager is
	 * compositing screen.
	 * Since 2.10
	 * Returns: Whether windows with RGBA visuals can reasonably beexpected to have their alpha channels drawn correctly on the screen.
	 */
	public int isComposited()
	{
		// gboolean gdk_screen_is_composited (GdkScreen *screen);
		return gdk_screen_is_composited(gdkScreen);
	}
	
	/**
	 * Gets the root window of screen.
	 * Since 2.2
	 * Returns: the root window
	 */
	public Window getRootWindow()
	{
		// GdkWindow* gdk_screen_get_root_window (GdkScreen *screen);
		return new Window( gdk_screen_get_root_window(gdkScreen) );
	}
	
	/**
	 * Gets the display to which the screen belongs.
	 * Since 2.2
	 * Returns: the display to which screen belongs
	 */
	public Display getDisplay()
	{
		// GdkDisplay* gdk_screen_get_display (GdkScreen *screen);
		return new Display( gdk_screen_get_display(gdkScreen) );
	}
	
	/**
	 * Gets the index of screen among the screens in the display
	 * to which it belongs. (See gdk_screen_get_display())
	 * Since 2.2
	 * Returns: the index
	 */
	public int getNumber()
	{
		// gint gdk_screen_get_number (GdkScreen *screen);
		return gdk_screen_get_number(gdkScreen);
	}
	
	/**
	 * Gets the width of screen in pixels
	 * Since 2.2
	 * Returns: the width of screen in pixels.
	 */
	public int getWidth()
	{
		// gint gdk_screen_get_width (GdkScreen *screen);
		return gdk_screen_get_width(gdkScreen);
	}
	
	/**
	 * Gets the height of screen in pixels
	 * Since 2.2
	 * Returns: the height of screen in pixels.
	 */
	public int getHeight()
	{
		// gint gdk_screen_get_height (GdkScreen *screen);
		return gdk_screen_get_height(gdkScreen);
	}
	
	/**
	 * Gets the width of screen in millimeters.
	 * Note that on some X servers this value will not be correct.
	 * Since 2.2
	 * Returns: the width of screen in millimeters.
	 */
	public int getWidthMm()
	{
		// gint gdk_screen_get_width_mm (GdkScreen *screen);
		return gdk_screen_get_width_mm(gdkScreen);
	}
	
	/**
	 * Returns the height of screen in millimeters.
	 * Note that on some X servers this value will not be correct.
	 * Since 2.2
	 * Returns: the heigth of screen in millimeters.
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
	 * Since 2.2
	 * Returns: a list of visuals; the list must be freed, but not its contents
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
	 * Since 2.2
	 * Returns: list of toplevel windows, free with g_list_free()
	 */
	public ListG getToplevelWindows()
	{
		// GList* gdk_screen_get_toplevel_windows (GdkScreen *screen);
		return new ListG( gdk_screen_get_toplevel_windows(gdkScreen) );
	}
	
	/**
	 * Determines the name to pass to gdk_display_open() to get
	 * a GdkDisplay with this screen as the default screen.
	 * Since 2.2
	 * Returns: a newly allocated string, free with g_free()
	 */
	public char[] makeDisplayName()
	{
		// gchar* gdk_screen_make_display_name (GdkScreen *screen);
		return Str.toString(gdk_screen_make_display_name(gdkScreen) );
	}
	
	/**
	 * Returns the number of monitors which screen consists of.
	 * Since 2.2
	 * Returns: number of monitors which screen consists of.
	 */
	public int getNMonitors()
	{
		// gint gdk_screen_get_n_monitors (GdkScreen *screen);
		return gdk_screen_get_n_monitors(gdkScreen);
	}
	
	/**
	 * Retrieves the GdkRectangle representing the size and position of
	 * the individual monitor within the entire screen area.
	 * Note that the size of the entire screen area can be retrieved via
	 * gdk_screen_get_width() and gdk_screen_get_height().
	 * Since 2.2
	 * Params:
	 * monitorNum =  the monitor number.
	 * dest =  a GdkRectangle to be filled with the monitor geometry
	 */
	public void getMonitorGeometry(int monitorNum, Rectangle dest)
	{
		// void gdk_screen_get_monitor_geometry (GdkScreen *screen,  gint monitor_num,  GdkRectangle *dest);
		gdk_screen_get_monitor_geometry(gdkScreen, monitorNum, (dest is null) ? null : dest.getRectangleStruct());
	}
	
	/**
	 * Returns the monitor number in which the point (x,y) is located.
	 * Since 2.2
	 * Params:
	 * x =  the x coordinate in the virtual screen.
	 * y =  the y coordinate in the virtual screen.
	 * Returns: the monitor number in which the point (x,y) lies, or a monitor close to (x,y) if the point is not in any monitor.
	 */
	public int getMonitorAtPoint(int x, int y)
	{
		// gint gdk_screen_get_monitor_at_point (GdkScreen *screen,  gint x,  gint y);
		return gdk_screen_get_monitor_at_point(gdkScreen, x, y);
	}
	
	/**
	 * Returns the number of the monitor in which the largest area of the
	 * bounding rectangle of window resides.
	 * Since 2.2
	 * Params:
	 * window =  a GdkWindow
	 * Returns: the monitor number in which most of window is located, or if window does not intersect any monitors, a monitor, close to window.
	 */
	public int getMonitorAtWindow(Window window)
	{
		// gint gdk_screen_get_monitor_at_window (GdkScreen *screen,  GdkWindow *window);
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
	 * Since 2.2
	 * Params:
	 * event =  the GdkEvent.
	 */
	public void broadcastClientMessage(Event event)
	{
		// void gdk_screen_broadcast_client_message (GdkScreen *screen,  GdkEvent *event);
		gdk_screen_broadcast_client_message(gdkScreen, (event is null) ? null : event.getEventStruct());
	}
	
	/**
	 * Retrieves a desktop-wide setting such as double-click time
	 * for the GdkScreen screen.
	 * FIXME needs a list of valid settings here, or a link to
	 * more information.
	 * Since 2.2
	 * Params:
	 * name =  the name of the setting
	 * value =  location to store the value of the setting
	 * Returns: TRUE if the setting existed and a value was stored in value, FALSE otherwise.
	 */
	public int getSetting(char[] name, Value value)
	{
		// gboolean gdk_screen_get_setting (GdkScreen *screen,  const gchar *name,  GValue *value);
		return gdk_screen_get_setting(gdkScreen, Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets any options previously set with gdk_screen_set_font_options().
	 * Since 2.10
	 * Returns: the current font options, or NULL if no default font options have been set.
	 */
	public cairo_font_options_t* getFontOptions()
	{
		// const cairo_font_options_t* gdk_screen_get_font_options (GdkScreen *screen);
		return gdk_screen_get_font_options(gdkScreen);
	}
	
	/**
	 * Sets the default font options for the screen. These
	 * options will be set on any PangoContext's newly created
	 * with gdk_pango_context_get_for_screen(). Changing the
	 * default set of font options does not affect contexts that
	 * have already been created.
	 * Since 2.10
	 * Params:
	 * options =  a cairo_font_options_t, or NULL to unset any
	 *  previously set default font options.
	 */
	public void setFontOptions(cairo_font_options_t* options)
	{
		// void gdk_screen_set_font_options (GdkScreen *screen,  const cairo_font_options_t *options);
		gdk_screen_set_font_options(gdkScreen, options);
	}
	
	/**
	 * Gets the resolution for font handling on the screen; see
	 * gdk_screen_set_resolution() for full details.
	 * Since 2.10
	 * Returns: the current resolution, or -1 if no resolutionhas been set.
	 */
	public double getResolution()
	{
		// gdouble gdk_screen_get_resolution (GdkScreen *screen);
		return gdk_screen_get_resolution(gdkScreen);
	}
	
	/**
	 * Sets the resolution for font handling on the screen. This is a
	 * scale factor between points specified in a PangoFontDescription
	 * and cairo units. The default value is 96, meaning that a 10 point
	 * font will be 13 units high. (10 * 96. / 72. = 13.3).
	 * Since 2.10
	 * Params:
	 * dpi =  the resolution in "dots per inch". (Physical inches aren't actually
	 *  involved; the terminology is conventional.)
	 */
	public void setResolution(double dpi)
	{
		// void gdk_screen_set_resolution (GdkScreen *screen,  gdouble dpi);
		gdk_screen_set_resolution(gdkScreen, dpi);
	}
	
	/**
	 * Returns the screen's currently active window.
	 * On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
	 * on the root window, as described in the Extended Window
	 * Manager Hints. If there is no currently currently active
	 * window, or the window manager does not support the
	 * _NET_ACTIVE_WINDOW hint, this function returns NULL.
	 * On other platforms, this function may return NULL, depending on whether
	 * it is implementable on that platform.
	 * The returned window should be unrefed using g_object_unref() when
	 * no longer needed.
	 * Since 2.10
	 * Returns: the currently active window, or NULL.
	 */
	public Window getActiveWindow()
	{
		// GdkWindow* gdk_screen_get_active_window (GdkScreen *screen);
		return new Window( gdk_screen_get_active_window(gdkScreen) );
	}
	
	/**
	 * Returns a GList of GdkWindows representing the current
	 * window stack.
	 * On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
	 * property on the root window, as described in the Extended Window
	 * Manager Hints. If the window manager does not support the
	 * _NET_CLIENT_LIST_STACKING hint, this function returns NULL.
	 * On other platforms, this function may return NULL, depending on whether
	 * it is implementable on that platform.
	 * The returned list is newly allocated and owns references to the
	 * windows it contains, so it should be freed using g_list_free() and
	 * its windows unrefed using g_object_unref() when no longer needed.
	 * Since 2.10
	 * Returns: a list of GdkWindows for the current window stack, or NULL.
	 */
	public ListG getWindowStack()
	{
		// GList* gdk_screen_get_window_stack (GdkScreen *screen);
		return new ListG( gdk_screen_get_window_stack(gdkScreen) );
	}
	
	/**
	 * Like g_spawn_async(), except the child process is spawned in such
	 * an environment that on calling gdk_display_open() it would be
	 * returned a GdkDisplay with screen as the default screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * Since 2.4
	 * Params:
	 * workingDirectory =  child's current working directory, or NULL to
	 *  inherit parent's
	 * argv =  child's argument vector
	 * envp =  child's environment, or NULL to inherit parent's
	 * flags =  flags from GSpawnFlags
	 * childSetup =  function to run in the child just before exec()
	 * userData =  user data for child_setup
	 * childPid =  return location for child process ID, or NULL
	 * error =  return location for error
	 * Returns: TRUE on success, FALSE if error is set
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
	 * Since 2.4
	 * Params:
	 * workingDirectory =  child's current working directory, or NULL to
	 *  inherit parent's
	 * argv =  child's argument vector
	 * envp =  child's environment, or NULL to inherit parent's
	 * flags =  flags from GSpawnFlags
	 * childSetup =  function to run in the child just before exec()
	 * userData =  user data for child_setup
	 * childPid =  return location for child process ID, or NULL
	 * standardInput =  return location for file descriptor to write to
	 *  child's stdin, or NULL
	 * standardOutput =  return location for file descriptor to read child's
	 *  stdout, or NULL
	 * standardError =  return location for file descriptor to read child's
	 *  stderr, or NULL
	 * error =  return location for error
	 * Returns: TRUE on success, FALSE if an error was set
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
	 * Since 2.4
	 * Params:
	 * commandLine =  a command line
	 * error =  return location for errors
	 * Returns: TRUE on success, FALSE if error is set.
	 */
	public int gdkSpawnCommandLineOnScreen(char[] commandLine, GError** error)
	{
		// gboolean gdk_spawn_command_line_on_screen (GdkScreen *screen,  const gchar *command_line,  GError **error);
		return gdk_spawn_command_line_on_screen(gdkScreen, Str.toStringz(commandLine), error);
	}
	
	
}
