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


module gstreamer.Device;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gstreamer.Caps;
private import gstreamer.Element;
private import gstreamer.ObjectGst;
private import gstreamer.Structure;
private import gstreamerc.gstreamer;
public  import gstreamerc.gstreamertypes;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * #GstDevice are objects representing a device, they contain
 * relevant metadata about the device, such as its class and the #GstCaps
 * representing the media types it can produce or handle.
 * 
 * #GstDevice are created by #GstDeviceProvider objects which can be
 * aggregated by #GstDeviceMonitor objects.
 *
 * Since: 1.4
 */
public class Device : ObjectGst
{
	/** the main Gtk struct */
	protected GstDevice* gstDevice;

	/** Get the main Gtk struct */
	public GstDevice* getDeviceStruct()
	{
		return gstDevice;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstDevice;
	}

	protected override void setStruct(GObject* obj)
	{
		gstDevice = cast(GstDevice*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstDevice* gstDevice, bool ownedRef = false)
	{
		this.gstDevice = gstDevice;
		super(cast(GstObject*)gstDevice, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_device_get_type();
	}

	/**
	 * Creates the element with all of the required parameters set to use
	 * this device.
	 *
	 * Params:
	 *     name = name of new element, or %NULL to automatically
	 *         create a unique name.
	 *
	 * Return: a new #GstElement configured to use this device
	 *
	 * Since: 1.4
	 */
	public Element createElement(string name)
	{
		auto p = gst_device_create_element(gstDevice, Str.toStringz(name));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Element)(cast(GstElement*) p, true);
	}

	/**
	 * Getter for the #GstCaps that this device supports.
	 *
	 * Return: The #GstCaps supported by this device. Unref with
	 *     gst_caps_unref() when done.
	 *
	 * Since: 1.4
	 */
	public Caps getCaps()
	{
		auto p = gst_device_get_caps(gstDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Caps)(cast(GstCaps*) p, true);
	}

	/**
	 * Gets the "class" of a device. This is a "/" separated list of
	 * classes that represent this device. They are a subset of the
	 * classes of the #GstDeviceProvider that produced this device.
	 *
	 * Return: The device class. Free with g_free() after use.
	 *
	 * Since: 1.4
	 */
	public string getDeviceClass()
	{
		auto retStr = gst_device_get_device_class(gstDevice);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the user-friendly name of the device.
	 *
	 * Return: The device name. Free with g_free() after use.
	 *
	 * Since: 1.4
	 */
	public string getDisplayName()
	{
		auto retStr = gst_device_get_display_name(gstDevice);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the extra properties of a device.
	 *
	 * Return: The extra properties or %NULL when there are none.
	 *     Free with gst_structure_free() after use.
	 *
	 * Since: 1.6
	 */
	public Structure getProperties()
	{
		auto p = gst_device_get_properties(gstDevice);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Structure)(cast(GstStructure*) p, true);
	}

	/**
	 * Check if @device matches all of the given classes
	 *
	 * Params:
	 *     classes = a "/"-separated list of device classes to match, only match if
	 *         all classes are matched
	 *
	 * Return: %TRUE if @device matches.
	 *
	 * Since: 1.4
	 */
	public bool hasClasses(string classes)
	{
		return gst_device_has_classes(gstDevice, Str.toStringz(classes)) != 0;
	}

	/**
	 * Check if @factory matches all of the given classes
	 *
	 * Params:
	 *     classes = a %NULL terminated array of classes
	 *         to match, only match if all classes are matched
	 *
	 * Return: %TRUE if @device matches.
	 *
	 * Since: 1.4
	 */
	public bool hasClassesv(string[] classes)
	{
		return gst_device_has_classesv(gstDevice, Str.toStringzArray(classes)) != 0;
	}

	/**
	 * Tries to reconfigure an existing element to use the device. If this
	 * function fails, then one must destroy the element and create a new one
	 * using gst_device_create_element().
	 *
	 * Note: This should only be implemented for elements can change their
	 * device in the PLAYING state.
	 *
	 * Params:
	 *     element = a #GstElement
	 *
	 * Return: %TRUE if the element could be reconfigured to use this device,
	 *     %FALSE otherwise.
	 *
	 * Since: 1.4
	 */
	public bool reconfigureElement(Element element)
	{
		return gst_device_reconfigure_element(gstDevice, (element is null) ? null : element.getElementStruct()) != 0;
	}

	protected class OnRemovedDelegateWrapper
	{
		void delegate(Device) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Device) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnRemovedDelegateWrapper[] onRemovedListeners;

	/** */
	gulong addOnRemoved(void delegate(Device) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onRemovedListeners ~= new OnRemovedDelegateWrapper(dlg, 0, connectFlags);
		onRemovedListeners[onRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"removed",
			cast(GCallback)&callBackRemoved,
			cast(void*)onRemovedListeners[onRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackRemovedDestroy,
			connectFlags);
		return onRemovedListeners[onRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackRemoved(GstDevice* deviceStruct,OnRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(wrapper.outer);
	}
	
	extern(C) static void callBackRemovedDestroy(OnRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnRemoved(wrapper);
	}

	protected void internalRemoveOnRemoved(OnRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onRemovedListeners[index] = null;
				onRemovedListeners = std.algorithm.remove(onRemovedListeners, index);
				break;
			}
		}
	}
	
}
