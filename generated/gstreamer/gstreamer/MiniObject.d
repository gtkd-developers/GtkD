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


module gstreamer.MiniObject;

private import gobject.ObjectG;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;
private import gtkd.Loader;


/**
 * #GstMiniObject is a simple structure that can be used to implement refcounted
 * types.
 * 
 * Subclasses will include #GstMiniObject as the first member in their structure
 * and then call gst_mini_object_init() to initialize the #GstMiniObject fields.
 * 
 * gst_mini_object_ref() and gst_mini_object_unref() increment and decrement the
 * refcount respectively. When the refcount of a mini-object reaches 0, the
 * dispose function is called first and when this returns %TRUE, the free
 * function of the miniobject is called.
 * 
 * A copy can be made with gst_mini_object_copy().
 * 
 * gst_mini_object_is_writable() will return %TRUE when the refcount of the
 * object is exactly 1, meaning the current caller has the only reference to the
 * object. gst_mini_object_make_writable() will return a writable version of the
 * object, which might be a new copy when the refcount was not 1.
 * 
 * Opaque data can be associated with a #GstMiniObject with
 * gst_mini_object_set_qdata() and gst_mini_object_get_qdata(). The data is
 * meant to be specific to the particular object and is not automatically copied
 * with gst_mini_object_copy() or similar methods.
 * 
 * A weak reference can be added and remove with gst_mini_object_weak_ref()
 * and gst_mini_object_weak_unref() respectively.
 */
