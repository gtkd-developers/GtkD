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


module gio.SimpleAsyncResult;

private import gio.AsyncResultIF;
private import gio.AsyncResultT;
private import gio.Cancellable;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * As of GLib 2.46, #GSimpleAsyncResult is deprecated in favor of
 * #GTask, which provides a simpler API.
 * 
 * #GSimpleAsyncResult implements #GAsyncResult.
 * 
 * GSimpleAsyncResult handles #GAsyncReadyCallbacks, error
 * reporting, operation cancellation and the final state of an operation,
 * completely transparent to the application. Results can be returned
 * as a pointer e.g. for functions that return data that is collected
 * asynchronously, a boolean value for checking the success or failure
 * of an operation, or a #gssize for operations which return the number
 * of bytes modified by the operation; all of the simple return cases
 * are covered.
 * 
 * Most of the time, an application will not need to know of the details
 * of this API; it is handled transparently, and any necessary operations
 * are handled by #GAsyncResult's interface. However, if implementing a
 * new GIO module, for writing language bindings, or for complex
 * applications that need better control of how asynchronous operations
 * are completed, it is important to understand this functionality.
 * 
 * GSimpleAsyncResults are tagged with the calling function to ensure
 * that asynchronous functions and their finishing functions are used
 * together correctly.
 * 
 * To create a new #GSimpleAsyncResult, call g_simple_async_result_new().
 * If the result needs to be created for a #GError, use
 * g_simple_async_result_new_from_error() or
 * g_simple_async_result_new_take_error(). If a #GError is not available
 * (e.g. the asynchronous operation's doesn't take a #GError argument),
 * but the result still needs to be created for an error condition, use
 * g_simple_async_result_new_error() (or g_simple_async_result_set_error_va()
 * if your application or binding requires passing a variable argument list
 * directly), and the error can then be propagated through the use of
 * g_simple_async_result_propagate_error().
 * 
 * An asynchronous operation can be made to ignore a cancellation event by
 * calling g_simple_async_result_set_handle_cancellation() with a
 * #GSimpleAsyncResult for the operation and %FALSE. This is useful for
 * operations that are dangerous to cancel, such as close (which would
 * cause a leak if cancelled before being run).
 * 
 * GSimpleAsyncResult can integrate into GLib's event loop, #GMainLoop,
 * or it can use #GThreads.
 * g_simple_async_result_complete() will finish an I/O task directly
 * from the point where it is called. g_simple_async_result_complete_in_idle()
 * will finish it from an idle handler in the
 * [thread-default main context][g-main-context-push-thread-default]
 * where the #GSimpleAsyncResult was created.
 * g_simple_async_result_run_in_thread() will run the job in a
 * separate thread and then use
 * g_simple_async_result_complete_in_idle() to deliver the result.
 * 
 * To set the results of an asynchronous function,
 * g_simple_async_result_set_op_res_gpointer(),
 * g_simple_async_result_set_op_res_gboolean(), and
 * g_simple_async_result_set_op_res_gssize()
 * are provided, setting the operation's result to a gpointer, gboolean, or
 * gssize, respectively.
 * 
 * Likewise, to get the result of an asynchronous function,
 * g_simple_async_result_get_op_res_gpointer(),
 * g_simple_async_result_get_op_res_gboolean(), and
 * g_simple_async_result_get_op_res_gssize() are
 * provided, getting the operation's result as a gpointer, gboolean, and
 * gssize, respectively.
 * 
 * For the details of the requirements implementations must respect, see
 * #GAsyncResult.  A typical implementation of an asynchronous operation
 * using GSimpleAsyncResult looks something like this:
 * 
 * |[<!-- language="C" -->
 * static void
 * baked_cb (Cake    *cake,
 * gpointer user_data)
 * {
 * // In this example, this callback is not given a reference to the cake,
 * // so the GSimpleAsyncResult has to take a reference to it.
 * GSimpleAsyncResult *result = user_data;
 * 
 * if (cake == NULL)
 * g_simple_async_result_set_error (result,
 * BAKER_ERRORS,
 * BAKER_ERROR_NO_FLOUR,
 * "Go to the supermarket");
 * else
 * g_simple_async_result_set_op_res_gpointer (result,
 * g_object_ref (cake),
 * g_object_unref);
 * 
 * 
 * // In this example, we assume that baked_cb is called as a callback from
 * // the mainloop, so it's safe to complete the operation synchronously here.
 * // If, however, _baker_prepare_cake () might call its callback without
 * // first returning to the mainloop — inadvisable, but some APIs do so —
 * // we would need to use g_simple_async_result_complete_in_idle().
 * g_simple_async_result_complete (result);
 * g_object_unref (result);
 * }
 * 
 * void
 * baker_bake_cake_async (Baker              *self,
 * guint               radius,
 * GAsyncReadyCallback callback,
 * gpointer            user_data)
 * {
 * GSimpleAsyncResult *simple;
 * Cake               *cake;
 * 
 * if (radius < 3)
 * {
 * g_simple_async_report_error_in_idle (G_OBJECT (self),
 * callback,
 * user_data,
 * BAKER_ERRORS,
 * BAKER_ERROR_TOO_SMALL,
 * "%ucm radius cakes are silly",
 * radius);
 * return;
 * }
 * 
 * simple = g_simple_async_result_new (G_OBJECT (self),
 * callback,
 * user_data,
 * baker_bake_cake_async);
 * cake = _baker_get_cached_cake (self, radius);
 * 
 * if (cake != NULL)
 * {
 * g_simple_async_result_set_op_res_gpointer (simple,
 * g_object_ref (cake),
 * g_object_unref);
 * g_simple_async_result_complete_in_idle (simple);
 * g_object_unref (simple);
 * // Drop the reference returned by _baker_get_cached_cake();
 * // the GSimpleAsyncResult has taken its own reference.
 * g_object_unref (cake);
 * return;
 * }
 * 
 * _baker_prepare_cake (self, radius, baked_cb, simple);
 * }
 * 
 * Cake *
 * baker_bake_cake_finish (Baker        *self,
 * GAsyncResult *result,
 * GError      **error)
 * {
 * GSimpleAsyncResult *simple;
 * Cake               *cake;
 * 
 * g_return_val_if_fail (g_simple_async_result_is_valid (result,
 * G_OBJECT (self),
 * baker_bake_cake_async),
 * NULL);
 * 
 * simple = (GSimpleAsyncResult *) result;
 * 
 * if (g_simple_async_result_propagate_error (simple, error))
 * return NULL;
 * 
 * cake = CAKE (g_simple_async_result_get_op_res_gpointer (simple));
 * return g_object_ref (cake);
 * }
 * ]|
 */
public class SimpleAsyncResult : ObjectG, AsyncResultIF
{
	/** the main Gtk struct */
	protected GSimpleAsyncResult* gSimpleAsyncResult;

	/** Get the main Gtk struct */
	public GSimpleAsyncResult* getSimpleAsyncResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimpleAsyncResult;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleAsyncResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimpleAsyncResult* gSimpleAsyncResult, bool ownedRef = false)
	{
		this.gSimpleAsyncResult = gSimpleAsyncResult;
		super(cast(GObject*)gSimpleAsyncResult, ownedRef);
	}

	// add the AsyncResult capabilities
	mixin AsyncResultT!(GSimpleAsyncResult);


	/** */
	public static GType getType()
	{
		return g_simple_async_result_get_type();
	}

	/**
	 * Creates a #GSimpleAsyncResult.
	 *
	 * The common convention is to create the #GSimpleAsyncResult in the
	 * function that starts the asynchronous operation and use that same
	 * function as the @source_tag.
	 *
	 * If your operation supports cancellation with #GCancellable (which it
	 * probably should) then you should provide the user's cancellable to
	 * g_simple_async_result_set_check_cancellable() immediately after
	 * this function returns.
	 *
	 * Deprecated: Use g_task_new() instead.
	 *
	 * Params:
	 *     sourceObject = a #GObject, or %NULL.
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 *     sourceTag = the asynchronous function.
	 *
	 * Returns: a #GSimpleAsyncResult.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag)
	{
		auto __p = g_simple_async_result_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, sourceTag);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimpleAsyncResult*) __p, true);
	}

	/**
	 * Creates a #GSimpleAsyncResult from an error condition.
	 *
	 * Deprecated: Use g_task_new() and g_task_return_error() instead.
	 *
	 * Params:
	 *     sourceObject = a #GObject, or %NULL.
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 *     error = a #GError
	 *
	 * Returns: a #GSimpleAsyncResult.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		auto __p = g_simple_async_result_new_from_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_error");
		}

		this(cast(GSimpleAsyncResult*) __p, true);
	}

	/**
	 * Ensures that the data passed to the _finish function of an async
	 * operation is consistent.  Three checks are performed.
	 *
	 * First, @result is checked to ensure that it is really a
	 * #GSimpleAsyncResult.  Second, @source is checked to ensure that it
	 * matches the source object of @result.  Third, @source_tag is
	 * checked to ensure that it is equal to the @source_tag argument given
	 * to g_simple_async_result_new() (which, by convention, is a pointer
	 * to the _async function corresponding to the _finish function from
	 * which this function is called).  (Alternatively, if either
	 * @source_tag or @result's source tag is %NULL, then the source tag
	 * check is skipped.)
	 *
	 * Deprecated: Use #GTask and g_task_is_valid() instead.
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to the _finish function.
	 *     source = the #GObject passed to the _finish function.
	 *     sourceTag = the asynchronous function.
	 *
	 * Returns: #TRUE if all checks passed or #FALSE if any failed.
	 *
	 * Since: 2.20
	 */
	public static bool isValid(AsyncResultIF result, ObjectG source, void* sourceTag)
	{
		return g_simple_async_result_is_valid((result is null) ? null : result.getAsyncResultStruct(), (source is null) ? null : source.getObjectGStruct(), sourceTag) != 0;
	}

	/**
	 * Completes an asynchronous I/O job immediately. Must be called in
	 * the thread where the asynchronous result was to be delivered, as it
	 * invokes the callback directly. If you are in a different thread use
	 * g_simple_async_result_complete_in_idle().
	 *
	 * Calling this function takes a reference to @simple for as long as
	 * is needed to complete the call.
	 *
	 * Deprecated: Use #GTask instead.
	 */
	public void complete()
	{
		g_simple_async_result_complete(gSimpleAsyncResult);
	}

	/**
	 * Completes an asynchronous function in an idle handler in the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * of the thread that @simple was initially created in
	 * (and re-pushes that context around the invocation of the callback).
	 *
	 * Calling this function takes a reference to @simple for as long as
	 * is needed to complete the call.
	 *
	 * Deprecated: Use #GTask instead.
	 */
	public void completeInIdle()
	{
		g_simple_async_result_complete_in_idle(gSimpleAsyncResult);
	}

	/**
	 * Gets the operation result boolean from within the asynchronous result.
	 *
	 * Deprecated: Use #GTask and g_task_propagate_boolean() instead.
	 *
	 * Returns: %TRUE if the operation's result was %TRUE, %FALSE
	 *     if the operation's result was %FALSE.
	 */
	public bool getOpResGboolean()
	{
		return g_simple_async_result_get_op_res_gboolean(gSimpleAsyncResult) != 0;
	}

	/**
	 * Gets a pointer result as returned by the asynchronous function.
	 *
	 * Deprecated: Use #GTask and g_task_propagate_pointer() instead.
	 *
	 * Returns: a pointer from the result.
	 */
	public void* getOpResGpointer()
	{
		return g_simple_async_result_get_op_res_gpointer(gSimpleAsyncResult);
	}

	/**
	 * Gets a gssize from the asynchronous result.
	 *
	 * Deprecated: Use #GTask and g_task_propagate_int() instead.
	 *
	 * Returns: a gssize returned from the asynchronous function.
	 */
	public ptrdiff_t getOpResGssize()
	{
		return g_simple_async_result_get_op_res_gssize(gSimpleAsyncResult);
	}

	/**
	 * Gets the source tag for the #GSimpleAsyncResult.
	 *
	 * Deprecated: Use #GTask and g_task_get_source_tag() instead.
	 *
	 * Returns: a #gpointer to the source object for the #GSimpleAsyncResult.
	 */
	public void* getSourceTag()
	{
		return g_simple_async_result_get_source_tag(gSimpleAsyncResult);
	}

	/**
	 * Propagates an error from within the simple asynchronous result to
	 * a given destination.
	 *
	 * If the #GCancellable given to a prior call to
	 * g_simple_async_result_set_check_cancellable() is cancelled then this
	 * function will return %TRUE with @dest set appropriately.
	 *
	 * Deprecated: Use #GTask instead.
	 *
	 * Returns: %TRUE if the error was propagated to @dest. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool propagateError()
	{
		GError* err = null;

		auto __p = g_simple_async_result_propagate_error(gSimpleAsyncResult, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Runs the asynchronous job in a separate thread and then calls
	 * g_simple_async_result_complete_in_idle() on @simple to return
	 * the result to the appropriate main loop.
	 *
	 * Calling this function takes a reference to @simple for as long as
	 * is needed to run the job and report its completion.
	 *
	 * Deprecated: Use #GTask and g_task_run_in_thread() instead.
	 *
	 * Params:
	 *     func = a #GSimpleAsyncThreadFunc.
	 *     ioPriority = the io priority of the request.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 */
	public void runInThread(GSimpleAsyncThreadFunc func, int ioPriority, Cancellable cancellable)
	{
		g_simple_async_result_run_in_thread(gSimpleAsyncResult, func, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct());
	}

	/**
	 * Sets a #GCancellable to check before dispatching results.
	 *
	 * This function has one very specific purpose: the provided cancellable
	 * is checked at the time of g_simple_async_result_propagate_error() If
	 * it is cancelled, these functions will return an "Operation was
	 * cancelled" error (%G_IO_ERROR_CANCELLED).
	 *
	 * Implementors of cancellable asynchronous functions should use this in
	 * order to provide a guarantee to their callers that cancelling an
	 * async operation will reliably result in an error being returned for
	 * that operation (even if a positive result for the operation has
	 * already been sent as an idle to the main context to be dispatched).
	 *
	 * The checking described above is done regardless of any call to the
	 * unrelated g_simple_async_result_set_handle_cancellation() function.
	 *
	 * Deprecated: Use #GTask instead.
	 *
	 * Params:
	 *     checkCancellable = a #GCancellable to check, or %NULL to unset
	 *
	 * Since: 2.32
	 */
	public void setCheckCancellable(Cancellable checkCancellable)
	{
		g_simple_async_result_set_check_cancellable(gSimpleAsyncResult, (checkCancellable is null) ? null : checkCancellable.getCancellableStruct());
	}

	/**
	 * Sets an error within the asynchronous result without a #GError.
	 * Unless writing a binding, see g_simple_async_result_set_error().
	 *
	 * Deprecated: Use #GTask and g_task_return_error() instead.
	 *
	 * Params:
	 *     domain = a #GQuark (usually %G_IO_ERROR).
	 *     code = an error code.
	 *     format = a formatted error reporting string.
	 *     args = va_list of arguments.
	 */
	public void setErrorVa(GQuark domain, int code, string format, void* args)
	{
		g_simple_async_result_set_error_va(gSimpleAsyncResult, domain, code, Str.toStringz(format), args);
	}

	/**
	 * Sets the result from a #GError.
	 *
	 * Deprecated: Use #GTask and g_task_return_error() instead.
	 *
	 * Params:
	 *     error = #GError.
	 */
	public void setFromError(ErrorG error)
	{
		g_simple_async_result_set_from_error(gSimpleAsyncResult, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Sets whether to handle cancellation within the asynchronous operation.
	 *
	 * This function has nothing to do with
	 * g_simple_async_result_set_check_cancellable().  It only refers to the
	 * #GCancellable passed to g_simple_async_result_run_in_thread().
	 *
	 * Params:
	 *     handleCancellation = a #gboolean.
	 */
	public void setHandleCancellation(bool handleCancellation)
	{
		g_simple_async_result_set_handle_cancellation(gSimpleAsyncResult, handleCancellation);
	}

	/**
	 * Sets the operation result to a boolean within the asynchronous result.
	 *
	 * Deprecated: Use #GTask and g_task_return_boolean() instead.
	 *
	 * Params:
	 *     opRes = a #gboolean.
	 */
	public void setOpResGboolean(bool opRes)
	{
		g_simple_async_result_set_op_res_gboolean(gSimpleAsyncResult, opRes);
	}

	/**
	 * Sets the operation result within the asynchronous result to a pointer.
	 *
	 * Deprecated: Use #GTask and g_task_return_pointer() instead.
	 *
	 * Params:
	 *     opRes = a pointer result from an asynchronous function.
	 *     destroyOpRes = a #GDestroyNotify function.
	 */
	public void setOpResGpointer(void* opRes, GDestroyNotify destroyOpRes)
	{
		g_simple_async_result_set_op_res_gpointer(gSimpleAsyncResult, opRes, destroyOpRes);
	}

	/**
	 * Sets the operation result within the asynchronous result to
	 * the given @op_res.
	 *
	 * Deprecated: Use #GTask and g_task_return_int() instead.
	 *
	 * Params:
	 *     opRes = a #gssize.
	 */
	public void setOpResGssize(ptrdiff_t opRes)
	{
		g_simple_async_result_set_op_res_gssize(gSimpleAsyncResult, opRes);
	}

	/**
	 * Sets the result from @error, and takes over the caller's ownership
	 * of @error, so the caller does not need to free it any more.
	 *
	 * Deprecated: Use #GTask and g_task_return_error() instead.
	 *
	 * Params:
	 *     error = a #GError
	 *
	 * Since: 2.28
	 */
	public void takeError(ErrorG error)
	{
		g_simple_async_result_take_error(gSimpleAsyncResult, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Reports an error in an idle function. Similar to
	 * g_simple_async_report_error_in_idle(), but takes a #GError rather
	 * than building a new one.
	 *
	 * Deprecated: Use g_task_report_error().
	 *
	 * Params:
	 *     object = a #GObject, or %NULL
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 *     error = the #GError to report
	 */
	public static void simpleAsyncReportGerrorInIdle(ObjectG object, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		g_simple_async_report_gerror_in_idle((object is null) ? null : object.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
	}

	/**
	 * Reports an error in an idle function. Similar to
	 * g_simple_async_report_gerror_in_idle(), but takes over the caller's
	 * ownership of @error, so the caller does not have to free it any more.
	 *
	 * Deprecated: Use g_task_report_error().
	 *
	 * Params:
	 *     object = a #GObject, or %NULL
	 *     callback = a #GAsyncReadyCallback.
	 *     userData = user data passed to @callback.
	 *     error = the #GError to report
	 *
	 * Since: 2.28
	 */
	public static void simpleAsyncReportTakeGerrorInIdle(ObjectG object, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		g_simple_async_report_take_gerror_in_idle((object is null) ? null : object.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
	}
}
