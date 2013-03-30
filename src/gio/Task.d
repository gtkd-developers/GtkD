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
 * inFile  = GTask.html
 * outPack = gio
 * outFile = Task
 * strct   = GTask
 * realStrct=
 * ctorStrct=
 * clss    = Task
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AsyncResultIF
 * prefixes:
 * 	- g_task_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_task_get_source_object
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.MainContext
 * 	- glib.Source
 * 	- gio.Cancellable
 * 	- gio.AsyncResultIF
 * 	- gio.AsyncResultT
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GMainContext* -> MainContext
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.Task;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;
private import glib.MainContext;
private import glib.Source;
private import gio.Cancellable;
private import gio.AsyncResultIF;
private import gio.AsyncResultT;



private import gobject.ObjectG;

/**
 *  A GTask represents and manages a cancellable "task".
 *
 * Asynchronous operations
 *
 *  The most common usage of GTask is as a GAsyncResult, to
 *  manage data during an asynchronous operation. You call
 *  g_task_new() in the "start" method, followed by
 *  g_task_set_task_data() and the like if you need to keep some
 *  additional data associated with the task, and then pass the
 *  task object around through your asynchronous operation.
 *  Eventually, you will call a method such as
 *  g_task_return_pointer() or g_task_return_error(), which will
 *  save the value you give it and then invoke the task's callback
 *  function (waiting until the next next iteration of the main
 *  loop first, if necessary). The caller will pass the GTask back
 *  to the operation's finish function (as a GAsyncResult), and
 *  you can use g_task_propagate_pointer() or the like to extract
 *  the return value.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Chained asynchronous operations
 *
 *  GTask also tries to simplify asynchronous operations that
 *  internally chain together several smaller asynchronous
 *  operations. g_task_get_cancellable(), g_task_get_context(), and
 *  g_task_get_priority() allow you to get back the task's
 *  GCancellable, GMainContext, and I/O priority when starting a new
 *  subtask, so you don't have to keep track of them yourself.
 *  g_task_attach_source() simplifies the case of waiting for a
 *  source to fire (automatically using the correct GMainContext
 *  and priority).
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Asynchronous operations from synchronous ones
 *
 *  You can use g_task_run_in_thread() to turn a synchronous
 *  operation into an asynchronous one, by running it in a thread
 *  which will then dispatch the result back to the caller's
 *  GMainContext when it completes.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Adding cancellability to uncancellable tasks
 *
 *  Finally, g_task_run_in_thread() and g_task_run_in_thread_sync()
 *  can be used to turn an uncancellable operation into a
 *  cancellable one. If you call g_task_set_return_on_cancel(),
 *  passing TRUE, then if the task's GCancellable is cancelled,
 *  it will return control back to the caller immediately, while
 *  allowing the task thread to continue running in the background
 *  (and simply discarding its result when it finally does finish).
 *  Provided that the task thread is careful about how it uses
 *  locks and other externally-visible resources, this allows you
 *  to make "GLib-friendly" asynchronous and cancellable
 *  synchronous variants of blocking APIs.
 *
 * $(DDOC_COMMENT example)
 *
 * <hr>
 *
 * Porting from GSimpleAsyncResult
 *
 *  GTask's API attempts to be simpler than GSimpleAsyncResult's
 *  in several ways:
 *
 *  You can save task-specific data with g_task_set_task_data(), and
 *  retrieve it later with g_task_get_task_data(). This replaces the
 *  abuse of g_simple_async_result_set_op_res_gpointer() for the same
 *  purpose with GSimpleAsyncResult.
 *
 *  In addition to the task data, GTask also keeps track of the
 *  priority, GCancellable, and
 *  GMainContext associated with the task, so tasks that consist of
 *  a chain of simpler asynchronous operations will have easy access
 *  to those values when starting each sub-task.
 *
 *  g_task_return_error_if_cancelled() provides simplified
 *  handling for cancellation. In addition, cancellation
 *  overrides any other GTask return value by default, like
 *  GSimpleAsyncResult does when
 *  g_simple_async_result_set_check_cancellable() is called.
 *  (You can use g_task_set_check_cancellable() to turn off that
 *  behavior.) On the other hand, g_task_run_in_thread()
 *  guarantees that it will always run your
 *  task_func, even if the task's GCancellable
 *  is already cancelled before the task gets a chance to run;
 *  you can start your task_func with a
 *  g_task_return_error_if_cancelled() check if you need the
 *  old behavior.
 *
 *  The "return" methods (eg, g_task_return_pointer())
 *  automatically cause the task to be "completed" as well, and
 *  there is no need to worry about the "complete" vs "complete
 *  in idle" distinction. (GTask automatically figures out
 *  whether the task's callback can be invoked directly, or
 *  if it needs to be sent to another GMainContext, or delayed
 *  until the next iteration of the current GMainContext.)
 *
 *  The "finish" functions for GTask-based operations are generally
 *  much simpler than GSimpleAsyncResult ones, normally consisting
 *  of only a single call to g_task_propagate_pointer() or the like.
 *  Since g_task_propagate_pointer() "steals" the return value from
 *  the GTask, it is not necessary to juggle pointers around to
 *  prevent it from being freed twice.
 *
 *  With GSimpleAsyncResult, it was common to call
 *  g_simple_async_result_propagate_error() from the
 *  _finish() wrapper function, and have
 *  virtual method implementations only deal with successful
 *  returns. This behavior is deprecated, because it makes it
 *  difficult for a subclass to chain to a parent class's async
 *  methods. Instead, the wrapper function should just be a
 *  simple wrapper, and the virtual method should call an
 *  appropriate g_task_propagate_ function.
 *  Note that wrapper methods can now use
 *  g_async_result_legacy_propagate_error() to do old-style
 *  GSimpleAsyncResult error-returning behavior, and
 *  g_async_result_is_tagged() to check if a result is tagged as
 *  having come from the _async() wrapper
 *  function (for "short-circuit" results, such as when passing
 *  0 to g_input_stream_read_async()).
 */
