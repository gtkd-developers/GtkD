/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-The-Main-Event-Loop.html
 * outPack = glib
 * outFile = MainLoop
 * strct   = GMainLoop
 * realStrct=
 * ctorStrct=
 * clss    = MainLoop
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_main_loop_
 * omit structs:
 * omit prefixes:
 * 	- g_main_context_
 * 	- g_timeout_
 * 	- g_child_
 * 	- g_source_
 * omit code:
 * 	- g_main_loop_ref
 * omit signals:
 * imports:
 * 	- glib.Dataset
 * 	- glib.MainContext
 * 	- glib.Source
 * structWrap:
 * 	- GDataset* -> Dataset
 * 	- GMainContext* -> MainContext
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 */

module glib.MainLoop;

public  import gtkc.glibtypes;

private import gtkc.glib;


private import glib.Dataset;
private import glib.MainContext;
private import glib.Source;




/**
 * Description
 *  The main event loop manages all the available sources of events for
 *  GLib and GTK+ applications. These events can come from any number of
 *  different types of sources such as file descriptors (plain files,
 *  pipes or sockets) and timeouts. New types of event sources can also
 *  be added using g_source_attach().
 *  To allow multiple independent sets of sources to be handled in
 *  different threads, each source is associated with a GMainContext.
 *  A GMainContext can only be running in a single thread, but
 *  sources can be added to it and removed from it from other threads.
 *  Each event source is assigned a priority. The default priority,
 *  G_PRIORITY_DEFAULT, is 0. Values less than 0 denote higher
 *  priorities. Values greater than 0 denote lower priorities. Events
 *  from high priority sources are always processed before events from
 *  lower priority sources.
 *  Idle functions can also be added, and assigned a priority. These will
 *  be run whenever no events with a higher priority are ready to be
 *  processed.
 *  The GMainLoop data type represents a main event loop. A GMainLoop
 *  is created with g_main_loop_new(). After adding the initial event sources,
 *  g_main_loop_run() is called. This continuously checks for new events from
 *  each of the event sources and dispatches them. Finally, the
 *  processing of an event from one of the sources leads to a call to
 *  g_main_loop_quit() to exit the main loop, and g_main_loop_run() returns.
 *  It is possible to create new instances of GMainLoop recursively.
 *  This is often used in GTK+ applications when showing modal dialog
 *  boxes. Note that event sources are associated with a particular
 *  GMainContext, and will be checked and dispatched for all main
 *  loops associated with that GMainContext.
 *  GTK+ contains wrappers of some of these functions, e.g. gtk_main(),
 *  gtk_main_quit() and gtk_events_pending().
 * Creating new sources types
 *  One of the unusual features of the GTK+ main loop functionality
 *  is that new types of event source can be created and used in
 *  addition to the builtin type of event source. A new event source
 *  type is used for handling GDK events. A new source type is
 *  created by deriving from the GSource
 *  structure. The derived type of source is represented by a
 *  structure that has the GSource structure as a first element,
 *  and other elements specific to the new source type. To create
 *  an instance of the new source type, call g_source_new() passing
 *  in the size of the derived structure and a table of functions.
 *  These GSourceFuncs determine the behavior of the new source
 *  types.
 *  New source types basically interact with with the main context
 *  in two ways. Their prepare function in GSourceFuncs can set
 *  a timeout to determine the maximum amount of time that the
 *  main loop will sleep before checking the source again. In
 *  addition, or as well, the source can add file descriptors to
 *  the set that the main context checks using g_source_add_poll().
 * <hr>
 * Customizing the main loop iteration
 *  Single iterations of a GMainContext can be run with
 *  g_main_context_iteration(). In some cases, more detailed control
 *  of exactly how the details of the main loop work is desired,
 *  for instance, when integrating the GMainLoop with an external
 *  main loop. In such cases, you can call the component functions
 *  of g_main_context_iteration() directly. These functions
 *  are g_main_context_prepare(), g_main_context_query(),
 *  g_main_context_check() and g_main_context_dispatch().
 *  The operation of these functions can best be seen in terms
 *  of a state diagram, as shown in Figure1, States of a Main Context.
 * Figure1.States of a Main Context
 */
public class MainLoop
{
	
	/** the main Gtk struct */
	protected GMainLoop* gMainLoop;
	
	
	public GMainLoop* getMainLoopStruct()
	{
		return gMainLoop;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMainLoop;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GMainLoop* gMainLoop)
	{
		if(gMainLoop is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Null gMainLoop passed to constructor.");
			else return;
		}
		this.gMainLoop = gMainLoop;
	}
	
	/**
	 * Increases the reference count on a GMainLoop object by one.
	 * Params:
	 *  loop = a GMainLoop
	 * Returns:
	 *  loop
	 */
	public MainLoop doref()
	{
		// GMainLoop* g_main_loop_ref (GMainLoop *loop);
		return new MainLoop( g_main_loop_ref(gMainLoop) );
	}
	
	/**
	 */
	
