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
 * inFile  = 
 * outPack = glib
 * outFile = Source
 * strct   = GSource
 * realStrct=
 * ctorStrct=
 * clss    = Source
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_source_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.MainLoop
 * 	- glib.Dataset
 * 	- glib.Date
 * 	- glib.Source
 * 	- glib.MainContext
 * structWrap:
 * 	- GDataset* -> Dataset
 * 	- GDate* -> Date
 * 	- GMainContext* -> MainContext
 * 	- GMainLoop* -> MainLoop
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 */

module glib.Source;

private import gtkc.glibtypes;

private import gtkc.glib;

private import glib.MainLoop;
private import glib.Dataset;
private import glib.Date;
private import glib.Source;
private import glib.MainContext;



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
public class Source
{
	
	/** the main Gtk struct */
	protected GSource* gSource;
	
	
	public GSource* getSourceStruct()
	{
		return gSource;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gSource;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSource* gSource)
	{
		this.gSource = gSource;
	}
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new GSource structure. The size is specified to
	 * allow creating structures derived from GSource that contain
	 * additional data. The size passed in must be at least
	 * sizeof (GSource).
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 * source_funcs:
	 *  structure containing functions that implement
	 *  the sources behavior.
	 * struct_size:
	 *  size of the GSource structure to create.
	 * Returns:
	 *  the newly-created GSource.
	 */
	public this (GSourceFuncs* sourceFuncs, uint structSize)
	{
		// GSource* g_source_new (GSourceFuncs *source_funcs,  guint struct_size);
		this(cast(GSource*)g_source_new(sourceFuncs, structSize) );
	}
	
	/**
	 * Increases the reference count on a source by one.
	 * source:
	 *  a GSource
	 * Returns:
	 *  source
	 */
	public Source ref()
	{
		// GSource* g_source_ref (GSource *source);
		return new Source( g_source_ref(gSource) );
	}
	
	/**
	 * Decreases the reference count of a source by one. If the
	 * resulting reference count is zero the source and associated
	 * memory will be destroyed.
	 * source:
	 *  a GSource
	 */
	public void unref()
	{
		// void g_source_unref (GSource *source);
		g_source_unref(gSource);
	}
	
	/**
	 * Sets the source functions (can be used to override
	 * default implementations) of an unattached source.
	 * source:
	 *  a GSource
	 * funcs:
	 *  the new GSourceFuncs
	 * Since 2.12
	 */
	public void setFuncs(GSourceFuncs* funcs)
	{
		// void g_source_set_funcs (GSource *source,  GSourceFuncs *funcs);
		g_source_set_funcs(gSource, funcs);
	}
	
	/**
	 * Adds a GSource to a context so that it will be executed within
	 * that context.
	 * source:
	 *  a GSource
	 * context:
	 *  a GMainContext (if NULL, the default context will be used)
	 * Returns:
	 *  the ID (greater than 0) for the source within the
	 *  GMainContext.
	 */
	public uint attach(MainContext context)
	{
		// guint g_source_attach (GSource *source,  GMainContext *context);
		return g_source_attach(gSource, (context is null) ? null : context.getMainContextStruct());
	}
	
	/**
	 * Removes a source from its GMainContext, if any, and mark it as
	 * destroyed. The source cannot be subsequently added to another
	 * context.
	 * source:
	 *  a GSource
	 */
	public void destroy()
	{
		// void g_source_destroy (GSource *source);
		g_source_destroy(gSource);
	}
	
