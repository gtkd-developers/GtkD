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


module gstreamer.DeviceProvider;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.Bus;
private import gstreamer.Device;
private import gstreamer.DeviceProviderFactory;
private import gstreamer.ObjectGst;
private import gstreamer.Plugin;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * A #GstDeviceProvider subclass is provided by a plugin that handles devices
 * if there is a way to programatically list connected devices. It can also
 * optionally provide updates to the list of connected devices.
 * 
 * Each #GstDeviceProvider subclass is a singleton, a plugin should
 * normally provide a single subclass for all devices.
 * 
 * Applications would normally use a #GstDeviceMonitor to monitor devices
 * from all relevant providers.
 *
 * Since: 1.4
 */
public class DeviceProvider : ObjectGst
{
	/** the main Gtk struct */
	protected GstDeviceProvider* gstDeviceProvider;

	/** Get the main Gtk struct */
	public GstDeviceProvider* getDeviceProviderStruct()
	{
		return gstDeviceProvider;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDeviceProvider;
	}

	protected override void setStruct(GObject* obj)
	{
		gstDeviceProvider = cast(GstDeviceProvider*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDeviceProvider* gstDeviceProvider, bool ownedRef = false)
	{
		this.gstDeviceProvider = gstDeviceProvider;
		super(cast(GstObject*)gstDeviceProvider, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_device_provider_get_type();
	}

	/**
	 * Create a new device providerfactory capable of instantiating objects of the
	 * @type and add the factory to @plugin.
	 *
	 * Params:
	 *     plugin = #GstPlugin to register the device provider with, or %NULL for
	 *         a static device provider.
	 *     name = name of device providers of this type
	 *     rank = rank of device provider (higher rank means more importance when autoplugging)
	 *     type = GType of device provider to register
	 *
	 * Return: %TRUE, if the registering succeeded, %FALSE on error
	 *
	 * Since: 1.4
	 */
	public static bool register(Plugin plugin, string name, uint rank, GType type)
	{
		return gst_device_provider_register((plugin is null) ? null : plugin.getPluginStruct(), Str.toStringz(name), rank, type) != 0;
	}

	/** */
	public bool canMonitor()
	{
		return gst_device_provider_can_monitor(gstDeviceProvider) != 0;
	}

	/**
	 * Posts a message on the provider's #GstBus to inform applications that
	 * a new device has been added.
	 *
	 * This is for use by subclasses.
	 *
	 * Params:
	 *     device = a #GstDevice that has been added
	 *
	 * Since: 1.4
	 */
	public void deviceAdd(Device device)
	{
		gst_device_provider_device_add(gstDeviceProvider, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Posts a message on the provider's #GstBus to inform applications that
	 * a device has been removed.
	 *
	 * This is for use by subclasses.
	 *
	 * Params:
	 *     device = a #GstDevice that has been removed
	 *
	 * Since: 1.4
	 */
	public void deviceRemove(Device device)
	{
		gst_device_provider_device_remove(gstDeviceProvider, (device is null) ? null : device.getDeviceStruct());
	}

	/**
	 * Gets the #GstBus of this #GstDeviceProvider
	 *
	 * Return: a #GstBus
	 *
	 * Since: 1.4
	 */
	public Bus getBus()
	{
		auto p = gst_device_provider_get_bus(gstDeviceProvider);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Bus)(cast(GstBus*) p, true);
	}

	/**
	 * Gets a list of devices that this provider understands. This may actually
	 * probe the hardware if the provider is not currently started.
	 *
	 * Return: a #GList of
	 *     #GstDevice
	 *
	 * Since: 1.4
	 */
	public ListG getDevices()
	{
		auto p = gst_device_provider_get_devices(gstDeviceProvider);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Retrieves the factory that was used to create this device provider.
	 *
	 * Return: the #GstDeviceProviderFactory used for
	 *     creating this device provider. no refcounting is needed.
	 *
	 * Since: 1.4
	 */
	public DeviceProviderFactory getFactory()
	{
		auto p = gst_device_provider_get_factory(gstDeviceProvider);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DeviceProviderFactory)(cast(GstDeviceProviderFactory*) p);
	}

	/**
	 * Get the provider factory names of the #GstDeviceProvider instances that
	 * are hidden by @provider.
	 *
	 * Return: a list of hidden providers factory names or %NULL when
	 *     nothing is hidden by @provider. Free with g_strfreev.
	 *
	 * Since: 1.6
	 */
	public string[] getHiddenProviders()
	{
		auto retStr = gst_device_provider_get_hidden_providers(gstDeviceProvider);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Make @provider hide the devices from the factory with @name.
	 *
	 * This function is used when @provider will also provide the devices reported
	 * by provider factory @name. A monitor should stop monitoring the
	 * device provider with @name to avoid duplicate devices.
	 *
	 * Params:
	 *     name = a provider factory name
	 *
	 * Since: 1.6
	 */
	public void hideProvider(string name)
	{
		gst_device_provider_hide_provider(gstDeviceProvider, Str.toStringz(name));
	}

	/**
	 * Starts providering the devices. This will cause #GST_MESSAGE_DEVICE_ADDED
	 * and #GST_MESSAGE_DEVICE_REMOVED messages to be posted on the provider's bus
	 * when devices are added or removed from the system.
	 *
	 * Since the #GstDeviceProvider is a singleton,
	 * gst_device_provider_start() may already have been called by another
	 * user of the object, gst_device_provider_stop() needs to be called the same
	 * number of times.
	 *
	 * Return: %TRUE if the device providering could be started
	 *
	 * Since: 1.4
	 */
	public bool start()
	{
		return gst_device_provider_start(gstDeviceProvider) != 0;
	}

	/**
	 * Decreases the use-count by one. If the use count reaches zero, this
	 * #GstDeviceProvider will stop providering the devices. This needs to be
	 * called the same number of times that gst_device_provider_start() was called.
	 *
	 * Since: 1.4
	 */
	public void stop()
	{
		gst_device_provider_stop(gstDeviceProvider);
	}

	/**
	 * Make @provider unhide the devices from factory @name.
	 *
	 * This function is used when @provider will no longer provide the devices
	 * reported by provider factory @name. A monitor should start
	 * monitoring the devices from provider factory @name in order to see
	 * all devices again.
	 *
	 * Params:
	 *     name = a provider factory name
	 *
	 * Since: 1.6
	 */
	public void unhideProvider(string name)
	{
		gst_device_provider_unhide_provider(gstDeviceProvider, Str.toStringz(name));
	}

	protected class OnProviderHiddenDelegateWrapper
	{
		void delegate(string, DeviceProvider) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, DeviceProvider) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnProviderHiddenDelegateWrapper[] onProviderHiddenListeners;

	/** */
	gulong addOnProviderHidden(void delegate(string, DeviceProvider) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onProviderHiddenListeners ~= new OnProviderHiddenDelegateWrapper(dlg, 0, connectFlags);
		onProviderHiddenListeners[onProviderHiddenListeners.length - 1].handlerId = Signals.connectData(
			this,
			"provider-hidden",
			cast(GCallback)&callBackProviderHidden,
			cast(void*)onProviderHiddenListeners[onProviderHiddenListeners.length - 1],
			cast(GClosureNotify)&callBackProviderHiddenDestroy,
			connectFlags);
		return onProviderHiddenListeners[onProviderHiddenListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackProviderHidden(GstDeviceProvider* deviceproviderStruct, char* object,OnProviderHiddenDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(object), wrapper.outer);
	}
	
	extern(C) static void callBackProviderHiddenDestroy(OnProviderHiddenDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnProviderHidden(wrapper);
	}

	protected void internalRemoveOnProviderHidden(OnProviderHiddenDelegateWrapper source)
	{
		foreach(index, wrapper; onProviderHiddenListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onProviderHiddenListeners[index] = null;
				onProviderHiddenListeners = std.algorithm.remove(onProviderHiddenListeners, index);
				break;
			}
		}
	}
	

	protected class OnProviderUnhiddenDelegateWrapper
	{
		void delegate(string, DeviceProvider) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(string, DeviceProvider) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnProviderUnhiddenDelegateWrapper[] onProviderUnhiddenListeners;

	/** */
	gulong addOnProviderUnhidden(void delegate(string, DeviceProvider) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onProviderUnhiddenListeners ~= new OnProviderUnhiddenDelegateWrapper(dlg, 0, connectFlags);
		onProviderUnhiddenListeners[onProviderUnhiddenListeners.length - 1].handlerId = Signals.connectData(
			this,
			"provider-unhidden",
			cast(GCallback)&callBackProviderUnhidden,
			cast(void*)onProviderUnhiddenListeners[onProviderUnhiddenListeners.length - 1],
			cast(GClosureNotify)&callBackProviderUnhiddenDestroy,
			connectFlags);
		return onProviderUnhiddenListeners[onProviderUnhiddenListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackProviderUnhidden(GstDeviceProvider* deviceproviderStruct, char* object,OnProviderUnhiddenDelegateWrapper wrapper)
	{
		wrapper.dlg(Str.toString(object), wrapper.outer);
	}
	
	extern(C) static void callBackProviderUnhiddenDestroy(OnProviderUnhiddenDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnProviderUnhidden(wrapper);
	}

	protected void internalRemoveOnProviderUnhidden(OnProviderUnhiddenDelegateWrapper source)
	{
		foreach(index, wrapper; onProviderUnhiddenListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onProviderUnhiddenListeners[index] = null;
				onProviderUnhiddenListeners = std.algorithm.remove(onProviderUnhiddenListeners, index);
				break;
			}
		}
	}
	
}
