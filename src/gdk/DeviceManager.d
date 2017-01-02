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


module gdk.DeviceManager;

private import gdk.Device;
private import gdk.Display;
private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtkc.gdk;
public  import gtkc.gdktypes;
private import std.algorithm;


/**
 * In addition to a single pointer and keyboard for user interface input,
 * GDK contains support for a variety of input devices, including graphics
 * tablets, touchscreens and multiple pointers/keyboards interacting
 * simultaneously with the user interface. Such input devices often have
 * additional features, such as sub-pixel positioning information and
 * additional device-dependent information.
 * 
 * In order to query the device hierarchy and be aware of changes in the
 * device hierarchy (such as virtual devices being created or removed, or
 * physical devices being plugged or unplugged), GDK provides
 * #GdkDeviceManager.
 * 
 * By default, and if the platform supports it, GDK is aware of multiple
 * keyboard/pointer pairs and multitouch devices. This behavior can be
 * changed by calling gdk_disable_multidevice() before gdk_display_open().
 * There should rarely be a need to do that though, since GDK defaults
 * to a compatibility mode in which it will emit just one enter/leave
 * event pair for all devices on a window. To enable per-device
 * enter/leave events and other multi-pointer interaction features,
 * gdk_window_set_support_multidevice() must be called on
 * #GdkWindows (or gtk_widget_set_support_multidevice() on widgets).
 * window. See the gdk_window_set_support_multidevice() documentation
 * for more information.
 * 
 * On X11, multi-device support is implemented through XInput 2.
 * Unless gdk_disable_multidevice() is called, the XInput 2
 * #GdkDeviceManager implementation will be used as the input source.
 * Otherwise either the core or XInput 1 implementations will be used.
 * 
 * For simple applications that don’t have any special interest in
 * input devices, the so-called “client pointer”
 * provides a reasonable approximation to a simple setup with a single
 * pointer and keyboard. The device that has been set as the client
 * pointer can be accessed via gdk_device_manager_get_client_pointer().
 * 
 * Conceptually, in multidevice mode there are 2 device types. Virtual
 * devices (or master devices) are represented by the pointer cursors
 * and keyboard foci that are seen on the screen. Physical devices (or
 * slave devices) represent the hardware that is controlling the virtual
 * devices, and thus have no visible cursor on the screen.
 * 
 * Virtual devices are always paired, so there is a keyboard device for every
 * pointer device. Associations between devices may be inspected through
 * gdk_device_get_associated_device().
 * 
 * There may be several virtual devices, and several physical devices could
 * be controlling each of these virtual devices. Physical devices may also
 * be “floating”, which means they are not attached to any virtual device.
 * 
 * # Master and slave devices
 * 
 * |[
 * carlos@sacarino:~$ xinput list
 * ⎡ Virtual core pointer                          id=2    [master pointer  (3)]
 * ⎜   ↳ Virtual core XTEST pointer                id=4    [slave  pointer  (2)]
 * ⎜   ↳ Wacom ISDv4 E6 Pen stylus                 id=10   [slave  pointer  (2)]
 * ⎜   ↳ Wacom ISDv4 E6 Finger touch               id=11   [slave  pointer  (2)]
 * ⎜   ↳ SynPS/2 Synaptics TouchPad                id=13   [slave  pointer  (2)]
 * ⎜   ↳ TPPS/2 IBM TrackPoint                     id=14   [slave  pointer  (2)]
 * ⎜   ↳ Wacom ISDv4 E6 Pen eraser                 id=16   [slave  pointer  (2)]
 * ⎣ Virtual core keyboard                         id=3    [master keyboard (2)]
 * ↳ Virtual core XTEST keyboard               id=5    [slave  keyboard (3)]
 * ↳ Power Button                              id=6    [slave  keyboard (3)]
 * ↳ Video Bus                                 id=7    [slave  keyboard (3)]
 * ↳ Sleep Button                              id=8    [slave  keyboard (3)]
 * ↳ Integrated Camera                         id=9    [slave  keyboard (3)]
 * ↳ AT Translated Set 2 keyboard              id=12   [slave  keyboard (3)]
 * ↳ ThinkPad Extra Buttons                    id=15   [slave  keyboard (3)]
 * ]|
 * 
 * By default, GDK will automatically listen for events coming from all
 * master devices, setting the #GdkDevice for all events coming from input
 * devices. Events containing device information are #GDK_MOTION_NOTIFY,
 * #GDK_BUTTON_PRESS, #GDK_2BUTTON_PRESS, #GDK_3BUTTON_PRESS,
 * #GDK_BUTTON_RELEASE, #GDK_SCROLL, #GDK_KEY_PRESS, #GDK_KEY_RELEASE,
 * #GDK_ENTER_NOTIFY, #GDK_LEAVE_NOTIFY, #GDK_FOCUS_CHANGE,
 * #GDK_PROXIMITY_IN, #GDK_PROXIMITY_OUT, #GDK_DRAG_ENTER, #GDK_DRAG_LEAVE,
 * #GDK_DRAG_MOTION, #GDK_DRAG_STATUS, #GDK_DROP_START, #GDK_DROP_FINISHED
 * and #GDK_GRAB_BROKEN. When dealing with an event on a master device,
 * it is possible to get the source (slave) device that the event originated
 * from via gdk_event_get_source_device().
 * 
 * On a standard session, all physical devices are connected by default to
 * the "Virtual Core Pointer/Keyboard" master devices, hence routing all events
 * through these. This behavior is only modified by device grabs, where the
 * slave device is temporarily detached for as long as the grab is held, and
 * more permanently by user modifications to the device hierarchy.
 * 
 * On certain application specific setups, it may make sense
 * to detach a physical device from its master pointer, and mapping it to
 * an specific window. This can be achieved by the combination of
 * gdk_device_grab() and gdk_device_set_mode().
 * 
 * In order to listen for events coming from devices
 * other than a virtual device, gdk_window_set_device_events() must be
 * called. Generally, this function can be used to modify the event mask
 * for any given device.
 * 
 * Input devices may also provide additional information besides X/Y.
 * For example, graphics tablets may also provide pressure and X/Y tilt
 * information. This information is device-dependent, and may be
 * queried through gdk_device_get_axis(). In multidevice mode, virtual
 * devices will change axes in order to always represent the physical
 * device that is routing events through it. Whenever the physical device
 * changes, the #GdkDevice:n-axes property will be notified, and
 * gdk_device_list_axes() will return the new device axes.
 * 
 * Devices may also have associated “keys” or
 * macro buttons. Such keys can be globally set to map into normal X
 * keyboard events. The mapping is set using gdk_device_set_key().
 * 
 * In GTK+ 3.20, a new #GdkSeat object has been introduced that
 * supersedes #GdkDeviceManager and should be preferred in newly
 * written code.
 */
