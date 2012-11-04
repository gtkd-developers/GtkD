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
 * inFile  = GSimpleAsyncResult.html
 * outPack = gio
 * outFile = SimpleAsyncResult
 * strct   = GSimpleAsyncResult
 * realStrct=
 * ctorStrct=
 * clss    = SimpleAsyncResult
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AsyncResultIF
 * prefixes:
 * 	- g_simple_async_result_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_simple_async_result_new_take_error
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.ObjectG
 * 	- gio.Cancellable
 * 	- gio.AsyncResultIF
 * 	- gio.AsyncResultT
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GError* -> ErrorG
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimpleAsyncResult;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gio.Cancellable;
private import gio.AsyncResultIF;
private import gio.AsyncResultT;



private import gobject.ObjectG;

/**
 * Description
 * Implements GAsyncResult for simple cases. Most of the time, this
 * will be all an application needs, and will be used transparently.
 * Because of this, GSimpleAsyncResult is used throughout GIO for
 * handling asynchronous functions.
 * GSimpleAsyncResult handles GAsyncReadyCallbacks, error
 * reporting, operation cancellation and the final state of an operation,
 * completely transparent to the application. Results can be returned
 * as a pointer e.g. for functions that return data that is collected
 * asynchronously, a boolean value for checking the success or failure
 * of an operation, or a gssize for operations which return the number
 * of bytes modified by the operation; all of the simple return cases
 * are covered.
 * Most of the time, an application will not need to know of the details
 * of this API; it is handled transparently, and any necessary operations
 * are handled by GAsyncResult's interface. However, if implementing a
 * new GIO module, for writing language bindings, or for complex
 * applications that need better control of how asynchronous operations
 * are completed, it is important to understand this functionality.
 * GSimpleAsyncResults are tagged with the calling function to ensure
 * that asynchronous functions and their finishing functions are used
 * together correctly.
 * To create a new GSimpleAsyncResult, call g_simple_async_result_new().
 * If the result needs to be created for a GError, use
 * g_simple_async_result_new_from_error() or
 * g_simple_async_result_new_take_error(). If a GError is not available
 * (e.g. the asynchronous operation's doesn't take a GError argument),
 * but the result still needs to be created for an error condition, use
 * g_simple_async_result_new_error() (or g_simple_async_result_set_error_va()
 * if your application or binding requires passing a variable argument list
 * directly), and the error can then be propagated through the use of
 * g_simple_async_result_propagate_error().
 * An asynchronous operation can be made to ignore a cancellation event by
 * calling g_simple_async_result_set_handle_cancellation() with a
 * GSimpleAsyncResult for the operation and FALSE. This is useful for
 * operations that are dangerous to cancel, such as close (which would
 * cause a leak if cancelled before being run).
 * GSimpleAsyncResult can integrate into GLib's event loop, GMainLoop,
 * or it can use GThreads.
 * g_simple_async_result_complete() will finish an I/O task directly
 * from the point where it is called. g_simple_async_result_complete_in_idle()
 * will finish it from an idle handler in the thread-default main
 * context. g_simple_async_result_run_in_thread() will run the
 * job in a separate thread and then deliver the result to the
 * thread-default main context.
 * To set the results of an asynchronous function,
 * g_simple_async_result_set_op_res_gpointer(),
 * g_simple_async_result_set_op_res_gboolean(), and
 * g_simple_async_result_set_op_res_gssize()
 * are provided, setting the operation's result to a gpointer, gboolean, or
 * gssize, respectively.
 * Likewise, to get the result of an asynchronous function,
 * g_simple_async_result_get_op_res_gpointer(),
 * g_simple_async_result_get_op_res_gboolean(), and
 * g_simple_async_result_get_op_res_gssize() are
 * provided, getting the operation's result as a gpointer, gboolean, and
 * gssize, respectively.
 * For the details of the requirements implementations must respect, see
 * GAsyncResult. A typical implementation of an asynchronous operation
 * using GSimpleAsyncResult looks something like this:
 * $(DDOC_COMMENT example)
 */
public class SimpleAsyncResult : ObjectG, AsyncResultIF
{
	
