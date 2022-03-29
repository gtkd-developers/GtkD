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


module gstreamer.SharedTaskPool;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gstreamer.TaskPool;
private import gstreamer.c.functions;
public  import gstreamer.c.types;
public  import gstreamerc.gstreamertypes;


/**
 * The #GstSharedTaskPool object.
 *
 * Since: 1.20
 */
public class SharedTaskPool : TaskPool
{
	/** the main Gtk struct */
	protected GstSharedTaskPool* gstSharedTaskPool;

	/** Get the main Gtk struct */
	public GstSharedTaskPool* getSharedTaskPoolStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstSharedTaskPool;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gstSharedTaskPool;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstSharedTaskPool* gstSharedTaskPool, bool ownedRef = false)
	{
		this.gstSharedTaskPool = gstSharedTaskPool;
		super(cast(GstTaskPool*)gstSharedTaskPool, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return gst_shared_task_pool_get_type();
	}

	/**
	 * Create a new shared task pool. The shared task pool will queue tasks on
	 * a maximum number of threads, 1 by default.
	 *
	 * Do not use a #GstSharedTaskPool to manage potentially inter-dependent tasks such
	 * as pad tasks, as having one task waiting on another to return before returning
	 * would cause obvious deadlocks if they happen to share the same thread.
	 *
	 * Returns: a new #GstSharedTaskPool. gst_object_unref() after usage.
	 *
	 * Since: 1.20
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_shared_task_pool_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstSharedTaskPool*) __p, true);
	}

	/**
	 * Returns: the maximum number of threads @pool is configured to spawn
	 *
	 * Since: 1.20
	 */
	public uint getMaxThreads()
	{
		return gst_shared_task_pool_get_max_threads(gstSharedTaskPool);
	}

	/**
	 * Update the maximal number of threads the @pool may spawn. When
	 * the maximal number of threads is reduced, existing threads are not
	 * immediately shut down, see g_thread_pool_set_max_threads().
	 *
	 * Setting @max_threads to 0 effectively freezes the pool.
	 *
	 * Params:
	 *     maxThreads = Maximum number of threads to spawn.
	 *
	 * Since: 1.20
	 */
	public void setMaxThreads(uint maxThreads)
	{
		gst_shared_task_pool_set_max_threads(gstSharedTaskPool, maxThreads);
	}
}