public class Task : ObjectG, AsyncResultIF
{
	
	/** the main Gtk struct */
	protected GTask* gTask;
	
	
	public GTask* getTaskStruct()
	{
		return gTask;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTask;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTask* gTask)
	{
		super(cast(GObject*)gTask);
		this.gTask = gTask;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gTask = cast(GTask*)obj;
	}
	
	// add the AsyncResult capabilities
	mixin AsyncResultT!(GSimpleAsyncResult);
	
	/**
	 */
	
	/**
	 * Creates a GTask acting on source_object, which will eventually be
	 * used to invoke callback in the current thread-default main
	 * context.
	 * Call this in the "start" method of your asynchronous method, and
	 * pass the GTask around throughout the asynchronous operation. You
	 * can use g_task_set_task_data() to attach task-specific data to the
	 * object, which you can retrieve later via g_task_get_task_data().
	 * By default, if cancellable is cancelled, then the return value of
	 * the task will always be G_IO_ERROR_CANCELLED, even if the task had
	 * already completed before the cancellation. This allows for
	 * simplified handling in cases where cancellation may imply that
	 * other objects that the task depends on have been destroyed. If you
	 * do not want this behavior, you can use
	 * g_task_set_check_cancellable() to change it.
	 * Since 2.36
	 * Params:
	 * sourceObject = the GObject that owns
	 * this task, or NULL. [allow-none][type GObject]
	 * cancellable = optional GCancellable object, NULL to ignore. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * callbackData = user data passed to callback. [closure]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (void* sourceObject, Cancellable cancellable, GAsyncReadyCallback callback, void* callbackData)
	{
		// GTask * g_task_new (gpointer source_object,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer callback_data);
		auto p = g_task_new(sourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, callbackData);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_task_new(sourceObject, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, callbackData)");
		}
		this(cast(GTask*) p);
	}
	
	/**
	 * Sets task's task data (freeing the existing task data, if any).
	 * Since 2.36
	 * Params:
	 * task = the GTask
	 * taskData = task-specific data. [allow-none]
	 * taskDataDestroy = GDestroyNotify for task_data. [allow-none]
	 */
	public void setTaskData(void* taskData, GDestroyNotify taskDataDestroy)
	{
		// void g_task_set_task_data (GTask *task,  gpointer task_data,  GDestroyNotify task_data_destroy);
		g_task_set_task_data(gTask, taskData, taskDataDestroy);
	}
	
