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
 * inFile  = cairo-cairo-device-t.html
 * outPack = cairo
 * outFile = Device
 * strct   = cairo_device_t
 * realStrct=
 * ctorStrct=
 * clss    = Device
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- cairo_device_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- cairo_device_t* -> Device
 * module aliases:
 * local aliases:
 * overrides:
 */

module cairo.Device;

public  import gtkc.cairotypes;

private import gtkc.cairo;
private import glib.ConstructionException;






/**
 * Description
 * Devices are the abstraction Cairo employs for the rendering system
 * used by a cairo_surface_t. You can get the device of a surface using
 * cairo_surface_get_device().
 * Devices are created using custom functions specific to the rendering
 * system you want to use. See the documentation for the surface types
 * for those functions.
 * An important function that devices fulfill is sharing access to the
 * rendering system between Cairo and your application. If you want to
 * access a device directly that you used to draw to with Cairo, you must
 * first call cairo_device_flush() to ensure that Cairo finishes all
 * operations on the device and resets it to a clean state.
 * Cairo also provides the functions cairo_device_acquire() and
 * cairo_device_release() to synchronize access to the rendering system
 * in a multithreaded environment. This is done internally, but can also
 * be used by applications.
 * Putting this all together, a function that works with devices should
 * look something like this:
 * $(DDOC_COMMENT example)
 * Note
 * Please refer to the documentation of each backend for
 * additional usage requirements, guarantees provided, and
 * interactions with existing surface API of the device functions for
 * surfaces of that type.
 */
public class Device
{
	
	/** the main Gtk struct */
	protected cairo_device_t* cairo_device;
	
	
	public cairo_device_t* getDeviceStruct()
	{
		return cairo_device;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)cairo_device;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (cairo_device_t* cairo_device)
	{
		this.cairo_device = cairo_device;
	}
	
	/**
	 */
	
	/**
	 * Increases the reference count on device by one. This prevents
	 * device from being destroyed until a matching call to
	 * cairo_device_destroy() is made.
	 * The number of references to a cairo_device_t can be get using
	 * cairo_device_get_reference_count().
	 * Since 1.10
	 * Returns: the referenced cairo_device_t.
	 */
	public Device reference()
	{
		// cairo_device_t * cairo_device_reference (cairo_device_t *device);
		auto p = cairo_device_reference(cairo_device);
		
		if(p is null)
		{
			return null;
		}
		
		return new Device(cast(cairo_device_t*) p);
	}
	
	/**
	 * Decreases the reference count on device by one. If the result is
	 * zero, then device and all associated resources are freed. See
	 * cairo_device_reference().
	 * This function may acquire devices if the last reference was dropped.
	 * Since 1.10
	 */
	public void destroy()
	{
		// void cairo_device_destroy (cairo_device_t *device);
		cairo_device_destroy(cairo_device);
	}
	
	/**
	 * Checks whether an error has previously occurred for this
	 * device.
	 * Since 1.10
	 * Returns: CAIRO_STATUS_SUCCESS on success or an error code if the device is in an error state.
	 */
	public cairo_status_t status()
	{
		// cairo_status_t cairo_device_status (cairo_device_t *device);
		return cairo_device_status(cairo_device);
	}
	
	/**
	 * This function finishes the device and drops all references to
	 * external resources. All surfaces, fonts and other objects created
	 * for this device will be finished, too.
	 * Further operations on the device will not affect the device but
	 * will instead trigger a CAIRO_STATUS_DEVICE_FINISHED error.
	 * When the last call to cairo_device_destroy() decreases the
	 * reference count to zero, cairo will call cairo_device_finish() if
	 * it hasn't been called already, before freeing the resources
	 * associated with the device.
	 * This function may acquire devices.
	 * Since 1.10
	 */
	public void finish()
	{
		// void cairo_device_finish (cairo_device_t *device);
		cairo_device_finish(cairo_device);
	}
	