public class DeviceManager : ObjectG
{
	/** the main Gtk struct */
	protected GdkDeviceManager* gdkDeviceManager;

	/** Get the main Gtk struct */
	public GdkDeviceManager* getDeviceManagerStruct()
	{
		return gdkDeviceManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gdkDeviceManager;
	}

	protected override void setStruct(GObject* obj)
	{
		gdkDeviceManager = cast(GdkDeviceManager*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GdkDeviceManager* gdkDeviceManager, bool ownedRef = false)
	{
		this.gdkDeviceManager = gdkDeviceManager;
		super(cast(GObject*)gdkDeviceManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gdk_device_manager_get_type();
	}

	/**
	 * Returns the client pointer, that is, the master pointer that acts as the core pointer
	 * for this application. In X11, window managers may change this depending on the interaction
	 * pattern under the presence of several pointers.
	 *
	 * You should use this function seldomly, only in code that isn’t triggered by a #GdkEvent
	 * and there aren’t other means to get a meaningful #GdkDevice to operate on.
	 *
	 * Deprecated: Use gdk_seat_get_pointer() instead.
	 *
	 * Return: The client pointer. This memory is
	 *     owned by GDK and must not be freed or unreferenced.
	 *
	 * Since: 3.0
	 */
	public Device getClientPointer()
	{
		auto p = gdk_device_manager_get_client_pointer(gdkDeviceManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Device)(cast(GdkDevice*) p);
	}

	/**
	 * Gets the #GdkDisplay associated to @device_manager.
	 *
	 * Return: the #GdkDisplay to which
	 *     @device_manager is associated to, or #NULL. This memory is
	 *     owned by GDK and must not be freed or unreferenced.
	 *
	 * Since: 3.0
	 */
	public Display getDisplay()
	{
		auto p = gdk_device_manager_get_display(gdkDeviceManager);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Display)(cast(GdkDisplay*) p);
	}

	/**
	 * Returns the list of devices of type @type currently attached to
	 * @device_manager.
	 *
	 * Deprecated: , use gdk_seat_get_pointer(), gdk_seat_get_keyboard()
	 * and gdk_seat_get_slaves() instead.
	 *
	 * Params:
	 *     type = device type to get.
	 *
	 * Return: a list of
	 *     #GdkDevices. The returned list must be
	 *     freed with g_list_free (). The list elements are owned by
	 *     GTK+ and must not be freed or unreffed.
	 *
	 * Since: 3.0
	 */
	public ListG listDevices(GdkDeviceType type)
	{
		auto p = gdk_device_manager_list_devices(gdkDeviceManager, type);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	protected class OnDeviceAddedDelegateWrapper
	{
		void delegate(Device, DeviceManager) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Device, DeviceManager) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeviceAddedDelegateWrapper[] onDeviceAddedListeners;

	/**
	 * The ::device-added signal is emitted either when a new master
	 * pointer is created, or when a slave (Hardware) input device
	 * is plugged in.
	 *
	 * Params:
	 *     device = the newly added #GdkDevice.
	 */
	gulong addOnDeviceAdded(void delegate(Device, DeviceManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeviceAddedListeners ~= new OnDeviceAddedDelegateWrapper(dlg, 0, connectFlags);
		onDeviceAddedListeners[onDeviceAddedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"device-added",
			cast(GCallback)&callBackDeviceAdded,
			cast(void*)onDeviceAddedListeners[onDeviceAddedListeners.length - 1],
			cast(GClosureNotify)&callBackDeviceAddedDestroy,
			connectFlags);
		return onDeviceAddedListeners[onDeviceAddedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeviceAdded(GdkDeviceManager* devicemanagerStruct, GdkDevice* device,OnDeviceAddedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Device)(device), wrapper.outer);
	}
	
	extern(C) static void callBackDeviceAddedDestroy(OnDeviceAddedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeviceAdded(wrapper);
	}

	protected void internalRemoveOnDeviceAdded(OnDeviceAddedDelegateWrapper source)
	{
		foreach(index, wrapper; onDeviceAddedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeviceAddedListeners[index] = null;
				onDeviceAddedListeners = std.algorithm.remove(onDeviceAddedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDeviceChangedDelegateWrapper
	{
		void delegate(Device, DeviceManager) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Device, DeviceManager) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeviceChangedDelegateWrapper[] onDeviceChangedListeners;

	/**
	 * The ::device-changed signal is emitted whenever a device
	 * has changed in the hierarchy, either slave devices being
	 * disconnected from their master device or connected to
	 * another one, or master devices being added or removed
	 * a slave device.
	 *
	 * If a slave device is detached from all master devices
	 * (gdk_device_get_associated_device() returns %NULL), its
	 * #GdkDeviceType will change to %GDK_DEVICE_TYPE_FLOATING,
	 * if it's attached, it will change to %GDK_DEVICE_TYPE_SLAVE.
	 *
	 * Params:
	 *     device = the #GdkDevice that changed.
	 */
	gulong addOnDeviceChanged(void delegate(Device, DeviceManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeviceChangedListeners ~= new OnDeviceChangedDelegateWrapper(dlg, 0, connectFlags);
		onDeviceChangedListeners[onDeviceChangedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"device-changed",
			cast(GCallback)&callBackDeviceChanged,
			cast(void*)onDeviceChangedListeners[onDeviceChangedListeners.length - 1],
			cast(GClosureNotify)&callBackDeviceChangedDestroy,
			connectFlags);
		return onDeviceChangedListeners[onDeviceChangedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeviceChanged(GdkDeviceManager* devicemanagerStruct, GdkDevice* device,OnDeviceChangedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Device)(device), wrapper.outer);
	}
	
	extern(C) static void callBackDeviceChangedDestroy(OnDeviceChangedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeviceChanged(wrapper);
	}

	protected void internalRemoveOnDeviceChanged(OnDeviceChangedDelegateWrapper source)
	{
		foreach(index, wrapper; onDeviceChangedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeviceChangedListeners[index] = null;
				onDeviceChangedListeners = std.algorithm.remove(onDeviceChangedListeners, index);
				break;
			}
		}
	}
	

	protected class OnDeviceRemovedDelegateWrapper
	{
		void delegate(Device, DeviceManager) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(Device, DeviceManager) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnDeviceRemovedDelegateWrapper[] onDeviceRemovedListeners;

	/**
	 * The ::device-removed signal is emitted either when a master
	 * pointer is removed, or when a slave (Hardware) input device
	 * is unplugged.
	 *
	 * Params:
	 *     device = the just removed #GdkDevice.
	 */
	gulong addOnDeviceRemoved(void delegate(Device, DeviceManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onDeviceRemovedListeners ~= new OnDeviceRemovedDelegateWrapper(dlg, 0, connectFlags);
		onDeviceRemovedListeners[onDeviceRemovedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"device-removed",
			cast(GCallback)&callBackDeviceRemoved,
			cast(void*)onDeviceRemovedListeners[onDeviceRemovedListeners.length - 1],
			cast(GClosureNotify)&callBackDeviceRemovedDestroy,
			connectFlags);
		return onDeviceRemovedListeners[onDeviceRemovedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackDeviceRemoved(GdkDeviceManager* devicemanagerStruct, GdkDevice* device,OnDeviceRemovedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(Device)(device), wrapper.outer);
	}
	
	extern(C) static void callBackDeviceRemovedDestroy(OnDeviceRemovedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnDeviceRemoved(wrapper);
	}

	protected void internalRemoveOnDeviceRemoved(OnDeviceRemovedDelegateWrapper source)
	{
		foreach(index, wrapper; onDeviceRemovedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onDeviceRemovedListeners[index] = null;
				onDeviceRemovedListeners = std.algorithm.remove(onDeviceRemovedListeners, index);
				break;
			}
		}
	}
	

	/**
	 * Disables multidevice support in GDK. This call must happen prior
	 * to gdk_display_open(), gtk_init(), gtk_init_with_args() or
	 * gtk_init_check() in order to take effect.
	 *
	 * Most common GTK+ applications won’t ever need to call this. Only
	 * applications that do mixed GDK/Xlib calls could want to disable
	 * multidevice support if such Xlib code deals with input devices in
	 * any way and doesn’t observe the presence of XInput 2.
	 *
	 * Since: 3.0
	 */
	public static void disableMultidevice()
	{
		gdk_disable_multidevice();
	}
}
