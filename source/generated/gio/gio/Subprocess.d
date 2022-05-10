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


module gio.Subprocess;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.InputStream;
private import gio.OutputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GSubprocess allows the creation of and interaction with child
 * processes.
 * 
 * Processes can be communicated with using standard GIO-style APIs (ie:
 * #GInputStream, #GOutputStream).  There are GIO-style APIs to wait for
 * process termination (ie: cancellable and with an asynchronous
 * variant).
 * 
 * There is an API to force a process to terminate, as well as a
 * race-free API for sending UNIX signals to a subprocess.
 * 
 * One major advantage that GIO brings over the core GLib library is
 * comprehensive API for asynchronous I/O, such
 * g_output_stream_splice_async().  This makes GSubprocess
 * significantly more powerful and flexible than equivalent APIs in
 * some other languages such as the `subprocess.py`
 * included with Python.  For example, using #GSubprocess one could
 * create two child processes, reading standard output from the first,
 * processing it, and writing to the input stream of the second, all
 * without blocking the main loop.
 * 
 * A powerful g_subprocess_communicate() API is provided similar to the
 * `communicate()` method of `subprocess.py`. This enables very easy
 * interaction with a subprocess that has been opened with pipes.
 * 
 * #GSubprocess defaults to tight control over the file descriptors open
 * in the child process, avoiding dangling-fd issues that are caused by
 * a simple fork()/exec().  The only open file descriptors in the
 * spawned process are ones that were explicitly specified by the
 * #GSubprocess API (unless %G_SUBPROCESS_FLAGS_INHERIT_FDS was
 * specified).
 * 
 * #GSubprocess will quickly reap all child processes as they exit,
 * avoiding "zombie processes" remaining around for long periods of
 * time.  g_subprocess_wait() can be used to wait for this to happen,
 * but it will happen even without the call being explicitly made.
 * 
 * As a matter of principle, #GSubprocess has no API that accepts
 * shell-style space-separated strings.  It will, however, match the
 * typical shell behaviour of searching the PATH for executables that do
 * not contain a directory separator in their name. By default, the `PATH`
 * of the current process is used.  You can specify
 * %G_SUBPROCESS_FLAGS_SEARCH_PATH_FROM_ENVP to use the `PATH` of the
 * launcher environment instead.
 * 
 * #GSubprocess attempts to have a very simple API for most uses (ie:
 * spawning a subprocess with arguments and support for most typical
 * kinds of input and output redirection).  See g_subprocess_new(). The
 * #GSubprocessLauncher API is provided for more complicated cases
 * (advanced types of redirection, environment variable manipulation,
 * change of working directory, child setup functions, etc).
 * 
 * A typical use of #GSubprocess will involve calling
 * g_subprocess_new(), followed by g_subprocess_wait_async() or
 * g_subprocess_wait().  After the process exits, the status can be
 * checked using functions such as g_subprocess_get_if_exited() (which
 * are similar to the familiar WIFEXITED-style POSIX macros).
 *
 * Since: 2.40
 */
