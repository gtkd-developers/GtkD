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
 * inFile  = glib-UNIX-specific-utilities-and-integration.html
 * outPack = glib
 * outFile = UnixUtils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = UnixUtils
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Source
 * structWrap:
 * 	- GSource* -> Source
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.UnixUtils;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ErrorG;
private import glib.GException;
private import glib.Source;




/**
 * Description
 * Most of GLib is intended to be portable; in contrast, this set of
 * functions is designed for programs which explicitly target UNIX,
 * or are using it to build higher level abstractions which would be
 * conditionally compiled if the platform matches G_OS_UNIX.
 * To use these functions, you must explicitly include the
 * "glib-unix.h" header.
 */
public class UnixUtils
{
	
	/**
	 */
	
	/**
	 * Similar to the UNIX pipe() call, but on modern systems like Linux
	 * uses the pipe2() system call, which atomically creates a pipe with
	 * the configured flags. The only supported flag currently is
	 * FD_CLOEXEC. If for example you want to configure
	 * O_NONBLOCK, that must still be done separately with
	 * fcntl().
	 * Note
	 * This function does *not* take O_CLOEXEC, it takes
	 * FD_CLOEXEC as if for fcntl(); these are
	 * different on Linux/glibc.
	 * Since 2.30
	 * Params:
	 * fds = Array of two integers
	 * flags = Bitfield of file descriptor flags, see "man 2 fcntl"
	 * Returns: TRUE on success, FALSE if not (and errno will be set).
	 * Throws: GException on failure.
	 */
	public static int openPipe(int[] fds, int flags)
	{
		// gboolean g_unix_open_pipe (gint *fds,  gint flags,  GError **error);
		GError* err = null;
		
		auto p = g_unix_open_pipe(fds.ptr, flags, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * A convenience function for g_unix_signal_source_new(), which
	 * attaches to the default GMainContext. You can remove the watch
	 * using g_source_remove().
	 * Since 2.30
	 * Params:
	 * signum = Signal number
	 * handler = Callback
	 * userData = Data for handler
	 * Returns: An ID (greater than 0) for the event source
	 */
	public static uint signalAdd(int signum, GSourceFunc handler, void* userData)
	{
		// guint g_unix_signal_add (gint signum,  GSourceFunc handler,  gpointer user_data);
		return g_unix_signal_add(signum, handler, userData);
	}
	
	/**
	 * A convenience function for g_unix_signal_source_new(), which
	 * attaches to the default GMainContext. You can remove the watch
	 * using g_source_remove().
	 * Since 2.30
	 * Params:
	 * priority = the priority of the signal source. Typically this will be in
	 * the range between G_PRIORITY_DEFAULT and G_PRIORITY_HIGH.
	 * signum = Signal number
	 * handler = Callback
	 * userData = Data for handler
	 * notify = GDestroyNotify for handler
	 * Returns: An ID (greater than 0) for the event source
	 */
	public static uint signalAddFull(int priority, int signum, GSourceFunc handler, void* userData, GDestroyNotify notify)
	{
		// guint g_unix_signal_add_full (gint priority,  gint signum,  GSourceFunc handler,  gpointer user_data,  GDestroyNotify notify);
		return g_unix_signal_add_full(priority, signum, handler, userData, notify);
	}
	
	/**
	 * Create a GSource that will be dispatched upon delivery of the UNIX
	 * signal signum. Currently only SIGHUP,
	 * SIGINT, and SIGTERM can
	 * be monitored. Note that unlike the UNIX default, all sources which
	 * have created a watch will be dispatched, regardless of which
	 * underlying thread invoked g_unix_signal_source_new().
	 * For example, an effective use of this function is to handle SIGTERM
	 * cleanly; flushing any outstanding files, and then calling
	 * g_main_loop_quit(). It is not safe to do any of this a regular
	 * UNIX signal handler; your handler may be invoked while malloc() or
	 * another library function is running, causing reentrancy if you
	 * attempt to use it from the handler. None of the GLib/GObject API
	 * is safe against this kind of reentrancy.
	 * The interaction of this source when combined with native UNIX
	 * functions like sigprocmask() is not defined.
	 * The source will not initially be associated with any GMainContext
	 * and must be added to one with g_source_attach() before it will be
	 * executed.
	 * Since 2.30
	 * Params:
	 * signum = A signal number
	 * Returns: A newly created GSource
	 */
	public static Source signalSourceNew(int signum)
	{
		// GSource * g_unix_signal_source_new (gint signum);
		auto p = g_unix_signal_source_new(signum);
		
		if(p is null)
		{
			return null;
		}
		
		return new Source(cast(GSource*) p);
	}
	
	/**
	 * Control the non-blocking state of the given file descriptor,
	 * according to nonblock. On most systems this uses O_NONBLOCK, but
	 * on some older ones may use O_NDELAY.
	 * Since 2.30
	 * Params:
	 * fd = A file descriptor
	 * nonblock = If TRUE, set the descriptor to be non-blocking
	 * Returns: TRUE if successful
	 * Throws: GException on failure.
	 */
	public static int setFdNonblocking(int fd, int nonblock)
	{
		// gboolean g_unix_set_fd_nonblocking (gint fd,  gboolean nonblock,  GError **error);
		GError* err = null;
		
		auto p = g_unix_set_fd_nonblocking(fd, nonblock, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
}
