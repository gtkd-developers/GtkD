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


module gstreamer.DeviceMonitor;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gstreamer.Bus;
private import gstreamer.Caps;
private import gstreamer.ObjectGst;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;


/**
 * Applications should create a #GstDeviceMonitor when they want
 * to probe, list and monitor devices of a specific type. The
 * #GstDeviceMonitor will create the appropriate
 * #GstDeviceProvider objects and manage them. It will then post
 * messages on its #GstBus for devices that have been added and
 * removed.
 * 
 * The device monitor will monitor all devices matching the filters that
 * the application has set.
 * 
 * 
 * The basic use pattern of a device monitor is as follows:
 * |[
 * static gboolean
 * my_bus_func (GstBus * bus, GstMessage * message, gpointer user_data)
 * {
 * GstDevice *device;
 * gchar *name;
 * 
 * switch (GST_MESSAGE_TYPE (message)) {
 * case GST_MESSAGE_DEVICE_ADDED:
 * gst_message_parse_device_added (message, &device);
 * name = gst_device_get_display_name (device);
 * g_print("Device added: %s\n", name);
 * g_free (name);
 * break;
 * case GST_MESSAGE_DEVICE_REMOVED:
 * gst_message_parse_device_removed (message, &device);
 * name = gst_device_get_display_name (device);
 * g_print("Device removed: %s\n", name);
 * g_free (name);
 * break;
 * default:
 * break;
 * }
 * 
 * return G_SOURCE_CONTINUE;
 * }
 * 
 * GstDeviceMonitor *
 * setup_raw_video_source_device_monitor (void) {
 * GstDeviceMonitor *monitor;
 * GstBus *bus;
 * GstCaps *caps;
 * 
 * monitor = gst_device_monitor_new ();
 * 
 * bus = gst_device_monitor_get_bus (monitor);
 * gst_bus_add_watch (bus, my_bus_func, NULL);
 * gst_object_unref (bus);
 * 
 * caps = gst_caps_new_empty_simple ("video/x-raw");
 * gst_device_monitor_add_filter (monitor, "Video/Source", caps);
 * gst_caps_unref (caps);
 * 
 * gst_device_monitor_start (monitor);
 * 
 * return monitor;
 * }
 * ]|
 *
 * Since: 1.4
 */
public class DeviceMonitor : ObjectGst
{
	/** the main Gtk struct */
	protected GstDeviceMonitor* gstDeviceMonitor;

	/** Get the main Gtk struct */
	public GstDeviceMonitor* getDeviceMonitorStruct()
	{
		return gstDeviceMonitor;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDeviceMonitor;
	}

	protected override void setStruct(GObject* obj)
	{
		gstDeviceMonitor = cast(GstDeviceMonitor*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDeviceMonitor* gstDeviceMonitor, bool ownedRef = false)
	{
		this.gstDeviceMonitor = gstDeviceMonitor;
		super(cast(GstObject*)gstDeviceMonitor, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_device_monitor_get_type();
	}

	/**
	 * Create a new #GstDeviceMonitor
	 *
	 * Return: a new device monitor.
	 *
	 * Since: 1.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_device_monitor_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GstDeviceMonitor*) p, true);
	}

	/**
	 * Adds a filter for which #GstDevice will be monitored, any device that matches
	 * all these classes and the #GstCaps will be returned.
	 *
	 * If this function is called multiple times to add more filters, each will be
	 * matched independently. That is, adding more filters will not further restrict
	 * what devices are matched.
	 *
	 * The #GstCaps supported by the device as returned by gst_device_get_caps() are
	 * not intersected with caps filters added using this function.
	 *
	 * Filters must be added before the #GstDeviceMonitor is started.
	 *
	 * Params:
	 *     classes = device classes to use as filter or %NULL for any class
	 *     caps = the #GstCaps to filter or %NULL for ANY
	 *
	 * Return: The id of the new filter or 0 if no provider matched the filter's
	 *     classes.
	 *
	 * Since: 1.4
	 */
	public uint addFilter(string classes, Caps caps)
	{
		return gst_device_monitor_add_filter(gstDeviceMonitor, Str.toStringz(classes), (caps is null) ? null : caps.getCapsStruct());
	}

	/**
	 * Gets the #GstBus of this #GstDeviceMonitor
	 *
	 * Return: a #GstBus
	 *
	 * Since: 1.4
	 */
	public Bus getBus()
	{
		auto p = gst_device_monitor_get_bus(gstDeviceMonitor);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Bus)(cast(GstBus*) p, true);
	}

	/**
	 * Gets a list of devices from all of the relevant monitors. This may actually
	 * probe the hardware if the monitor is not currently started.
	 *
	 * Return: a #GList of
	 *     #GstDevice
	 *
	 * Since: 1.4
	 */
	public ListG getDevices()
	{
		auto p = gst_device_monitor_get_devices(gstDeviceMonitor);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Get a list of the currently selected device provider factories.
	 *
	 * This
	 *
	 * Return: A list of device provider factory names that are currently being
	 *     monitored by @monitor or %NULL when nothing is being monitored.
	 *
	 * Since: 1.6
	 */
	public string[] getProviders()
	{
		auto retStr = gst_device_monitor_get_providers(gstDeviceMonitor);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Get if @monitor is curretly showing all devices, even those from hidden
	 * providers.
	 *
	 * Return: %TRUE when all devices will be shown.
	 *
	 * Since: 1.6
	 */
	public bool getShowAllDevices()
	{
		return gst_device_monitor_get_show_all_devices(gstDeviceMonitor) != 0;
	}

	/**
	 * Removes a filter from the #GstDeviceMonitor using the id that was returned
	 * by gst_device_monitor_add_filter().
	 *
	 * Params:
	 *     filterId = the id of the filter
	 *
	 * Return: %TRUE of the filter id was valid, %FALSE otherwise
	 *
	 * Since: 1.4
	 */
	public bool removeFilter(uint filterId)
	{
		return gst_device_monitor_remove_filter(gstDeviceMonitor, filterId) != 0;
	}

	/**
	 * Set if all devices should be visible, even those devices from hidden
	 * providers. Setting @show_all to true might show some devices multiple times.
	 *
	 * Params:
	 *     showAll = show all devices
	 *
	 * Since: 1.6
	 */
	public void setShowAllDevices(bool showAll)
	{
		gst_device_monitor_set_show_all_devices(gstDeviceMonitor, showAll);
	}

	/**
	 * Starts monitoring the devices, one this has succeeded, the
	 * %GST_MESSAGE_DEVICE_ADDED and %GST_MESSAGE_DEVICE_REMOVED messages
	 * will be emitted on the bus when the list of devices changes.
	 *
	 * Return: %TRUE if the device monitoring could be started
	 *
	 * Since: 1.4
	 */
	public bool start()
	{
		return gst_device_monitor_start(gstDeviceMonitor) != 0;
	}

	/**
	 * Stops monitoring the devices.
	 *
	 * Since: 1.4
	 */
	public void stop()
	{
		gst_device_monitor_stop(gstDeviceMonitor);
	}
}
