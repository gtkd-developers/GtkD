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


module gstreamer.Task;

private import glib.ConstructionException;
private import glib.RecMutex;
private import gobject.ObjectG;
private import gstreamer.ObjectGst;
private import gstreamer.TaskPool;
private import gstreamer.c.functions;
public  import gstreamer.c.types;


/**
 * #GstTask is used by #GstElement and #GstPad to provide the data passing
 * threads in a #GstPipeline.
 * 
 * A #GstPad will typically start a #GstTask to push or pull data to/from the
 * peer pads. Most source elements start a #GstTask to push data. In some cases
 * a demuxer element can start a #GstTask to pull data from a peer element. This
 * is typically done when the demuxer can perform random access on the upstream
 * peer element for improved performance.
 * 
 * Although convenience functions exist on #GstPad to start/pause/stop tasks, it
 * might sometimes be needed to create a #GstTask manually if it is not related to
 * a #GstPad.
 * 
 * Before the #GstTask can be run, it needs a #GRecMutex that can be set with
 * gst_task_set_lock().
 * 
 * The task can be started, paused and stopped with gst_task_start(), gst_task_pause()
 * and gst_task_stop() respectively or with the gst_task_set_state() function.
 * 
 * A #GstTask will repeatedly call the #GstTaskFunction with the user data
 * that was provided when creating the task with gst_task_new(). While calling
 * the function it will acquire the provided lock. The provided lock is released
 * when the task pauses or stops.
 * 
 * Stopping a task with gst_task_stop() will not immediately make sure the task is
 * not running anymore. Use gst_task_join() to make sure the task is completely
 * stopped and the thread is stopped.
 * 
 * After creating a #GstTask, use gst_object_unref() to free its resources. This can
 * only be done when the task is not running anymore.
 * 
 * Task functions can send a #GstMessage to send out-of-band data to the
 * application. The application can receive messages from the #GstBus in its
 * mainloop.
 * 
 * For debugging purposes, the task will configure its object name as the thread
 * name on Linux. Please note that the object name should be configured before the
 * task is started; changing the object name after the task has been started, has
 * no effect on the thread name.
 */
public class Task : ObjectGst
{
	/** the main Gtk struct */
	protected GstTask* gstTask;

