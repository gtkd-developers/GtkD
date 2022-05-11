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


module gio.Task;

private import gio.AsyncResultIF;
private import gio.AsyncResultT;
private import gio.Cancellable;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MainContext;
private import glib.MemorySlice;
private import glib.Source;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import gobject.Value;


/**
 * A #GTask represents and manages a cancellable "task".
 * 
 * ## Asynchronous operations
 * 
 * The most common usage of #GTask is as a #GAsyncResult, to
 * manage data during an asynchronous operation. You call
 * g_task_new() in the "start" method, followed by
 * g_task_set_task_data() and the like if you need to keep some
 * additional data associated with the task, and then pass the
 * task object around through your asynchronous operation.
 * Eventually, you will call a method such as
 * g_task_return_pointer() or g_task_return_error(), which will
 * save the value you give it and then invoke the task's callback
 * function in the
 * [thread-default main context][g-main-context-push-thread-default]
 * where it was created (waiting until the next iteration of the main
 * loop first, if necessary). The caller will pass the #GTask back to
 * the operation's finish function (as a #GAsyncResult), and you can
 * use g_task_propagate_pointer() or the like to extract the
 * return value.
 * 
 * Using #GTask requires the thread-default #GMainContext from when the
 * #GTask was constructed to be running at least until the task has completed
 * and its data has been freed.
 * 
 * Here is an example for using GTask as a GAsyncResult:
 * |[<!-- language="C" -->
 * typedef struct {
 * CakeFrostingType frosting;
 * char *message;
 * } DecorationData;
 * 
 * static void
 * decoration_data_free (DecorationData *decoration)
 * {
 * g_free (decoration->message);
 * g_slice_free (DecorationData, decoration);
 * }
 * 
 * static void
 * baked_cb (Cake     *cake,
 * gpointer  user_data)
 * {
 * GTask *task = user_data;
 * DecorationData *decoration = g_task_get_task_data (task);
 * GError *error = NULL;
 * 
 * if (cake == NULL)
 * {
 * g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
 * "Go to the supermarket");
 * g_object_unref (task);
 * return;
 * }
 * 
 * if (!cake_decorate (cake, decoration->frosting, decoration->message, &error))
 * {
 * g_object_unref (cake);
 * // g_task_return_error() takes ownership of error
 * g_task_return_error (task, error);
 * g_object_unref (task);
 * return;
 * }
 * 
 * g_task_return_pointer (task, cake, g_object_unref);
 * g_object_unref (task);
 * }
 * 
 * void
 * baker_bake_cake_async (Baker               *self,
 * guint                radius,
 * CakeFlavor           flavor,
 * CakeFrostingType     frosting,
 * const char          *message,
 * GCancellable        *cancellable,
 * GAsyncReadyCallback  callback,
 * gpointer             user_data)
 * {
 * GTask *task;
 * DecorationData *decoration;
 * Cake  *cake;
 * 
 * task = g_task_new (self, cancellable, callback, user_data);
 * if (radius < 3)
 * {
 * g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_TOO_SMALL,
 * "%ucm radius cakes are silly",
 * radius);
 * g_object_unref (task);
 * return;
 * }
 * 
 * cake = _baker_get_cached_cake (self, radius, flavor, frosting, message);
 * if (cake != NULL)
 * {
 * // _baker_get_cached_cake() returns a reffed cake
 * g_task_return_pointer (task, cake, g_object_unref);
 * g_object_unref (task);
 * return;
 * }
 * 
 * decoration = g_slice_new (DecorationData);
 * decoration->frosting = frosting;
 * decoration->message = g_strdup (message);
 * g_task_set_task_data (task, decoration, (GDestroyNotify) decoration_data_free);
 * 
 * _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
 * }
 * 
 * Cake *
 * baker_bake_cake_finish (Baker         *self,
 * GAsyncResult  *result,
 * GError       **error)
 * {
 * g_return_val_if_fail (g_task_is_valid (result, self), NULL);
 * 
 * return g_task_propagate_pointer (G_TASK (result), error);
 * }
 * ]|
 * 
 * ## Chained asynchronous operations
 * 
 * #GTask also tries to simplify asynchronous operations that
 * internally chain together several smaller asynchronous
 * operations. g_task_get_cancellable(), g_task_get_context(),
 * and g_task_get_priority() allow you to get back the task's
 * #GCancellable, #GMainContext, and [I/O priority][io-priority]
 * when starting a new subtask, so you don't have to keep track
 * of them yourself. g_task_attach_source() simplifies the case
 * of waiting for a source to fire (automatically using the correct
 * #GMainContext and priority).
 * 
 * Here is an example for chained asynchronous operations:
 * |[<!-- language="C" -->
 * typedef struct {
 * Cake *cake;
 * CakeFrostingType frosting;
 * char *message;
 * } BakingData;
 * 
 * static void
 * decoration_data_free (BakingData *bd)
 * {
 * if (bd->cake)
 * g_object_unref (bd->cake);
 * g_free (bd->message);
 * g_slice_free (BakingData, bd);
 * }
 * 
 * static void
 * decorated_cb (Cake         *cake,
 * GAsyncResult *result,
 * gpointer      user_data)
 * {
 * GTask *task = user_data;
 * GError *error = NULL;
 * 
 * if (!cake_decorate_finish (cake, result, &error))
 * {
 * g_object_unref (cake);
 * g_task_return_error (task, error);
 * g_object_unref (task);
 * return;
 * }
 * 
 * // baking_data_free() will drop its ref on the cake, so we have to
 * // take another here to give to the caller.
 * g_task_return_pointer (task, g_object_ref (cake), g_object_unref);
 * g_object_unref (task);
 * }
 * 
 * static gboolean
 * decorator_ready (gpointer user_data)
 * {
 * GTask *task = user_data;
 * BakingData *bd = g_task_get_task_data (task);
 * 
 * cake_decorate_async (bd->cake, bd->frosting, bd->message,
 * g_task_get_cancellable (task),
 * decorated_cb, task);
 * 
 * return G_SOURCE_REMOVE;
 * }
 * 
 * static void
 * baked_cb (Cake     *cake,
 * gpointer  user_data)
 * {
 * GTask *task = user_data;
 * BakingData *bd = g_task_get_task_data (task);
 * GError *error = NULL;
 * 
 * if (cake == NULL)
 * {
 * g_task_return_new_error (task, BAKER_ERROR, BAKER_ERROR_NO_FLOUR,
 * "Go to the supermarket");
 * g_object_unref (task);
 * return;
 * }
 * 
 * bd->cake = cake;
 * 
 * // Bail out now if the user has already cancelled
 * if (g_task_return_error_if_cancelled (task))
 * {
 * g_object_unref (task);
 * return;
 * }
 * 
 * if (cake_decorator_available (cake))
 * decorator_ready (task);
 * else
 * {
 * GSource *source;
 * 
 * source = cake_decorator_wait_source_new (cake);
 * // Attach @source to @task's GMainContext and have it call
 * // decorator_ready() when it is ready.
 * g_task_attach_source (task, source, decorator_ready);
 * g_source_unref (source);
 * }
 * }
 * 
 * void
 * baker_bake_cake_async (Baker               *self,
 * guint                radius,
 * CakeFlavor           flavor,
 * CakeFrostingType     frosting,
 * const char          *message,
 * gint                 priority,
 * GCancellable        *cancellable,
 * GAsyncReadyCallback  callback,
 * gpointer             user_data)
 * {
 * GTask *task;
 * BakingData *bd;
 * 
 * task = g_task_new (self, cancellable, callback, user_data);
 * g_task_set_priority (task, priority);
 * 
 * bd = g_slice_new0 (BakingData);
 * bd->frosting = frosting;
 * bd->message = g_strdup (message);
 * g_task_set_task_data (task, bd, (GDestroyNotify) baking_data_free);
 * 
 * _baker_begin_cake (self, radius, flavor, cancellable, baked_cb, task);
 * }
 * 
 * Cake *
 * baker_bake_cake_finish (Baker         *self,
 * GAsyncResult  *result,
 * GError       **error)
 * {
 * g_return_val_if_fail (g_task_is_valid (result, self), NULL);
 * 
 * return g_task_propagate_pointer (G_TASK (result), error);
 * }
 * ]|
 * 
 * ## Asynchronous operations from synchronous ones
 * 
 * You can use g_task_run_in_thread() to turn a synchronous
 * operation into an asynchronous one, by running it in a thread.
 * When it completes, the result will be dispatched to the
 * [thread-default main context][g-main-context-push-thread-default]
 * where the #GTask was created.
 * 
 * Running a task in a thread:
 * |[<!-- language="C" -->
 * typedef struct {
 * guint radius;
 * CakeFlavor flavor;
 * CakeFrostingType frosting;
 * char *message;
 * } CakeData;
 * 
 * static void
 * cake_data_free (CakeData *cake_data)
 * {
 * g_free (cake_data->message);
 * g_slice_free (CakeData, cake_data);
 * }
 * 
 * static void
 * bake_cake_thread (GTask         *task,
 * gpointer       source_object,
 * gpointer       task_data,
 * GCancellable  *cancellable)
 * {
 * Baker *self = source_object;
 * CakeData *cake_data = task_data;
 * Cake *cake;
 * GError *error = NULL;
 * 
 * cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
 * cake_data->frosting, cake_data->message,
 * cancellable, &error);
 * if (cake)
 * g_task_return_pointer (task, cake, g_object_unref);
 * else
 * g_task_return_error (task, error);
 * }
 * 
 * void
 * baker_bake_cake_async (Baker               *self,
 * guint                radius,
 * CakeFlavor           flavor,
 * CakeFrostingType     frosting,
 * const char          *message,
 * GCancellable        *cancellable,
 * GAsyncReadyCallback  callback,
 * gpointer             user_data)
 * {
 * CakeData *cake_data;
 * GTask *task;
 * 
 * cake_data = g_slice_new (CakeData);
 * cake_data->radius = radius;
 * cake_data->flavor = flavor;
 * cake_data->frosting = frosting;
 * cake_data->message = g_strdup (message);
 * task = g_task_new (self, cancellable, callback, user_data);
 * g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
 * g_task_run_in_thread (task, bake_cake_thread);
 * g_object_unref (task);
 * }
 * 
 * Cake *
 * baker_bake_cake_finish (Baker         *self,
 * GAsyncResult  *result,
 * GError       **error)
 * {
 * g_return_val_if_fail (g_task_is_valid (result, self), NULL);
 * 
 * return g_task_propagate_pointer (G_TASK (result), error);
 * }
 * ]|
 * 
 * ## Adding cancellability to uncancellable tasks
 * 
 * Finally, g_task_run_in_thread() and g_task_run_in_thread_sync()
 * can be used to turn an uncancellable operation into a
 * cancellable one. If you call g_task_set_return_on_cancel(),
 * passing %TRUE, then if the task's #GCancellable is cancelled,
 * it will return control back to the caller immediately, while
 * allowing the task thread to continue running in the background
 * (and simply discarding its result when it finally does finish).
 * Provided that the task thread is careful about how it uses
 * locks and other externally-visible resources, this allows you
 * to make "GLib-friendly" asynchronous and cancellable
 * synchronous variants of blocking APIs.
 * 
 * Cancelling a task:
 * |[<!-- language="C" -->
 * static void
 * bake_cake_thread (GTask         *task,
 * gpointer       source_object,
 * gpointer       task_data,
 * GCancellable  *cancellable)
 * {
 * Baker *self = source_object;
 * CakeData *cake_data = task_data;
 * Cake *cake;
 * GError *error = NULL;
 * 
 * cake = bake_cake (baker, cake_data->radius, cake_data->flavor,
 * cake_data->frosting, cake_data->message,
 * &error);
 * if (error)
 * {
 * g_task_return_error (task, error);
 * return;
 * }
 * 
 * // If the task has already been cancelled, then we don't want to add
 * // the cake to the cake cache. Likewise, we don't  want to have the
 * // task get cancelled in the middle of updating the cache.
 * // g_task_set_return_on_cancel() will return %TRUE here if it managed
 * // to disable return-on-cancel, or %FALSE if the task was cancelled
 * // before it could.
 * if (g_task_set_return_on_cancel (task, FALSE))
 * {
 * // If the caller cancels at this point, their
 * // GAsyncReadyCallback won't be invoked until we return,
 * // so we don't have to worry that this code will run at
 * // the same time as that code does. But if there were
 * // other functions that might look at the cake cache,
 * // then we'd probably need a GMutex here as well.
 * baker_add_cake_to_cache (baker, cake);
 * g_task_return_pointer (task, cake, g_object_unref);
 * }
 * }
 * 
 * void
 * baker_bake_cake_async (Baker               *self,
 * guint                radius,
 * CakeFlavor           flavor,
 * CakeFrostingType     frosting,
 * const char          *message,
 * GCancellable        *cancellable,
 * GAsyncReadyCallback  callback,
 * gpointer             user_data)
 * {
 * CakeData *cake_data;
 * GTask *task;
 * 
 * cake_data = g_slice_new (CakeData);
 * 
 * ...
 * 
 * task = g_task_new (self, cancellable, callback, user_data);
 * g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
 * g_task_set_return_on_cancel (task, TRUE);
 * g_task_run_in_thread (task, bake_cake_thread);
 * }
 * 
 * Cake *
 * baker_bake_cake_sync (Baker               *self,
 * guint                radius,
 * CakeFlavor           flavor,
 * CakeFrostingType     frosting,
 * const char          *message,
 * GCancellable        *cancellable,
 * GError             **error)
 * {
 * CakeData *cake_data;
 * GTask *task;
 * Cake *cake;
 * 
 * cake_data = g_slice_new (CakeData);
 * 
 * ...
 * 
 * task = g_task_new (self, cancellable, NULL, NULL);
 * g_task_set_task_data (task, cake_data, (GDestroyNotify) cake_data_free);
 * g_task_set_return_on_cancel (task, TRUE);
 * g_task_run_in_thread_sync (task, bake_cake_thread);
 * 
 * cake = g_task_propagate_pointer (task, error);
 * g_object_unref (task);
 * return cake;
 * }
 * ]|
 * 
 * ## Porting from GSimpleAsyncResult
 * 
 * #GTask's API attempts to be simpler than #GSimpleAsyncResult's
 * in several ways:
 * - You can save task-specific data with g_task_set_task_data(), and
 * retrieve it later with g_task_get_task_data(). This replaces the
 * abuse of g_simple_async_result_set_op_res_gpointer() for the same
 * purpose with #GSimpleAsyncResult.
 * - In addition to the task data, #GTask also keeps track of the
 * [priority][io-priority], #GCancellable, and
 * #GMainContext associated with the task, so tasks that consist of
 * a chain of simpler asynchronous operations will have easy access
 * to those values when starting each sub-task.
 * - g_task_return_error_if_cancelled() provides simplified
 * handling for cancellation. In addition, cancellation
 * overrides any other #GTask return value by default, like
 * #GSimpleAsyncResult does when
 * g_simple_async_result_set_check_cancellable() is called.
 * (You can use g_task_set_check_cancellable() to turn off that
 * behavior.) On the other hand, g_task_run_in_thread()
 * guarantees that it will always run your
 * `task_func`, even if the task's #GCancellable
 * is already cancelled before the task gets a chance to run;
 * you can start your `task_func` with a
 * g_task_return_error_if_cancelled() check if you need the
 * old behavior.
 * - The "return" methods (eg, g_task_return_pointer())
 * automatically cause the task to be "completed" as well, and
 * there is no need to worry about the "complete" vs "complete
 * in idle" distinction. (#GTask automatically figures out
 * whether the task's callback can be invoked directly, or
 * if it needs to be sent to another #GMainContext, or delayed
 * until the next iteration of the current #GMainContext.)
 * - The "finish" functions for #GTask based operations are generally
 * much simpler than #GSimpleAsyncResult ones, normally consisting
 * of only a single call to g_task_propagate_pointer() or the like.
 * Since g_task_propagate_pointer() "steals" the return value from
 * the #GTask, it is not necessary to juggle pointers around to
 * prevent it from being freed twice.
 * - With #GSimpleAsyncResult, it was common to call
 * g_simple_async_result_propagate_error() from the
 * `_finish()` wrapper function, and have
 * virtual method implementations only deal with successful
 * returns. This behavior is deprecated, because it makes it
 * difficult for a subclass to chain to a parent class's async
 * methods. Instead, the wrapper function should just be a
 * simple wrapper, and the virtual method should call an
 * appropriate `g_task_propagate_` function.
 * Note that wrapper methods can now use
 * g_async_result_legacy_propagate_error() to do old-style
 * #GSimpleAsyncResult error-returning behavior, and
 * g_async_result_is_tagged() to check if a result is tagged as
 * having come from the `_async()` wrapper
 * function (for "short-circuit" results, such as when passing
 * 0 to g_input_stream_read_async()).
 */
