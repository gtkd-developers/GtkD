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
 * inFile  = 
 * outPack = glib
 * outFile = Idle
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Idle
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_idle_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Source
 * structWrap:
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Idle;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Source;




/**
 * The main event loop manages all the available sources of events for
 * GLib and GTK+ applications. These events can come from any number of
 * different types of sources such as file descriptors (plain files,
 * pipes or sockets) and timeouts. New types of event sources can also
 * be added using g_source_attach().
 *
 * To allow multiple independent sets of sources to be handled in
 * different threads, each source is associated with a GMainContext.
 * A GMainContext can only be running in a single thread, but
 * sources can be added to it and removed from it from other threads.
 *
 * Each event source is assigned a priority. The default priority,
 * G_PRIORITY_DEFAULT, is 0. Values less than 0 denote higher priorities.
 * Values greater than 0 denote lower priorities. Events from high priority
 * sources are always processed before events from lower priority sources.
 *
 * Idle functions can also be added, and assigned a priority. These will
 * be run whenever no events with a higher priority are ready to be processed.
 *
 * The GMainLoop data type represents a main event loop. A GMainLoop is
 * created with g_main_loop_new(). After adding the initial event sources,
 * g_main_loop_run() is called. This continuously checks for new events from
 * each of the event sources and dispatches them. Finally, the processing of
 * an event from one of the sources leads to a call to g_main_loop_quit() to
 * exit the main loop, and g_main_loop_run() returns.
 *
 * It is possible to create new instances of GMainLoop recursively.
 * This is often used in GTK+ applications when showing modal dialog
 * boxes. Note that event sources are associated with a particular
 * GMainContext, and will be checked and dispatched for all main
 * loops associated with that GMainContext.
 *
 * GTK+ contains wrappers of some of these functions, e.g. gtk_main(),
 * gtk_main_quit() and gtk_events_pending().
 *
 * Creating new source types
 *
 * One of the unusual features of the GMainLoop functionality
 * is that new types of event source can be created and used in
 * addition to the builtin type of event source. A new event source
 * type is used for handling GDK events. A new source type is created
 * by deriving from the GSource structure.
 * The derived type of source is represented by a structure that has
 * the GSource structure as a first element, and other elements specific
 * to the new source type. To create an instance of the new source type,
 * call g_source_new() passing in the size of the derived structure and
 * a table of functions. These GSourceFuncs determine the behavior of
 * the new source type.
 *
 * New source types basically interact with the main context
 * in two ways. Their prepare function in GSourceFuncs can set a timeout
 * to determine the maximum amount of time that the main loop will sleep
 * before checking the source again. In addition, or as well, the source
 * can add file descriptors to the set that the main context checks using
 * g_source_add_poll().
 *
 * <hr>
 *
 * Customizing the main loop iteration
 *
 * Single iterations of a GMainContext can be run with
 * g_main_context_iteration(). In some cases, more detailed control
 * of exactly how the details of the main loop work is desired, for
 * instance, when integrating the GMainLoop with an external main loop.
 * In such cases, you can call the component functions of
 * g_main_context_iteration() directly. These functions are
 * g_main_context_prepare(), g_main_context_query(),
 * g_main_context_check() and g_main_context_dispatch().
 *
 * The operation of these functions can best be seen in terms
 * of a state diagram, as shown in Figure 1, “States of a Main Context”.
 *
 * Figure 1. States of a Main Context
 *
 * On Unix, the GLib mainloop is incompatible with fork(). Any program
 * using the mainloop must either exec() or exit() from the child
 * without returning to the mainloop.
 */
public class Idle
{
	
	/** Holds all idle delegates */
	bool delegate()[] idleListeners;
	/** our idle ID */
	uint idleID;
	
	/**
	 * Creates a new idle cycle.
	 * Params:
	 *    	interval = the idle in milieconds
	 *    	dlg = the delegate to be executed
	 *    	fireNow = When true the delegate will be executed emmidiatly
	 */
	this(bool delegate() dlg, bool fireNow=false)
	{
		idleListeners ~= dlg;
		idleID = g_idle_add(cast(GSourceFunc)&idleCallback, cast(void*)this);
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = 0;
			}
		}
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
		idleListeners ~= dlg;
		idleID = g_idle_add_full(priority, cast(GSourceFunc)&idleCallback, cast(void*)this, null);
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = 0;
			}
		}
	}
	
	/** */
	public void stop()
	{
		if ( idleID > 0 )
		{
			g_source_remove(idleID);
		}
		idleListeners.length = 0;
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
		idleListeners ~= dlg;
		if ( fireNow )
		{
			if ( !dlg() )
			{
				idleListeners.length = idleListeners.length - 1;
			}
		}
	}
	
	/**
	 * The callback execution from glib
	 * Params:
	 *    	idle =
	 * Returns:
	 */
	extern(C) static bool idleCallback(Idle idle)
	{
		return idle.callAllListeners();
	}
	
	/**
	 * Executes all delegates on the execution list
	 * Returns:
	 */
	private bool callAllListeners()
	{
		bool runAgain = false;
		
		int i = 0;
		
		while ( i<idleListeners.length )
		{
			if ( !idleListeners[i]() )
			{
				idleListeners = idleListeners[0..i] ~ idleListeners[i+1..idleListeners.length];
			}
			else
			{
				runAgain = true;
				++i;
			}
		}
		return runAgain;
	}
	
	/**
	 */
	
	/**
	 * Creates a new idle source.
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed. Note that the default priority for idle sources is
	 * G_PRIORITY_DEFAULT_IDLE, as compared to other sources which
	 * have a default priority of G_PRIORITY_DEFAULT.
	 * Returns: the newly-created idle source
	 */
	public static Source sourceNew()
	{
		// GSource * g_idle_source_new (void);
		auto p = g_idle_source_new();
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending to the default main loop. The function is given the
	 * default idle priority, G_PRIORITY_DEFAULT_IDLE. If the function
	 * returns FALSE it is automatically removed from the list of event
	 * sources and will not be called again.
	 * This internally creates a main loop source using g_idle_source_new()
	 * and attaches it to the main loop context using g_source_attach().
	 * You can do these steps manually if you need greater control.
	 * Params:
	 * data = data to pass to function.
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint add(GSourceFunc funct, void* data)
	{
		// guint g_idle_add (GSourceFunc function,  gpointer data);
		return g_idle_add(funct, data);
	}
	
	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending. If the function returns FALSE it is automatically
	 * removed from the list of event sources and will not be called again.
	 * This internally creates a main loop source using g_idle_source_new()
	 * and attaches it to the main loop context using g_source_attach().
	 * You can do these steps manually if you need greater control.
	 * Params:
	 * priority = the priority of the idle source. Typically this will be in the
	 * range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
	 * data = data to pass to function
	 * notify = function to call when the idle is removed, or NULL. [allow-none]
	 * Returns: the ID (greater than 0) of the event source. Rename to: g_idle_add
	 */
	public static uint addFull(int priority, GSourceFunc funct, void* data, GDestroyNotify notify)
	{
		// guint g_idle_add_full (gint priority,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
		return g_idle_add_full(priority, funct, data, notify);
	}
	
	/**
	 * Removes the idle function with the given data.
	 * Params:
	 * data = the data for the idle source's callback.
	 * Returns: TRUE if an idle source was found and removed.
	 */
	public static int removeByData(void* data)
	{
		// gboolean g_idle_remove_by_data (gpointer data);
		return g_idle_remove_by_data(data);
	}
}
