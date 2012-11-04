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
 * inFile  = GAsyncInitable.html
 * outPack = gio
 * outFile = AsyncInitableIF
 * strct   = GAsyncInitable
 * realStrct=
 * ctorStrct=
 * clss    = AsyncInitableT
 * interf  = AsyncInitableIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_initable_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.ObjectG
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.AsyncInitableIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gio.AsyncResultIF;
private import gio.Cancellable;




/**
 * Description
 * This is the asynchronous version of GInitable; it behaves the same
 * in all ways except that initialization is asynchronous. For more details
 * see the descriptions on GInitable.
 * A class may implement both the GInitable and GAsyncInitable interfaces.
 * Users of objects implementing this are not intended to use the interface
 * method directly; instead it will be used automatically in various ways.
 * For C applications you generally just call g_async_initable_new_async()
 * directly, or indirectly via a foo_thing_new_async() wrapper. This will call
 * g_async_initable_init_async() under the cover, calling back with NULL and
 * a set GError on failure.
 * A typical implementation might look something like this:
 * $(DDOC_COMMENT example)
 */
public interface AsyncInitableIF
{
	
	
	public GAsyncInitable* getAsyncInitableTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Starts asynchronous initialization of the object implementing the
	 * interface. This must be done before any real use of the object after
	 * initial construction. If the object also implements GInitable you can
	 * optionally call g_initable_init() instead.
	 * When the initialization is finished, callback will be called. You can
	 * then call g_async_initable_init_finish() to get the result of the
	 * initialization.
	 * Implementations may also support cancellation. If cancellable is not
	 * NULL, then initialization can be cancelled by triggering the cancellable
	 * object from another thread. If the operation was cancelled, the error
	 * G_IO_ERROR_CANCELLED will be returned. If cancellable is not NULL, and
	 * the object doesn't support cancellable initialization, the error
	 * G_IO_ERROR_NOT_SUPPORTED will be returned.
	 * As with GInitable, if the object is not initialized, or initialization
	 * Since 2.22
	 * Params:
	 * ioPriority = the I/O priority
	 * of the operation.
	 * cancellable = optional GCancellable object, NULL to ignore.
	 * callback = a GAsyncReadyCallback to call when the request is satisfied
	 * userData = the data to pass to callback function
	 * Returns: with an error, then all operations on the object except g_object_ref() and g_object_unref() are considered to be invalid, and have undefined behaviour. They will often fail with g_critical() or g_warning(), but this must not be relied on. Implementations of this method must be idempotent: i.e. multiple calls to this function with the same argument should return the same results. Only the first call initializes the object; further calls return the result of the first call. This is so that it's safe to implement the singleton pattern in the GObject constructor function. For classes that also support the GInitable interface, the default implementation of this method will run the g_initable_init() function in a thread, so if you want to support asynchronous initialization via threads, just implement the GAsyncInitable interface without overriding any interface methods.
	 */
	public void gAsyncInitableInitAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
	
	/**
	 * Finishes asynchronous initialization and returns the result.
	 * See g_async_initable_init_async().
	 * Since 2.22
	 * Params:
	 * res = a GAsyncResult.
	 * Returns: TRUE if successful. If an error has occurred, this function will return FALSE and set error appropriately if present.
	 * Throws: GException on failure.
	 */
	public int gAsyncInitableInitFinish(AsyncResultIF res);
	
	/**
	 * Finishes the async construction for the various g_async_initable_new
	 * calls, returning the created object or NULL on error.
	 * Since 2.22
	 * Params:
	 * res = the GAsyncResult from the callback
	 * Returns: a newly created GObject, or NULL on error. Free with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public ObjectG gAsyncInitableNewFinish(AsyncResultIF res);
	
	/**
	 * Helper function for constructing GAsyncInitable object. This is
	 * similar to g_object_new_valist() but also initializes the object
	 * asynchronously.
	 * When the initialization is finished, callback will be called. You can
	 * then call g_async_initable_new_finish() to get the new object and check
	 * for any errors.
	 * Since 2.22
	 * Params:
	 * objectType = a GType supporting GAsyncInitable.
	 * firstPropertyName = the name of the first property, followed by
	 * the value, and other property value pairs, and ended by NULL.
	 * varArgs = The var args list generated from first_property_name.
	 * ioPriority = the I/O priority
	 * of the operation.
	 * cancellable = optional GCancellable object, NULL to ignore.
	 * callback = a GAsyncReadyCallback to call when the initialization is
	 * finished
	 * userData = the data to pass to callback function
	 */
	public static void gAsyncInitableNewValistAsync(GType objectType, string firstPropertyName, void* varArgs, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
	
	/**
	 * Helper function for constructing GAsyncInitable object. This is
	 * similar to g_object_newv() but also initializes the object asynchronously.
	 * When the initialization is finished, callback will be called. You can
	 * then call g_async_initable_new_finish() to get the new object and check
	 * for any errors.
	 * Since 2.22
	 * Params:
	 * objectType = a GType supporting GAsyncInitable.
	 * parameters = the parameters to use to construct the object
	 * ioPriority = the I/O priority
	 * of the operation.
	 * cancellable = optional GCancellable object, NULL to ignore.
	 * callback = a GAsyncReadyCallback to call when the initialization is
	 * finished
	 * userData = the data to pass to callback function
	 */
	public static void gAsyncInitableNewvAsync(GType objectType, GParameter[] parameters, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
}
