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
 * inFile  = GstTaskPool.html
 * outPack = gstreamer
 * outFile = TaskPool
 * strct   = GstTaskPool
 * realStrct=
 * ctorStrct=
 * clss    = TaskPool
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gst_task_pool_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gstreamer.TaskPool;

public  import gstreamerc.gstreamertypes;

private import gstreamerc.gstreamer;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.ErrorG;
private import glib.GException;



private import gstreamer.ObjectGst;

/**
 * This object provides an abstraction for creating threads. The default
 * implementation uses a regular GThreadPool to start tasks.
 *
 * Subclasses can be made to create custom threads.
 *
 * Last reviewed on 2009-04-23 (0.10.24)
 */
public class TaskPool : ObjectGst
{
	
	/** the main Gtk struct */
	protected GstTaskPool* gstTaskPool;
	
	
	public GstTaskPool* getTaskPoolStruct()
	{
		return gstTaskPool;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstTaskPool;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GstTaskPool* gstTaskPool)
	{
		super(cast(GstObject*)gstTaskPool);
		this.gstTaskPool = gstTaskPool;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gstTaskPool = cast(GstTaskPool*)obj;
	}
	
	/**
	 */
	
	/**
	 * Create a new default task pool. The default task pool will use a regular
	 * GThreadPool for threads.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GstTaskPool * gst_task_pool_new (void);
		auto p = gst_task_pool_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gst_task_pool_new()");
		}
		this(cast(GstTaskPool*) p);
	}
	
	/**
	 * Prepare the taskpool for accepting gst_task_pool_push() operations.
	 * MT safe.
	 * Throws: GException on failure.
	 */
	public void prepare()
	{
		// void gst_task_pool_prepare (GstTaskPool *pool,  GError **error);
		GError* err = null;
		
		gst_task_pool_prepare(gstTaskPool, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
	}
	
	/**
	 * Start the execution of a new thread from pool.
	 * Params:
	 * func = the function to call. [scope async]
	 * userData = data to pass to func. [closure]
	 * Returns: a pointer that should be used for the gst_task_pool_join function. This pointer can be NULL, you must check error to detect errors. [transfer none]
	 * Throws: GException on failure.
	 */
	public void* push(GstTaskPoolFunction func, void* userData)
	{
		// gpointer gst_task_pool_push (GstTaskPool *pool,  GstTaskPoolFunction func,  gpointer user_data,  GError **error);
		GError* err = null;
		
		auto p = gst_task_pool_push(gstTaskPool, func, userData, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Join a task and/or return it to the pool. id is the id obtained from
	 * gst_task_pool_push().
	 * Params:
	 * id = the id
	 */
	public void join(void* id)
	{
		// void gst_task_pool_join (GstTaskPool *pool,  gpointer id);
		gst_task_pool_join(gstTaskPool, id);
	}
	
	/**
	 * Wait for all tasks to be stopped. This is mainly used internally
	 * to ensure proper cleanup of internal data structures in test suites.
	 * MT safe.
	 */
	public void cleanup()
	{
		// void gst_task_pool_cleanup (GstTaskPool *pool);
		gst_task_pool_cleanup(gstTaskPool);
	}
}
