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


module gdk.Threads;

private import gdk.c.functions;
public  import gdk.c.types;
public  import gtkc.gdktypes;


/** */

/**
 * A wrapper for the common usage of gdk_threads_add_idle_full()
 * assigning the default priority, #G_PRIORITY_DEFAULT_IDLE.
 *
 * See gdk_threads_add_idle_full().
 *
 * Params:
 *     function_ = function to call
 *     data = data to pass to @function
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.12
 */
public uint threadsAddIdle(GSourceFunc function_, void* data)
{
	return gdk_threads_add_idle(function_, data);
}

/**
 * Adds a function to be called whenever there are no higher priority
 * events pending.  If the function returns %FALSE it is automatically
 * removed from the list of event sources and will not be called again.
 *
 * This variant of g_idle_add_full() calls @function with the GDK lock
 * held. It can be thought of a MT-safe version for GTK+ widgets for the
 * following use case, where you have to worry about idle_callback()
 * running in thread A and accessing @self after it has been finalized
 * in thread B:
 *
 * |[<!-- language="C" -->
 * static gboolean
 * idle_callback (gpointer data)
 * {
 * // gdk_threads_enter(); would be needed for g_idle_add()
 *
 * SomeWidget *self = data;
 * // do stuff with self
 *
 * self->idle_id = 0;
 *
 * // gdk_threads_leave(); would be needed for g_idle_add()
 * return FALSE;
 * }
 *
 * static void
 * some_widget_do_stuff_later (SomeWidget *self)
 * {
 * self->idle_id = gdk_threads_add_idle (idle_callback, self)
 * // using g_idle_add() here would require thread protection in the callback
 * }
 *
 * static void
 * some_widget_finalize (GObject *object)
 * {
 * SomeWidget *self = SOME_WIDGET (object);
 * if (self->idle_id)
 * g_source_remove (self->idle_id);
 * G_OBJECT_CLASS (parent_class)->finalize (object);
 * }
 * ]|
 *
 * Params:
 *     priority = the priority of the idle source. Typically this will be in the
 *         range between #G_PRIORITY_DEFAULT_IDLE and #G_PRIORITY_HIGH_IDLE
 *     function_ = function to call
 *     data = data to pass to @function
 *     notify = function to call when the idle is removed, or %NULL
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.12
 */
public uint threadsAddIdleFull(int priority, GSourceFunc function_, void* data, GDestroyNotify notify)
{
	return gdk_threads_add_idle_full(priority, function_, data, notify);
}

/**
 * A wrapper for the common usage of gdk_threads_add_timeout_full()
 * assigning the default priority, #G_PRIORITY_DEFAULT.
 *
 * See gdk_threads_add_timeout_full().
 *
 * Params:
 *     interval = the time between calls to the function, in milliseconds
 *         (1/1000ths of a second)
 *     function_ = function to call
 *     data = data to pass to @function
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.12
 */
public uint threadsAddTimeout(uint interval, GSourceFunc function_, void* data)
{
	return gdk_threads_add_timeout(interval, function_, data);
}

/**
 * Sets a function to be called at regular intervals holding the GDK lock,
 * with the given priority.  The function is called repeatedly until it
 * returns %FALSE, at which point the timeout is automatically destroyed
 * and the function will not be called again.  The @notify function is
 * called when the timeout is destroyed.  The first call to the
 * function will be at the end of the first @interval.
 *
 * Note that timeout functions may be delayed, due to the processing of other
 * event sources. Thus they should not be relied on for precise timing.
 * After each call to the timeout function, the time of the next
 * timeout is recalculated based on the current time and the given interval
 * (it does not try to “catch up” time lost in delays).
 *
 * This variant of g_timeout_add_full() can be thought of a MT-safe version
 * for GTK+ widgets for the following use case:
 *
 * |[<!-- language="C" -->
 * static gboolean timeout_callback (gpointer data)
 * {
 * SomeWidget *self = data;
 *
 * // do stuff with self
 *
 * self->timeout_id = 0;
 *
 * return G_SOURCE_REMOVE;
 * }
 *
 * static void some_widget_do_stuff_later (SomeWidget *self)
 * {
 * self->timeout_id = g_timeout_add (timeout_callback, self)
 * }
 *
 * static void some_widget_finalize (GObject *object)
 * {
 * SomeWidget *self = SOME_WIDGET (object);
 *
 * if (self->timeout_id)
 * g_source_remove (self->timeout_id);
 *
 * G_OBJECT_CLASS (parent_class)->finalize (object);
 * }
 * ]|
 *
 * Params:
 *     priority = the priority of the timeout source. Typically this will be in the
 *         range between #G_PRIORITY_DEFAULT_IDLE and #G_PRIORITY_HIGH_IDLE.
 *     interval = the time between calls to the function, in milliseconds
 *         (1/1000ths of a second)
 *     function_ = function to call
 *     data = data to pass to @function
 *     notify = function to call when the timeout is removed, or %NULL
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.12
 */
