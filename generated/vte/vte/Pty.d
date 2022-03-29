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


module vte.Pty;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InitableIF;
private import gio.InitableT;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import vte.c.functions;
public  import vte.c.types;
public  import vtec.vtetypes;


/** */
public class Pty : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected VtePty* vtePty;

	/** Get the main Gtk struct */
	public VtePty* getPtyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return vtePty;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)vtePty;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (VtePty* vtePty, bool ownedRef = false)
	{
		this.vtePty = vtePty;
		super(cast(GObject*)vtePty, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(VtePty);


	/** */
	public static GType getType()
	{
		return vte_pty_get_type();
	}

	/**
	 * Creates a new #VtePty for the PTY master @fd.
	 *
	 * No entry will be made in the lastlog, utmp or wtmp system files.
	 *
	 * Note that the newly created #VtePty will take ownership of @fd
	 * and close it on finalize.
	 *
	 * Params:
	 *     fd = a file descriptor to the PTY
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #VtePty for @fd, or %NULL on error with @error filled in
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int fd, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = vte_pty_new_foreign_sync(fd, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_foreign_sync");
		}

		this(cast(VtePty*) __p, true);
	}

	/**
	 * Allocates a new pseudo-terminal.
	 *
	 * You can later use fork() or the g_spawn_async() family of functions
	 * to start a process on the PTY.
	 *
	 * If using fork(), you MUST call vte_pty_child_setup() in the child.
	 *
	 * If using g_spawn_async() and friends, you MUST either use
	 * vte_pty_child_setup() directly as the child setup function, or call
	 * vte_pty_child_setup() from your own child setup function supplied.
	 *
	 * When using vte_terminal_spawn_sync() with a custom child setup
	 * function, vte_pty_child_setup() will be called before the supplied
	 * function; you must not call it again.
	 *
	 * Also, you MUST pass the %G_SPAWN_DO_NOT_REAP_CHILD flag.
	 *
	 * Note also that %G_SPAWN_STDOUT_TO_DEV_NULL, %G_SPAWN_STDERR_TO_DEV_NULL,
	 * and %G_SPAWN_CHILD_INHERITS_STDIN are not supported, since stdin, stdout
	 * and stderr of the child process will always be connected to the PTY.
	 *
	 * Note that you should set the PTY's size using vte_pty_set_size() before
	 * spawning the child process, so that the child process has the correct
	 * size from the start instead of starting with a default size and then
	 * shortly afterwards receiving a <literal>SIGWINCH</literal> signal. You
	 * should prefer using vte_terminal_pty_new_sync() which does this
	 * automatically.
	 *
	 * Params:
	 *     flags = flags from #VtePtyFlags
	 *     cancellable = a #GCancellable, or %NULL
	 *
	 * Returns: a new #VtePty, or %NULL on error with @error filled in
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(VtePtyFlags flags, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = vte_pty_new_sync(flags, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_sync");
		}

		this(cast(VtePty*) __p, true);
	}

	/** */
	public void childSetup()
	{
		vte_pty_child_setup(vtePty);
	}

	/**
	 * Since 0.42 this is a no-op.
	 */
	public void close()
	{
		vte_pty_close(vtePty);
	}

	/**
	 * Returns: the file descriptor of the PTY master in @pty. The
	 *     file descriptor belongs to @pty and must not be closed or have
	 *     its flags changed
	 */
	public int getFd()
	{
		return vte_pty_get_fd(vtePty);
	}

	/**
	 * Reads the pseudo terminal's window size.
	 *
	 * If getting the window size failed, @error will be set to a #GIOError.
	 *
	 * Params:
	 *     rows = a location to store the number of rows, or %NULL
	 *     columns = a location to store the number of columns, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool getSize(out int rows, out int columns)
	{
		GError* err = null;

		auto __p = vte_pty_get_size(vtePty, &rows, &columns, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Attempts to resize the pseudo terminal's window size.  If successful, the
	 * OS kernel will send <literal>SIGWINCH</literal> to the child process group.
	 *
	 * If setting the window size failed, @error will be set to a #GIOError.
	 *
	 * Params:
	 *     rows = the desired number of rows
	 *     columns = the desired number of columns
	 *
	 * Returns: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool setSize(int rows, int columns)
	{
		GError* err = null;

		auto __p = vte_pty_set_size(vtePty, rows, columns, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Tells the kernel whether the terminal is UTF-8 or not, in case it can make
	 * use of the info.  Linux 2.6.5 or so defines IUTF8 to make the line
	 * discipline do multibyte backspace correctly.
	 *
	 * Params:
	 *     utf8 = whether or not the pty is in UTF-8 mode
	 *
	 * Returns: %TRUE on success, %FALSE on failure with @error filled in
	 *
	 * Throws: GException on failure.
	 */
	public bool setUtf8(bool utf8)
	{
		GError* err = null;

		auto __p = vte_pty_set_utf8(vtePty, utf8, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Like vte_pty_spawn_with_fds_async(), except that this function does not
	 * allow passing file descriptors to the child process. See vte_pty_spawn_with_fds_async()
	 * for more information.
	 *
	 * Params:
	 *     workingDirectory = the name of a directory the command should start
	 *         in, or %NULL to use the current working directory
	 *     argv = child's argument vector
	 *     envv = a list of environment
	 *         variables to be added to the environment before starting the process, or %NULL
	 *     spawnFlags = flags from #GSpawnFlags
	 *     childSetup = an extra child setup function to run in the child just before exec(), or %NULL
	 *     childSetupData = user data for @child_setup, or %NULL
	 *     childSetupDataDestroy = a #GDestroyNotify for @child_setup_data, or %NULL
	 *     timeout = a timeout value in ms, -1 for the default timeout, or G_MAXINT to wait indefinitely
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback, or %NULL
	 *     userData = user data for @callback
	 *
	 * Since: 0.48
	 */
	public void spawnAsync(string workingDirectory, string[] argv, string[] envv, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GDestroyNotify childSetupDataDestroy, int timeout, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		vte_pty_spawn_async(vtePty, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envv), spawnFlags, childSetup, childSetupData, childSetupDataDestroy, timeout, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *     childPid = a location to store the child PID, or %NULL
	 * Returns: %TRUE on success, or %FALSE on error with @error filled in
	 *
	 * Since: 0.48
	 *
	 * Throws: GException on failure.
	 */
	public bool spawnFinish(AsyncResultIF result, out GPid childPid)
	{
		GError* err = null;

		auto __p = vte_pty_spawn_finish(vtePty, (result is null) ? null : result.getAsyncResultStruct(), &childPid, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Starts the specified command under the pseudo-terminal @pty.
	 * The @argv and @envv lists should be %NULL-terminated.
	 * The "TERM" environment variable is automatically set to a default value,
	 * but can be overridden from @envv.
	 * @pty_flags controls logging the session to the specified system log files.
	 *
	 * Note also that %G_SPAWN_STDOUT_TO_DEV_NULL, %G_SPAWN_STDERR_TO_DEV_NULL,
	 * and %G_SPAWN_CHILD_INHERITS_STDIN are not supported in @spawn_flags, since
	 * stdin, stdout and stderr of the child process will always be connected to
	 * the PTY. Also %G_SPAWN_LEAVE_DESCRIPTORS_OPEN is not supported; and
	 * %G_SPAWN_DO_NOT_REAP_CHILD will always be added to @spawn_flags.
	 *
	 * If @fds is not %NULL, the child process will map the file descriptors from
	 * @fds according to @map_fds; @n_map_fds must be less or equal to @n_fds.
	 * This function will take ownership of the file descriptors in @fds;
	 * you must not use or close them after this call. All file descriptors in @fds
	 * must have the FD_CLOEXEC flag set on them; it will be unset in the child process
	 * before calling man:execve(2). Note also that no file descriptor may be mapped
	 * to stdin, stdout, or stderr (file descriptors 0, 1, or 2), since these will be
	 * assigned to the PTY. All open file descriptors apart from those mapped as above
	 * will be closed when execve() is called.
	 *
	 * Beginning with 0.60, and on linux only, and unless %VTE_SPAWN_NO_SYSTEMD_SCOPE is
	 * passed in @spawn_flags, the newly created child process will be moved to its own
	 * systemd user scope; and if %VTE_SPAWN_REQUIRE_SYSTEMD_SCOPE is passed, and creation
	 * of the systemd user scope fails, the whole spawn will fail.
	 * You can override the options used for the systemd user scope by
	 * providing a systemd override file for 'vte-spawn-.scope' unit. See man:systemd.unit(5)
	 * for further information.
	 *
	 * See vte_pty_new(), and vte_terminal_watch_child() for more information.
	 *
	 * Params:
	 *     workingDirectory = the name of a directory the command should start
	 *         in, or %NULL to use the current working directory
	 *     argv = child's argument vector
	 *     envv = a list of environment
	 *         variables to be added to the environment before starting the process, or %NULL
	 *     fds = an array of file descriptors, or %NULL
	 *     mapFds = an array of integers, or %NULL
	 *     spawnFlags = flags from #GSpawnFlags
	 *     childSetup = an extra child setup function to run in the child just before exec(), or %NULL
	 *     childSetupData = user data for @child_setup, or %NULL
	 *     childSetupDataDestroy = a #GDestroyNotify for @child_setup_data, or %NULL
	 *     timeout = a timeout value in ms, -1 for the default timeout, or G_MAXINT to wait indefinitely
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback, or %NULL
	 *     userData = user data for @callback
	 *
	 * Since: 0.62
	 */
	public void spawnWithFdsAsync(string workingDirectory, string[] argv, string[] envv, int[] fds, int[] mapFds, GSpawnFlags spawnFlags, GSpawnChildSetupFunc childSetup, void* childSetupData, GDestroyNotify childSetupDataDestroy, int timeout, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		vte_pty_spawn_with_fds_async(vtePty, Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envv), fds.ptr, cast(int)fds.length, mapFds.ptr, cast(int)mapFds.length, spawnFlags, childSetup, childSetupData, childSetupDataDestroy, timeout, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
}