public class MiniObject
{
	/** the main Gtk struct */
	protected GstMiniObject* gstMiniObject;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMiniObject* getMiniObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMiniObject;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMiniObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMiniObject* gstMiniObject, bool ownedRef = false)
	{
		this.gstMiniObject = gstMiniObject;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTREAMER) && ownedRef )
			gst_mini_object_unref(gstMiniObject);
	}


	/**
	 * Creates a copy of the mini-object.
	 *
	 * MT safe
	 *
	 * Returns: the new mini-object if copying is
	 *     possible, %NULL otherwise.
	 */
	public MiniObject copy()
	{
		auto p = gst_mini_object_copy(gstMiniObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p, true);
	}

	/**
	 * This function gets back user data pointers stored via
	 * gst_mini_object_set_qdata().
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *
	 * Returns: The user data pointer set, or
	 *     %NULL
	 */
	public void* getQdata(GQuark quark)
	{
		return gst_mini_object_get_qdata(gstMiniObject, quark);
	}

	/**
	 * Initializes a mini-object with the desired type and copy/dispose/free
	 * functions.
	 *
	 * Params:
	 *     flags = initial #GstMiniObjectFlags
	 *     type = the #GType of the mini-object to create
	 *     copyFunc = the copy function, or %NULL
	 *     disposeFunc = the dispose function, or %NULL
	 *     freeFunc = the free function or %NULL
	 */
	public void init(uint flags, GType type, GstMiniObjectCopyFunction copyFunc, GstMiniObjectDisposeFunction disposeFunc, GstMiniObjectFreeFunction freeFunc)
	{
		gst_mini_object_init(gstMiniObject, flags, type, copyFunc, disposeFunc, freeFunc);
	}

	/**
	 * If @mini_object has the LOCKABLE flag set, check if the current EXCLUSIVE
	 * lock on @object is the only one, this means that changes to the object will
	 * not be visible to any other object.
	 *
	 * If the LOCKABLE flag is not set, check if the refcount of @mini_object is
	 * exactly 1, meaning that no other reference exists to the object and that the
	 * object is therefore writable.
	 *
	 * Modification of a mini-object should only be done after verifying that it
	 * is writable.
	 *
	 * Returns: %TRUE if the object is writable.
	 */
	public bool isWritable()
	{
		return gst_mini_object_is_writable(gstMiniObject) != 0;
	}

	/**
	 * Lock the mini-object with the specified access mode in @flags.
	 *
	 * Params:
	 *     flags = #GstLockFlags
	 *
	 * Returns: %TRUE if @object could be locked.
	 */
	public bool lock(GstLockFlags flags)
	{
		return gst_mini_object_lock(gstMiniObject, flags) != 0;
	}

	/**
	 * Checks if a mini-object is writable.  If not, a writable copy is made and
	 * returned.  This gives away the reference to the original mini object,
	 * and returns a reference to the new object.
	 *
	 * MT safe
	 *
	 * Returns: a mini-object (possibly the same pointer) that
	 *     is writable.
	 */
	public MiniObject makeWritable()
	{
		auto p = gst_mini_object_make_writable(gstMiniObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p, true);
	}

	alias doref = ref_;
	/**
	 * Increase the reference count of the mini-object.
	 *
	 * Note that the refcount affects the writability
	 * of @mini-object, see gst_mini_object_is_writable(). It is
	 * important to note that keeping additional references to
	 * GstMiniObject instances can potentially increase the number
	 * of memcpy operations in a pipeline, especially if the miniobject
	 * is a #GstBuffer.
	 *
	 * Returns: the mini-object.
	 */
	public MiniObject ref_()
	{
		auto p = gst_mini_object_ref(gstMiniObject);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p, true);
	}

	/**
	 * This sets an opaque, named pointer on a miniobject.
	 * The name is specified through a #GQuark (retrieved e.g. via
	 * g_quark_from_static_string()), and the pointer
	 * can be gotten back from the @object with gst_mini_object_get_qdata()
	 * until the @object is disposed.
	 * Setting a previously set user data pointer, overrides (frees)
	 * the old pointer set, using %NULL as pointer essentially
	 * removes the data stored.
	 *
	 * @destroy may be specified which is called with @data as argument
	 * when the @object is disposed, or the data is being overwritten by
	 * a call to gst_mini_object_set_qdata() with the same @quark.
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *     data = An opaque user data pointer
	 *     destroy = Function to invoke with @data as argument, when @data
	 *         needs to be freed
	 */
	public void setQdata(GQuark quark, void* data, GDestroyNotify destroy)
	{
		gst_mini_object_set_qdata(gstMiniObject, quark, data, destroy);
	}

	/**
	 * This function gets back user data pointers stored via gst_mini_object_set_qdata()
	 * and removes the data from @object without invoking its destroy() function (if
	 * any was set).
	 *
	 * Params:
	 *     quark = A #GQuark, naming the user data pointer
	 *
	 * Returns: The user data pointer set, or
	 *     %NULL
	 */
	public void* stealQdata(GQuark quark)
	{
		return gst_mini_object_steal_qdata(gstMiniObject, quark);
	}

	/**
	 * Unlock the mini-object with the specified access mode in @flags.
	 *
	 * Params:
	 *     flags = #GstLockFlags
	 */
	public void unlock(GstLockFlags flags)
	{
		gst_mini_object_unlock(gstMiniObject, flags);
	}

	/**
	 * Decreases the reference count of the mini-object, possibly freeing
	 * the mini-object.
	 */
	public void unref()
	{
		gst_mini_object_unref(gstMiniObject);
	}

	/**
	 * Adds a weak reference callback to a mini object. Weak references are
	 * used for notification when a mini object is finalized. They are called
	 * "weak references" because they allow you to safely hold a pointer
	 * to the mini object without calling gst_mini_object_ref()
	 * (gst_mini_object_ref() adds a strong reference, that is, forces the object
	 * to stay alive).
	 *
	 * Params:
	 *     notify = callback to invoke before the mini object is freed
	 *     data = extra data to pass to notify
	 */
	public void weakRef(GstMiniObjectNotify notify, void* data)
	{
		gst_mini_object_weak_ref(gstMiniObject, notify, data);
	}

	/**
	 * Removes a weak reference callback from a mini object.
	 *
	 * Params:
	 *     notify = callback to search for
	 *     data = data to search for
	 */
	public void weakUnref(GstMiniObjectNotify notify, void* data)
	{
		gst_mini_object_weak_unref(gstMiniObject, notify, data);
	}

	/**
	 * Atomically modifies a pointer to point to a new mini-object.
	 * The reference count of @olddata is decreased and the reference count of
	 * @newdata is increased.
	 *
	 * Either @newdata and the value pointed to by @olddata may be %NULL.
	 *
	 * Params:
	 *     olddata = pointer to a pointer to a
	 *         mini-object to be replaced
	 *     newdata = pointer to new mini-object
	 *
	 * Returns: %TRUE if @newdata was different from @olddata
	 */
	public static bool replace(ref MiniObject olddata, MiniObject newdata)
	{
		GstMiniObject* outolddata = olddata.getMiniObjectStruct();

		auto p = gst_mini_object_replace(&outolddata, (newdata is null) ? null : newdata.getMiniObjectStruct()) != 0;

		olddata = ObjectG.getDObject!(MiniObject)(outolddata);

		return p;
	}

	/**
	 * Replace the current #GstMiniObject pointer to by @olddata with %NULL and
	 * return the old value.
	 *
	 * Params:
	 *     olddata = pointer to a pointer to a mini-object to
	 *         be stolen
	 *
	 * Returns: the #GstMiniObject at @oldata
	 */
	public static MiniObject steal(ref MiniObject olddata)
	{
		GstMiniObject* outolddata = olddata.getMiniObjectStruct();

		auto p = gst_mini_object_steal(&outolddata);

		olddata = ObjectG.getDObject!(MiniObject)(outolddata);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MiniObject)(cast(GstMiniObject*) p);
	}

	/**
	 * Modifies a pointer to point to a new mini-object. The modification
	 * is done atomically. This version is similar to gst_mini_object_replace()
	 * except that it does not increase the refcount of @newdata and thus
	 * takes ownership of @newdata.
	 *
	 * Either @newdata and the value pointed to by @olddata may be %NULL.
	 *
	 * Params:
	 *     olddata = pointer to a pointer to a mini-object to
	 *         be replaced
	 *     newdata = pointer to new mini-object
	 *
	 * Returns: %TRUE if @newdata was different from @olddata
	 */
	public static bool take(ref MiniObject olddata, MiniObject newdata)
	{
		GstMiniObject* outolddata = olddata.getMiniObjectStruct();

		auto p = gst_mini_object_take(&outolddata, (newdata is null) ? null : newdata.getMiniObjectStruct()) != 0;

		olddata = ObjectG.getDObject!(MiniObject)(outolddata);

		return p;
	}
}