	/**
	 * Creates a new GMainLoop structure.
	 * Params:
	 * context =  a GMainContext (if NULL, the default context will be used).
	 * isRunning =  set to TRUE to indicate that the loop is running. This
	 * is not very important since calling g_main_loop_run() will set this to
	 * TRUE anyway.
	 */
	public this (MainContext context, int isRunning)
	{
		// GMainLoop* g_main_loop_new (GMainContext *context,  gboolean is_running);
		auto p = g_main_loop_new((context is null) ? null : context.getMainContextStruct(), isRunning);
		if(p is null)
		{
			this = null;
			version(Exceptions) throw new Exception("Construction failure.");
			else return;
		}
		this(cast(GMainLoop*) p);
	}
	
	/**
	 * Decreases the reference count on a GMainLoop object by one. If
	 * the result is zero, free the loop and free all associated memory.
	 */
	public void unref()
	{
		// void g_main_loop_unref (GMainLoop *loop);
		g_main_loop_unref(gMainLoop);
	}
	
	/**
	 * Runs a main loop until g_main_loop_quit() is called on the loop.
	 * If this is called for the thread of the loop's GMainContext,
	 * it will process events from the loop, otherwise it will
	 * simply wait.
	 */
	public void run()
	{
		// void g_main_loop_run (GMainLoop *loop);
		g_main_loop_run(gMainLoop);
	}
	
	/**
	 * Stops a GMainLoop from running. Any calls to g_main_loop_run()
	 * for the loop will return.
	 */
	public void quit()
	{
		// void g_main_loop_quit (GMainLoop *loop);
		g_main_loop_quit(gMainLoop);
	}
	
	/**
	 * Checks to see if the main loop is currently being run via g_main_loop_run().
	 * Returns: TRUE if the mainloop is currently being run.
	 */
	public int isRunning()
	{
		// gboolean g_main_loop_is_running (GMainLoop *loop);
		return g_main_loop_is_running(gMainLoop);
	}
	
	/**
	 * Returns the GMainContext of loop.
	 * Returns: the GMainContext of loop
	 */
	public MainContext getContext()
	{
		// GMainContext* g_main_loop_get_context (GMainLoop *loop);
		auto p = g_main_loop_get_context(gMainLoop);
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new MainContext(cast(GMainContext*) p);
	}
	
	/**
	 * Returns the depth of the stack of calls to
	 * g_main_context_dispatch() on any GMainContext in the current thread.
	 *  That is, when called from the toplevel, it gives 0. When
	 * called from within a callback from g_main_context_iteration()
	 * (or g_main_loop_run(), etc.) it returns 1. When called from within
	 * a callback to a recursive call to g_main_context_iterate(),
	 * it returns 2. And so forth.
	 * Returns: The main loop recursion level in the current thread
	 */
	public static int gMainDepth()
	{
		// gint g_main_depth (void);
		return g_main_depth();
	}
	
	/**
	 * Returns the currently firing source for this thread.
	 * Since 2.12
	 * Returns: The currently firing source or NULL.
	 */
	public static Source gMainCurrentSource()
	{
		// GSource* g_main_current_source (void);
		auto p = g_main_current_source();
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Creates a new idle source.
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed. Note that the default priority for idle sources is
	 * G_PRIORITY_DEFAULT_IDLE, as compared to other sources which
	 * have a default priority of G_PRIORITY_DEFAULT.
	 * Returns: the newly-created idle source
	 */
	public static Source gIdleSourceNew()
	{
		// GSource* g_idle_source_new (void);
		auto p = g_idle_source_new();
		if(p is null)
		{
			version(Exceptions) throw new Exception("Null GObject from GTK+.");
			else return null;
		}
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending to the default main loop. The function is given the
	 * default idle priority, G_PRIORITY_DEFAULT_IDLE. If the function
	 * returns FALSE it is automatically removed from the list of event
	 * sources and will not be called again.
	 * Params:
	 * funct =  function to call
	 * data =  data to pass to function.
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint gIdleAdd(GSourceFunc funct, void* data)
	{
		// guint g_idle_add (GSourceFunc function,  gpointer data);
		return g_idle_add(funct, data);
	}
	
	/**
	 * Adds a function to be called whenever there are no higher priority
	 * events pending. If the function returns FALSE it is automatically
	 * removed from the list of event sources and will not be called again.
	 * Params:
	 * priority =  the priority of the idle source. Typically this will be in the
	 *  range btweeen G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
	 * funct =  function to call
	 * data =  data to pass to function
	 * notify =  function to call when the idle is removed, or NULL
	 * Returns: the ID (greater than 0) of the event source.
	 */
	public static uint gIdleAddFull(int priority, GSourceFunc funct, void* data, GDestroyNotify notify)
	{
		// guint g_idle_add_full (gint priority,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
		return g_idle_add_full(priority, funct, data, notify);
	}
	
	/**
	 * Removes the idle function with the given data.
	 * Params:
	 * data =  the data for the idle source's callback.
	 * Returns: TRUE if an idle source was found and removed.
	 */
	public static int gIdleRemoveByData(void* data)
	{
		// gboolean g_idle_remove_by_data (gpointer data);
		return g_idle_remove_by_data(data);
	}
}