public uint threadsAddTimeoutFull(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify)
{
	return gdk_threads_add_timeout_full(priority, interval, function_, data, notify);
}

/**
 * A wrapper for the common usage of gdk_threads_add_timeout_seconds_full()
 * assigning the default priority, #G_PRIORITY_DEFAULT.
 *
 * For details, see gdk_threads_add_timeout_full().
 *
 * Params:
 *     interval = the time between calls to the function, in seconds
 *     function_ = function to call
 *     data = data to pass to @function
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.14
 */
public uint threadsAddTimeoutSeconds(uint interval, GSourceFunc function_, void* data)
{
	return gdk_threads_add_timeout_seconds(interval, function_, data);
}

/**
 * A variant of gdk_threads_add_timeout_full() with second-granularity.
 * See g_timeout_add_seconds_full() for a discussion of why it is
 * a good idea to use this function if you don’t need finer granularity.
 *
 * Params:
 *     priority = the priority of the timeout source. Typically this will be in the
 *         range between #G_PRIORITY_DEFAULT_IDLE and #G_PRIORITY_HIGH_IDLE.
 *     interval = the time between calls to the function, in seconds
 *     function_ = function to call
 *     data = data to pass to @function
 *     notify = function to call when the timeout is removed, or %NULL
 *
 * Returns: the ID (greater than 0) of the event source.
 *
 * Since: 2.14
 */
public uint threadsAddTimeoutSecondsFull(int priority, uint interval, GSourceFunc function_, void* data, GDestroyNotify notify)
{
	return gdk_threads_add_timeout_seconds_full(priority, interval, function_, data, notify);
}

/**
 * This function marks the beginning of a critical section in which
 * GDK and GTK+ functions can be called safely and without causing race
 * conditions. Only one thread at a time can be in such a critial
 * section.
 *
 * Deprecated: All GDK and GTK+ calls should be made from the main
 * thread
 */
public void threadsEnter()
{
	gdk_threads_enter();
}

/**
 * Initializes GDK so that it can be used from multiple threads
 * in conjunction with gdk_threads_enter() and gdk_threads_leave().
 *
 * This call must be made before any use of the main loop from
 * GTK+; to be safe, call it before gtk_init().
 *
 * Deprecated: All GDK and GTK+ calls should be made from the main
 * thread
 */
public void threadsInit()
{
	gdk_threads_init();
}

/**
 * Leaves a critical region begun with gdk_threads_enter().
 *
 * Deprecated: All GDK and GTK+ calls should be made from the main
 * thread
 */
public void threadsLeave()
{
	gdk_threads_leave();
}

/**
 * Allows the application to replace the standard method that
 * GDK uses to protect its data structures. Normally, GDK
 * creates a single #GMutex that is locked by gdk_threads_enter(),
 * and released by gdk_threads_leave(); using this function an
 * application provides, instead, a function @enter_fn that is
 * called by gdk_threads_enter() and a function @leave_fn that is
 * called by gdk_threads_leave().
 *
 * The functions must provide at least same locking functionality
 * as the default implementation, but can also do extra application
 * specific processing.
 *
 * As an example, consider an application that has its own recursive
 * lock that when held, holds the GTK+ lock as well. When GTK+ unlocks
 * the GTK+ lock when entering a recursive main loop, the application
 * must temporarily release its lock as well.
 *
 * Most threaded GTK+ apps won’t need to use this method.
 *
 * This method must be called before gdk_threads_init(), and cannot
 * be called multiple times.
 *
 * Deprecated: All GDK and GTK+ calls should be made from the main
 * thread
 *
 * Params:
 *     enterFn = function called to guard GDK
 *     leaveFn = function called to release the guard
 *
 * Since: 2.4
 */
public void threadsSetLockFunctions(GCallback enterFn, GCallback leaveFn)
{
	gdk_threads_set_lock_functions(enterFn, leaveFn);
}