	/**
	 * Returns whether source has been destroyed.
	 * This is important when you operate upon your objects
	 * from within idle handlers, but may have freed the object
	 * before the dispatch of your idle handler.
	 * static gboolean
	 * idle_callback (gpointer data)
	 * {
		 *  SomeWidget *self = data;
		 *  GDK_THREADS_ENTER ();
		 *  /+* do stuff with self +/
		 *  self->idle_id = 0;
		 *  GDK_THREADS_LEAVE ();
		 *  return FALSE;
	 * }
	 * static void
	 * some_widget_do_stuff_later (SomeWidget *self)
	 * {
		 *  self->idle_id = g_idle_add (idle_callback, self);
	 * }
	 * static void
	 * some_widget_finalize (GObject *object)
	 * {
		 *  SomeWidget *self = SOME_WIDGET (object);
		 *  if (self->idle_id)
		 *  g_source_remove (self->idle_id);
		 *  G_OBJECT_CLASS (parent_class)->finalize (object);
	 * }
	 * This will fail in a multi-threaded application if the
	 * widget is destroyed before the idle handler fires due
	 * to the use after free in the callback. A solution, to
	 * this particular problem, is to check to if the source
	 * has already been destroy within the callback.
	 * static gboolean
	 * idle_callback (gpointer data)
	 * {
		 *  SomeWidget *self = data;
		 *  GDK_THREADS_ENTER();
		 *  if (!g_source_is_destroyed (g_main_current_source()))
		 *  {
			 *  /+* do stuff with self +/
		 *  }
		 *  GDK_THREADS_LEAVE();
		 *  return FALSE;
	 * }
	 * source:
	 *  a GSource
	 * Returns:
	 *  TRUE if the source has been destroyed
	 * Since 2.12
	 */
	public int isDestroyed()
	{
		// gboolean g_source_is_destroyed (GSource *source);
		return g_source_is_destroyed(gSource);
	}
	
	/**
	 * Sets the priority of a source. While the main loop is being
	 * run, a source will be dispatched if it is ready to be dispatched and no sources
	 * at a higher (numerically smaller) priority are ready to be dispatched.
	 * source:
	 *  a GSource
	 * priority:
	 *  the new priority.
	 */
	public void setPriority(int priority)
	{
		// void g_source_set_priority (GSource *source,  gint priority);
		g_source_set_priority(gSource, priority);
	}
	
	/**
	 * Gets the priority of a source.
	 * source:
	 *  a GSource
	 * Returns:
	 *  the priority of the source
	 */
	public int getPriority()
	{
		// gint g_source_get_priority (GSource *source);
		return g_source_get_priority(gSource);
	}
	
	/**
	 * Sets whether a source can be called recursively. If can_recurse is
	 * TRUE, then while the source is being dispatched then this source
	 * will be processed normally. Otherwise, all processing of this
	 * source is blocked until the dispatch function returns.
	 * source:
	 *  a GSource
	 * can_recurse:
	 *  whether recursion is allowed for this source
	 */
	public void setCanRecurse(int canRecurse)
	{
		// void g_source_set_can_recurse (GSource *source,  gboolean can_recurse);
		g_source_set_can_recurse(gSource, canRecurse);
	}
	
	/**
	 * Checks whether a source is allowed to be called recursively.
	 * see g_source_set_can_recurse().
	 * source:
	 *  a GSource
	 * Returns:
	 *  whether recursion is allowed.
	 */
	public int getCanRecurse()
	{
		// gboolean g_source_get_can_recurse (GSource *source);
		return g_source_get_can_recurse(gSource);
	}
	
	/**
	 * Returns the numeric ID for a particular source. The ID of a source
	 * is a positive integer which is unique within a particular main loop
	 * context. The reverse
	 * mapping from ID to source is done by g_main_context_find_source_by_id().
	 * source:
	 *  a GSource
	 * Returns:
	 *  the ID (greater than 0) for the source
	 */
	public uint getId()
	{
		// guint g_source_get_id (GSource *source);
		return g_source_get_id(gSource);
	}
	
	/**
	 * Gets the GMainContext with which the source is associated.
	 * Calling this function on a destroyed source is an error.
	 * source:
	 *  a GSource
	 * Returns:
	 *  the GMainContext with which the source is associated,
	 *  or NULL if the context has not yet been added
	 *  to a source.
	 */
	public MainContext getContext()
	{
		// GMainContext* g_source_get_context (GSource *source);
		return new MainContext( g_source_get_context(gSource) );
	}
	
