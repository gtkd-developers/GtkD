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
 * inFile  = gdk3-Threads.html
 * outPack = gdk
 * outFile = Threads
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = 
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gdk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gdk.Threads;

public  import gtkc.gdktypes;

private import gtkc.gdk;
private import glib.ConstructionException;
private import gobject.ObjectG;






/**
 */

/**
 * Warning
 * gdk_threads_init has been deprecated since version 3.6 and should not be used in newly-written code. All GDK and GTK+ calls should be made from the main
 *  thread
 * Initializes GDK so that it can be used from multiple threads
 * in conjunction with gdk_threads_enter() and gdk_threads_leave().
 * This call must be made before any use of the main loop from
 * GTK+; to be safe, call it before gtk_init().
 */
public static void threadsInit()
{
	// void gdk_threads_init (void);
	gdk_threads_init();
}

/**
 * Warning
 * gdk_threads_enter has been deprecated since version 3.6 and should not be used in newly-written code. All GDK and GTK+ calls should be made from the main
 *  thread
 * This function marks the beginning of a critical section in which
 * GDK and GTK+ functions can be called safely and without causing race
 * conditions. Only one thread at a time can be in such a critial
 * section.
 */
public static void threadsEnter()
{
	// void gdk_threads_enter (void);
	gdk_threads_enter();
}

/**
 * Warning
 * gdk_threads_leave has been deprecated since version 3.6 and should not be used in newly-written code. All GDK and GTK+ calls should be made from the main
 *  thread
 * Leaves a critical region begun with gdk_threads_enter().
 */
public static void threadsLeave()
{
	// void gdk_threads_leave (void);
	gdk_threads_leave();
}

/**
 * Warning
 * gdk_threads_set_lock_functions has been deprecated since version 3.6 and should not be used in newly-written code. All GDK and GTK+ calls should be made from the main
 *  thread
 * Allows the application to replace the standard method that
 * GDK uses to protect its data structures. Normally, GDK
 * creates a single GMutex that is locked by gdk_threads_enter(),
 * and released by gdk_threads_leave(); using this function an
 * application provides, instead, a function enter_fn that is
 * called by gdk_threads_enter() and a function leave_fn that is
 * called by gdk_threads_leave().
 * The functions must provide at least same locking functionality
 * as the default implementation, but can also do extra application
 * specific processing.
 * As an example, consider an application that has its own recursive
 * lock that when held, holds the GTK+ lock as well. When GTK+ unlocks
 * the GTK+ lock when entering a recursive main loop, the application
 * must temporarily release its lock as well.
 * Most threaded GTK+ apps won't need to use this method.
 * This method must be called before gdk_threads_init(), and cannot
 * be called multiple times.
 * Since 2.4
 * Params:
 * enterFn = function called to guard GDK
 * leaveFn = function called to release the guard
 */
public static void threadsSetLockFunctions(GCallback enterFn, GCallback leaveFn)
{
	// void gdk_threads_set_lock_functions (GCallback enter_fn,  GCallback leave_fn);
	gdk_threads_set_lock_functions(enterFn, leaveFn);
}

