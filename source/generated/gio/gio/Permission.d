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


module gio.Permission;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * A #GPermission represents the status of the caller's permission to
 * perform a certain action.
 * 
 * You can query if the action is currently allowed and if it is
 * possible to acquire the permission so that the action will be allowed
 * in the future.
 * 
 * There is also an API to actually acquire the permission and one to
 * release it.
 * 
 * As an example, a #GPermission might represent the ability for the
 * user to write to a #GSettings object.  This #GPermission object could
 * then be used to decide if it is appropriate to show a "Click here to
 * unlock" button in a dialog and to provide the mechanism to invoke
 * when that button is clicked.
 */
public class Permission : ObjectG
{
	/** the main Gtk struct */
	protected GPermission* gPermission;

	/** Get the main Gtk struct */
	public GPermission* getPermissionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gPermission;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gPermission;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GPermission* gPermission, bool ownedRef = false)
	{
		this.gPermission = gPermission;
		super(cast(GObject*)gPermission, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_permission_get_type();
	}

	/**
	 * Attempts to acquire the permission represented by @permission.
	 *
	 * The precise method by which this happens depends on the permission
	 * and the underlying authentication mechanism.  A simple example is
	 * that a dialog may appear asking the user to enter their password.
	 *
	 * You should check with g_permission_get_can_acquire() before calling
	 * this function.
	 *
	 * If the permission is acquired then %TRUE is returned.  Otherwise,
	 * %FALSE is returned and @error is set appropriately.
	 *
	 * This call is blocking, likely for a very long time (in the case that
	 * user interaction is required).  See g_permission_acquire_async() for
	 * the non-blocking version.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if the permission was successfully acquired
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool acquire(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_permission_acquire(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Attempts to acquire the permission represented by @permission.
	 *
	 * This is the first half of the asynchronous version of
	 * g_permission_acquire().
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = the #GAsyncReadyCallback to call when done
	 *     userData = the user data to pass to @callback
	 *
	 * Since: 2.26
	 */
	public void acquireAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_permission_acquire_async(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Collects the result of attempting to acquire the permission
	 * represented by @permission.
	 *
	 * This is the second half of the asynchronous version of
	 * g_permission_acquire().
	 *
	 * Params:
	 *     result = the #GAsyncResult given to the #GAsyncReadyCallback
	 *
	 * Returns: %TRUE if the permission was successfully acquired
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool acquireFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_permission_acquire_finish(gPermission, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the value of the 'allowed' property.  This property is %TRUE if
	 * the caller currently has permission to perform the action that
	 * @permission represents the permission to perform.
	 *
	 * Returns: the value of the 'allowed' property
	 *
	 * Since: 2.26
	 */
	public bool getAllowed()
	{
		return g_permission_get_allowed(gPermission) != 0;
	}

	/**
	 * Gets the value of the 'can-acquire' property.  This property is %TRUE
	 * if it is generally possible to acquire the permission by calling
	 * g_permission_acquire().
	 *
	 * Returns: the value of the 'can-acquire' property
	 *
	 * Since: 2.26
	 */
	public bool getCanAcquire()
	{
		return g_permission_get_can_acquire(gPermission) != 0;
	}

	/**
	 * Gets the value of the 'can-release' property.  This property is %TRUE
	 * if it is generally possible to release the permission by calling
	 * g_permission_release().
	 *
	 * Returns: the value of the 'can-release' property
	 *
	 * Since: 2.26
	 */
	public bool getCanRelease()
	{
		return g_permission_get_can_release(gPermission) != 0;
	}

	/**
	 * This function is called by the #GPermission implementation to update
	 * the properties of the permission.  You should never call this
	 * function except from a #GPermission implementation.
	 *
	 * GObject notify signals are generated, as appropriate.
	 *
	 * Params:
	 *     allowed = the new value for the 'allowed' property
	 *     canAcquire = the new value for the 'can-acquire' property
	 *     canRelease = the new value for the 'can-release' property
	 *
	 * Since: 2.26
	 */
	public void implUpdate(bool allowed, bool canAcquire, bool canRelease)
	{
		g_permission_impl_update(gPermission, allowed, canAcquire, canRelease);
	}

	/**
	 * Attempts to release the permission represented by @permission.
	 *
	 * The precise method by which this happens depends on the permission
	 * and the underlying authentication mechanism.  In most cases the
	 * permission will be dropped immediately without further action.
	 *
	 * You should check with g_permission_get_can_release() before calling
	 * this function.
	 *
	 * If the permission is released then %TRUE is returned.  Otherwise,
	 * %FALSE is returned and @error is set appropriately.
	 *
	 * This call is blocking, likely for a very long time (in the case that
	 * user interaction is required).  See g_permission_release_async() for
	 * the non-blocking version.
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: %TRUE if the permission was successfully released
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool release(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_permission_release(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Attempts to release the permission represented by @permission.
	 *
	 * This is the first half of the asynchronous version of
	 * g_permission_release().
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = the #GAsyncReadyCallback to call when done
	 *     userData = the user data to pass to @callback
	 *
	 * Since: 2.26
	 */
	public void releaseAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_permission_release_async(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Collects the result of attempting to release the permission
	 * represented by @permission.
	 *
	 * This is the second half of the asynchronous version of
	 * g_permission_release().
	 *
	 * Params:
	 *     result = the #GAsyncResult given to the #GAsyncReadyCallback
	 *
	 * Returns: %TRUE if the permission was successfully released
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool releaseFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_permission_release_finish(gPermission, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