	/**
	 * Sets task's priority. If you do not call this, it will default to
	 * G_PRIORITY_DEFAULT.
	 * This will affect the priority of GSources created with
	 * g_task_attach_source() and the scheduling of tasks run in threads,
	 * and can also be explicitly retrieved later via
	 * g_task_get_priority().
	 * Since 2.36
	 * Params:
	 * priority = the priority
	 * of the request.
	 */
	public void setPriority(int priority)
	{
		// void g_task_set_priority (GTask *task,  gint priority);
		g_task_set_priority(gTask, priority);
	}
	
	/**
	 * Sets or clears task's check-cancellable flag. If this is TRUE
	 * (the default), then g_task_propagate_pointer(), etc, and
	 * g_task_had_error() will check the task's GCancellable first, and
	 * if it has been cancelled, then they will consider the task to have
	 * returned an "Operation was cancelled" error
	 * (G_IO_ERROR_CANCELLED), regardless of any other error or return
	 * value the task may have had.
	 * If check_cancellable is FALSE, then the GTask will not check the
	 * cancellable itself, and it is up to task's owner to do this (eg,
	 * via g_task_return_error_if_cancelled()).
	 * If you are using g_task_set_return_on_cancel() as well, then
	 * you must leave check-cancellable set TRUE.
	 * Since 2.36
	 * Params:
	 * checkCancellable = whether GTask will check the state of
	 * its GCancellable for you.
	 */
	public void setCheckCancellable(int checkCancellable)
	{
		// void g_task_set_check_cancellable (GTask *task,  gboolean check_cancellable);
		g_task_set_check_cancellable(gTask, checkCancellable);
	}
	
	/**
	 * Sets or clears task's return-on-cancel flag. This is only
	 * meaningful for tasks run via g_task_run_in_thread() or
	 * g_task_run_in_thread_sync().
	 * If return_on_cancel is TRUE, then cancelling task's
	 * GCancellable will immediately cause it to return, as though the
	 * task's GTaskThreadFunc had called
	 * g_task_return_error_if_cancelled() and then returned.
	 * This allows you to create a cancellable wrapper around an
	 * uninterruptable function. The GTaskThreadFunc just needs to be
	 * careful that it does not modify any externally-visible state after
	 * it has been cancelled. To do that, the thread should call
	 * g_task_set_return_on_cancel() again to (atomically) set
	 * return-on-cancel FALSE before making externally-visible changes;
	 * if the task gets cancelled before the return-on-cancel flag could
	 * be changed, g_task_set_return_on_cancel() will indicate this by
	 * returning FALSE.
	 * You can disable and re-enable this flag multiple times if you wish.
	 * If the task's GCancellable is cancelled while return-on-cancel is
	 * FALSE, then calling g_task_set_return_on_cancel() to set it TRUE
	 * again will cause the task to be cancelled at that point.
	 * If the task's GCancellable is already cancelled before you call
	 * g_task_run_in_thread()/g_task_run_in_thread_sync(), then the
	 * GTaskThreadFunc will still be run (for consistency), but the task
	 * will also be completed right away.
	 * Since 2.36
	 * Params:
	 * returnOnCancel = whether the task returns automatically when
	 * it is cancelled.
	 * Returns: TRUE if task's return-on-cancel flag was changed to match return_on_cancel. FALSE if task has already been cancelled.
	 */
	public int setReturnOnCancel(int returnOnCancel)
	{
		// gboolean g_task_set_return_on_cancel (GTask *task,  gboolean return_on_cancel);
		return g_task_set_return_on_cancel(gTask, returnOnCancel);
	}
	