	/** the main Gtk struct */
	protected GSimpleAsyncResult* gSimpleAsyncResult;
	
	
	public GSimpleAsyncResult* getSimpleAsyncResultStruct()
	{
		return gSimpleAsyncResult;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleAsyncResult;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimpleAsyncResult* gSimpleAsyncResult)
	{
		super(cast(GObject*)gSimpleAsyncResult);
		this.gSimpleAsyncResult = gSimpleAsyncResult;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSimpleAsyncResult = cast(GSimpleAsyncResult*)obj;
	}
	
	// add the AsyncResult capabilities
	mixin AsyncResultT!(GSimpleAsyncResult);
	
	/**
	 */
	
	/**
	 * Creates a GSimpleAsyncResult.
	 * The common convention is to create the GSimpleAsyncResult in the
	 * function that starts the asynchronous operation and use that same
	 * function as the source_tag.
	 * If your operation supports cancellation with GCancellable (which it
	 * probably should) then you should provide the user's cancellable to
	 * g_simple_async_result_set_check_cancellable() immediately after
	 * this function returns.
	 * Params:
	 * sourceObject = a GObject, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data passed to callback. [closure]
	 * sourceTag = the asynchronous function.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag)
	{
		// GSimpleAsyncResult * g_simple_async_result_new (GObject *source_object,  GAsyncReadyCallback callback,  gpointer user_data,  gpointer source_tag);
		auto p = g_simple_async_result_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, sourceTag);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_async_result_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, sourceTag)");
		}
		this(cast(GSimpleAsyncResult*) p);
	}
	
	/**
	 * Creates a GSimpleAsyncResult from an error condition.
	 * Params:
	 * sourceObject = a GObject, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data passed to callback. [closure]
	 * error = a GError
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		// GSimpleAsyncResult * g_simple_async_result_new_from_error  (GObject *source_object,  GAsyncReadyCallback callback,  gpointer user_data,  const GError *error);
		auto p = g_simple_async_result_new_from_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_async_result_new_from_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct())");
		}
		this(cast(GSimpleAsyncResult*) p);
	}
	
	/**
	 * Sets a GCancellable to check before dispatching results.
	 * This function has one very specific purpose: the provided cancellable
	 * is checked at the time of g_simple_async_result_propagate_error() If
	 * it is cancelled, these functions will return an "Operation was
	 * cancelled" error (G_IO_ERROR_CANCELLED).
	 * Implementors of cancellable asynchronous functions should use this in
	 * order to provide a guarantee to their callers that cancelling an
	 * async operation will reliably result in an error being returned for
	 * that operation (even if a positive result for the operation has
	 * already been sent as an idle to the main context to be dispatched).
	 * The checking described above is done regardless of any call to the
	 * unrelated g_simple_async_result_set_handle_cancellation() function.
	 * Since 2.32
	 * Params:
	 * checkCancellable = a GCancellable to check, or NULL to unset. [allow-none]
	 */
	public void setCheckCancellable(Cancellable checkCancellable)
	{
		// void g_simple_async_result_set_check_cancellable  (GSimpleAsyncResult *simple,  GCancellable *check_cancellable);
		g_simple_async_result_set_check_cancellable(gSimpleAsyncResult, (checkCancellable is null) ? null : checkCancellable.getCancellableStruct());
	}
	
	/**
	 * Sets the operation result within the asynchronous result to a pointer.
	 * Params:
	 * opRes = a pointer result from an asynchronous function.
	 * destroyOpRes = a GDestroyNotify function.
	 */
	public void setOpResGpointer(void* opRes, GDestroyNotify destroyOpRes)
	{
		// void g_simple_async_result_set_op_res_gpointer  (GSimpleAsyncResult *simple,  gpointer op_res,  GDestroyNotify destroy_op_res);
		g_simple_async_result_set_op_res_gpointer(gSimpleAsyncResult, opRes, destroyOpRes);
	}
	
	/**
	 * Gets a pointer result as returned by the asynchronous function.
	 * Returns: a pointer from the result.
	 */
	public void* getOpResGpointer()
	{
		// gpointer g_simple_async_result_get_op_res_gpointer  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gpointer(gSimpleAsyncResult);
	}
	
	/**
	 * Sets the operation result within the asynchronous result to
	 * the given op_res.
	 * Params:
	 * opRes = a gssize.
	 */
	public void setOpResGssize(gssize opRes)
	{
		// void g_simple_async_result_set_op_res_gssize  (GSimpleAsyncResult *simple,  gssize op_res);
		g_simple_async_result_set_op_res_gssize(gSimpleAsyncResult, opRes);
	}
	
