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


module gdk.MonitorG;

private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * GdkMonitor objects represent the individual outputs that are
 * associated with a #GdkDisplay. GdkDisplay has APIs to enumerate
 * monitors with gdk_display_get_n_monitors() and gdk_display_get_monitor(), and
 * to find particular monitors with gdk_display_get_primary_monitor() or
 * gdk_display_get_monitor_at_window().
 * 
 * GdkMonitor was introduced in GTK+ 3.22 and supersedes earlier
 * APIs in GdkScreen to obtain monitor-related information.
 */
public class MonitorG : ObjectG
{
	/** the main Gtk struct */
	protected GdkMonitor* gdkMonitor;

	/** Get the main Gtk struct */
	public GdkMonitor* getMonitorGStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gdkMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkMonitor;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkMonitor* gdkMonitor, bool ownedRef = false)
	{
		this.gdkMonitor = gdkMonitor;
		super(cast(GObject*)gdkMonitor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_monitor_get_type();
	}

	/**
	 * Gets the display that this monitor belongs to.
	 *
	 * Returns: the display
	 *
	 * Since: 3.22
	 */
	public Display getDisplay()
	{
		auto p = gdk_monitor_get_display(gdkMonitor);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Retrieves the size and position of an individual monitor within the
	 * display coordinate space. The returned geometry is in  ”application pixels”,
	 * not in ”device pixels” (see gdk_monitor_get_scale_factor()).
	 *
	 * Params:
	 *     geometry = a #GdkRectangle to be filled with the monitor geometry
	 *
	 * Since: 3.22
	 */
	public void getGeometry(out GdkRectangle geometry)
	{
		gdk_monitor_get_geometry(gdkMonitor, &geometry);
	}

	/**
	 * Gets the height in millimeters of the monitor.
	 *
	 * Returns: the physical height of the monitor
	 *
	 * Since: 3.22
	 */
	public int getHeightMm()
	{
		return gdk_monitor_get_height_mm(gdkMonitor);
	}

	/**
	 * Gets the name of the monitor's manufacturer, if available.
	 *
	 * Returns: the name of the manufacturer, or %NULL
	 */
	public string getManufacturer()
	{
		return Str.toString(gdk_monitor_get_manufacturer(gdkMonitor));
	}

	/**
	 * Gets the a string identifying the monitor model, if available.
	 *
	 * Returns: the monitor model, or %NULL
	 */
	public string getModel()
	{
		return Str.toString(gdk_monitor_get_model(gdkMonitor));
	}

	/**
	 * Gets the refresh rate of the monitor, if available.
	 *
	 * The value is in milli-Hertz, so a refresh rate of 60Hz
	 * is returned as 60000.
	 *
	 * Returns: the refresh rate in milli-Hertz, or 0
	 *
	 * Since: 3.22
	 */
	public int getRefreshRate()
	{
		return gdk_monitor_get_refresh_rate(gdkMonitor);
	}

	/**
	 * Gets the internal scale factor that maps from monitor coordinates
	 * to the actual device pixels. On traditional systems this is 1, but
	 * on very high density outputs this can be a higher value (often 2).
	 *
	 * This can be used if you want to create pixel based data for a
	 * particular monitor, but most of the time you’re drawing to a window
	 * where it is better to use gdk_window_get_scale_factor() instead.
	 *
	 * Returns: the scale factor
	 *
	 * Since: 3.22
	 */
	public int getScaleFactor()
	{
		return gdk_monitor_get_scale_factor(gdkMonitor);
	}

	/**
	 * Gets information about the layout of red, green and blue
	 * primaries for each pixel in this monitor, if available.
	 *
	 * Returns: the subpixel layout
	 *
	 * Since: 3.22
	 */
	public GdkSubpixelLayout getSubpixelLayout()
	{
		return gdk_monitor_get_subpixel_layout(gdkMonitor);
	}

	/**
	 * Gets the width in millimeters of the monitor.
	 *
	 * Returns: the physical width of the monitor
	 *
	 * Since: 3.22
	 */
	public int getWidthMm()
	{
		return gdk_monitor_get_width_mm(gdkMonitor);
	}

	/**
	 * Retrieves the size and position of the “work area” on a monitor
	 * within the display coordinate space. The returned geometry is in
	 * ”application pixels”, not in ”device pixels” (see
	 * gdk_monitor_get_scale_factor()).
	 *
	 * The work area should be considered when positioning menus and
	 * similar popups, to avoid placing them below panels, docks or other
	 * desktop components.
	 *
	 * Note that not all backends may have a concept of workarea. This
	 * function will return the monitor geometry if a workarea is not
	 * available, or does not apply.
	 *
	 * Params:
	 *     workarea = a #GdkRectangle to be filled with
	 *         the monitor workarea
	 *
	 * Since: 3.22
	 */
	public void getWorkarea(out GdkRectangle workarea)
	{
		gdk_monitor_get_workarea(gdkMonitor, &workarea);
	}

	/**
	 * Gets whether this monitor should be considered primary
	 * (see gdk_display_get_primary_monitor()).
	 *
	 * Returns: %TRUE if @monitor is primary
	 *
	 * Since: 3.22
	 */
	public bool isPrimary()
	{
		return gdk_monitor_is_primary(gdkMonitor) != 0;
	}

	/** */
	gulong addOnInvalidate(void delegate(MonitorG) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "invalidate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