	/**
	 * Sets task's source tag. You can use this to tag a task return
	 * value with a particular pointer (usually a pointer to the function
	 * doing the tagging) and then later check it using
	 * g_task_get_source_tag() (or g_async_result_is_tagged()) in the
	 * task's "finish" function, to figure out if the response came from a
	 * particular place.
	 * Since 2.36
	 * Params:
	 * sourceTag = an opaque pointer indicating the source of this task
	 */
	public void setSourceTag(void* sourceTag)
	{
		// void g_task_set_source_tag (GTask *task,  gpointer source_tag);
		g_task_set_source_tag(gTask, sourceTag);
	}
	
	/**
	 * Creates a GTask and then immediately calls g_task_return_error()
	 * on it. Use this in the wrapper function of an asynchronous method
	 * when you want to avoid even calling the virtual method. You can
	 * then use g_async_result_is_tagged() in the finish method wrapper to
	 * check if the result there is tagged as having been created by the
	 * wrapper method, and deal with it appropriately if so.
	 * See also g_task_report_new_error().
	 * Since 2.36
	 * Params:
	 * sourceObject = the GObject that owns
	 * this task, or NULL. [allow-none][type GObject]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * callbackData = user data passed to callback. [closure]
	 * sourceTag = an opaque pointer indicating the source of this task
	 * error = error to report. [transfer full]
	 */
	public static void reportError(void* sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, GError* error)
	{
		// void g_task_report_error (gpointer source_object,  GAsyncReadyCallback callback,  gpointer callback_data,  gpointer source_tag,  GError *error);
		g_task_report_error(sourceObject, callback, callbackData, sourceTag, error);
	}
	
	/**
	 * Gets task's task_data.
	 * Since 2.36
	 * Returns: task's task_data. [transfer none]
	 */
	public void* getTaskData()
	{
		// gpointer g_task_get_task_data (GTask *task);
		return g_task_get_task_data(gTask);
	}
	
	/**
	 * Gets task's priority
	 * Since 2.36
	 * Returns: task's priority
	 */
	public int getPriority()
	{
		// gint g_task_get_priority (GTask *task);
		return g_task_get_priority(gTask);
	}
	
