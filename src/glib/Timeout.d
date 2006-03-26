/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = Timeout
 * strct   = 
 * realStrct=
 * clss    = Timeout
 * interf  = 
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_timeout_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.MainLoop
 * 	- glib.Dataset
 * 	- glib.Source
 * structWrap:
 * 	- GDataset* -> Dataset
 * 	- GMainLoop* -> MainLoop
 * 	- GSource* -> Source
 * local aliases:
 */

module glib.Timeout;

private import glib.typedefs;

private import lib.glib;

private import glib.MainLoop;
private import glib.Dataset;
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
public class Timeout
{
	
	/**
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Creates a new timeout source.
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 * interval:
	 *  the timeout interval in milliseconds.
	 * Returns:
	 *  the newly-created timeout source
	 */
	public static Source sourceNew(uint interval)
	{
		// GSource* g_timeout_source_new (guint interval);
		return new Source( g_timeout_source_new(interval) );
	}
	
	/**
	 * Sets a function to be called at regular intervals, with the default
	 * priority, G_PRIORITY_DEFAULT. The function is called repeatedly
	 * until it returns FALSE, at which point the timeout is automatically
	 * destroyed and the function will not be called again. The first call
	 * to the function will be at the end of the first interval.
	 * Note that timeout functions may be delayed, due to the processing of other
	 * event sources. Thus they should not be relied on for precise timing.
	 * After each call to the timeout function, the time of the next
	 * timeout is recalculated based on the current time and the given interval
	 * (it does not try to 'catch up' time lost in delays).
	 * interval:
	 *  the time between calls to the function, in milliseconds
	 *  (1/1000ths of a second)
	 * function:
	 *  function to call
	 * data:
	 *  data to pass to function
	 * Returns:
	 *  the ID (greater than 0) of the event source.
	 */
	public static uint add(uint interval, GSourceFunc funct, void* data)
	{
		// guint g_timeout_add (guint interval,  GSourceFunc function,  gpointer data);
		return g_timeout_add(interval, funct, data);
	}
	
	/**
	 * Sets a function to be called at regular intervals, with the given
	 * priority. The function is called repeatedly until it returns
	 * FALSE, at which point the timeout is automatically destroyed and
	 * the function will not be called again. The notify function is
	 * called when the timeout is destroyed. The first call to the
	 * function will be at the end of the first interval.
	 * Note that timeout functions may be delayed, due to the processing of other
	 * event sources. Thus they should not be relied on for precise timing.
	 * After each call to the timeout function, the time of the next
	 * timeout is recalculated based on the current time and the given interval
	 * (it does not try to 'catch up' time lost in delays).
	 * priority:
	 *  the priority of the idle source. Typically this will be in the
	 *  range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
	 * interval:
	 *  the time between calls to the function, in milliseconds
	 *  (1/1000ths of a second)
	 * function:
	 *  function to call
	 * data:
	 *  data to pass to function
	 * notify:
	 *  function to call when the idle is removed, or NULL
	 * Returns:
	 *  the ID (greater than 0) of the event source.
	 */
	public static uint addFull(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify)
	{
		// guint g_timeout_add_full (gint priority,  guint interval,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
		return g_timeout_add_full(priority, interval, funct, data, notify);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
