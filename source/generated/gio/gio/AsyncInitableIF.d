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


module gio.AsyncInitableIF;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * This is the asynchronous version of #GInitable; it behaves the same
 * in all ways except that initialization is asynchronous. For more details
 * see the descriptions on #GInitable.
 * 
 * A class may implement both the #GInitable and #GAsyncInitable interfaces.
 * 
 * Users of objects implementing this are not intended to use the interface
 * method directly; instead it will be used automatically in various ways.
 * For C applications you generally just call g_async_initable_new_async()
 * directly, or indirectly via a foo_thing_new_async() wrapper. This will call
 * g_async_initable_init_async() under the cover, calling back with %NULL and
 * a set %GError on failure.
 * 
 * A typical implementation might look something like this:
 * 
 * |[<!-- language="C" -->
 * enum {
 * NOT_INITIALIZED,
 * INITIALIZING,
 * INITIALIZED
 * };
 * 
 * static void
 * _foo_ready_cb (Foo *self)
 * {
 * GList *l;
 * 
 * self->priv->state = INITIALIZED;
 * 
 * for (l = self->priv->init_results; l != NULL; l = l->next)
 * {
 * GTask *task = l->data;
 * 
 * if (self->priv->success)
 * g_task_return_boolean (task, TRUE);
 * else
 * g_task_return_new_error (task, ...);
 * g_object_unref (task);
 * }
 * 
 * g_list_free (self->priv->init_results);
 * self->priv->init_results = NULL;
 * }
 * 
 * static void
 * foo_init_async (GAsyncInitable       *initable,
 * int                   io_priority,
 * GCancellable         *cancellable,
 * GAsyncReadyCallback   callback,
 * gpointer              user_data)
 * {
 * Foo *self = FOO (initable);
 * GTask *task;
 * 
 * task = g_task_new (initable, cancellable, callback, user_data);
 * g_task_set_name (task, G_STRFUNC);
 * 
 * switch (self->priv->state)
 * {
 * case NOT_INITIALIZED:
 * _foo_get_ready (self);
 * self->priv->init_results = g_list_append (self->priv->init_results,
 * task);
 * self->priv->state = INITIALIZING;
 * break;
 * case INITIALIZING:
 * self->priv->init_results = g_list_append (self->priv->init_results,
 * task);
 * break;
 * case INITIALIZED:
 * if (!self->priv->success)
 * g_task_return_new_error (task, ...);
 * else
 * g_task_return_boolean (task, TRUE);
 * g_object_unref (task);
 * break;
 * }
 * }
 * 
 * static gboolean
 * foo_init_finish (GAsyncInitable       *initable,
 * GAsyncResult         *result,
 * GError              **error)
 * {
 * g_return_val_if_fail (g_task_is_valid (result, initable), FALSE);
 * 
 * return g_task_propagate_boolean (G_TASK (result), error);
 * }
 * 
 * static void
 * foo_async_initable_iface_init (gpointer g_iface,
 * gpointer data)
 * {
 * GAsyncInitableIface *iface = g_iface;
 * 
 * iface->init_async = foo_init_async;
 * iface->init_finish = foo_init_finish;
 * }
 * ]|
 *
 * Since: 2.22
 */
public interface AsyncInitableIF{
	/** Get the main Gtk struct */
	public GAsyncInitable* getAsyncInitableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_async_initable_get_type();
	}

	/**
	 * Helper function for constructing #GAsyncInitable object. This is
	 * similar to g_object_new_valist() but also initializes the object
	 * asynchronously.
	 *
	 * When the initialization is finished, @callback will be called. You can
	 * then call g_async_initable_new_finish() to get the new object and check
	 * for any errors.
	 *
	 * Params:
	 *     objectType = a #GType supporting #GAsyncInitable.
	 *     firstPropertyName = the name of the first property, followed by
	 *         the value, and other property value pairs, and ended by %NULL.
	 *     varArgs = The var args list generated from @first_property_name.
	 *     ioPriority = the [I/O priority][io-priority] of the operation
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the initialization is
	 *         finished
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public static void newValistAsync(GType objectType, string firstPropertyName, void* varArgs, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_async_initable_new_valist_async(objectType, Str.toStringz(firstPropertyName), varArgs, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Helper function for constructing #GAsyncInitable object. This is
	 * similar to g_object_newv() but also initializes the object asynchronously.
	 *
	 * When the initialization is finished, @callback will be called. You can
	 * then call g_async_initable_new_finish() to get the new object and check
	 * for any errors.
	 *
	 * Deprecated: Use g_object_new_with_properties() and
	 * g_async_initable_init_async() instead. See #GParameter for more information.
	 *
	 * Params:
	 *     objectType = a #GType supporting #GAsyncInitable.
	 *     nParameters = the number of parameters in @parameters
	 *     parameters = the parameters to use to construct the object
	 *     ioPriority = the [I/O priority][io-priority] of the operation
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the initialization is
	 *         finished
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public static void newvAsync(GType objectType, uint nParameters, GParameter* parameters, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_async_initable_newv_async(objectType, nParameters, parameters, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Starts asynchronous initialization of the object implementing the
	 * interface. This must be done before any real use of the object after
	 * initial construction. If the object also implements #GInitable you can
	 * optionally call g_initable_init() instead.
	 *
	 * This method is intended for language bindings. If writing in C,
	 * g_async_initable_new_async() should typically be used instead.
	 *
	 * When the initialization is finished, @callback will be called. You can
	 * then call g_async_initable_init_finish() to get the result of the
	 * initialization.
	 *
	 * Implementations may also support cancellation. If @cancellable is not
	 * %NULL, then initialization can be cancelled by triggering the cancellable
	 * object from another thread. If the operation was cancelled, the error
	 * %G_IO_ERROR_CANCELLED will be returned. If @cancellable is not %NULL, and
	 * the object doesn't support cancellable initialization, the error
	 * %G_IO_ERROR_NOT_SUPPORTED will be returned.
	 *
	 * As with #GInitable, if the object is not initialized, or initialization
	 * returns with an error, then all operations on the object except
	 * g_object_ref() and g_object_unref() are considered to be invalid, and
	 * have undefined behaviour. They will often fail with g_critical() or
	 * g_warning(), but this must not be relied on.
	 *
	 * Callers should not assume that a class which implements #GAsyncInitable can
	 * be initialized multiple times; for more information, see g_initable_init().
	 * If a class explicitly supports being initialized multiple times,
	 * implementation requires yielding all subsequent calls to init_async() on the
	 * results of the first call.
	 *
	 * For classes that also support the #GInitable interface, the default
	 * implementation of this method will run the g_initable_init() function
	 * in a thread, so if you want to support asynchronous initialization via
	 * threads, just implement the #GAsyncInitable interface without overriding
	 * any interface methods.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the operation
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void initAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes asynchronous initialization and returns the result.
	 * See g_async_initable_init_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult.
	 *
	 * Returns: %TRUE if successful. If an error has occurred, this function
	 *     will return %FALSE and set @error appropriately if present.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool initFinish(AsyncResultIF res);

	/**
	 * Finishes the async construction for the various g_async_initable_new
	 * calls, returning the created object or %NULL on error.
	 *
	 * Params:
	 *     res = the #GAsyncResult from the callback
	 *
	 * Returns: a newly created #GObject,
	 *     or %NULL on error. Free with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public ObjectG newFinish(AsyncResultIF res);
}
