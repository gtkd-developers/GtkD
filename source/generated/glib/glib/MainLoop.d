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


module glib.MainLoop;

private import glib.ConstructionException;
private import glib.MainContext;
private import glib.Source;
private import glib.c.functions;
public  import glib.c.types;
private import linker.Loader;


/**
 * The `GMainLoop` struct is an opaque data type
 * representing the main event loop of a GLib or GTK+ application.
 */
public class MainLoop
{
	/** the main Gtk struct */
	protected GMainLoop* gMainLoop;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GMainLoop* getMainLoopStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gMainLoop;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gMainLoop;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GMainLoop* gMainLoop, bool ownedRef = false)
	{
		this.gMainLoop = gMainLoop;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GLIB[0]) && ownedRef )
			g_main_loop_unref(gMainLoop);
	}


	/**
	 * Creates a new #GMainLoop structure.
	 *
	 * Params:
	 *     context = a #GMainContext  (if %NULL, the default context will be used).
	 *     isRunning = set to %TRUE to indicate that the loop is running. This
	 *         is not very important since calling g_main_loop_run() will set this to
	 *         %TRUE anyway.
	 *
	 * Returns: a new #GMainLoop.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(MainContext context, bool isRunning)
	{
		auto __p = g_main_loop_new((context is null) ? null : context.getMainContextStruct(), isRunning);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GMainLoop*) __p);
	}

	/**
	 * Returns the #GMainContext of @loop.
	 *
	 * Returns: the #GMainContext of @loop
	 */
	public MainContext getContext()
	{
		auto __p = g_main_loop_get_context(gMainLoop);

		if(__p is null)
		{
			return null;
		}

		return new MainContext(cast(GMainContext*) __p);
	}

	/**
	 * Checks to see if the main loop is currently being run via g_main_loop_run().
	 *
	 * Returns: %TRUE if the mainloop is currently being run.
	 */
	public bool isRunning()
	{
		return g_main_loop_is_running(gMainLoop) != 0;
	}

	/**
	 * Stops a #GMainLoop from running. Any calls to g_main_loop_run()
	 * for the loop will return.
	 *
	 * Note that sources that have already been dispatched when
	 * g_main_loop_quit() is called will still be executed.
	 */
	public void quit()
	{
		g_main_loop_quit(gMainLoop);
	}

	alias doref = ref_;
	/**
	 * Increases the reference count on a #GMainLoop object by one.
	 *
	 * Returns: @loop
	 */
	public MainLoop ref_()
	{
		auto __p = g_main_loop_ref(gMainLoop);

		if(__p is null)
		{
			return null;
		}

		return new MainLoop(cast(GMainLoop*) __p, true);
	}

	/**
	 * Runs a main loop until g_main_loop_quit() is called on the loop.
	 * If this is called for the thread of the loop's #GMainContext,
	 * it will process events from the loop, otherwise it will
	 * simply wait.
	 */
	public void run()
	{
		g_main_loop_run(gMainLoop);
	}

	/**
	 * Decreases the reference count on a #GMainLoop object by one. If
	 * the result is zero, free the loop and free all associated memory.
	 */
	public void unref()
	{
		g_main_loop_unref(gMainLoop);
	}

	/**
	 * Returns the currently firing source for this thread.
	 *
	 * Returns: The currently firing source or %NULL.
	 *
	 * Since: 2.12
	 */
	public static Source mainCurrentSource()
	{
		auto __p = g_main_current_source();

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p);
	}

	/**
	 * Returns the depth of the stack of calls to
	 * g_main_context_dispatch() on any #GMainContext in the current thread.
	 * That is, when called from the toplevel, it gives 0. When
	 * called from within a callback from g_main_context_iteration()
	 * (or g_main_loop_run(), etc.) it returns 1. When called from within
	 * a callback to a recursive call to g_main_context_iteration(),
	 * it returns 2. And so forth.
	 *
	 * This function is useful in a situation like the following:
	 * Imagine an extremely simple "garbage collected" system.
	 *
	 * |[<!-- language="C" -->
	 * static GList *free_list;
	 *
	 * gpointer
	 * allocate_memory (gsize size)
	 * {
	 * gpointer result = g_malloc (size);
	 * free_list = g_list_prepend (free_list, result);
	 * return result;
	 * }
	 *
	 * void
	 * free_allocated_memory (void)
	 * {
	 * GList *l;
	 * for (l = free_list; l; l = l->next);
	 * g_free (l->data);
	 * g_list_free (free_list);
	 * free_list = NULL;
	 * }
	 *
	 * [...]
	 *
	 * while (TRUE);
	 * {
	 * g_main_context_iteration (NULL, TRUE);
	 * free_allocated_memory();
	 * }
	 * ]|
	 *
	 * This works from an application, however, if you want to do the same
	 * thing from a library, it gets more difficult, since you no longer
	 * control the main loop. You might think you can simply use an idle
	 * function to make the call to free_allocated_memory(), but that
	 * doesn't work, since the idle function could be called from a
	 * recursive callback. This can be fixed by using g_main_depth()
	 *
	 * |[<!-- language="C" -->
	 * gpointer
	 * allocate_memory (gsize size)
	 * {
	 * FreeListBlock *block = g_new (FreeListBlock, 1);
	 * block->mem = g_malloc (size);
	 * block->depth = g_main_depth ();
	 * free_list = g_list_prepend (free_list, block);
	 * return block->mem;
	 * }
	 *
	 * void
	 * free_allocated_memory (void)
	 * {
	 * GList *l;
	 *
	 * int depth = g_main_depth ();
	 * for (l = free_list; l; );
	 * {
	 * GList *next = l->next;
	 * FreeListBlock *block = l->data;
	 * if (block->depth > depth)
	 * {
	 * g_free (block->mem);
	 * g_free (block);
	 * free_list = g_list_delete_link (free_list, l);
	 * }
	 *
	 * l = next;
	 * }
	 * }
	 * ]|
	 *
	 * There is a temptation to use g_main_depth() to solve
	 * problems with reentrancy. For instance, while waiting for data
	 * to be received from the network in response to a menu item,
	 * the menu item might be selected again. It might seem that
	 * one could make the menu item's callback return immediately
	 * and do nothing if g_main_depth() returns a value greater than 1.
	 * However, this should be avoided since the user then sees selecting
	 * the menu item do nothing. Furthermore, you'll find yourself adding
	 * these checks all over your code, since there are doubtless many,
	 * many things that the user could do. Instead, you can use the
	 * following techniques:
	 *
	 * 1. Use gtk_widget_set_sensitive() or modal dialogs to prevent
	 * the user from interacting with elements while the main
	 * loop is recursing.
	 *
	 * 2. Avoid main loop recursion in situations where you can't handle
	 * arbitrary  callbacks. Instead, structure your code so that you
	 * simply return to the main loop and then get called again when
	 * there is more work to do.
	 *
	 * Returns: The main loop recursion level in the current thread
	 */
	public static int mainDepth()
	{
		return g_main_depth();
	}

	/**
	 * Polls @fds, as with the poll() system call, but portably. (On
	 * systems that don't have poll(), it is emulated using select().)
	 * This is used internally by #GMainContext, but it can be called
	 * directly if you need to block until a file descriptor is ready, but
	 * don't want to run the full main loop.
	 *
	 * Each element of @fds is a #GPollFD describing a single file
	 * descriptor to poll. The @fd field indicates the file descriptor,
	 * and the @events field indicates the events to poll for. On return,
	 * the @revents fields will be filled with the events that actually
	 * occurred.
	 *
	 * On POSIX systems, the file descriptors in @fds can be any sort of
	 * file descriptor, but the situation is much more complicated on
	 * Windows. If you need to use g_poll() in code that has to run on
	 * Windows, the easiest solution is to construct all of your
	 * #GPollFDs with g_io_channel_win32_make_pollfd().
	 *
	 * Params:
	 *     fds = file descriptors to poll
	 *     nfds = the number of file descriptors in @fds
	 *     timeout = amount of time to wait, in milliseconds, or -1 to wait forever
	 *
	 * Returns: the number of entries in @fds whose @revents fields
	 *     were filled in, or 0 if the operation timed out, or -1 on error or
	 *     if the call was interrupted.
	 *
	 * Since: 2.20
	 */
	public static int poll(GPollFD* fds, uint nfds, int timeout)
	{
		return g_poll(fds, nfds, timeout);
	}
}
