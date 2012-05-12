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
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- cairo.FontOption
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
 * 	- cairo_font_options_t* -> FontOption
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Screen;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import cairo.FontOption;
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
	protected override void* getStruct()
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
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gdkScreen);
		if( ptr !is null )
		{
			this = cast(Screen)ptr;
			return;
		}
		super(cast(GObject*)gdkScreen);
		this.gdkScreen = gdkScreen;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gdkScreen = cast(GdkScreen*)obj;
	}
	
	/**
	 */
	int[string] connectedSignals;
	
	void delegate(Screen)[] onCompositedChangedListeners;
	/**
	 * The ::composited-changed signal is emitted when the composited
	 * status of the screen changes
	 * Since 2.10
	 */
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
		foreach ( void delegate(Screen) dlg ; screen.onCompositedChangedListeners )
		{
			dlg(screen);
		}
	}
	
	void delegate(Screen)[] onMonitorsChangedListeners;
	/**
	 * The ::monitors-changed signal is emitted when the number, size
	 * or position of the monitors attached to the screen change.
	 * Only for X11 and OS X for now. A future implementation for Win32
	 * may be a possibility.
	 * Since 2.14
	 */
	void addOnMonitorsChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("monitors-changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"monitors-changed",
			cast(GCallback)&callBackMonitorsChanged,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["monitors-changed"] = 1;
		}
		onMonitorsChangedListeners ~= dlg;
	}
	extern(C) static void callBackMonitorsChanged(GdkScreen* screenStruct, Screen screen)
	{
		foreach ( void delegate(Screen) dlg ; screen.onMonitorsChangedListeners )
		{
			dlg(screen);
		}
	}
	
	void delegate(Screen)[] onSizeChangedListeners;
	/**
	 * The ::size-changed signal is emitted when the pixel width or
	 * height of a screen changes.
	 * Since 2.2
	 */
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
		foreach ( void delegate(Screen) dlg ; screen.onSizeChangedListeners )
		{
			dlg(screen);
		}
	}
	
	
	/**
	 * Gets the default screen for the default display. (See
	 * gdk_display_get_default()).
	 * Since 2.2
	 * Returns: a GdkScreen, or NULL if there is no default display. [transfer none]
	 */
	public static Screen getDefault()
	{
		// GdkScreen * gdk_screen_get_default (void);
		auto p = gdk_screen_get_default();
		if(p is null)
		{
			return null;
		}
		return new Screen(cast(GdkScreen*) p);
	}
	
	/**
	 * Gets the default colormap for screen.
	 * Since 2.2
	 * Returns: the default GdkColormap. [transfer none]
	 */
	public Colormap getDefaultColormap()
	{
		// GdkColormap * gdk_screen_get_default_colormap (GdkScreen *screen);
		auto p = gdk_screen_get_default_colormap(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Sets the default colormap for screen.
	 * Since 2.2
	 * Params:
	 * colormap = a GdkColormap
	 */
	public void setDefaultColormap(Colormap colormap)
	{
		// void gdk_screen_set_default_colormap (GdkScreen *screen,  GdkColormap *colormap);
		gdk_screen_set_default_colormap(gdkScreen, (colormap is null) ? null : colormap.getColormapStruct());
	}
	
	/**
	 * Gets the system's default colormap for screen
	 * Since 2.2
	 * Returns: the default colormap for screen. [transfer none]
	 */
	public Colormap getSystemColormap()
	{
		// GdkColormap * gdk_screen_get_system_colormap (GdkScreen *screen);
		auto p = gdk_screen_get_system_colormap(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Get the system's default visual for screen.
	 * This is the visual for the root window of the display.
	 * The return value should not be freed.
	 * Since 2.2
	 * Returns: the system visual. [transfer none]
	 */
	public Visual getSystemVisual()
	{
		// GdkVisual * gdk_screen_get_system_visual (GdkScreen *screen);
		auto p = gdk_screen_get_system_visual(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Warning
	 * gdk_screen_get_rgb_colormap has been deprecated since version 2.22 and should not be used in newly-written code. Use gdk_screen_get_system_colormap()
	 * Gets the preferred colormap for rendering image data on screen.
	 * Not a very useful function; historically, GDK could only render RGB
	 * image data to one colormap and visual, but in the current version
	 * it can render to any colormap and visual. So there's no need to
	 * call this function.
	 * Since 2.2
	 * Returns: the preferred colormap. [transfer none]
	 */
	public Colormap getRgbColormap()
	{
		// GdkColormap * gdk_screen_get_rgb_colormap (GdkScreen *screen);
		auto p = gdk_screen_get_rgb_colormap(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Warning
	 * gdk_screen_get_rgb_visual has been deprecated since version 2.22 and should not be used in newly-written code. Use gdk_screen_get_system_visual()
	 * Gets a "preferred visual" chosen by GdkRGB for rendering image data
	 * on screen. In previous versions of
	 * GDK, this was the only visual GdkRGB could use for rendering. In
	 * current versions, it's simply the visual GdkRGB would have chosen as
	 * the optimal one in those previous versions. GdkRGB can now render to
	 * drawables with any visual.
	 * Since 2.2
	 * Returns: The GdkVisual chosen by GdkRGB. [transfer none]
	 */
	public Visual getRgbVisual()
	{
		// GdkVisual * gdk_screen_get_rgb_visual (GdkScreen *screen);
		auto p = gdk_screen_get_rgb_visual(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
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
	 * Returns: a colormap to use for windows with an alpha channel or NULL if the capability is not available. [transfer none]
	 */
	public Colormap getRgbaColormap()
	{
		// GdkColormap * gdk_screen_get_rgba_colormap (GdkScreen *screen);
		auto p = gdk_screen_get_rgba_colormap(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Colormap(cast(GdkColormap*) p);
	}
	
	/**
	 * Gets a visual to use for creating windows or pixmaps with an
	 * alpha channel. See the docs for gdk_screen_get_rgba_colormap()
	 * for caveats.
	 * Since 2.8
	 * Returns: a visual to use for windows with an alpha channel or NULL if the capability is not available. [transfer none]
	 */
	public Visual getRgbaVisual()
	{
		// GdkVisual * gdk_screen_get_rgba_visual (GdkScreen *screen);
		auto p = gdk_screen_get_rgba_visual(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Visual(cast(GdkVisual*) p);
	}
	
	/**
	 * Returns whether windows with an RGBA visual can reasonably
	 * be expected to have their alpha channel drawn correctly on
	 * the screen.
	 * On X11 this function returns whether a compositing manager is
	 * compositing screen.
	 * Since 2.10
	 * Returns: Whether windows with RGBA visuals can reasonably be expected to have their alpha channels drawn correctly on the screen.
	 */
	public int isComposited()
	{
		// gboolean gdk_screen_is_composited (GdkScreen *screen);
		return gdk_screen_is_composited(gdkScreen);
	}
	
	/**
	 * Gets the root window of screen.
	 * Since 2.2
	 * Returns: the root window. [transfer none]
	 */
	public Window getRootWindow()
	{
		// GdkWindow * gdk_screen_get_root_window (GdkScreen *screen);
		auto p = gdk_screen_get_root_window(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
	}
	
	/**
	 * Gets the display to which the screen belongs.
	 * Since 2.2
	 * Returns: the display to which screen belongs
	 */
	public Display getDisplay()
	{
		// GdkDisplay * gdk_screen_get_display (GdkScreen *screen);
		auto p = gdk_screen_get_display(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Display(cast(GdkDisplay*) p);
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
	 * Returns: a list of visuals; the list must be freed, but not its contents. [transfer container][element-type GdkVisual]
	 */
	public ListG listVisuals()
	{
		// GList * gdk_screen_list_visuals (GdkScreen *screen);
		auto p = gdk_screen_list_visuals(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Obtains a list of all toplevel windows known to GDK on the screen screen.
	 * A toplevel window is a child of the root window (see
	 * gdk_get_default_root_window()).
	 * The returned list should be freed with g_list_free(), but
	 * its elements need not be freed.
	 * Since 2.2
	 * Returns: list of toplevel windows, free with g_list_free(). [transfer container][element-type GdkWindow]
	 */
	public ListG getToplevelWindows()
	{
		// GList * gdk_screen_get_toplevel_windows (GdkScreen *screen);
		auto p = gdk_screen_get_toplevel_windows(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Determines the name to pass to gdk_display_open() to get
	 * a GdkDisplay with this screen as the default screen.
	 * Since 2.2
	 * Returns: a newly allocated string, free with g_free()
	 */
	public string makeDisplayName()
	{
		// gchar * gdk_screen_make_display_name (GdkScreen *screen);
		return Str.toString(gdk_screen_make_display_name(gdkScreen));
	}
	
	/**
	 * Returns the number of monitors which screen consists of.
	 * Since 2.2
	 * Returns: number of monitors which screen consists of
	 */
	public int getNMonitors()
	{
		// gint gdk_screen_get_n_monitors (GdkScreen *screen);
		return gdk_screen_get_n_monitors(gdkScreen);
	}
	
	/**
	 * Gets the primary monitor for screen. The primary monitor
	 * is considered the monitor where the 'main desktop' lives.
	 * While normal application windows typically allow the window
	 * manager to place the windows, specialized desktop applications
	 * such as panels should place themselves on the primary monitor.
	 * If no primary monitor is configured by the user, the return value
	 * will be 0, defaulting to the first monitor.
	 * Since 2.20
	 * Returns: An integer index for the primary monitor, or 0 if none is configured.
	 */
	public int getPrimaryMonitor()
	{
		// gint gdk_screen_get_primary_monitor (GdkScreen *screen);
		return gdk_screen_get_primary_monitor(gdkScreen);
	}
	
	/**
	 * Retrieves the GdkRectangle representing the size and position of
	 * the individual monitor within the entire screen area.
	 * Note that the size of the entire screen area can be retrieved via
	 * gdk_screen_get_width() and gdk_screen_get_height().
	 * Since 2.2
	 * Params:
	 * monitorNum = the monitor number, between 0 and gdk_screen_get_n_monitors (screen)
	 * dest = a GdkRectangle to be filled with the monitor geometry
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
	 * x = the x coordinate in the virtual screen.
	 * y = the y coordinate in the virtual screen.
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
	 * window = a GdkWindow
	 * Returns: the monitor number in which most of window is located, or if window does not intersect any monitors, a monitor, close to window.
	 */
	public int getMonitorAtWindow(Window window)
	{
		// gint gdk_screen_get_monitor_at_window (GdkScreen *screen,  GdkWindow *window);
		return gdk_screen_get_monitor_at_window(gdkScreen, (window is null) ? null : window.getWindowStruct());
	}
	
	/**
	 * Gets the height in millimeters of the specified monitor.
	 * Since 2.14
	 * Params:
	 * monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 * Returns: the height of the monitor, or -1 if not available
	 */
	public int getMonitorHeightMm(int monitorNum)
	{
		// gint gdk_screen_get_monitor_height_mm (GdkScreen *screen,  gint monitor_num);
		return gdk_screen_get_monitor_height_mm(gdkScreen, monitorNum);
	}
	
	/**
	 * Gets the width in millimeters of the specified monitor, if available.
	 * Since 2.14
	 * Params:
	 * monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 * Returns: the width of the monitor, or -1 if not available
	 */
	public int getMonitorWidthMm(int monitorNum)
	{
		// gint gdk_screen_get_monitor_width_mm (GdkScreen *screen,  gint monitor_num);
		return gdk_screen_get_monitor_width_mm(gdkScreen, monitorNum);
	}
	
	/**
	 * Returns the output name of the specified monitor.
	 * Usually something like VGA, DVI, or TV, not the actual
	 * product name of the display device.
	 * Since 2.14
	 * Params:
	 * monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 * Returns: a newly-allocated string containing the name of the monitor, or NULL if the name cannot be determined
	 */
	public string getMonitorPlugName(int monitorNum)
	{
		// gchar * gdk_screen_get_monitor_plug_name (GdkScreen *screen,  gint monitor_num);
		return Str.toString(gdk_screen_get_monitor_plug_name(gdkScreen, monitorNum));
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
	 * event = the GdkEvent.
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
	 * name = the name of the setting
	 * value = location to store the value of the setting
	 * Returns: TRUE if the setting existed and a value was stored in value, FALSE otherwise.
	 */
	public int getSetting(string name, Value value)
	{
		// gboolean gdk_screen_get_setting (GdkScreen *screen,  const gchar *name,  GValue *value);
		return gdk_screen_get_setting(gdkScreen, Str.toStringz(name), (value is null) ? null : value.getValueStruct());
	}
	
	/**
	 * Gets any options previously set with gdk_screen_set_font_options().
	 * Since 2.10
	 * Returns: the current font options, or NULL if no default font options have been set.
	 */
	public FontOption getFontOptions()
	{
		// const cairo_font_options_t * gdk_screen_get_font_options  (GdkScreen *screen);
		auto p = gdk_screen_get_font_options(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new FontOption(cast(cairo_font_options_t*) p);
	}
	
	/**
	 * Sets the default font options for the screen. These
	 * options will be set on any PangoContext's newly created
	 * with gdk_pango_context_get_for_screen(). Changing the
	 * default set of font options does not affect contexts that
	 * have already been created.
	 * Since 2.10
	 * Params:
	 * options = a cairo_font_options_t, or NULL to unset any
	 * previously set default font options. [allow-none]
	 */
	public void setFontOptions(FontOption options)
	{
		// void gdk_screen_set_font_options (GdkScreen *screen,  const cairo_font_options_t *options);
		gdk_screen_set_font_options(gdkScreen, (options is null) ? null : options.getFontOptionStruct());
	}
	
	/**
	 * Gets the resolution for font handling on the screen; see
	 * gdk_screen_set_resolution() for full details.
	 * Since 2.10
	 * Returns: the current resolution, or -1 if no resolution has been set.
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
	 * dpi = the resolution in "dots per inch". (Physical inches aren't actually
	 * involved; the terminology is conventional.)
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
		// GdkWindow * gdk_screen_get_active_window (GdkScreen *screen);
		auto p = gdk_screen_get_active_window(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new Window(cast(GdkWindow*) p);
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
	 * Returns: a list of GdkWindows for the current window stack, or NULL. [transfer full][element-type GdkWindow]
	 */
	public ListG getWindowStack()
	{
		// GList * gdk_screen_get_window_stack (GdkScreen *screen);
		auto p = gdk_screen_get_window_stack(gdkScreen);
		if(p is null)
		{
			return null;
		}
		return new ListG(cast(GList*) p);
	}
	
	/**
	 * Warning
	 * gdk_spawn_on_screen has been deprecated since version 2.24 and should not be used in newly-written code. This function is being removed in 3.0. Use
	 *  either g_spawn_sync(), g_spawn_async(), or GdkAppLaunchContext instead.
	 * Like g_spawn_async(), except the child process is spawned in such
	 * an environment that on calling gdk_display_open() it would be
	 * returned a GdkDisplay with screen as the default screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * Since 2.4
	 * Params:
	 * workingDirectory = child's current working directory, or NULL to
	 * inherit parent's
	 * argv = child's argument vector
	 * envp = child's environment, or NULL to inherit parent's
	 * flags = flags from GSpawnFlags
	 * childSetup = function to run in the child just before exec()
	 * userData = user data for child_setup
	 * childPid = return location for child process ID, or NULL
	 * Returns: TRUE on success, FALSE if error is set
	 * Throws: GException on failure.
	 */
	public int gdkSpawnOnScreen(string workingDirectory, string[] argv, string[] envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, out int childPid)
	{
		// gboolean gdk_spawn_on_screen (GdkScreen *screen,  const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  gint *child_pid,  GError **error);
		GError* err = null;
		
		auto p = gdk_spawn_on_screen(gdkScreen, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envp), flags, childSetup, userData, &childPid, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Warning
	 * gdk_spawn_on_screen_with_pipes has been deprecated since version 2.24 and should not be used in newly-written code. This function is being removed in 3.0. Use
	 *  either g_spawn_async_with_pipes() or GdkAppLaunchContext instead.
	 * Like g_spawn_async_with_pipes(), except the child process is
	 * spawned in such an environment that on calling gdk_display_open()
	 * it would be returned a GdkDisplay with screen as the default
	 * screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * Since 2.4
	 * Params:
	 * workingDirectory = child's current working directory, or NULL to
	 * inherit parent's
	 * argv = child's argument vector
	 * envp = child's environment, or NULL to inherit parent's
	 * flags = flags from GSpawnFlags
	 * childSetup = function to run in the child just before exec()
	 * userData = user data for child_setup
	 * childPid = return location for child process ID, or NULL
	 * standardInput = return location for file descriptor to write to
	 * child's stdin, or NULL
	 * standardOutput = return location for file descriptor to read child's
	 * stdout, or NULL
	 * standardError = return location for file descriptor to read child's
	 * stderr, or NULL
	 * Returns: TRUE on success, FALSE if an error was set
	 */
	public int gdkSpawnOnScreenWithPipes(string workingDirectory, string[] argv, string[] envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, out int childPid, out int standardInput, out int standardOutput, out int standardError)
	{
		// gboolean gdk_spawn_on_screen_with_pipes (GdkScreen *screen,  const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  gint *child_pid,  gint *standard_input,  gint *standard_output,  gint *standard_error,  GError **error);
		GError* err = null;
		
		auto p = gdk_spawn_on_screen_with_pipes(gdkScreen, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envp), flags, childSetup, userData, &childPid, &standardInput, &standardOutput, &standardError, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Warning
	 * gdk_spawn_command_line_on_screen has been deprecated since version 2.24 and should not be used in newly-written code. This function is being removed in 3.0. Use
	 *  either g_spawn_command_line_sync(), g_spawn_command_line_async() or
	 *  GdkAppLaunchContext instead.
	 * Like g_spawn_command_line_async(), except the child process is
	 * spawned in such an environment that on calling gdk_display_open()
	 * it would be returned a GdkDisplay with screen as the default
	 * screen.
	 * This is useful for applications which wish to launch an application
	 * on a specific screen.
	 * Since 2.4
	 * Params:
	 * commandLine = a command line
	 * Returns: TRUE on success, FALSE if error is set.
	 * Throws: GException on failure.
	 */
	public int gdkSpawnCommandLineOnScreen(string commandLine)
	{
		// gboolean gdk_spawn_command_line_on_screen (GdkScreen *screen,  const gchar *command_line,  GError **error);
		GError* err = null;
		
		auto p = gdk_spawn_command_line_on_screen(gdkScreen, Str.toStringz(commandLine), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
