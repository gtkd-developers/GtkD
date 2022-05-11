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


module glib.UnixUtils;

private import glib.ErrorG;
private import glib.GException;
private import glib.Source;
private import glib.c.functions;
public  import glib.c.types;


/** */
public struct UnixUtils
{

	/** */
	public static GQuark errorQuark()
	{
		return g_unix_error_quark();
	}

	/**
	 * Sets a function to be called when the IO condition, as specified by
	 * @condition becomes true for @fd.
	 *
	 * @function will be called when the specified IO condition becomes
	 * %TRUE.  The function is expected to clear whatever event caused the
	 * IO condition to become true and return %TRUE in order to be notified
	 * when it happens again.  If @function returns %FALSE then the watch
	 * will be cancelled.
	 *
	 * The return value of this function can be passed to g_source_remove()
	 * to cancel the watch at any time that it exists.
	 *
	 * The source will never close the fd -- you must do it yourself.
	 *
	 * Params:
	 *     fd = a file descriptor
	 *     condition = IO conditions to watch for on @fd
	 *     function_ = a #GUnixFDSourceFunc
	 *     userData = data to pass to @function
	 *
	 * Returns: the ID (greater than 0) of the event source
	 *
	 * Since: 2.36
	 */
	public static uint fdAdd(int fd, GIOCondition condition, GUnixFDSourceFunc function_, void* userData)
	{
		return g_unix_fd_add(fd, condition, function_, userData);
	}

	/**
	 * Sets a function to be called when the IO condition, as specified by
	 * @condition becomes true for @fd.
	 *
	 * This is the same as g_unix_fd_add(), except that it allows you to
	 * specify a non-default priority and a provide a #GDestroyNotify for
	 * @user_data.
	 *
	 * Params:
	 *     priority = the priority of the source
	 *     fd = a file descriptor
	 *     condition = IO conditions to watch for on @fd
	 *     function_ = a #GUnixFDSourceFunc
	 *     userData = data to pass to @function
	 *     notify = function to call when the idle is removed, or %NULL
	 *
	 * Returns: the ID (greater than 0) of the event source
	 *
	 * Since: 2.36
	 */
	public static uint fdAddFull(int priority, int fd, GIOCondition condition, GUnixFDSourceFunc function_, void* userData, GDestroyNotify notify)
	{
		return g_unix_fd_add_full(priority, fd, condition, function_, userData, notify);
	}

	/**
	 * Creates a #GSource to watch for a particular IO condition on a file
	 * descriptor.
	 *
	 * The source will never close the fd -- you must do it yourself.
	 *
	 * Params:
	 *     fd = a file descriptor
	 *     condition = IO conditions to watch for on @fd
	 *
	 * Returns: the newly created #GSource
	 *
	 * Since: 2.36
	 */
	public static Source fdSourceNew(int fd, GIOCondition condition)
	{
		auto __p = g_unix_fd_source_new(fd, condition);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}

	/**
	 * Similar to the UNIX pipe() call, but on modern systems like Linux
	 * uses the pipe2() system call, which atomically creates a pipe with
	 * the configured flags. The only supported flag currently is
	 * %FD_CLOEXEC. If for example you want to configure %O_NONBLOCK, that
	 * must still be done separately with fcntl().
	 *
	 * This function does not take %O_CLOEXEC, it takes %FD_CLOEXEC as if
	 * for fcntl(); these are different on Linux/glibc.
	 *
	 * Params:
	 *     fds = Array of two integers
	 *     flags = Bitfield of file descriptor flags, as for fcntl()
	 *
	 * Returns: %TRUE on success, %FALSE if not (and errno will be set).
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public static bool openPipe(int* fds, int flags)
	{
		GError* err = null;

		auto __p = g_unix_open_pipe(fds, flags, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Control the non-blocking state of the given file descriptor,
	 * according to @nonblock. On most systems this uses %O_NONBLOCK, but
	 * on some older ones may use %O_NDELAY.
	 *
	 * Params:
	 *     fd = A file descriptor
	 *     nonblock = If %TRUE, set the descriptor to be non-blocking
	 *
	 * Returns: %TRUE if successful
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public static bool setFdNonblocking(int fd, bool nonblock)
	{
		GError* err = null;

		auto __p = g_unix_set_fd_nonblocking(fd, nonblock, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * A convenience function for g_unix_signal_source_new(), which
	 * attaches to the default #GMainContext.  You can remove the watch
	 * using g_source_remove().
	 *
	 * Params:
	 *     signum = Signal number
	 *     handler = Callback
	 *     userData = Data for @handler
	 *
	 * Returns: An ID (greater than 0) for the event source
	 *
	 * Since: 2.30
	 */
	public static uint signalAdd(int signum, GSourceFunc handler, void* userData)
	{
		return g_unix_signal_add(signum, handler, userData);
	}

	/**
	 * A convenience function for g_unix_signal_source_new(), which
	 * attaches to the default #GMainContext.  You can remove the watch
	 * using g_source_remove().
	 *
	 * Params:
	 *     priority = the priority of the signal source. Typically this will be in
	 *         the range between %G_PRIORITY_DEFAULT and %G_PRIORITY_HIGH.
	 *     signum = Signal number
	 *     handler = Callback
	 *     userData = Data for @handler
	 *     notify = #GDestroyNotify for @handler
	 *
	 * Returns: An ID (greater than 0) for the event source
	 *
	 * Since: 2.30
	 */
	public static uint signalAddFull(int priority, int signum, GSourceFunc handler, void* userData, GDestroyNotify notify)
	{
		return g_unix_signal_add_full(priority, signum, handler, userData, notify);
	}

	/**
	 * Create a #GSource that will be dispatched upon delivery of the UNIX
	 * signal @signum.  In GLib versions before 2.36, only `SIGHUP`, `SIGINT`,
	 * `SIGTERM` can be monitored.  In GLib 2.36, `SIGUSR1` and `SIGUSR2`
	 * were added. In GLib 2.54, `SIGWINCH` was added.
	 *
	 * Note that unlike the UNIX default, all sources which have created a
	 * watch will be dispatched, regardless of which underlying thread
	 * invoked g_unix_signal_source_new().
	 *
	 * For example, an effective use of this function is to handle `SIGTERM`
	 * cleanly; flushing any outstanding files, and then calling
	 * g_main_loop_quit ().  It is not safe to do any of this a regular
	 * UNIX signal handler; your handler may be invoked while malloc() or
	 * another library function is running, causing reentrancy if you
	 * attempt to use it from the handler.  None of the GLib/GObject API
	 * is safe against this kind of reentrancy.
	 *
	 * The interaction of this source when combined with native UNIX
	 * functions like sigprocmask() is not defined.
	 *
	 * The source will not initially be associated with any #GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 *
	 * Params:
	 *     signum = A signal number
	 *
	 * Returns: A newly created #GSource
	 *
	 * Since: 2.30
	 */
	public static Source signalSourceNew(int signum)
	{
		auto __p = g_unix_signal_source_new(signum);

		if(__p is null)
		{
			return null;
		}

		return new Source(cast(GSource*) __p, true);
	}
}