/**
 * A wrapper for the common usage of gdk_threads_add_idle_full()
 * assigning the default priority, G_PRIORITY_DEFAULT_IDLE.
 * See gdk_threads_add_idle_full().
 * Since 2.12
 * Params:
 * data = data to pass to function
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddIdle(GSourceFunc funct, void* data)
{
	// guint gdk_threads_add_idle (GSourceFunc function,  gpointer data);
	return gdk_threads_add_idle(funct, data);
}

/**
 * Adds a function to be called whenever there are no higher priority
 * events pending. If the function returns FALSE it is automatically
 * removed from the list of event sources and will not be called again.
 * This variant of g_idle_add_full() calls function with the GDK lock
 * held. It can be thought of a MT-safe version for GTK+ widgets for the
 * following use case, where you have to worry about idle_callback()
 * running in thread A and accessing self after it has been finalized
 * Since 2.12
 * Params:
 * priority = the priority of the idle source. Typically this will be in the
 * range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE
 * data = data to pass to function
 * notify = function to call when the idle is removed, or NULL. [allow-none]
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddIdleFull(int priority, GSourceFunc funct, void* data, GDestroyNotify notify)
{
	// guint gdk_threads_add_idle_full (gint priority,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
	return gdk_threads_add_idle_full(priority, funct, data, notify);
}

/**
 * A wrapper for the common usage of gdk_threads_add_timeout_full()
 * assigning the default priority, G_PRIORITY_DEFAULT.
 * See gdk_threads_add_timeout_full().
 * Since 2.12
 * Params:
 * interval = the time between calls to the function, in milliseconds
 * (1/1000ths of a second)
 * data = data to pass to function
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddTimeout(uint interval, GSourceFunc funct, void* data)
{
	// guint gdk_threads_add_timeout (guint interval,  GSourceFunc function,  gpointer data);
	return gdk_threads_add_timeout(interval, funct, data);
}

/**
 * Sets a function to be called at regular intervals holding the GDK lock,
 * with the given priority. The function is called repeatedly until it
 * returns FALSE, at which point the timeout is automatically destroyed
 * and the function will not be called again. The notify function is
 * called when the timeout is destroyed. The first call to the
 * function will be at the end of the first interval.
 * Note that timeout functions may be delayed, due to the processing of other
 * event sources. Thus they should not be relied on for precise timing.
 * After each call to the timeout function, the time of the next
 * timeout is recalculated based on the current time and the given interval
 * (it does not try to 'catch up' time lost in delays).
 * This variant of g_timeout_add_full() can be thought of a MT-safe version
 * Since 2.12
 * Params:
 * priority = the priority of the timeout source. Typically this will be in the
 * range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
 * interval = the time between calls to the function, in milliseconds
 * (1/1000ths of a second)
 * data = data to pass to function
 * notify = function to call when the timeout is removed, or NULL. [allow-none]
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddTimeoutFull(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify)
{
	// guint gdk_threads_add_timeout_full (gint priority,  guint interval,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
	return gdk_threads_add_timeout_full(priority, interval, funct, data, notify);
}

/**
 * A wrapper for the common usage of gdk_threads_add_timeout_seconds_full()
 * assigning the default priority, G_PRIORITY_DEFAULT.
 * For details, see gdk_threads_add_timeout_full().
 * Since 2.14
 * Params:
 * interval = the time between calls to the function, in seconds
 * data = data to pass to function
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddTimeoutSeconds(uint interval, GSourceFunc funct, void* data)
{
	// guint gdk_threads_add_timeout_seconds (guint interval,  GSourceFunc function,  gpointer data);
	return gdk_threads_add_timeout_seconds(interval, funct, data);
}

/**
 * A variant of gdk_threads_add_timeout_full() with second-granularity.
 * See g_timeout_add_seconds_full() for a discussion of why it is
 * a good idea to use this function if you don't need finer granularity.
 * Since 2.14
 * Params:
 * priority = the priority of the timeout source. Typically this will be in the
 * range between G_PRIORITY_DEFAULT_IDLE and G_PRIORITY_HIGH_IDLE.
 * interval = the time between calls to the function, in seconds
 * data = data to pass to function
 * notify = function to call when the timeout is removed, or NULL. [allow-none]
 * Returns: the ID (greater than 0) of the event source.
 */
public static uint threadsAddTimeoutSecondsFull(int priority, uint interval, GSourceFunc funct, void* data, GDestroyNotify notify)
{
	// guint gdk_threads_add_timeout_seconds_full  (gint priority,  guint interval,  GSourceFunc function,  gpointer data,  GDestroyNotify notify);
	return gdk_threads_add_timeout_seconds_full(priority, interval, funct, data, notify);
}