	/**
	 * Sets the callback function for a source. The callback for a source is
	 * called from the source's dispatch function.
	 * The exact type of func depends on the type of source; ie. you
	 * should not count on func being called with data as its first
	 * parameter.
	 * Typically, you won't use this function. Instead use functions specific
	 * to the type of source you are using.
	 * source:
	 *  the source
	 * func:
	 *  a callback function
	 * data:
	 *  the data to pass to callback function
	 * notify:
	 *  a function to call when data is no longer in use, or NULL.
	 */
	public void setCallback(GSourceFunc func, void* data, GDestroyNotify notify)
	{
		// void g_source_set_callback (GSource *source,  GSourceFunc func,  gpointer data,  GDestroyNotify notify);
		g_source_set_callback(gSource, func, data, notify);
	}
	
	
	/**
	 * Sets the callback function storing the data as a refcounted callback
	 * "object". This is used internally. Note that calling
	 * g_source_set_callback_indirect() assumes
	 * an initial reference count on callback_data, and thus
	 * callback_funcs->unref will eventually be called once more
	 * than callback_funcs->ref.
	 * source:
	 *  the source
	 * callback_data:
	 *  pointer to callback data "object"
	 * callback_funcs:
	 *  functions for reference counting callback_data
	 *  and getting the callback and data
	 */
	public void setCallbackIndirect(void* callbackData, GSourceCallbackFuncs* callbackFuncs)
	{
		// void g_source_set_callback_indirect (GSource *source,  gpointer callback_data,  GSourceCallbackFuncs *callback_funcs);
		g_source_set_callback_indirect(gSource, callbackData, callbackFuncs);
	}
	
	/**
	 * Adds a file descriptor to the set of file descriptors polled for
	 * this source. This is usually combined with g_source_new() to add an
	 * event source. The event source's check function will typically test
	 * the revents field in the GPollFD struct and return TRUE if events need
	 * to be processed.
	 * source:
	 * a GSource
	 * fd:
	 *  a GPollFD structure holding information about a file
	 *  descriptor to watch.
	 */
	public void addPoll(GPollFD* fd)
	{
		// void g_source_add_poll (GSource *source,  GPollFD *fd);
		g_source_add_poll(gSource, fd);
	}
	
	/**
	 * Removes a file descriptor from the set of file descriptors polled for
	 * this source.
	 * source:
	 * a GSource
	 * fd:
	 *  a GPollFD structure previously passed to g_source_add_poll().
	 */
	public void removePoll(GPollFD* fd)
	{
		// void g_source_remove_poll (GSource *source,  GPollFD *fd);
		g_source_remove_poll(gSource, fd);
	}
	
	/**
	 * Gets the "current time" to be used when checking
	 * this source. The advantage of calling this function over
	 * calling g_get_current_time() directly is that when
	 * checking multiple sources, GLib can cache a single value
	 * instead of having to repeatedly get the system time.
	 * source:
	 *  a GSource
	 * timeval:
	 *  GTimeVal structure in which to store current time.
	 */
	public void getCurrentTime(GTimeVal* timeval)
	{
		// void g_source_get_current_time (GSource *source,  GTimeVal *timeval);
		g_source_get_current_time(gSource, timeval);
	}
	
	/**
	 * Removes the source with the given id from the default main context.
	 * The id of
	 * a GSource is given by g_source_get_id(), or will be returned by the
	 * functions g_source_attach(), g_idle_add(), g_idle_add_full(),
	 * g_timeout_add(), g_timeout_add_full(), g_child_watch_add(),
	 * g_child_watch_add_full(), g_io_add_watch(), and g_io_add_watch_full().
	 * See also g_source_destroy().
	 * tag:
	 *  the ID of the source to remove.
	 * Returns:
	 *  TRUE if the source was found and removed.
	 */
	public static int remove(uint tag)
	{
		// gboolean g_source_remove (guint tag);
		return g_source_remove(tag);
	}
	
	/**
	 * Removes a source from the default main loop context given the
	 * source functions and user data. If multiple sources exist with the
	 * same source functions and user data, only one will be destroyed.
	 * funcs:
	 *  The source_funcs passed to g_source_new()
	 * user_data:
	 *  the user data for the callback
	 * Returns:
	 *  TRUE if a source was found and removed.
	 */
	public static int removeByFuncsUserData(GSourceFuncs* funcs, void* userData)
	{
		// gboolean g_source_remove_by_funcs_user_data  (GSourceFuncs *funcs,  gpointer user_data);
		return g_source_remove_by_funcs_user_data(funcs, userData);
	}
	
	/**
	 * Removes a source from the default main loop context given the user
	 * data for the callback. If multiple sources exist with the same user
	 * data, only one will be destroyed.
	 * user_data:
	 *  the user_data for the callback.
	 * Returns:
	 *  TRUE if a source was found and removed.
	 */
	public static int removeByUserData(void* userData)
	{
		// gboolean g_source_remove_by_user_data (gpointer user_data);
		return g_source_remove_by_user_data(userData);
	}
}
