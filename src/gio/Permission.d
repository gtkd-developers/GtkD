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
 * inFile  = GPermission.html
 * outPack = gio
 * outFile = Permission
 * strct   = GPermission
 * realStrct=
 * ctorStrct=
 * clss    = Permission
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_permission_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Permission;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;



private import gobject.ObjectG;

/**
 * Description
 * A GPermission represents the status of the caller's permission to
 * perform a certain action.
 * You can query if the action is currently allowed and if it is
 * possible to acquire the permission so that the action will be allowed
 * in the future.
 * There is also an API to actually acquire the permission and one to
 * release it.
 * As an example, a GPermission might represent the ability for the
 * user to write to a GSettings object. This GPermission object could
 * then be used to decide if it is appropriate to show a "Click here to
 * unlock" button in a dialog and to provide the mechanism to invoke
 * when that button is clicked.
 */
public class Permission : ObjectG
{
	
	/** the main Gtk struct */
	protected GPermission* gPermission;
	
	
	public GPermission* getPermissionStruct()
	{
		return gPermission;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gPermission;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GPermission* gPermission)
	{
		super(cast(GObject*)gPermission);
		this.gPermission = gPermission;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gPermission = cast(GPermission*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the value of the 'allowed' property. This property is TRUE if
	 * the caller currently has permission to perform the action that
	 * permission represents the permission to perform.
	 * Since 2.26
	 * Returns: the value of the 'allowed' property
	 */
	public int getAllowed()
	{
		// gboolean g_permission_get_allowed (GPermission *permission);
		return g_permission_get_allowed(gPermission);
	}
	
	/**
	 * Gets the value of the 'can-acquire' property. This property is TRUE
	 * if it is generally possible to acquire the permission by calling
	 * g_permission_acquire().
	 * Since 2.26
	 * Returns: the value of the 'can-acquire' property
	 */
	public int getCanAcquire()
	{
		// gboolean g_permission_get_can_acquire (GPermission *permission);
		return g_permission_get_can_acquire(gPermission);
	}
	
	/**
	 * Gets the value of the 'can-release' property. This property is TRUE
	 * if it is generally possible to release the permission by calling
	 * g_permission_release().
	 * Since 2.26
	 * Returns: the value of the 'can-release' property
	 */
	public int getCanRelease()
	{
		// gboolean g_permission_get_can_release (GPermission *permission);
		return g_permission_get_can_release(gPermission);
	}
	
	/**
	 * Attempts to acquire the permission represented by permission.
	 * The precise method by which this happens depends on the permission
	 * and the underlying authentication mechanism. A simple example is
	 * that a dialog may appear asking the user to enter their password.
	 * You should check with g_permission_get_can_acquire() before calling
	 * this function.
	 * If the permission is acquired then TRUE is returned. Otherwise,
	 * FALSE is returned and error is set appropriately.
	 * This call is blocking, likely for a very long time (in the case that
	 * user interaction is required). See g_permission_acquire_async() for
	 * the non-blocking version.
	 * Since 2.26
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: TRUE if the permission was successfully acquired
	 * Throws: GException on failure.
	 */
	public int acquire(Cancellable cancellable)
	{
		// gboolean g_permission_acquire (GPermission *permission,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_permission_acquire(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Attempts to acquire the permission represented by permission.
	 * This is the first half of the asynchronous version of
	 * g_permission_acquire().
	 * Since 2.26
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = the GAsyncReadyCallback to call when done
	 * userData = the user data to pass to callback
	 */
	public void acquireAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_permission_acquire_async (GPermission *permission,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_permission_acquire_async(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Collects the result of attempting to acquire the permission
	 * represented by permission.
	 * This is the second half of the asynchronous version of
	 * g_permission_acquire().
	 * Since 2.26
	 * Params:
	 * result = the GAsyncResult given to the GAsyncReadyCallback
	 * Returns: TRUE if the permission was successfully acquired
	 * Throws: GException on failure.
	 */
	public int acquireFinish(AsyncResultIF result)
	{
		// gboolean g_permission_acquire_finish (GPermission *permission,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_permission_acquire_finish(gPermission, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Attempts to release the permission represented by permission.
	 * The precise method by which this happens depends on the permission
	 * and the underlying authentication mechanism. In most cases the
	 * permission will be dropped immediately without further action.
	 * You should check with g_permission_get_can_release() before calling
	 * this function.
	 * If the permission is released then TRUE is returned. Otherwise,
	 * FALSE is returned and error is set appropriately.
	 * This call is blocking, likely for a very long time (in the case that
	 * user interaction is required). See g_permission_release_async() for
	 * the non-blocking version.
	 * Since 2.26
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: TRUE if the permission was successfully released
	 * Throws: GException on failure.
	 */
	public int release(Cancellable cancellable)
	{
		// gboolean g_permission_release (GPermission *permission,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_permission_release(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Attempts to release the permission represented by permission.
	 * This is the first half of the asynchronous version of
	 * g_permission_release().
	 * Since 2.26
	 * Params:
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = the GAsyncReadyCallback to call when done
	 * userData = the user data to pass to callback
	 */
	public void releaseAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_permission_release_async (GPermission *permission,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_permission_release_async(gPermission, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Collects the result of attempting to release the permission
	 * represented by permission.
	 * This is the second half of the asynchronous version of
	 * g_permission_release().
	 * Since 2.26
	 * Params:
	 * result = the GAsyncResult given to the GAsyncReadyCallback
	 * Returns: TRUE if the permission was successfully released
	 * Throws: GException on failure.
	 */
	public int releaseFinish(AsyncResultIF result)
	{
		// gboolean g_permission_release_finish (GPermission *permission,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_permission_release_finish(gPermission, (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * This function is called by the GPermission implementation to update
	 * the properties of the permission. You should never call this
	 * function except from a GPermission implementation.
	 * GObject notify signals are generated, as appropriate.
	 * Since 2.26
	 * Params:
	 * allowed = the new value for the 'allowed' property
	 * canAcquire = the new value for the 'can-acquire' property
	 * canRelease = the new value for the 'can-release' property
	 */
	public void implUpdate(int allowed, int canAcquire, int canRelease)
	{
		// void g_permission_impl_update (GPermission *permission,  gboolean allowed,  gboolean can_acquire,  gboolean can_release);
		g_permission_impl_update(gPermission, allowed, canAcquire, canRelease);
	}
}