	/**
	 * Gets a gssize from the asynchronous result.
	 * Returns: a gssize returned from the asynchronous function.
	 */
	public gssize getOpResGssize()
	{
		// gssize g_simple_async_result_get_op_res_gssize  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gssize(gSimpleAsyncResult);
	}
	
	/**
	 * Sets the operation result to a boolean within the asynchronous result.
	 * Params:
	 * opRes = a gboolean.
	 */
	public void setOpResGboolean(int opRes)
	{
		// void g_simple_async_result_set_op_res_gboolean  (GSimpleAsyncResult *simple,  gboolean op_res);
		g_simple_async_result_set_op_res_gboolean(gSimpleAsyncResult, opRes);
	}
	
	/**
	 * Gets the operation result boolean from within the asynchronous result.
	 * Returns: TRUE if the operation's result was TRUE, FALSE if the operation's result was FALSE.
	 */
	public int getOpResGboolean()
	{
		// gboolean g_simple_async_result_get_op_res_gboolean  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gboolean(gSimpleAsyncResult);
	}
	
	/**
	 * Gets the source tag for the GSimpleAsyncResult.
	 * Returns: a gpointer to the source object for the GSimpleAsyncResult.
	 */
	public void* getSourceTag()
	{
		// gpointer g_simple_async_result_get_source_tag  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_source_tag(gSimpleAsyncResult);
	}
	
	/**
	 * Ensures that the data passed to the _finish function of an async
	 * operation is consistent. Three checks are performed.
	 * First, result is checked to ensure that it is really a
	 * GSimpleAsyncResult. Second, source is checked to ensure that it
	 * matches the source object of result. Third, source_tag is
	 * checked to ensure that it is either NULL (as it is when the result was
	 * created by g_simple_async_report_error_in_idle() or
	 * g_simple_async_report_gerror_in_idle()) or equal to the
	 * source_tag argument given to g_simple_async_result_new() (which, by
	 * convention, is a pointer to the _async function corresponding to the
	 * _finish function from which this function is called).
	 * Since 2.20
	 * Params:
	 * result = the GAsyncResult passed to the _finish function.
	 * source = the GObject passed to the _finish function.
	 * sourceTag = the asynchronous function.
	 * Returns: TRUE if all checks passed or FALSE if any failed.
	 */
	public static int isValid(GAsyncResult* result, ObjectG source, void* sourceTag)
	{
		// gboolean g_simple_async_result_is_valid (GAsyncResult *result,  GObject *source,  gpointer source_tag);
		return g_simple_async_result_is_valid(result, (source is null) ? null : source.getObjectGStruct(), sourceTag);
	}
	
	/**
	 * Sets whether to handle cancellation within the asynchronous operation.
	 * This function has nothing to do with
	 * g_simple_async_result_set_check_cancellable(). It only refers to the
	 * GCancellable passed to g_simple_async_result_run_in_thread().
	 * Params:
	 * handleCancellation = a gboolean.
	 */
	public void setHandleCancellation(int handleCancellation)
	{
		// void g_simple_async_result_set_handle_cancellation  (GSimpleAsyncResult *simple,  gboolean handle_cancellation);
		g_simple_async_result_set_handle_cancellation(gSimpleAsyncResult, handleCancellation);
	}
	
	/**
	 * Completes an asynchronous I/O job immediately. Must be called in
	 * the thread where the asynchronous result was to be delivered, as it
	 * invokes the callback directly. If you are in a different thread use
	 * g_simple_async_result_complete_in_idle().
	 * Calling this function takes a reference to simple for as long as
	 * is needed to complete the call.
	 */
	public void complete()
	{
		// void g_simple_async_result_complete (GSimpleAsyncResult *simple);
		g_simple_async_result_complete(gSimpleAsyncResult);
	}
	
	/**
	 * Completes an asynchronous function in an idle handler in the thread-default main
	 * loop of the thread that simple was initially created in
	 * (and re-pushes that context around the invocation of the callback).
	 * Calling this function takes a reference to simple for as long as
	 * is needed to complete the call.
	 */
	public void completeInIdle()
	{
		// void g_simple_async_result_complete_in_idle  (GSimpleAsyncResult *simple);
		g_simple_async_result_complete_in_idle(gSimpleAsyncResult);
	}
	
