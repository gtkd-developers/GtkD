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


module gdk.MonitorGdk;

private import gdk.Display;
private import gdk.c.functions;
public  import gdk.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;


/**
 * `GdkMonitor` objects represent the individual outputs that are
 * associated with a `GdkDisplay`.
 * 
 * `GdkDisplay` keeps a `GListModel` to enumerate and monitor
 * monitors with [method@Gdk.Display.get_monitors]. You can use
 * [method@Gdk.Display.get_monitor_at_surface] to find a particular
 * monitor.
 */
public class MonitorGdk : ObjectG
{
	/** the main Gtk struct */
	protected GdkMonitor* gdkMonitor;

	/** Get the main Gtk struct */
	public GdkMonitor* getMonitorGdkStruct(bool transferOwnership = false)
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
	 * Gets the name of the monitor's connector, if available.
	 *
	 * Returns: the name of the connector
	 */
	public string getConnector()
	{
		return Str.toString(gdk_monitor_get_connector(gdkMonitor));
	}

	/**
	 * Gets the display that this monitor belongs to.
	 *
	 * Returns: the display
	 */
	public Display getDisplay()
	{
		auto __p = gdk_monitor_get_display(gdkMonitor);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) __p);
	}

	/**
	 * Retrieves the size and position of the monitor within the
	 * display coordinate space.
	 *
	 * The returned geometry is in  ”application pixels”, not in
	 * ”device pixels” (see [method@Gdk.Monitor.get_scale_factor]).
	 *
	 * Params:
	 *     geometry = a `GdkRectangle` to be filled with the monitor geometry
	 */
	public void getGeometry(out GdkRectangle geometry)
	{
		gdk_monitor_get_geometry(gdkMonitor, &geometry);
	}

	/**
	 * Gets the height in millimeters of the monitor.
	 *
	 * Returns: the physical height of the monitor
	 */
	public int getHeightMm()
	{
		return gdk_monitor_get_height_mm(gdkMonitor);
	}

	/**
	 * Gets the name or PNP ID of the monitor's manufacturer.
	 *
	 * Note that this value might also vary depending on actual
	 * display backend.
	 *
	 * The PNP ID registry is located at
	 * [https://uefi.org/pnp_id_list](https://uefi.org/pnp_id_list).
	 *
	 * Returns: the name of the manufacturer
	 */
	public string getManufacturer()
	{
		return Str.toString(gdk_monitor_get_manufacturer(gdkMonitor));
	}

	/**
	 * Gets the string identifying the monitor model, if available.
	 *
	 * Returns: the monitor model
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
	 */
	public int getRefreshRate()
	{
		return gdk_monitor_get_refresh_rate(gdkMonitor);
	}

	/**
	 * Gets the internal scale factor that maps from monitor coordinates
	 * to device pixels.
	 *
	 * On traditional systems this is 1, but on very high density outputs
	 * it can be a higher value (often 2).
	 *
	 * This can be used if you want to create pixel based data for a
	 * particular monitor, but most of the time you’re drawing to a surface
	 * where it is better to use [method@Gdk.Surface.get_scale_factor] instead.
	 *
	 * Returns: the scale factor
	 */
	public int getScaleFactor()
	{
		return gdk_monitor_get_scale_factor(gdkMonitor);
	}

	/**
	 * Gets information about the layout of red, green and blue
	 * primaries for pixels.
	 *
	 * Returns: the subpixel layout
	 */
	public GdkSubpixelLayout getSubpixelLayout()
	{
		return gdk_monitor_get_subpixel_layout(gdkMonitor);
	}

	/**
	 * Gets the width in millimeters of the monitor.
	 *
	 * Returns: the physical width of the monitor
	 */
	public int getWidthMm()
	{
		return gdk_monitor_get_width_mm(gdkMonitor);
	}

	/**
	 * Returns %TRUE if the @monitor object corresponds to a
	 * physical monitor.
	 *
	 * The @monitor becomes invalid when the physical monitor
	 * is unplugged or removed.
	 *
	 * Returns: %TRUE if the object corresponds to a physical monitor
	 */
	public bool isValid()
	{
		return gdk_monitor_is_valid(gdkMonitor) != 0;
	}

	/**
	 * Emitted when the output represented by @monitor gets disconnected.
	 */
	gulong addOnInvalidate(void delegate(MonitorGdk) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "invalidate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