	/** Get the main Gtk struct */
	public GstTask* getTaskStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstTask;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTask;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstTask* gstTask, bool ownedRef = false)
	{
		this.gstTask = gstTask;
		super(cast(GstObject*)gstTask, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_task_get_type();
	}

	/**
	 * Create a new Task that will repeatedly call the provided @func
	 * with @user_data as a parameter. Typically the task will run in
	 * a new thread.
	 *
	 * The function cannot be changed after the task has been created. You
	 * must create a new #GstTask to change the function.
	 *
	 * This function will not yet create and start a thread. Use gst_task_start() or
	 * gst_task_pause() to create and start the GThread.
	 *
	 * Before the task can be used, a #GRecMutex must be configured using the
	 * gst_task_set_lock() function. This lock will always be acquired while
	 * @func is called.
	 *
	 * Params:
	 *     func = The #GstTaskFunction to use
	 *     userData = User data to pass to @func
	 *     notify = the function to call when @user_data is no longer needed.
	 *
	 * Returns: A new #GstTask.
	 *
	 *     MT safe.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GstTaskFunction func, void* userData, GDestroyNotify notify)
	{
		auto __p = gst_task_new(func, userData, notify);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstTask*) __p, true);
	}

	/**
	 * Wait for all tasks to be stopped. This is mainly used internally
	 * to ensure proper cleanup of internal data structures in test suites.
	 *
	 * MT safe.
	 */
	public static void cleanupAll()
	{
		gst_task_cleanup_all();
	}

	/**
	 * Get the #GstTaskPool that this task will use for its streaming
	 * threads.
	 *
	 * MT safe.
	 *
	 * Returns: the #GstTaskPool used by @task. gst_object_unref()
	 *     after usage.
	 */
	public TaskPool getPool()
	{
		auto __p = gst_task_get_pool(gstTask);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(TaskPool)(cast(GstTaskPool*) __p, true);
	}

	/**
	 * Get the current state of the task.
	 *
	 * Returns: The #GstTaskState of the task
	 *
	 *     MT safe.
	 */
	public GstTaskState getState()
	{
		return gst_task_get_state(gstTask);
	}

	/**
	 * Joins @task. After this call, it is safe to unref the task
	 * and clean up the lock set with gst_task_set_lock().
	 *
	 * The task will automatically be stopped with this call.
	 *
	 * This function cannot be called from within a task function as this
	 * would cause a deadlock. The function will detect this and print a
	 * g_warning.
	 *
	 * Returns: %TRUE if the task could be joined.
	 *
	 *     MT safe.
	 */
	public bool join()
	{
		return gst_task_join(gstTask) != 0;
	}

	/**
	 * Pauses @task. This method can also be called on a task in the
	 * stopped state, in which case a thread will be started and will remain
	 * in the paused state. This function does not wait for the task to complete
	 * the paused state.
	 *
	 * Returns: %TRUE if the task could be paused.
	 *
	 *     MT safe.
	 */
	public bool pause()
	{
		return gst_task_pause(gstTask) != 0;
	}

	/**
	 * Resume @task in case it was paused. If the task was stopped, it will
	 * remain in that state and this function will return %FALSE.
	 *
	 * Returns: %TRUE if the task could be resumed.
	 *
	 *     MT safe.
	 *
	 * Since: 1.18
	 */
	public bool resume()
	{
		return gst_task_resume(gstTask) != 0;
	}

	/**
	 * Call @enter_func when the task function of @task is entered. @user_data will
	 * be passed to @enter_func and @notify will be called when @user_data is no
	 * longer referenced.
	 *
	 * Params:
	 *     enterFunc = a #GstTaskThreadFunc
	 *     userData = user data passed to @enter_func
	 *     notify = called when @user_data is no longer referenced
	 */
	public void setEnterCallback(GstTaskThreadFunc enterFunc, void* userData, GDestroyNotify notify)
	{
		gst_task_set_enter_callback(gstTask, enterFunc, userData, notify);
	}

	/**
	 * Call @leave_func when the task function of @task is left. @user_data will
	 * be passed to @leave_func and @notify will be called when @user_data is no
	 * longer referenced.
	 *
	 * Params:
	 *     leaveFunc = a #GstTaskThreadFunc
	 *     userData = user data passed to @leave_func
	 *     notify = called when @user_data is no longer referenced
	 */
	public void setLeaveCallback(GstTaskThreadFunc leaveFunc, void* userData, GDestroyNotify notify)
	{
		gst_task_set_leave_callback(gstTask, leaveFunc, userData, notify);
	}

	/**
	 * Set the mutex used by the task. The mutex will be acquired before
	 * calling the #GstTaskFunction.
	 *
	 * This function has to be called before calling gst_task_pause() or
	 * gst_task_start().
	 *
	 * MT safe.
	 *
	 * Params:
	 *     mutex = The #GRecMutex to use
	 */
	public void setLock(RecMutex mutex)
	{
		gst_task_set_lock(gstTask, (mutex is null) ? null : mutex.getRecMutexStruct());
	}

	/**
	 * Set @pool as the new GstTaskPool for @task. Any new streaming threads that
	 * will be created by @task will now use @pool.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     pool = a #GstTaskPool
	 */
	public void setPool(TaskPool pool)
	{
		gst_task_set_pool(gstTask, (pool is null) ? null : pool.getTaskPoolStruct());
	}

	/**
	 * Sets the state of @task to @state.
	 *
	 * The @task must have a lock associated with it using
	 * gst_task_set_lock() when going to GST_TASK_STARTED or GST_TASK_PAUSED or
	 * this function will return %FALSE.
	 *
	 * MT safe.
	 *
	 * Params:
	 *     state = the new task state
	 *
	 * Returns: %TRUE if the state could be changed.
	 */
	public bool setState(GstTaskState state)
	{
		return gst_task_set_state(gstTask, state) != 0;
	}

	/**
	 * Starts @task. The @task must have a lock associated with it using
	 * gst_task_set_lock() or this function will return %FALSE.
	 *
	 * Returns: %TRUE if the task could be started.
	 *
	 *     MT safe.
	 */
	public bool start()
	{
		return gst_task_start(gstTask) != 0;
	}

	/**
	 * Stops @task. This method merely schedules the task to stop and
	 * will not wait for the task to have completely stopped. Use
	 * gst_task_join() to stop and wait for completion.
	 *
	 * Returns: %TRUE if the task could be stopped.
	 *
	 *     MT safe.
	 */
	public bool stop()
	{
		return gst_task_stop(gstTask) != 0;
	}
}