public class Subprocess : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected GSubprocess* gSubprocess;

	/** Get the main Gtk struct */
	public GSubprocess* getSubprocessStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSubprocess;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSubprocess;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSubprocess* gSubprocess, bool ownedRef = false)
	{
		this.gSubprocess = gSubprocess;
		super(cast(GObject*)gSubprocess, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(GSubprocess);


	/** */
	public static GType getType()
	{
		return g_subprocess_get_type();
	}

	/**
	 * Create a new process with the given flags and argument list.
	 *
	 * The argument list is expected to be %NULL-terminated.
	 *
	 * Params:
	 *     argv = commandline arguments for the subprocess
	 *     flags = flags that define the behaviour of the subprocess
	 *
	 * Returns: A newly created #GSubprocess, or %NULL on error (and @error
	 *     will be set)
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string[] argv, GSubprocessFlags flags)
	{
		GError* err = null;

		auto __p = g_subprocess_newv(Str.toStringzArray(argv), flags, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by newv");
		}

		this(cast(GSubprocess*) __p, true);
	}

	/**
	 * Communicate with the subprocess until it terminates, and all input
	 * and output has been completed.
	 *
	 * If @stdin_buf is given, the subprocess must have been created with
	 * %G_SUBPROCESS_FLAGS_STDIN_PIPE.  The given data is fed to the
	 * stdin of the subprocess and the pipe is closed (ie: EOF).
	 *
	 * At the same time (as not to cause blocking when dealing with large
	 * amounts of data), if %G_SUBPROCESS_FLAGS_STDOUT_PIPE or
	 * %G_SUBPROCESS_FLAGS_STDERR_PIPE were used, reads from those
	 * streams.  The data that was read is returned in @stdout and/or
	 * the @stderr.
	 *
	 * If the subprocess was created with %G_SUBPROCESS_FLAGS_STDOUT_PIPE,
	 * @stdout_buf will contain the data read from stdout.  Otherwise, for
	 * subprocesses not created with %G_SUBPROCESS_FLAGS_STDOUT_PIPE,
	 * @stdout_buf will be set to %NULL.  Similar provisions apply to
	 * @stderr_buf and %G_SUBPROCESS_FLAGS_STDERR_PIPE.
	 *
	 * As usual, any output variable may be given as %NULL to ignore it.
	 *
	 * If you desire the stdout and stderr data to be interleaved, create
	 * the subprocess with %G_SUBPROCESS_FLAGS_STDOUT_PIPE and
	 * %G_SUBPROCESS_FLAGS_STDERR_MERGE.  The merged result will be returned
	 * in @stdout_buf and @stderr_buf will be set to %NULL.
	 *
	 * In case of any error (including cancellation), %FALSE will be
	 * returned with @error set.  Some or all of the stdin data may have
	 * been written.  Any stdout or stderr data that has been read will be
	 * discarded. None of the out variables (aside from @error) will have
	 * been set to anything in particular and should not be inspected.
	 *
	 * In the case that %TRUE is returned, the subprocess has exited and the
	 * exit status inspection APIs (eg: g_subprocess_get_if_exited(),
	 * g_subprocess_get_exit_status()) may be used.
	 *
	 * You should not attempt to use any of the subprocess pipes after
	 * starting this function, since they may be left in strange states,
	 * even if the operation was cancelled.  You should especially not
	 * attempt to interact with the pipes while the operation is in progress
	 * (either from another thread or if using the asynchronous version).
	 *
	 * Params:
	 *     stdinBuf = data to send to the stdin of the subprocess, or %NULL
	 *     cancellable = a #GCancellable
	 *     stdoutBuf = data read from the subprocess stdout
	 *     stderrBuf = data read from the subprocess stderr
	 *
	 * Returns: %TRUE if successful
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool communicate(Bytes stdinBuf, Cancellable cancellable, out Bytes stdoutBuf, out Bytes stderrBuf)
	{
		GBytes* outstdoutBuf = null;
		GBytes* outstderrBuf = null;
		GError* err = null;

		auto __p = g_subprocess_communicate(gSubprocess, (stdinBuf is null) ? null : stdinBuf.getBytesStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &outstdoutBuf, &outstderrBuf, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		stdoutBuf = new Bytes(outstdoutBuf);
		stderrBuf = new Bytes(outstderrBuf);

		return __p;
	}

	/**
	 * Asynchronous version of g_subprocess_communicate().  Complete
	 * invocation with g_subprocess_communicate_finish().
	 *
	 * Params:
	 *     stdinBuf = Input data, or %NULL
	 *     cancellable = Cancellable
	 *     callback = Callback
	 *     userData = User data
	 */
	public void communicateAsync(Bytes stdinBuf, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_subprocess_communicate_async(gSubprocess, (stdinBuf is null) ? null : stdinBuf.getBytesStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Complete an invocation of g_subprocess_communicate_async().
	 *
	 * Params:
	 *     result = Result
	 *     stdoutBuf = Return location for stdout data
	 *     stderrBuf = Return location for stderr data
	 *
	 * Throws: GException on failure.
	 */
	public bool communicateFinish(AsyncResultIF result, out Bytes stdoutBuf, out Bytes stderrBuf)
	{
		GBytes* outstdoutBuf = null;
		GBytes* outstderrBuf = null;
		GError* err = null;

		auto __p = g_subprocess_communicate_finish(gSubprocess, (result is null) ? null : result.getAsyncResultStruct(), &outstdoutBuf, &outstderrBuf, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		stdoutBuf = new Bytes(outstdoutBuf);
		stderrBuf = new Bytes(outstderrBuf);

		return __p;
	}

	/**
	 * Like g_subprocess_communicate(), but validates the output of the
	 * process as UTF-8, and returns it as a regular NUL terminated string.
	 *
	 * On error, @stdout_buf and @stderr_buf will be set to undefined values and
	 * should not be used.
	 *
	 * Params:
	 *     stdinBuf = data to send to the stdin of the subprocess, or %NULL
	 *     cancellable = a #GCancellable
	 *     stdoutBuf = data read from the subprocess stdout
	 *     stderrBuf = data read from the subprocess stderr
	 *
	 * Throws: GException on failure.
	 */
	public bool communicateUtf8(string stdinBuf, Cancellable cancellable, out string stdoutBuf, out string stderrBuf)
	{
		char* outstdoutBuf = null;
		char* outstderrBuf = null;
		GError* err = null;

		auto __p = g_subprocess_communicate_utf8(gSubprocess, Str.toStringz(stdinBuf), (cancellable is null) ? null : cancellable.getCancellableStruct(), &outstdoutBuf, &outstderrBuf, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		stdoutBuf = Str.toString(outstdoutBuf);
		stderrBuf = Str.toString(outstderrBuf);

		return __p;
	}

	/**
	 * Asynchronous version of g_subprocess_communicate_utf8().  Complete
	 * invocation with g_subprocess_communicate_utf8_finish().
	 *
	 * Params:
	 *     stdinBuf = Input data, or %NULL
	 *     cancellable = Cancellable
	 *     callback = Callback
	 *     userData = User data
	 */
	public void communicateUtf8Async(string stdinBuf, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_subprocess_communicate_utf8_async(gSubprocess, Str.toStringz(stdinBuf), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Complete an invocation of g_subprocess_communicate_utf8_async().
	 *
	 * Params:
	 *     result = Result
	 *     stdoutBuf = Return location for stdout data
	 *     stderrBuf = Return location for stderr data
	 *
	 * Throws: GException on failure.
	 */
	public bool communicateUtf8Finish(AsyncResultIF result, out string stdoutBuf, out string stderrBuf)
	{
		char* outstdoutBuf = null;
		char* outstderrBuf = null;
		GError* err = null;

		auto __p = g_subprocess_communicate_utf8_finish(gSubprocess, (result is null) ? null : result.getAsyncResultStruct(), &outstdoutBuf, &outstderrBuf, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		stdoutBuf = Str.toString(outstdoutBuf);
		stderrBuf = Str.toString(outstderrBuf);

		return __p;
	}

	/**
	 * Use an operating-system specific method to attempt an immediate,
	 * forceful termination of the process.  There is no mechanism to
	 * determine whether or not the request itself was successful;
	 * however, you can use g_subprocess_wait() to monitor the status of
	 * the process after calling this function.
	 *
	 * On Unix, this function sends %SIGKILL.
	 *
	 * Since: 2.40
	 */
	public void forceExit()
	{
		g_subprocess_force_exit(gSubprocess);
	}

	/**
	 * Check the exit status of the subprocess, given that it exited
	 * normally.  This is the value passed to the exit() system call or the
	 * return value from main.
	 *
	 * This is equivalent to the system WEXITSTATUS macro.
	 *
	 * It is an error to call this function before g_subprocess_wait() and
	 * unless g_subprocess_get_if_exited() returned %TRUE.
	 *
	 * Returns: the exit status
	 *
	 * Since: 2.40
	 */
	public int getExitStatus()
	{
		return g_subprocess_get_exit_status(gSubprocess);
	}

	/**
	 * On UNIX, returns the process ID as a decimal string.
	 * On Windows, returns the result of GetProcessId() also as a string.
	 * If the subprocess has terminated, this will return %NULL.
	 *
	 * Returns: the subprocess identifier, or %NULL if the subprocess
	 *     has terminated
	 *
	 * Since: 2.40
	 */
	public string getIdentifier()
	{
		return Str.toString(g_subprocess_get_identifier(gSubprocess));
	}

	/**
	 * Check if the given subprocess exited normally (ie: by way of exit()
	 * or return from main()).
	 *
	 * This is equivalent to the system WIFEXITED macro.
	 *
	 * It is an error to call this function before g_subprocess_wait() has
	 * returned.
	 *
	 * Returns: %TRUE if the case of a normal exit
	 *
	 * Since: 2.40
	 */
	public bool getIfExited()
	{
		return g_subprocess_get_if_exited(gSubprocess) != 0;
	}

	/**
	 * Check if the given subprocess terminated in response to a signal.
	 *
	 * This is equivalent to the system WIFSIGNALED macro.
	 *
	 * It is an error to call this function before g_subprocess_wait() has
	 * returned.
	 *
	 * Returns: %TRUE if the case of termination due to a signal
	 *
	 * Since: 2.40
	 */
	public bool getIfSignaled()
	{
		return g_subprocess_get_if_signaled(gSubprocess) != 0;
	}

	/**
	 * Gets the raw status code of the process, as from waitpid().
	 *
	 * This value has no particular meaning, but it can be used with the
	 * macros defined by the system headers such as WIFEXITED.  It can also
	 * be used with g_spawn_check_wait_status().
	 *
	 * It is more likely that you want to use g_subprocess_get_if_exited()
	 * followed by g_subprocess_get_exit_status().
	 *
	 * It is an error to call this function before g_subprocess_wait() has
	 * returned.
	 *
	 * Returns: the (meaningless) waitpid() exit status from the kernel
	 *
	 * Since: 2.40
	 */
	public int getStatus()
	{
		return g_subprocess_get_status(gSubprocess);
	}

	/**
	 * Gets the #GInputStream from which to read the stderr output of
	 * @subprocess.
	 *
	 * The process must have been created with %G_SUBPROCESS_FLAGS_STDERR_PIPE,
	 * otherwise %NULL will be returned.
	 *
	 * Returns: the stderr pipe
	 *
	 * Since: 2.40
	 */
	public InputStream getStderrPipe()
	{
		auto __p = g_subprocess_get_stderr_pipe(gSubprocess);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Gets the #GOutputStream that you can write to in order to give data
	 * to the stdin of @subprocess.
	 *
	 * The process must have been created with %G_SUBPROCESS_FLAGS_STDIN_PIPE and
	 * not %G_SUBPROCESS_FLAGS_STDIN_INHERIT, otherwise %NULL will be returned.
	 *
	 * Returns: the stdout pipe
	 *
	 * Since: 2.40
	 */
	public OutputStream getStdinPipe()
	{
		auto __p = g_subprocess_get_stdin_pipe(gSubprocess);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OutputStream)(cast(GOutputStream*) __p);
	}

	/**
	 * Gets the #GInputStream from which to read the stdout output of
	 * @subprocess.
	 *
	 * The process must have been created with %G_SUBPROCESS_FLAGS_STDOUT_PIPE,
	 * otherwise %NULL will be returned.
	 *
	 * Returns: the stdout pipe
	 *
	 * Since: 2.40
	 */
	public InputStream getStdoutPipe()
	{
		auto __p = g_subprocess_get_stdout_pipe(gSubprocess);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p);
	}

	/**
	 * Checks if the process was "successful".  A process is considered
	 * successful if it exited cleanly with an exit status of 0, either by
	 * way of the exit() system call or return from main().
	 *
	 * It is an error to call this function before g_subprocess_wait() has
	 * returned.
	 *
	 * Returns: %TRUE if the process exited cleanly with a exit status of 0
	 *
	 * Since: 2.40
	 */
	public bool getSuccessful()
	{
		return g_subprocess_get_successful(gSubprocess) != 0;
	}

	/**
	 * Get the signal number that caused the subprocess to terminate, given
	 * that it terminated due to a signal.
	 *
	 * This is equivalent to the system WTERMSIG macro.
	 *
	 * It is an error to call this function before g_subprocess_wait() and
	 * unless g_subprocess_get_if_signaled() returned %TRUE.
	 *
	 * Returns: the signal causing termination
	 *
	 * Since: 2.40
	 */
	public int getTermSig()
	{
		return g_subprocess_get_term_sig(gSubprocess);
	}

	/**
	 * Sends the UNIX signal @signal_num to the subprocess, if it is still
	 * running.
	 *
	 * This API is race-free.  If the subprocess has terminated, it will not
	 * be signalled.
	 *
	 * This API is not available on Windows.
	 *
	 * Params:
	 *     signalNum = the signal number to send
	 *
	 * Since: 2.40
	 */
	public void sendSignal(int signalNum)
	{
		g_subprocess_send_signal(gSubprocess, signalNum);
	}

	/**
	 * Synchronously wait for the subprocess to terminate.
	 *
	 * After the process terminates you can query its exit status with
	 * functions such as g_subprocess_get_if_exited() and
	 * g_subprocess_get_exit_status().
	 *
	 * This function does not fail in the case of the subprocess having
	 * abnormal termination.  See g_subprocess_wait_check() for that.
	 *
	 * Cancelling @cancellable doesn't kill the subprocess.  Call
	 * g_subprocess_force_exit() if it is desirable.
	 *
	 * Params:
	 *     cancellable = a #GCancellable
	 *
	 * Returns: %TRUE on success, %FALSE if @cancellable was cancelled
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool wait(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_subprocess_wait(gSubprocess, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Wait for the subprocess to terminate.
	 *
	 * This is the asynchronous version of g_subprocess_wait().
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback to call when the operation is complete
	 *     userData = user_data for @callback
	 *
	 * Since: 2.40
	 */
	public void waitAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_subprocess_wait_async(gSubprocess, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Combines g_subprocess_wait() with g_spawn_check_wait_status().
	 *
	 * Params:
	 *     cancellable = a #GCancellable
	 *
	 * Returns: %TRUE on success, %FALSE if process exited abnormally, or
	 *     @cancellable was cancelled
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool waitCheck(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_subprocess_wait_check(gSubprocess, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Combines g_subprocess_wait_async() with g_spawn_check_wait_status().
	 *
	 * This is the asynchronous version of g_subprocess_wait_check().
	 *
	 * Params:
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = a #GAsyncReadyCallback to call when the operation is complete
	 *     userData = user_data for @callback
	 *
	 * Since: 2.40
	 */
	public void waitCheckAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_subprocess_wait_check_async(gSubprocess, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Collects the result of a previous call to
	 * g_subprocess_wait_check_async().
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your #GAsyncReadyCallback
	 *
	 * Returns: %TRUE if successful, or %FALSE with @error set
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool waitCheckFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_subprocess_wait_check_finish(gSubprocess, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Collects the result of a previous call to
	 * g_subprocess_wait_async().
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your #GAsyncReadyCallback
	 *
	 * Returns: %TRUE if successful, or %FALSE with @error set
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public bool waitFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_subprocess_wait_finish(gSubprocess, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
