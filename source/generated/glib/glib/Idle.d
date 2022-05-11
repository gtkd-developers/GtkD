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


module glib.Idle;

private import glib.Source;
private import glib.c.functions;
public  import glib.c.types;


/** */
public class Idle
{
	/** Holds all idle delegates */
	private bool delegate()[] idleListeners;
	/** Our idle ID */
	private uint idleID;
	/** The priority this class was instantiated with */
	private GPriority priority = GPriority.DEFAULT_IDLE;

	/**
	 * Creates a new idle cycle.
	 * Params:
	 *    	dlg = the delegate to be executed
	 *    	fireNow = When true the delegate will be executed emmidiatly
	 */
	this(bool delegate() dlg, bool fireNow=false)
	{
		if ( fireNow && !dlg() )
			return;

		idleListeners ~= dlg;
		idleID = g_idle_add_full(priority, cast(GSourceFunc)&idleCallback, cast(void*)this, cast(GDestroyNotify)&destroyIdleNotify);
	}

	/**
	 * Creates a new idle cycle.
	 * Params:
	 *    	dlg = the delegate to be executed
	 *      priority = Priority for the idle function
	 *    	fireNow = When true the delegate will be executed emmidiatly
	 */
	this(bool delegate() dlg, GPriority priority, bool fireNow=false)
	{
		this.priority = priority;

		if ( fireNow && !dlg() )
			return;

		idleListeners ~= dlg;
		idleID = g_idle_add_full(priority, cast(GSourceFunc)&idleCallback, cast(void*)this, cast(GDestroyNotify)&destroyIdleNotify);
	}

	/** */
	public void stop()
	{
		if ( idleID > 0 )
			g_source_remove(idleID);
	}

	/**
	 * Removes the idle from gtk
	 */
	~this()
	{
		stop();
	}

	/**
	 * Adds a new delegate to this idle cycle
	 * Params:
	 *    	dlg =
	 *    	fireNow =
	 */
	public void addListener(bool delegate() dlg, bool fireNow=false)
	{
		if ( fireNow && !dlg() )
			return;

		idleListeners ~= dlg;

		if ( idleID == 0 )
			idleID = g_idle_add_full(priority, cast(GSourceFunc)&idleCallback, cast(void*)this, cast(GDestroyNotify)&destroyIdleNotify);
	}

	/*
	 * Executes all delegates on the execution list
	 * Returns: false if the callback should be removed.
	 */
	extern(C) static bool idleCallback(Idle idle)
	{
		bool runAgain = false;
		int i = 0;

		while ( i<idle.idleListeners.length )
		{
			if ( !idle.idleListeners[i]() )
			{
				idle.idleListeners = idle.idleListeners[0..i] ~ idle.idleListeners[i+1..$];
			}
			else
			{
				runAgain = true;
				++i;
			}
		}

		return runAgain;
	}

	/*
	 * Reset the idle object when it's destroyed on the GTK side.
	 */
	extern(C) static void destroyIdleNotify(Idle idle)
	{
		idle.idleListeners.length = 0;
		idle.idleID = 0;
	}

	/**
	 */

	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending to the default main loop. The function is given the
	 * default idle priority, %G_PRIORITY_DEFAULT_IDLE.  If the function
	 * returns %FALSE it is automatically removed from the list of event
	 * sources and will not be called again.
	 *
	 * See [memory management of sources][mainloop-memory-management] for details
	 * on how to handle the return value and memory management of @data.
	 *
	 * This internally creates a main loop source using g_idle_source_new()
	 * and attaches it to the global #GMainContext using g_source_attach(), so
	 * the callback will be invoked in whichever thread is running that main
	 * context. You can do these steps manually if you need greater control or to
	 * use a custom main context.
	 *
	 * Params:
	 *     function_ = function to call
	 *     data = data to pass to @function.
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint add(GSourceFunc function_, void* data)
	{
		return g_idle_add(function_, data);
	}

	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending.
	 *
	 * If the function returns %G_SOURCE_REMOVE or %FALSE it is automatically
	 * removed from the list of event sources and will not be called again.
	 *
	 * See [memory management of sources][mainloop-memory-management] for details
	 * on how to handle the return value and memory management of @data.
	 *
	 * This internally creates a main loop source using g_idle_source_new()
	 * and attaches it to the global #GMainContext using g_source_attach(), so
	 * the callback will be invoked in whichever thread is running that main
	 * context. You can do these steps manually if you need greater control or to
	 * use a custom main context.
	 *
	 * Params:
	 *     priority = the priority of the idle source. Typically this will be in the
	 *         range between %G_PRIORITY_DEFAULT_IDLE and %G_PRIORITY_HIGH_IDLE.
	 *     function_ = function to call
	 *     data = data to pass to @function
	 *     notify = function to call when the idle is removed, or %NULL
	 *
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint addFull(int priority, GSourceFunc function_, void* data, GDestroyNotify notify)
	{
		return g_idle_add_full(priority, function_, data, notify);
	}

	/**
	 * Removes the idle function with the given data.
	 *
	 * Params:
	 *     data = the data for the idle source's callback.
	 *
	 * Returns: %TRUE if an idle source was found and removed.
	 */
	public static bool removeByData(void* data)
	{
		return g_idle_remove_by_data(data) != 0;
	}

	/**
	 * Creates a new idle source.
	 *
	 * The source will not initially be associated with any #GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed. Note that the default priority for idle sources is
	 * %G_PRIORITY_DEFAULT_IDLE, as compared to other sources which
	 * have a default priority of %G_PRIORITY_DEFAULT.
	 *
	 * Returns: the newly-created idle source
	 */
	public static Source sourceNew()
	{
		auto __p = g_idle_source_new();

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}
}
