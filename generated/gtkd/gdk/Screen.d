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


module gdk.Screen;

private import cairo.FontOption;
private import gdk.Display;
private import gdk.Visual;
private import gdk.Window;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * #GdkScreen objects are the GDK representation of the screen on
 * which windows can be displayed and on which the pointer moves.
 * X originally identified screens with physical screens, but
 * nowadays it is more common to have a single #GdkScreen which
 * combines several physical monitors (see gdk_screen_get_n_monitors()).
 * 
 * GdkScreen is used throughout GDK and GTK+ to specify which screen
 * the top level windows are to be displayed on. it is also used to
 * query the screen specification and default settings such as
 * the default visual (gdk_screen_get_system_visual()), the dimensions
 * of the physical monitors (gdk_screen_get_monitor_geometry()), etc.
 */
public class Screen : ObjectG
{
	/** the main Gtk struct */
	protected GdkScreen* gdkScreen;

	/** Get the main Gtk struct */
	public GdkScreen* getScreenStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkScreen;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkScreen;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkScreen* gdkScreen, bool ownedRef = false)
	{
		this.gdkScreen = gdkScreen;
		super(cast(GObject*)gdkScreen, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_screen_get_type();
	}

	/**
	 * Gets the default screen for the default display. (See
	 * gdk_display_get_default ()).
	 *
	 * Returns: a #GdkScreen, or %NULL if
	 *     there is no default display.
	 *
	 * Since: 2.2
	 */
	public static Screen getDefault()
	{
		auto p = gdk_screen_get_default();

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Screen)(cast(GdkScreen*) p);
	}

	/**
	 * Gets the height of the default screen in pixels. The returned
	 * size is in ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * Deprecated: Use per-monitor information
	 *
	 * Returns: the height of the default screen in pixels.
	 */
	public static int height()
	{
		return gdk_screen_height();
	}

	/**
	 * Returns the height of the default screen in millimeters.
	 * Note that on many X servers this value will not be correct.
	 *
	 * Deprecated: Use per-monitor information
	 *
	 * Returns: the height of the default screen in millimeters,
	 *     though it is not always correct.
	 */
	public static int heightMm()
	{
		return gdk_screen_height_mm();
	}

	/**
	 * Gets the width of the default screen in pixels. The returned
	 * size is in ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * Deprecated: Use per-monitor information
	 *
	 * Returns: the width of the default screen in pixels.
	 */
	public static int width()
	{
		return gdk_screen_width();
	}

	/**
	 * Returns the width of the default screen in millimeters.
	 * Note that on many X servers this value will not be correct.
	 *
	 * Deprecated: Use per-monitor information
	 *
	 * Returns: the width of the default screen in millimeters,
	 *     though it is not always correct.
	 */
	public static int widthMm()
	{
		return gdk_screen_width_mm();
	}

	/**
	 * Returns the screen’s currently active window.
	 *
	 * On X11, this is done by inspecting the _NET_ACTIVE_WINDOW property
	 * on the root window, as described in the
	 * [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
	 * If there is no currently currently active
	 * window, or the window manager does not support the
	 * _NET_ACTIVE_WINDOW hint, this function returns %NULL.
	 *
	 * On other platforms, this function may return %NULL, depending on whether
	 * it is implementable on that platform.
	 *
	 * The returned window should be unrefed using g_object_unref() when
	 * no longer needed.
	 *
	 * Returns: the currently active window,
	 *     or %NULL.
	 *
	 * Since: 2.10
	 */
	public Window getActiveWindow()
	{
		auto p = gdk_screen_get_active_window(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p, true);
	}

	/**
	 * Gets the display to which the @screen belongs.
	 *
	 * Returns: the display to which @screen belongs
	 *
	 * Since: 2.2
	 */
	public Display getDisplay()
	{
		auto p = gdk_screen_get_display(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Gets any options previously set with gdk_screen_set_font_options().
	 *
	 * Returns: the current font options, or %NULL if no
	 *     default font options have been set.
	 *
	 * Since: 2.10
	 */
	public FontOption getFontOptions()
	{
		auto p = gdk_screen_get_font_options(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return new FontOption(cast(cairo_font_options_t*) p);
	}

	/**
	 * Gets the height of @screen in pixels. The returned size is in
	 * ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * Deprecated: Use per-monitor information instead
	 *
	 * Returns: the height of @screen in pixels.
	 *
	 * Since: 2.2
	 */
	public int getHeight()
	{
		return gdk_screen_get_height(gdkScreen);
	}

	/**
	 * Returns the height of @screen in millimeters.
	 *
	 * Note that this value is somewhat ill-defined when the screen
	 * has multiple monitors of different resolution. It is recommended
	 * to use the monitor dimensions instead.
	 *
	 * Deprecated: Use per-monitor information instead
	 *
	 * Returns: the heigth of @screen in millimeters.
	 *
	 * Since: 2.2
	 */
	public int getHeightMm()
	{
		return gdk_screen_get_height_mm(gdkScreen);
	}

	/**
	 * Returns the monitor number in which the point (@x,@y) is located.
	 *
	 * Deprecated: Use gdk_display_get_monitor_at_point() instead
	 *
	 * Params:
	 *     x = the x coordinate in the virtual screen.
	 *     y = the y coordinate in the virtual screen.
	 *
	 * Returns: the monitor number in which the point (@x,@y) lies, or
	 *     a monitor close to (@x,@y) if the point is not in any monitor.
	 *
	 * Since: 2.2
	 */
	public int getMonitorAtPoint(int x, int y)
	{
		return gdk_screen_get_monitor_at_point(gdkScreen, x, y);
	}

	/**
	 * Returns the number of the monitor in which the largest area of the
	 * bounding rectangle of @window resides.
	 *
	 * Deprecated: Use gdk_display_get_monitor_at_window() instead
	 *
	 * Params:
	 *     window = a #GdkWindow
	 *
	 * Returns: the monitor number in which most of @window is located,
	 *     or if @window does not intersect any monitors, a monitor,
	 *     close to @window.
	 *
	 * Since: 2.2
	 */
	public int getMonitorAtWindow(Window window)
	{
		return gdk_screen_get_monitor_at_window(gdkScreen, (window is null) ? null : window.getWindowStruct());
	}

	/**
	 * Retrieves the #GdkRectangle representing the size and position of
	 * the individual monitor within the entire screen area. The returned
	 * geometry is in ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * Monitor numbers start at 0. To obtain the number of monitors of
	 * @screen, use gdk_screen_get_n_monitors().
	 *
	 * Note that the size of the entire screen area can be retrieved via
	 * gdk_screen_get_width() and gdk_screen_get_height().
	 *
	 * Deprecated: Use gdk_monitor_get_geometry() instead
	 *
	 * Params:
	 *     monitorNum = the monitor number
	 *     dest = a #GdkRectangle to be filled with
	 *         the monitor geometry
	 *
	 * Since: 2.2
	 */
	public void getMonitorGeometry(int monitorNum, out GdkRectangle dest)
	{
		gdk_screen_get_monitor_geometry(gdkScreen, monitorNum, &dest);
	}

	/**
	 * Gets the height in millimeters of the specified monitor.
	 *
	 * Deprecated: Use gdk_monitor_get_height_mm() instead
	 *
	 * Params:
	 *     monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 *
	 * Returns: the height of the monitor, or -1 if not available
	 *
	 * Since: 2.14
	 */
	public int getMonitorHeightMm(int monitorNum)
	{
		return gdk_screen_get_monitor_height_mm(gdkScreen, monitorNum);
	}

	/**
	 * Returns the output name of the specified monitor.
	 * Usually something like VGA, DVI, or TV, not the actual
	 * product name of the display device.
	 *
	 * Deprecated: Use gdk_monitor_get_model() instead
	 *
	 * Params:
	 *     monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 *
	 * Returns: a newly-allocated string containing the name
	 *     of the monitor, or %NULL if the name cannot be determined
	 *
	 * Since: 2.14
	 */
	public string getMonitorPlugName(int monitorNum)
	{
		auto retStr = gdk_screen_get_monitor_plug_name(gdkScreen, monitorNum);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns the internal scale factor that maps from monitor coordinates
	 * to the actual device pixels. On traditional systems this is 1, but
	 * on very high density outputs this can be a higher value (often 2).
	 *
	 * This can be used if you want to create pixel based data for a
	 * particular monitor, but most of the time you’re drawing to a window
	 * where it is better to use gdk_window_get_scale_factor() instead.
	 *
	 * Deprecated: Use gdk_monitor_get_scale_factor() instead
	 *
	 * Params:
	 *     monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 *
	 * Returns: the scale factor
	 *
	 * Since: 3.10
	 */
	public int getMonitorScaleFactor(int monitorNum)
	{
		return gdk_screen_get_monitor_scale_factor(gdkScreen, monitorNum);
	}

	/**
	 * Gets the width in millimeters of the specified monitor, if available.
	 *
	 * Deprecated: Use gdk_monitor_get_width_mm() instead
	 *
	 * Params:
	 *     monitorNum = number of the monitor, between 0 and gdk_screen_get_n_monitors (screen)
	 *
	 * Returns: the width of the monitor, or -1 if not available
	 *
	 * Since: 2.14
	 */
	public int getMonitorWidthMm(int monitorNum)
	{
		return gdk_screen_get_monitor_width_mm(gdkScreen, monitorNum);
	}

	/**
	 * Retrieves the #GdkRectangle representing the size and position of
	 * the “work area” on a monitor within the entire screen area. The returned
	 * geometry is in ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * The work area should be considered when positioning menus and
	 * similar popups, to avoid placing them below panels, docks or other
	 * desktop components.
	 *
	 * Note that not all backends may have a concept of workarea. This
	 * function will return the monitor geometry if a workarea is not
	 * available, or does not apply.
	 *
	 * Monitor numbers start at 0. To obtain the number of monitors of
	 * @screen, use gdk_screen_get_n_monitors().
	 *
	 * Deprecated: Use gdk_monitor_get_workarea() instead
	 *
	 * Params:
	 *     monitorNum = the monitor number
	 *     dest = a #GdkRectangle to be filled with
	 *         the monitor workarea
	 *
	 * Since: 3.4
	 */
	public void getMonitorWorkarea(int monitorNum, out GdkRectangle dest)
	{
		gdk_screen_get_monitor_workarea(gdkScreen, monitorNum, &dest);
	}

	/**
	 * Returns the number of monitors which @screen consists of.
	 *
	 * Deprecated: Use gdk_display_get_n_monitors() instead
	 *
	 * Returns: number of monitors which @screen consists of
	 *
	 * Since: 2.2
	 */
	public int getNMonitors()
	{
		return gdk_screen_get_n_monitors(gdkScreen);
	}

	/**
	 * Gets the index of @screen among the screens in the display
	 * to which it belongs. (See gdk_screen_get_display())
	 *
	 * Returns: the index
	 *
	 * Since: 2.2
	 */
	public int getNumber()
	{
		return gdk_screen_get_number(gdkScreen);
	}

	/**
	 * Gets the primary monitor for @screen.  The primary monitor
	 * is considered the monitor where the “main desktop” lives.
	 * While normal application windows typically allow the window
	 * manager to place the windows, specialized desktop applications
	 * such as panels should place themselves on the primary monitor.
	 *
	 * If no primary monitor is configured by the user, the return value
	 * will be 0, defaulting to the first monitor.
	 *
	 * Deprecated: Use gdk_display_get_primary_monitor() instead
	 *
	 * Returns: An integer index for the primary monitor, or 0 if none is configured.
	 *
	 * Since: 2.20
	 */
	public int getPrimaryMonitor()
	{
		return gdk_screen_get_primary_monitor(gdkScreen);
	}

	/**
	 * Gets the resolution for font handling on the screen; see
	 * gdk_screen_set_resolution() for full details.
	 *
	 * Returns: the current resolution, or -1 if no resolution
	 *     has been set.
	 *
	 * Since: 2.10
	 */
	public double getResolution()
	{
		return gdk_screen_get_resolution(gdkScreen);
	}

	/**
	 * Gets a visual to use for creating windows with an alpha channel.
	 * The windowing system on which GTK+ is running
	 * may not support this capability, in which case %NULL will
	 * be returned. Even if a non-%NULL value is returned, its
	 * possible that the window’s alpha channel won’t be honored
	 * when displaying the window on the screen: in particular, for
	 * X an appropriate windowing manager and compositing manager
	 * must be running to provide appropriate display.
	 *
	 * This functionality is not implemented in the Windows backend.
	 *
	 * For setting an overall opacity for a top-level window, see
	 * gdk_window_set_opacity().
	 *
	 * Returns: a visual to use for windows
	 *     with an alpha channel or %NULL if the capability is not
	 *     available.
	 *
	 * Since: 2.8
	 */
	public Visual getRgbaVisual()
	{
		auto p = gdk_screen_get_rgba_visual(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Gets the root window of @screen.
	 *
	 * Returns: the root window
	 *
	 * Since: 2.2
	 */
	public Window getRootWindow()
	{
		auto p = gdk_screen_get_root_window(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Window)(cast(GdkWindow*) p);
	}

	/**
	 * Retrieves a desktop-wide setting such as double-click time
	 * for the #GdkScreen @screen.
	 *
	 * FIXME needs a list of valid settings here, or a link to
	 * more information.
	 *
	 * Params:
	 *     name = the name of the setting
	 *     value = location to store the value of the setting
	 *
	 * Returns: %TRUE if the setting existed and a value was stored
	 *     in @value, %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool getSetting(string name, Value value)
	{
		return gdk_screen_get_setting(gdkScreen, Str.toStringz(name), (value is null) ? null : value.getValueStruct()) != 0;
	}

	/**
	 * Get the system’s default visual for @screen.
	 * This is the visual for the root window of the display.
	 * The return value should not be freed.
	 *
	 * Returns: the system visual
	 *
	 * Since: 2.2
	 */
	public Visual getSystemVisual()
	{
		auto p = gdk_screen_get_system_visual(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Visual)(cast(GdkVisual*) p);
	}

	/**
	 * Obtains a list of all toplevel windows known to GDK on the screen @screen.
	 * A toplevel window is a child of the root window (see
	 * gdk_get_default_root_window()).
	 *
	 * The returned list should be freed with g_list_free(), but
	 * its elements need not be freed.
	 *
	 * Returns: list of toplevel windows, free with g_list_free()
	 *
	 * Since: 2.2
	 */
	public ListG getToplevelWindows()
	{
		auto p = gdk_screen_get_toplevel_windows(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the width of @screen in pixels. The returned size is in
	 * ”application pixels”, not in ”device pixels” (see
	 * gdk_screen_get_monitor_scale_factor()).
	 *
	 * Deprecated: Use per-monitor information instead
	 *
	 * Returns: the width of @screen in pixels.
	 *
	 * Since: 2.2
	 */
	public int getWidth()
	{
		return gdk_screen_get_width(gdkScreen);
	}

	/**
	 * Gets the width of @screen in millimeters.
	 *
	 * Note that this value is somewhat ill-defined when the screen
	 * has multiple monitors of different resolution. It is recommended
	 * to use the monitor dimensions instead.
	 *
	 * Deprecated: Use per-monitor information instead
	 *
	 * Returns: the width of @screen in millimeters.
	 *
	 * Since: 2.2
	 */
	public int getWidthMm()
	{
		return gdk_screen_get_width_mm(gdkScreen);
	}

	/**
	 * Returns a #GList of #GdkWindows representing the current
	 * window stack.
	 *
	 * On X11, this is done by inspecting the _NET_CLIENT_LIST_STACKING
	 * property on the root window, as described in the
	 * [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
	 * If the window manager does not support the
	 * _NET_CLIENT_LIST_STACKING hint, this function returns %NULL.
	 *
	 * On other platforms, this function may return %NULL, depending on whether
	 * it is implementable on that platform.
	 *
	 * The returned list is newly allocated and owns references to the
	 * windows it contains, so it should be freed using g_list_free() and
	 * its windows unrefed using g_object_unref() when no longer needed.
	 *
	 * Returns: a
	 *     list of #GdkWindows for the current window stack, or %NULL.
	 *
	 * Since: 2.10
	 */
	public ListG getWindowStack()
	{
		auto p = gdk_screen_get_window_stack(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Returns whether windows with an RGBA visual can reasonably
	 * be expected to have their alpha channel drawn correctly on
	 * the screen.
	 *
	 * On X11 this function returns whether a compositing manager is
	 * compositing @screen.
	 *
	 * Returns: Whether windows with RGBA visuals can reasonably be
	 *     expected to have their alpha channels drawn correctly on the screen.
	 *
	 * Since: 2.10
	 */
	public bool isComposited()
	{
		return gdk_screen_is_composited(gdkScreen) != 0;
	}

	/**
	 * Lists the available visuals for the specified @screen.
	 * A visual describes a hardware image data format.
	 * For example, a visual might support 24-bit color, or 8-bit color,
	 * and might expect pixels to be in a certain format.
	 *
	 * Call g_list_free() on the return value when you’re finished with it.
	 *
	 * Returns: a list of visuals; the list must be freed, but not its contents
	 *
	 * Since: 2.2
	 */
	public ListG listVisuals()
	{
		auto p = gdk_screen_list_visuals(gdkScreen);

		if(p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) p);
	}

	/**
	 * Determines the name to pass to gdk_display_open() to get
	 * a #GdkDisplay with this screen as the default screen.
	 *
	 * Returns: a newly allocated string, free with g_free()
	 *
	 * Since: 2.2
	 */
	public string makeDisplayName()
	{
		auto retStr = gdk_screen_make_display_name(gdkScreen);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets the default font options for the screen. These
	 * options will be set on any #PangoContext’s newly created
	 * with gdk_pango_context_get_for_screen(). Changing the
	 * default set of font options does not affect contexts that
	 * have already been created.
	 *
	 * Params:
	 *     options = a #cairo_font_options_t, or %NULL to unset any
	 *         previously set default font options.
	 *
	 * Since: 2.10
	 */
	public void setFontOptions(FontOption options)
	{
		gdk_screen_set_font_options(gdkScreen, (options is null) ? null : options.getFontOptionStruct());
	}

	/**
	 * Sets the resolution for font handling on the screen. This is a
	 * scale factor between points specified in a #PangoFontDescription
	 * and cairo units. The default value is 96, meaning that a 10 point
	 * font will be 13 units high. (10 * 96. / 72. = 13.3).
	 *
	 * Params:
	 *     dpi = the resolution in “dots per inch”. (Physical inches aren’t actually
	 *         involved; the terminology is conventional.)
	 *
	 * Since: 2.10
	 */
	public void setResolution(double dpi)
	{
		gdk_screen_set_resolution(gdkScreen, dpi);
	}

	/**
	 * The ::composited-changed signal is emitted when the composited
	 * status of the screen changes
	 *
	 * Since: 2.10
	 */
	gulong addOnCompositedChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "composited-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::monitors-changed signal is emitted when the number, size
	 * or position of the monitors attached to the screen change.
	 *
	 * Only for X11 and OS X for now. A future implementation for Win32
	 * may be a possibility.
	 *
	 * Since: 2.14
	 */
	gulong addOnMonitorsChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "monitors-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The ::size-changed signal is emitted when the pixel width or
	 * height of a screen changes.
	 *
	 * Since: 2.2
	 */
	gulong addOnSizeChanged(void delegate(Screen) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "size-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