	/**
	 * Finish any pending operations for the device and also restore any
	 * temporary modifications cairo has made to the device's state.
	 * This function must be called before switching from using the
	 * device with Cairo to operating on it directly with native APIs.
	 * If the device doesn't support direct access, then this function
	 * does nothing.
	 * This function may acquire devices.
	 * Since 1.10
	 */
	public void flush()
	{
		// void cairo_device_flush (cairo_device_t *device);
		cairo_device_flush(cairo_device);
	}
	
	/**
	 * This function returns the type of the device. See cairo_device_type_t
	 * for available types.
	 * Since 1.10
	 * Params:
	 * device = a cairo_device_t
	 * Returns: The type of device.
	 */
	public cairo_device_type_t getType()
	{
		// cairo_device_type_t cairo_device_get_type (cairo_device_t *device);
		return cairo_device_get_type(cairo_device);
	}
	
	/**
	 * Returns the current reference count of device.
	 * Since 1.10
	 * Returns: the current reference count of device. If the object is a nil object, 0 will be returned.
	 */
	public uint getReferenceCount()
	{
		// unsigned int cairo_device_get_reference_count (cairo_device_t *device);
		return cairo_device_get_reference_count(cairo_device);
	}
	
	/**
	 * Attach user data to device. To remove user data from a surface,
	 * call this function with the key that was used to set it and NULL
	 * for data.
	 * Since 1.10
	 * Params:
	 * key = the address of a cairo_user_data_key_t to attach the user data to
	 * userData = the user data to attach to the cairo_device_t
	 * destroy = a cairo_destroy_func_t which will be called when the
	 * cairo_t is destroyed or when new user data is attached using the
	 * same key.
	 * Returns: CAIRO_STATUS_SUCCESS or CAIRO_STATUS_NO_MEMORY if a slot could not be allocated for the user data.
	 */
	public cairo_status_t setUserData(cairo_user_data_key_t* key, void* userData, cairo_destroy_func_t destroy)
	{
		// cairo_status_t cairo_device_set_user_data (cairo_device_t *device,  const cairo_user_data_key_t *key,  void *user_data,  cairo_destroy_func_t destroy);
		return cairo_device_set_user_data(cairo_device, key, userData, destroy);
	}
	
	/**
	 * Return user data previously attached to device using the
	 * specified key. If no user data has been attached with the given
	 * key this function returns NULL.
	 * Since 1.10
	 * Params:
	 * key = the address of the cairo_user_data_key_t the user data was
	 * attached to
	 * Returns: the user data previously attached or NULL.
	 */
	public void* getUserData(cairo_user_data_key_t* key)
	{
		// void * cairo_device_get_user_data (cairo_device_t *device,  const cairo_user_data_key_t *key);
		return cairo_device_get_user_data(cairo_device, key);
	}
	
	/**
	 * Acquires the device for the current thread. This function will block
	 * until no other thread has acquired the device.
	 * If the return value is CAIRO_STATUS_SUCCESS, you successfully acquired the
	 * device. From now on your thread owns the device and no other thread will be
	 * able to acquire it until a matching call to cairo_device_release(). It is
	 * allowed to recursively acquire the device multiple times from the same
	 * thread.
	 * Note
	 * You must never acquire two different devices at the same time
	 * unless this is explicitly allowed. Otherwise the possibility of deadlocks
	 * exist.
	 * As various Cairo functions can acquire devices when called, these functions
	 * may also cause deadlocks when you call them with an acquired device. So you
	 * must not have a device acquired when calling them. These functions are
	 * marked in the documentation.
	 * Since 1.10
	 * Returns: CAIRO_STATUS_SUCCESS on success or an error code if the device is in an error state and could not be acquired. After a successful call to cairo_device_acquire(), a matching call to cairo_device_release() is required.
	 */
	public cairo_status_t acquire()
	{
		// cairo_status_t cairo_device_acquire (cairo_device_t *device);
		return cairo_device_acquire(cairo_device);
	}
	
	/**
	 * Releases a device previously acquired using cairo_device_acquire(). See
	 * that function for details.
	 * Since 1.10
	 */
	public void release()
	{
		// void cairo_device_release (cairo_device_t *device);
		cairo_device_release(cairo_device);
	}
}
