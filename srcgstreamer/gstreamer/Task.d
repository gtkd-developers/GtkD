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
 * inFile  = GstTask.html
 * outPack = gstreamer
 * outFile = Task
 * strct   = GstTask
 * realStrct=
 * ctorStrct=
 * clss    = Task
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_task_
 * 	- gst_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * 	- GstTask* -> Task
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.Task;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gstreamer.ObjectGst;

/**
 * Description
 * GstTask is used by GstElement and GstPad to provide the data passing
 * threads in a GstPipeline.
 * A GstPad will typically start a GstTask to push or pull data to/from the
 * peer pads. Most source elements start a GstTask to push data. In some cases
 * a demuxer element can start a GstTask to pull data from a peer element. This
 * is typically done when the demuxer can perform random access on the upstream
 * peer element for improved performance.
 * Although convenience functions exist on GstPad to start/pause/stop tasks, it
 * might sometimes be needed to create a GstTask manually if it is not related to
 * a GstPad.
 * Before the GstTask can be run, it needs a GStaticRecMutex that can be set with
 * gst_task_set_lock().
 * The task can be started, paused and stopped with gst_task_start(), gst_task_pause()
 * and gst_task_stop() respectively.
 * A GstTask will repeadedly call the GstTaskFunction with the user data
 * that was provided when creating the task with gst_task_create(). Before calling
 * the function it will acquire the provided lock.
 * Stopping a task with gst_task_stop() will not immediatly make sure the task is
 * not running anymore. Use gst_task_join() to make sure the task is completely
 * stopped and the thread is stopped.
 * After creating a GstTask, use gst_object_unref() to free its resources. This can
 * only be done it the task is not running anymore.
 * Last reviewed on 2006-02-13 (0.10.4)
 */
public class Task : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstTask* gstTask;
	
	
	public GstTask* getTaskStruct()
	{
		return gstTask;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTask;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTask* gstTask)
	{
		super(cast(GstObject*)gstTask);
		this.gstTask = gstTask;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstTask = cast(GstTask*)obj;
	}
	
	/**
	 */
	
	/**
	 * Wait for all tasks to be stopped. This is mainly used internally
	 * to ensure proper cleanup of internal datastructures in testsuites.
	 * MT safe.
	 */
	public static void cleanupAll()
	{
		// void gst_task_cleanup_all (void);
		gst_task_cleanup_all();
	}
	
	/**
	 * Create a new Task that will repeadedly call the provided func
	 * with data as a parameter. Typically the task will run in
	 * a new thread.
	 * The function cannot be changed after the task has been created. You
	 * must create a new GstTask to change the function.
	 * Params:
	 * func = The GstTaskFunction to use
	 * data = User data to pass to func
	 * Returns: A new GstTask. MT safe.
	 */
	public static Task create(GstTaskFunction func, void* data)
	{
		// GstTask* gst_task_create (GstTaskFunction func,  gpointer data);
		auto p = gst_task_create(func, data);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Task)(cast(GstTask*) p);
	}
	
	/**
	 * Get the current state of the task.
	 * Returns: The GstTaskState of the task MT safe.
	 */
	public GstTaskState getState()
	{
		// GstTaskState gst_task_get_state (GstTask *task);
		return gst_task_get_state(gstTask);
	}
	
	/**
	 * Joins task. After this call, it is safe to unref the task
	 * and clean up the lock set with gst_task_set_lock().
	 * The task will automatically be stopped with this call.
	 * This function cannot be called from within a task function as this
	 * would cause a deadlock. The function will detect this and print a
	 * g_warning.
	 * Returns: TRUE if the task could be joined. MT safe.
	 */
	public int join()
	{
		// gboolean gst_task_join (GstTask *task);
		return gst_task_join(gstTask);
	}
	
	/**
	 * Pauses task. This method can also be called on a task in the
	 * stopped state, in which case a thread will be started and will remain
	 * in the paused state. This function does not wait for the task to complete
	 * the paused state.
	 * Returns: TRUE if the task could be paused. MT safe.
	 */
	public int pause()
	{
		// gboolean gst_task_pause (GstTask *task);
		return gst_task_pause(gstTask);
	}
	
	/**
	 * Set the mutex used by the task. The mutex will be acquired before
	 * calling the GstTaskFunction.
	 * This function has to be called before calling gst_task_pause() or
	 * gst_task_start().
	 * MT safe.
	 * Params:
	 * mutex = The GMutex to use
	 */
	public void setLock(void* mutex)
	{
		// void gst_task_set_lock (GstTask *task,  GStaticRecMutex *mutex);
		gst_task_set_lock(gstTask, mutex);
	}
	
	/**
	 * Starts task. The task must have a lock associated with it using
	 * gst_task_set_lock() or thsi function will return FALSE.
	 * Returns: TRUE if the task could be started. MT safe.
	 */
	public int start()
	{
		// gboolean gst_task_start (GstTask *task);
		return gst_task_start(gstTask);
	}
	
	/**
	 * Stops task. This method merely schedules the task to stop and
	 * will not wait for the task to have completely stopped. Use
	 * gst_task_join() to stop and wait for completion.
	 * Returns: TRUE if the task could be stopped. MT safe.
	 */
	public int stop()
	{
		// gboolean gst_task_stop (GstTask *task);
		return gst_task_stop(gstTask);
	}
}