	/**
	 * Gets task's GCancellable
	 * Since 2.36
	 * Returns: task's GCancellable. [transfer none]
	 */
	public Cancellable getCancellable()
	{
		// GCancellable * g_task_get_cancellable (GTask *task);
		auto p = g_task_get_cancellable(gTask);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Cancellable)(cast(GCancellable*) p);
	}
	
	/**
	 * Gets task's check-cancellable flag. See
	 * g_task_set_check_cancellable() for more details.
	 * Since 2.36
	 */
	public int getCheckCancellable()
	{
		// gboolean g_task_get_check_cancellable (GTask *task);
		return g_task_get_check_cancellable(gTask);
	}
	
	/**
	 * Gets task's return-on-cancel flag. See
	 * g_task_set_return_on_cancel() for more details.
	 * Since 2.36
	 */
	public int getReturnOnCancel()
	{
		// gboolean g_task_get_return_on_cancel (GTask *task);
		return g_task_get_return_on_cancel(gTask);
	}
	
	/**
	 * Gets the GMainContext that task will return its result in (that
	 * is, the context that was the thread-default main
	 * context at the point when task was created).
	 * This will always return a non-NULL value, even if the task's
	 * context is the default GMainContext.
	 * Since 2.36
	 * Returns: task's GMainContext. [transfer none]
	 */
	public MainContext getContext()
	{
		// GMainContext * g_task_get_context (GTask *task);
		auto p = g_task_get_context(gTask);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(MainContext)(cast(GMainContext*) p);
	}
	
	/**
	 * Gets task's source tag. See g_task_set_source_tag().
	 * Since 2.36
	 * Returns: task's source tag. [transfer none]
	 */
	public void* getSourceTag()
	{
		// gpointer g_task_get_source_tag (GTask *task);
		return g_task_get_source_tag(gTask);
	}
	
	/**
	 * Sets task's result to result and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 * Since 2.36
	 * Params:
	 * result = the gboolean result of a task function.
	 */
	public void returnBoolean(int result)
	{
		// void g_task_return_boolean (GTask *task,  gboolean result);
		g_task_return_boolean(gTask, result);
	}
	
	/**
	 * Sets task's result to result and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 * Since 2.36
	 * Params:
	 * result = the integer (gssize) result of a task function.
	 */
	public void returnInt(gssize result)
	{
		// void g_task_return_int (GTask *task,  gssize result);
		g_task_return_int(gTask, result);
	}
	
	/**
	 * Sets task's result to result and completes the task. If result
	 * is not NULL, then result_destroy will be used to free result if
	 * the caller does not take ownership of it with
	 * g_task_propagate_pointer().
	 * "Completes the task" means that for an ordinary asynchronous task
	 * it will either invoke the task's callback, or else queue that
	 * callback to be invoked in the proper GMainContext, or in the next
	 * iteration of the current GMainContext. For a task run via
	 * g_task_run_in_thread() or g_task_run_in_thread_sync(), calling this
	 * method will save result to be returned to the caller later, but
	 * the task will not actually be completed until the GTaskThreadFunc
	 * exits.
	 * Note that since the task may be completed before returning from
	 * g_task_return_pointer(), you cannot assume that result is still
	 * valid after calling this, unless you are still holding another
	 * reference on it.
	 * Since 2.36
	 * Params:
	 * result = the pointer result of a task
	 * function. [allow-none][transfer full]
	 * resultDestroy = a GDestroyNotify function. [allow-none]
	 */
	public void returnPointer(void* result, GDestroyNotify resultDestroy)
	{
		// void g_task_return_pointer (GTask *task,  gpointer result,  GDestroyNotify result_destroy);
		g_task_return_pointer(gTask, result, resultDestroy);
	}
	
	/**
	 * Sets task's result to error (which task assumes ownership of)
	 * and completes the task (see g_task_return_pointer() for more
	 * discussion of exactly what this means).
	 * Note that since the task takes ownership of error, and since the
	 * task may be completed before returning from g_task_return_error(),
	 * you cannot assume that error is still valid after calling this.
	 * Call g_error_copy() on the error if you need to keep a local copy
	 * as well.
	 * See also g_task_return_new_error().
	 * Since 2.36
	 * Params:
	 * error = the GError result of a task function. [transfer full]
	 */
	public void returnError(GError* error)
	{
		// void g_task_return_error (GTask *task,  GError *error);
		g_task_return_error(gTask, error);
	}
	
	/**
	 * Checks if task's GCancellable has been cancelled, and if so, sets
	 * task's error accordingly and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 * Since 2.36
	 * Returns: TRUE if task has been cancelled, FALSE if not
	 */
	public int returnErrorIfCancelled()
	{
		// gboolean g_task_return_error_if_cancelled (GTask *task);
		return g_task_return_error_if_cancelled(gTask);
	}
	
	/**
	 * Gets the result of task as a gboolean.
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return FALSE and set error.
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 * Since 2.36
	 * Returns: the task result, or FALSE on error
	 * Throws: GException on failure.
	 */
	public int propagateBoolean()
	{
		// gboolean g_task_propagate_boolean (GTask *task,  GError **error);
		GError* err = null;
		
		auto p = g_task_propagate_boolean(gTask, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the result of task as an integer (gssize).
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return -1 and set error.
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 * Since 2.36
	 * Returns: the task result, or -1 on error
	 * Throws: GException on failure.
	 */
	public gssize propagateInt()
	{
		// gssize g_task_propagate_int (GTask *task,  GError **error);
		GError* err = null;
		
		auto p = g_task_propagate_int(gTask, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Gets the result of task as a pointer, and transfers ownership
	 * of that value to the caller.
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return NULL and set error.
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 * Since 2.36
	 * Returns: the task result, or NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public void* propagatePointer()
	{
		// gpointer g_task_propagate_pointer (GTask *task,  GError **error);
		GError* err = null;
		
		auto p = g_task_propagate_pointer(gTask, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Tests if task resulted in an error.
	 * Since 2.36
	 * Returns: TRUE if the task resulted in an error, FALSE otherwise.
	 */
	public int hadError()
	{
		// gboolean g_task_had_error (GTask *task);
		return g_task_had_error(gTask);
	}
	
	/**
	 * Runs task_func in another thread. When task_func returns, task's
	 * GAsyncReadyCallback will be invoked in task's GMainContext.
	 * This takes a ref on task until the task completes.
	 * See GTaskThreadFunc for more details about how task_func is handled.
	 * Since 2.36
	 * Params:
	 * task = a GTask
	 * taskFunc = a GTaskThreadFunc
	 */
	public void runInThread(GTaskThreadFunc taskFunc)
	{
		// void g_task_run_in_thread (GTask *task,  GTaskThreadFunc task_func);
		g_task_run_in_thread(gTask, taskFunc);
	}
	
	/**
	 * Runs task_func in another thread, and waits for it to return or be
	 * cancelled. You can use g_task_propagate_pointer(), etc, afterward
	 * to get the result of task_func.
	 * See GTaskThreadFunc for more details about how task_func is handled.
	 * Normally this is used with tasks created with a NULL
	 * callback, but note that even if the task does
	 * have a callback, it will not be invoked when task_func returns.
	 * Since 2.36
	 * Params:
	 * task = a GTask
	 * taskFunc = a GTaskThreadFunc
	 */
	public void runInThreadSync(GTaskThreadFunc taskFunc)
	{
		// void g_task_run_in_thread_sync (GTask *task,  GTaskThreadFunc task_func);
		g_task_run_in_thread_sync(gTask, taskFunc);
	}
	
	/**
	 * A utility function for dealing with async operations where you need
	 * to wait for a GSource to trigger. Attaches source to task's
	 * GMainContext with task's priority, and sets source's callback
	 * to callback, with task as the callback's
	 * user_data.
	 * This takes a reference on task until source is destroyed.
	 * Since 2.36
	 * Params:
	 * source = the source to attach
	 * callback = the callback to invoke when source triggers
	 */
	public void attachSource(Source source, GSourceFunc callback)
	{
		// void g_task_attach_source (GTask *task,  GSource *source,  GSourceFunc callback);
		g_task_attach_source(gTask, (source is null) ? null : source.getSourceStruct(), callback);
	}
	
	/**
	 * Checks that result is a GTask, and that source_object is its
	 * source object (or that source_object is NULL and result has no
	 * source object). This can be used in g_return_if_fail() checks.
	 * Since 2.36
	 * Params:
	 * result = A GAsyncResult. [type Gio.AsyncResult]
	 * sourceObject = the source object
	 * expected to be associated with the task. [allow-none][type GObject]
	 * Returns: TRUE if result and source_object are valid, FALSE if not
	 */
	public static int isValid(void* result, void* sourceObject)
	{
		// gboolean g_task_is_valid (gpointer result,  gpointer source_object);
		return g_task_is_valid(result, sourceObject);
	}
}