	/**
	 * Runs the asynchronous job in a separate thread and then calls
	 * g_simple_async_result_complete_in_idle() on simple to return
	 * the result to the appropriate main loop.
	 * Calling this function takes a reference to simple for as long as
	 * is needed to run the job and report its completion.
	 * Params:
	 * func = a GSimpleAsyncThreadFunc.
	 * ioPriority = the io priority of the request.
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 */
	public void runInThread(GSimpleAsyncThreadFunc func, int ioPriority, Cancellable cancellable)
	{
		// void g_simple_async_result_run_in_thread (GSimpleAsyncResult *simple,  GSimpleAsyncThreadFunc func,  int io_priority,  GCancellable *cancellable);
		g_simple_async_result_run_in_thread(gSimpleAsyncResult, func, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct());
	}
	
	/**
	 * Sets the result from a GError.
	 * Params:
	 * error = GError.
	 */
	public void setFromError(ErrorG error)
	{
		// void g_simple_async_result_set_from_error  (GSimpleAsyncResult *simple,  const GError *error);
		g_simple_async_result_set_from_error(gSimpleAsyncResult, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Sets the result from error, and takes over the caller's ownership
	 * of error, so the caller does not need to free it any more.
	 * Since 2.28
	 * Params:
	 * error = a GError
	 */
	public void takeError(ErrorG error)
	{
		// void g_simple_async_result_take_error (GSimpleAsyncResult *simple,  GError *error);
		g_simple_async_result_take_error(gSimpleAsyncResult, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Propagates an error from within the simple asynchronous result to
	 * a given destination.
	 * If the GCancellable given to a prior call to
	 * g_simple_async_result_set_check_cancellable() is cancelled then this
	 * function will return TRUE with dest set appropriately.
	 * Returns: TRUE if the error was propagated to dest. FALSE otherwise.
	 */
	public int propagateError()
	{
		// gboolean g_simple_async_result_propagate_error  (GSimpleAsyncResult *simple,  GError **dest);
		GError* err = null;
		
		auto p = g_simple_async_result_propagate_error(gSimpleAsyncResult, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets an error within the asynchronous result without a GError.
	 * Unless writing a binding, see g_simple_async_result_set_error().
	 * Params:
	 * domain = a GQuark (usually G_IO_ERROR).
	 * code = an error code.
	 * format = a formatted error reporting string.
	 * args = va_list of arguments.
	 */
	public void setErrorVa(GQuark domain, int code, string format, void* args)
	{
		// void g_simple_async_result_set_error_va (GSimpleAsyncResult *simple,  GQuark domain,  gint code,  const char *format,  va_list args);
		g_simple_async_result_set_error_va(gSimpleAsyncResult, domain, code, Str.toStringz(format), args);
	}
	
	/**
	 * Reports an error in an idle function. Similar to
	 * g_simple_async_report_error_in_idle(), but takes a GError rather
	 * than building a new one.
	 * Params:
	 * object = a GObject, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = user data passed to callback. [closure]
	 * error = the GError to report
	 */
	public static void simpleAsyncReportGerrorInIdle(ObjectG object, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		// void g_simple_async_report_gerror_in_idle  (GObject *object,  GAsyncReadyCallback callback,  gpointer user_data,  const GError *error);
		g_simple_async_report_gerror_in_idle((object is null) ? null : object.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Reports an error in an idle function. Similar to
	 * g_simple_async_report_gerror_in_idle(), but takes over the caller's
	 * ownership of error, so the caller does not have to free it any more.
	 * Since 2.28
	 * Params:
	 * object = a GObject, or NULL. [allow-none]
	 * callback = a GAsyncReadyCallback.
	 * userData = user data passed to callback.
	 * error = the GError to report
	 */
	public static void simpleAsyncReportTakeGerrorInIdle(ObjectG object, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		// void g_simple_async_report_take_gerror_in_idle  (GObject *object,  GAsyncReadyCallback callback,  gpointer user_data,  GError *error);
		g_simple_async_report_take_gerror_in_idle((object is null) ? null : object.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
	}
}