public class Task : ObjectG, AsyncResultIF
{
	/** the main Gtk struct */
	protected GTask* gTask;

	/** Get the main Gtk struct */
	public GTask* getTaskStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gTask;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gTask;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GTask* gTask, bool ownedRef = false)
	{
		this.gTask = gTask;
		super(cast(GObject*)gTask, ownedRef);
	}

	// add the AsyncResult capabilities
	mixin AsyncResultT!(GTask);


	/** */
	public static GType getType()
	{
		return g_task_get_type();
	}

	/**
	 * Creates a #GTask acting on @source_object, which will eventually be
	 * used to invoke @callback in the current
	 * [thread-default main context][g-main-context-push-thread-default].
	 *
	 * Call this in the "start" method of your asynchronous method, and
	 * pass the #GTask around throughout the asynchronous operation. You
	 * can use g_task_set_task_data() to attach task-specific data to the
	 * object, which you can retrieve later via g_task_get_task_data().
	 *
	 * By default, if @cancellable is cancelled, then the return value of
	 * the task will always be %G_IO_ERROR_CANCELLED, even if the task had
	 * already completed before the cancellation. This allows for
	 * simplified handling in cases where cancellation may imply that
	 * other objects that the task depends on have been destroyed. If you
	 * do not want this behavior, you can use
	 * g_task_set_check_cancellable() to change it.
	 *
	 * Params:
	 *     sourceObject = the #GObject that owns
	 *         this task, or %NULL.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback.
	 *     callbackData = user data passed to @callback.
	 *
	 * Returns: a #GTask.
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ObjectG sourceObject, Cancellable cancellable, GAsyncReadyCallback callback, void* callbackData)
	{
		auto __p = g_task_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, callbackData);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GTask*) __p, true);
	}

	/**
	 * Checks that @result is a #GTask, and that @source_object is its
	 * source object (or that @source_object is %NULL and @result has no
	 * source object). This can be used in g_return_if_fail() checks.
	 *
	 * Params:
	 *     result = A #GAsyncResult
	 *     sourceObject = the source object
	 *         expected to be associated with the task
	 *
	 * Returns: %TRUE if @result and @source_object are valid, %FALSE
	 *     if not
	 *
	 * Since: 2.36
	 */
	public static bool isValid(AsyncResultIF result, ObjectG sourceObject)
	{
		return g_task_is_valid((result is null) ? null : result.getAsyncResultStruct(), (sourceObject is null) ? null : sourceObject.getObjectGStruct()) != 0;
	}

	/**
	 * Creates a #GTask and then immediately calls g_task_return_error()
	 * on it. Use this in the wrapper function of an asynchronous method
	 * when you want to avoid even calling the virtual method. You can
	 * then use g_async_result_is_tagged() in the finish method wrapper to
	 * check if the result there is tagged as having been created by the
	 * wrapper method, and deal with it appropriately if so.
	 *
	 * See also g_task_report_new_error().
	 *
	 * Params:
	 *     sourceObject = the #GObject that owns
	 *         this task, or %NULL.
	 *     callback = a #GAsyncReadyCallback.
	 *     callbackData = user data passed to @callback.
	 *     sourceTag = an opaque pointer indicating the source of this task
	 *     error = error to report
	 *
	 * Since: 2.36
	 */
	public static void reportError(ObjectG sourceObject, GAsyncReadyCallback callback, void* callbackData, void* sourceTag, ErrorG error)
	{
		g_task_report_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, callbackData, sourceTag, (error is null) ? null : error.getErrorGStruct(true));
	}

	/**
	 * A utility function for dealing with async operations where you need
	 * to wait for a #GSource to trigger. Attaches @source to @task's
	 * #GMainContext with @task's [priority][io-priority], and sets @source's
	 * callback to @callback, with @task as the callback's `user_data`.
	 *
	 * It will set the @source’s name to the task’s name (as set with
	 * g_task_set_name()), if one has been set.
	 *
	 * This takes a reference on @task until @source is destroyed.
	 *
	 * Params:
	 *     source = the source to attach
	 *     callback = the callback to invoke when @source triggers
	 *
	 * Since: 2.36
	 */
	public void attachSource(Source source, GSourceFunc callback)
	{
		g_task_attach_source(gTask, (source is null) ? null : source.getSourceStruct(), callback);
	}

	/**
	 * Gets @task's #GCancellable
	 *
	 * Returns: @task's #GCancellable
	 *
	 * Since: 2.36
	 */
	public Cancellable getCancellable()
	{
		auto __p = g_task_get_cancellable(gTask);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Cancellable)(cast(GCancellable*) __p);
	}

	/**
	 * Gets @task's check-cancellable flag. See
	 * g_task_set_check_cancellable() for more details.
	 *
	 * Since: 2.36
	 */
	public bool getCheckCancellable()
	{
		return g_task_get_check_cancellable(gTask) != 0;
	}

	/**
	 * Gets the value of #GTask:completed. This changes from %FALSE to %TRUE after
	 * the task’s callback is invoked, and will return %FALSE if called from inside
	 * the callback.
	 *
	 * Returns: %TRUE if the task has completed, %FALSE otherwise.
	 *
	 * Since: 2.44
	 */
	public bool getCompleted()
	{
		return g_task_get_completed(gTask) != 0;
	}

	/**
	 * Gets the #GMainContext that @task will return its result in (that
	 * is, the context that was the
	 * [thread-default main context][g-main-context-push-thread-default]
	 * at the point when @task was created).
	 *
	 * This will always return a non-%NULL value, even if the task's
	 * context is the default #GMainContext.
	 *
	 * Returns: @task's #GMainContext
	 *
	 * Since: 2.36
	 */
	public MainContext getContext()
	{
		auto __p = g_task_get_context(gTask);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Gets @task’s name. See g_task_set_name().
	 *
	 * Returns: @task’s name, or %NULL
	 *
	 * Since: 2.60
	 */
	public string getName()
	{
		return Str.toString(g_task_get_name(gTask));
	}

	/**
	 * Gets @task's priority
	 *
	 * Returns: @task's priority
	 *
	 * Since: 2.36
	 */
	public int getPriority()
	{
		return g_task_get_priority(gTask);
	}

	/**
	 * Gets @task's return-on-cancel flag. See
	 * g_task_set_return_on_cancel() for more details.
	 *
	 * Since: 2.36
	 */
	public bool getReturnOnCancel()
	{
		return g_task_get_return_on_cancel(gTask) != 0;
	}

	/**
	 * Gets the source object from @task. Like
	 * g_async_result_get_source_object(), but does not ref the object.
	 *
	 * Returns: @task's source object, or %NULL
	 *
	 * Since: 2.36
	 */
	public ObjectG getSourceObject()
	{
		auto __p = g_task_get_source_object(gTask);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ObjectG)(cast(GObject*) __p);
	}

	/**
	 * Gets @task's source tag. See g_task_set_source_tag().
	 *
	 * Returns: @task's source tag
	 *
	 * Since: 2.36
	 */
	public void* getSourceTag()
	{
		return g_task_get_source_tag(gTask);
	}

	/**
	 * Gets @task's `task_data`.
	 *
	 * Returns: @task's `task_data`.
	 *
	 * Since: 2.36
	 */
	public void* getTaskData()
	{
		return g_task_get_task_data(gTask);
	}

	/**
	 * Tests if @task resulted in an error.
	 *
	 * Returns: %TRUE if the task resulted in an error, %FALSE otherwise.
	 *
	 * Since: 2.36
	 */
	public bool hadError()
	{
		return g_task_had_error(gTask) != 0;
	}

	/**
	 * Gets the result of @task as a #gboolean.
	 *
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return %FALSE and set @error.
	 *
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 *
	 * Returns: the task result, or %FALSE on error
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public bool propagateBoolean()
	{
		GError* err = null;

		auto __p = g_task_propagate_boolean(gTask, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the result of @task as an integer (#gssize).
	 *
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return -1 and set @error.
	 *
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 *
	 * Returns: the task result, or -1 on error
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public ptrdiff_t propagateInt()
	{
		GError* err = null;

		auto __p = g_task_propagate_int(gTask, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the result of @task as a pointer, and transfers ownership
	 * of that value to the caller.
	 *
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead return %NULL and set @error.
	 *
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 *
	 * Returns: the task result, or %NULL on error
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public void* propagatePointer()
	{
		GError* err = null;

		auto __p = g_task_propagate_pointer(gTask, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Gets the result of @task as a #GValue, and transfers ownership of
	 * that value to the caller. As with g_task_return_value(), this is
	 * a generic low-level method; g_task_propagate_pointer() and the like
	 * will usually be more useful for C code.
	 *
	 * If the task resulted in an error, or was cancelled, then this will
	 * instead set @error and return %FALSE.
	 *
	 * Since this method transfers ownership of the return value (or
	 * error) to the caller, you may only call it once.
	 *
	 * Params:
	 *     value = return location for the #GValue
	 *
	 * Returns: %TRUE if @task succeeded, %FALSE on error.
	 *
	 * Since: 2.64
	 *
	 * Throws: GException on failure.
	 */
	public bool propagateValue(out Value value)
	{
		GValue* outvalue = sliceNew!GValue();
		GError* err = null;

		auto __p = g_task_propagate_value(gTask, outvalue, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		value = ObjectG.getDObject!(Value)(outvalue, true);

		return __p;
	}

	/**
	 * Sets @task's result to @result and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 *
	 * Params:
	 *     result = the #gboolean result of a task function.
	 *
	 * Since: 2.36
	 */
	public void returnBoolean(bool result)
	{
		g_task_return_boolean(gTask, result);
	}

	/**
	 * Sets @task's result to @error (which @task assumes ownership of)
	 * and completes the task (see g_task_return_pointer() for more
	 * discussion of exactly what this means).
	 *
	 * Note that since the task takes ownership of @error, and since the
	 * task may be completed before returning from g_task_return_error(),
	 * you cannot assume that @error is still valid after calling this.
	 * Call g_error_copy() on the error if you need to keep a local copy
	 * as well.
	 *
	 * See also g_task_return_new_error().
	 *
	 * Params:
	 *     error = the #GError result of a task function.
	 *
	 * Since: 2.36
	 */
	public void returnError(ErrorG error)
	{
		g_task_return_error(gTask, (error is null) ? null : error.getErrorGStruct(true));
	}

	/**
	 * Checks if @task's #GCancellable has been cancelled, and if so, sets
	 * @task's error accordingly and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 *
	 * Returns: %TRUE if @task has been cancelled, %FALSE if not
	 *
	 * Since: 2.36
	 */
	public bool returnErrorIfCancelled()
	{
		return g_task_return_error_if_cancelled(gTask) != 0;
	}

	/**
	 * Sets @task's result to @result and completes the task (see
	 * g_task_return_pointer() for more discussion of exactly what this
	 * means).
	 *
	 * Params:
	 *     result = the integer (#gssize) result of a task function.
	 *
	 * Since: 2.36
	 */
	public void returnInt(ptrdiff_t result)
	{
		g_task_return_int(gTask, result);
	}

	/**
	 * Sets @task's result to @result and completes the task. If @result
	 * is not %NULL, then @result_destroy will be used to free @result if
	 * the caller does not take ownership of it with
	 * g_task_propagate_pointer().
	 *
	 * "Completes the task" means that for an ordinary asynchronous task
	 * it will either invoke the task's callback, or else queue that
	 * callback to be invoked in the proper #GMainContext, or in the next
	 * iteration of the current #GMainContext. For a task run via
	 * g_task_run_in_thread() or g_task_run_in_thread_sync(), calling this
	 * method will save @result to be returned to the caller later, but
	 * the task will not actually be completed until the #GTaskThreadFunc
	 * exits.
	 *
	 * Note that since the task may be completed before returning from
	 * g_task_return_pointer(), you cannot assume that @result is still
	 * valid after calling this, unless you are still holding another
	 * reference on it.
	 *
	 * Params:
	 *     result = the pointer result of a task
	 *         function
	 *     resultDestroy = a #GDestroyNotify function.
	 *
	 * Since: 2.36
	 */
	public void returnPointer(void* result, GDestroyNotify resultDestroy)
	{
		g_task_return_pointer(gTask, result, resultDestroy);
	}

	/**
	 * Sets @task's result to @result (by copying it) and completes the task.
	 *
	 * If @result is %NULL then a #GValue of type %G_TYPE_POINTER
	 * with a value of %NULL will be used for the result.
	 *
	 * This is a very generic low-level method intended primarily for use
	 * by language bindings; for C code, g_task_return_pointer() and the
	 * like will normally be much easier to use.
	 *
	 * Params:
	 *     result = the #GValue result of
	 *         a task function
	 *
	 * Since: 2.64
	 */
	public void returnValue(Value result)
	{
		g_task_return_value(gTask, (result is null) ? null : result.getValueStruct());
	}

	/**
	 * Runs @task_func in another thread. When @task_func returns, @task's
	 * #GAsyncReadyCallback will be invoked in @task's #GMainContext.
	 *
	 * This takes a ref on @task until the task completes.
	 *
	 * See #GTaskThreadFunc for more details about how @task_func is handled.
	 *
	 * Although GLib currently rate-limits the tasks queued via
	 * g_task_run_in_thread(), you should not assume that it will always
	 * do this. If you have a very large number of tasks to run (several tens of
	 * tasks), but don't want them to all run at once, you should only queue a
	 * limited number of them (around ten) at a time.
	 *
	 * Params:
	 *     taskFunc = a #GTaskThreadFunc
	 *
	 * Since: 2.36
	 */
	public void runInThread(GTaskThreadFunc taskFunc)
	{
		g_task_run_in_thread(gTask, taskFunc);
	}

	/**
	 * Runs @task_func in another thread, and waits for it to return or be
	 * cancelled. You can use g_task_propagate_pointer(), etc, afterward
	 * to get the result of @task_func.
	 *
	 * See #GTaskThreadFunc for more details about how @task_func is handled.
	 *
	 * Normally this is used with tasks created with a %NULL
	 * `callback`, but note that even if the task does
	 * have a callback, it will not be invoked when @task_func returns.
	 * #GTask:completed will be set to %TRUE just before this function returns.
	 *
	 * Although GLib currently rate-limits the tasks queued via
	 * g_task_run_in_thread_sync(), you should not assume that it will
	 * always do this. If you have a very large number of tasks to run,
	 * but don't want them to all run at once, you should only queue a
	 * limited number of them at a time.
	 *
	 * Params:
	 *     taskFunc = a #GTaskThreadFunc
	 *
	 * Since: 2.36
	 */
	public void runInThreadSync(GTaskThreadFunc taskFunc)
	{
		g_task_run_in_thread_sync(gTask, taskFunc);
	}

	/**
	 * Sets or clears @task's check-cancellable flag. If this is %TRUE
	 * (the default), then g_task_propagate_pointer(), etc, and
	 * g_task_had_error() will check the task's #GCancellable first, and
	 * if it has been cancelled, then they will consider the task to have
	 * returned an "Operation was cancelled" error
	 * (%G_IO_ERROR_CANCELLED), regardless of any other error or return
	 * value the task may have had.
	 *
	 * If @check_cancellable is %FALSE, then the #GTask will not check the
	 * cancellable itself, and it is up to @task's owner to do this (eg,
	 * via g_task_return_error_if_cancelled()).
	 *
	 * If you are using g_task_set_return_on_cancel() as well, then
	 * you must leave check-cancellable set %TRUE.
	 *
	 * Params:
	 *     checkCancellable = whether #GTask will check the state of
	 *         its #GCancellable for you.
	 *
	 * Since: 2.36
	 */
	public void setCheckCancellable(bool checkCancellable)
	{
		g_task_set_check_cancellable(gTask, checkCancellable);
	}

	/**
	 * Sets @task’s name, used in debugging and profiling. The name defaults to
	 * %NULL.
	 *
	 * The task name should describe in a human readable way what the task does.
	 * For example, ‘Open file’ or ‘Connect to network host’. It is used to set the
	 * name of the #GSource used for idle completion of the task.
	 *
	 * This function may only be called before the @task is first used in a thread
	 * other than the one it was constructed in. It is called automatically by
	 * g_task_set_source_tag() if not called already.
	 *
	 * Params:
	 *     name = a human readable name for the task, or %NULL to unset it
	 *
	 * Since: 2.60
	 */
	public void setName(string name)
	{
		g_task_set_name(gTask, Str.toStringz(name));
	}

	/**
	 * Sets @task's priority. If you do not call this, it will default to
	 * %G_PRIORITY_DEFAULT.
	 *
	 * This will affect the priority of #GSources created with
	 * g_task_attach_source() and the scheduling of tasks run in threads,
	 * and can also be explicitly retrieved later via
	 * g_task_get_priority().
	 *
	 * Params:
	 *     priority = the [priority][io-priority] of the request
	 *
	 * Since: 2.36
	 */
	public void setPriority(int priority)
	{
		g_task_set_priority(gTask, priority);
	}

	/**
	 * Sets or clears @task's return-on-cancel flag. This is only
	 * meaningful for tasks run via g_task_run_in_thread() or
	 * g_task_run_in_thread_sync().
	 *
	 * If @return_on_cancel is %TRUE, then cancelling @task's
	 * #GCancellable will immediately cause it to return, as though the
	 * task's #GTaskThreadFunc had called
	 * g_task_return_error_if_cancelled() and then returned.
	 *
	 * This allows you to create a cancellable wrapper around an
	 * uninterruptible function. The #GTaskThreadFunc just needs to be
	 * careful that it does not modify any externally-visible state after
	 * it has been cancelled. To do that, the thread should call
	 * g_task_set_return_on_cancel() again to (atomically) set
	 * return-on-cancel %FALSE before making externally-visible changes;
	 * if the task gets cancelled before the return-on-cancel flag could
	 * be changed, g_task_set_return_on_cancel() will indicate this by
	 * returning %FALSE.
	 *
	 * You can disable and re-enable this flag multiple times if you wish.
	 * If the task's #GCancellable is cancelled while return-on-cancel is
	 * %FALSE, then calling g_task_set_return_on_cancel() to set it %TRUE
	 * again will cause the task to be cancelled at that point.
	 *
	 * If the task's #GCancellable is already cancelled before you call
	 * g_task_run_in_thread()/g_task_run_in_thread_sync(), then the
	 * #GTaskThreadFunc will still be run (for consistency), but the task
	 * will also be completed right away.
	 *
	 * Params:
	 *     returnOnCancel = whether the task returns automatically when
	 *         it is cancelled.
	 *
	 * Returns: %TRUE if @task's return-on-cancel flag was changed to
	 *     match @return_on_cancel. %FALSE if @task has already been
	 *     cancelled.
	 *
	 * Since: 2.36
	 */
	public bool setReturnOnCancel(bool returnOnCancel)
	{
		return g_task_set_return_on_cancel(gTask, returnOnCancel) != 0;
	}

	/**
	 * Sets @task's source tag.
	 *
	 * You can use this to tag a task return
	 * value with a particular pointer (usually a pointer to the function
	 * doing the tagging) and then later check it using
	 * g_task_get_source_tag() (or g_async_result_is_tagged()) in the
	 * task's "finish" function, to figure out if the response came from a
	 * particular place.
	 *
	 * A macro wrapper around this function will automatically set the
	 * task’s name to the string form of @source_tag if it’s not already
	 * set, for convenience.
	 *
	 * Params:
	 *     sourceTag = an opaque pointer indicating the source of this task
	 *
	 * Since: 2.36
	 */
	public void setSourceTag(void* sourceTag)
	{
		g_task_set_source_tag(gTask, sourceTag);
	}

	/**
	 * Sets @task's task data (freeing the existing task data, if any).
	 *
	 * Params:
	 *     taskData = task-specific data
	 *     taskDataDestroy = #GDestroyNotify for @task_data
	 *
	 * Since: 2.36
	 */
	public void setTaskData(void* taskData, GDestroyNotify taskDataDestroy)
	{
		g_task_set_task_data(gTask, taskData, taskDataDestroy);
	}
}
