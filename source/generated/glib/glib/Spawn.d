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


module glib.Spawn;

private import core.stdc.stdio;
private import core.stdc.string;
private import core.thread;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
public  import glib.c.types;
private import std.string;
private import std.traits;


/** */
public class Spawn
{
	//we need fdopen.
	version(Posix)
	{
		private import core.sys.posix.stdio;
	}
	//fdopen for Windows is defined in glib.c.types.

	string workingDirectory = ".";
	string[] argv;
	string[] envp;
	GSpawnFlags flags = SpawnFlags.SEARCH_PATH;
	GSpawnChildSetupFunc childSetup;
	void* userData;
	GPid childPid;
	FILE* standardInput;
	FILE* standardOutput;
	FILE* standardError;
	GError* error;
	int stdIn;
	int stdOut;
	int stdErr;

	// for commandLineSync
	int exitStatus;
	char* strOutput;
	char* strError;

	alias bool delegate(Spawn) ChildWatch;
	ChildWatch externalWatch;

	/**
	 * Creates a Spawn for execution.
	 */
	public this(string program, string[] envp=null)
	{
		argv ~= program;
		this.envp = envp;
	}

	/**
	 * Creates a Spawn for execution.
	 */
	public this(string[] program, string[] envp=null)
	{
		argv = program;
		this.envp = envp;
	}

	/**
	 * Adds a delegate to be notified on the end of the child process.
	 * Params:
	 *    	dlg =
	 */
	public void addChildWatch(ChildWatch dlg)
	{
		externalWatch = dlg;
	}

	/**
	 * Closes all open streams and child process.
	 */
	public void close()
	{
		if (stdIn != 0 )
		{
			fclose(standardInput);
			stdIn = 0;
		}
		if (stdOut != 0 )
		{
			fclose(standardOutput);
			stdOut = 0;
		}
		if (stdErr != 0 )
		{
			fclose(standardError);
			stdErr = 0;
		}
		static if ( isPointer!(GPid) )
		{
			if ( childPid !is null )
			{
				closePid(childPid);
				childPid = null;
			}
		}
		else
		{
			if ( childPid != 0 )
			{
				closePid(childPid);
				childPid = 0;
			}
		}
	}

	/**
	 * Adds a parameter to the execution program
	 */
	public void addParm(string parm)
	{
		argv ~= parm;
	}

	/**
	 * Gets the last error message
	 */
	public string getLastError()
	{
		if ( error != null )
		{
			return Str.toString(error.message);
		}
		return "";
	}

	/**
	 * Executes the prepared process
	 */
	public int execAsyncWithPipes(
		ChildWatch externalWatch = null,
		bool delegate(string) readOutput = null,
	bool delegate(string) readError = null )
	{
		int result = g_spawn_async_with_pipes(
			Str.toStringz(workingDirectory),
			Str.toStringzArray(argv),
			Str.toStringzArray(envp),
			flags,
			childSetup,
			userData,
			&childPid,
			&stdIn,
			&stdOut,
			&stdErr,
			&error
		);

		if ( result != 0 )
		{
			this.externalWatch = externalWatch;
			g_child_watch_add(childPid, cast(GChildWatchFunc)(&childWatchCallback), cast(void*)this);
			standardInput = fdopen(stdIn, Str.toStringz("w"));
			standardOutput = fdopen(stdOut, Str.toStringz("r"));
			standardError = fdopen(stdErr, Str.toStringz("r"));

			if ( readOutput !is null )
			{
				(new ReadFile(standardOutput, readOutput)).start();
			}
			if ( readError !is null )
			{
				(new ReadFile(standardError, readError)).start();
			}
		}

		return result;
	}

	class ReadFile : Thread
	{
		bool delegate(string) read;
		FILE* file;

		int lineCount;

		this(FILE* file, bool delegate (string) read )
		{
			this.file = file;
			this.read = read;

			super(&run);
		}

		public void run()
		{
			string line = readLine(file);
			while( line !is null )
			{
				++lineCount;
				if ( read !is null )
				{
					read(line);
				}
				line = readLine(file);
			}
		}
	}

	private string readLine(FILE* stream, int max=4096)
	{
		if ( feof(stream) )
		{
			if ( externalWatch !is null )
			{
				externalWatch(this);
			}
			return null;
		}
		string line;
		line.length = max+1;
		char* lineP = fgets(Str.toStringz(line), max, stream);
		if ( lineP is null )
		{
			return "";
		}
		size_t l = strlen(line.ptr);
		if ( l > 0 ) --l;

		return line[0..l];
	}

	extern(C) static void childWatchCallback(int pid, int status, Spawn spawn)
	{
		//writefln("Spawn.childWatchCallback %s %s", pid, status);
		spawn.exitStatus = status;
		if ( spawn.externalWatch !is null )
		{
			spawn.externalWatch(spawn);
		}
		spawn.close();
	}


	public bool endOfOutput()
	{
		if ( standardOutput is null ) return true;
		return feof(standardOutput) != 0;
	}

	public bool endOfError()
	{
		if ( standardError is null ) return true;
		return feof(standardError) != 0;
	}

	string getOutputString()
	{
		return Str.toString(strOutput);
	}

	string getErrorString()
	{
		return Str.toString(strError);
	}

	int getExitStatus()
	{
		return exitStatus;
	}

	/**
	 * Executes a command synchronasly and
	 * optionally calls delegates for sysout, syserr and end of job
	 *
	 */
	public int commandLineSync(
		ChildWatch externalWatch = null,
		bool delegate(string) readOutput = null,
	bool delegate(string) readError = null )
	{
		string commandLine;
		foreach ( count, string arg; argv)
		{
			if ( count > 0 )
			{
				commandLine ~= ' ';
			}
			commandLine ~= arg;
		}
		int status = g_spawn_command_line_sync(
			Str.toStringz(commandLine),
			&strOutput,
			&strError,
			&exitStatus,
			&error);
		if ( readOutput != null )
		{
			foreach ( string line ; splitLines(Str.toString(strOutput)) )
			{
				readOutput(line);
			}
		}
		if ( readError != null )
		{
			foreach ( string line ; splitLines(Str.toString(strError)) )
			{
				readError(line);
			}
		}
		if ( externalWatch != null )
		{
			externalWatch(this);
		}
		return status;
	}

	/**
	 */

	/**
	 * Executes a child program asynchronously.
	 *
	 * See g_spawn_async_with_pipes() for a full description; this function
	 * simply calls the g_spawn_async_with_pipes() without any pipes.
	 *
	 * You should call g_spawn_close_pid() on the returned child process
	 * reference when you don't need it any more.
	 *
	 * If you are writing a GTK application, and the program you are spawning is a
	 * graphical application too, then to ensure that the spawned program opens its
	 * windows on the right screen, you may want to use #GdkAppLaunchContext,
	 * #GAppLaunchContext, or set the %DISPLAY environment variable.
	 *
	 * Note that the returned @child_pid on Windows is a handle to the child
	 * process and not its identifier. Process handles and process identifiers
	 * are different concepts on Windows.
	 *
	 * Params:
	 *     workingDirectory = child's current working
	 *         directory, or %NULL to inherit parent's
	 *     argv = child's argument vector
	 *     envp = child's environment, or %NULL to inherit parent's
	 *     flags = flags from #GSpawnFlags
	 *     childSetup = function to run in the child just before exec()
	 *     userData = user data for @child_setup
	 *     childPid = return location for child process reference, or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE if error is set
	 *
	 * Throws: GException on failure.
	 */
	public static bool async(string workingDirectory, string[] argv, string[] envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, out GPid childPid)
	{
		GError* err = null;

		auto __p = g_spawn_async(Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envp), flags, childSetup, userData, &childPid, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * An old name for g_spawn_check_wait_status(), deprecated because its
	 * name is misleading.
	 *
	 * Despite the name of the function, @wait_status must be the wait status
	 * as returned by g_spawn_sync(), g_subprocess_get_status(), `waitpid()`,
	 * etc. On Unix platforms, it is incorrect for it to be the exit status
	 * as passed to `exit()` or returned by g_subprocess_get_exit_status() or
	 * `WEXITSTATUS()`.
	 *
	 * Deprecated: Use g_spawn_check_wait_status() instead, and check whether your code is conflating wait and exit statuses.
	 *
	 * Params:
	 *     waitStatus = A status as returned from g_spawn_sync()
	 *
	 * Returns: %TRUE if child exited successfully, %FALSE otherwise (and
	 *     @error will be set)
	 *
	 * Since: 2.34
	 *
	 * Throws: GException on failure.
	 */
	public static bool checkExitStatus(int waitStatus)
	{
		GError* err = null;

		auto __p = g_spawn_check_exit_status(waitStatus, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * On some platforms, notably Windows, the #GPid type represents a resource
	 * which must be closed to prevent resource leaking. g_spawn_close_pid()
	 * is provided for this purpose. It should be used on all platforms, even
	 * though it doesn't do anything under UNIX.
	 *
	 * Params:
	 *     pid = The process reference to close
	 */
	public static void closePid(GPid pid)
	{
		g_spawn_close_pid(pid);
	}

	/**
	 * A simple version of g_spawn_async() that parses a command line with
	 * g_shell_parse_argv() and passes it to g_spawn_async().
	 *
	 * Runs a command line in the background. Unlike g_spawn_async(), the
	 * %G_SPAWN_SEARCH_PATH flag is enabled, other flags are not. Note
	 * that %G_SPAWN_SEARCH_PATH can have security implications, so
	 * consider using g_spawn_async() directly if appropriate. Possible
	 * errors are those from g_shell_parse_argv() and g_spawn_async().
	 *
	 * The same concerns on Windows apply as for g_spawn_command_line_sync().
	 *
	 * Params:
	 *     commandLine = a command line
	 *
	 * Returns: %TRUE on success, %FALSE if error is set
	 *
	 * Throws: GException on failure.
	 */
	public static bool commandLineAsync(string commandLine)
	{
		GError* err = null;

		auto __p = g_spawn_command_line_async(Str.toStringz(commandLine), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * A simple version of g_spawn_sync() with little-used parameters
	 * removed, taking a command line instead of an argument vector.
	 *
	 * See g_spawn_sync() for full details.
	 *
	 * The @command_line argument will be parsed by g_shell_parse_argv().
	 *
	 * Unlike g_spawn_sync(), the %G_SPAWN_SEARCH_PATH flag is enabled.
	 * Note that %G_SPAWN_SEARCH_PATH can have security implications, so
	 * consider using g_spawn_sync() directly if appropriate.
	 *
	 * Possible errors are those from g_spawn_sync() and those
	 * from g_shell_parse_argv().
	 *
	 * If @wait_status is non-%NULL, the platform-specific status of
	 * the child is stored there; see the documentation of
	 * g_spawn_check_wait_status() for how to use and interpret this.
	 * On Unix platforms, note that it is usually not equal
	 * to the integer passed to `exit()` or returned from `main()`.
	 *
	 * On Windows, please note the implications of g_shell_parse_argv()
	 * parsing @command_line. Parsing is done according to Unix shell rules, not
	 * Windows command interpreter rules.
	 * Space is a separator, and backslashes are
	 * special. Thus you cannot simply pass a @command_line containing
	 * canonical Windows paths, like "c:\\program files\\app\\app.exe", as
	 * the backslashes will be eaten, and the space will act as a
	 * separator. You need to enclose such paths with single quotes, like
	 * "'c:\\program files\\app\\app.exe' 'e:\\folder\\argument.txt'".
	 *
	 * Params:
	 *     commandLine = a command line
	 *     standardOutput = return location for child output
	 *     standardError = return location for child errors
	 *     waitStatus = return location for child wait status, as returned by waitpid()
	 *
	 * Returns: %TRUE on success, %FALSE if an error was set
	 *
	 * Throws: GException on failure.
	 */
	public static bool commandLineSync(string commandLine, out string standardOutput, out string standardError, out int waitStatus)
	{
		char* outstandardOutput = null;
		char* outstandardError = null;
		GError* err = null;

		auto __p = g_spawn_command_line_sync(Str.toStringz(commandLine), &outstandardOutput, &outstandardError, &waitStatus, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		standardOutput = Str.toString(outstandardOutput);
		standardError = Str.toString(outstandardError);

		return __p;
	}

	/** */
	public static GQuark errorQuark()
	{
		return g_spawn_error_quark();
	}

	/** */
	public static GQuark exitErrorQuark()
	{
		return g_spawn_exit_error_quark();
	}

	/**
	 * Executes a child synchronously (waits for the child to exit before returning).
	 *
	 * All output from the child is stored in @standard_output and @standard_error,
	 * if those parameters are non-%NULL. Note that you must set the
	 * %G_SPAWN_STDOUT_TO_DEV_NULL and %G_SPAWN_STDERR_TO_DEV_NULL flags when
	 * passing %NULL for @standard_output and @standard_error.
	 *
	 * If @wait_status is non-%NULL, the platform-specific status of
	 * the child is stored there; see the documentation of
	 * g_spawn_check_wait_status() for how to use and interpret this.
	 * On Unix platforms, note that it is usually not equal
	 * to the integer passed to `exit()` or returned from `main()`.
	 *
	 * Note that it is invalid to pass %G_SPAWN_DO_NOT_REAP_CHILD in
	 * @flags, and on POSIX platforms, the same restrictions as for
	 * g_child_watch_source_new() apply.
	 *
	 * If an error occurs, no data is returned in @standard_output,
	 * @standard_error, or @wait_status.
	 *
	 * This function calls g_spawn_async_with_pipes() internally; see that
	 * function for full details on the other parameters and details on
	 * how these functions work on Windows.
	 *
	 * Params:
	 *     workingDirectory = child's current working
	 *         directory, or %NULL to inherit parent's
	 *     argv = child's argument vector, which must be non-empty and %NULL-terminated
	 *     envp = child's environment, or %NULL to inherit parent's
	 *     flags = flags from #GSpawnFlags
	 *     childSetup = function to run in the child just before exec()
	 *     userData = user data for @child_setup
	 *     standardOutput = return location for child output, or %NULL
	 *     standardError = return location for child error messages, or %NULL
	 *     waitStatus = return location for child wait status, as returned by waitpid(), or %NULL
	 *
	 * Returns: %TRUE on success, %FALSE if an error was set
	 *
	 * Throws: GException on failure.
	 */
	public static bool sync(string workingDirectory, string[] argv, string[] envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, out string standardOutput, out string standardError, out int waitStatus)
	{
		char* outstandardOutput = null;
		char* outstandardError = null;
		GError* err = null;

		auto __p = g_spawn_sync(Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envp), flags, childSetup, userData, &outstandardOutput, &outstandardError, &waitStatus, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		standardOutput = Str.toString(outstandardOutput);
		standardError = Str.toString(outstandardError);

		return __p;
	}

	/**
	 * Executes a child program asynchronously.
	 *
	 * Identical to g_spawn_async_with_pipes_and_fds() but with `n_fds` set to zero,
	 * so no FD assignments are used.
	 *
	 * Params:
	 *     workingDirectory = child's current working directory, or %NULL to inherit parent's, in the GLib file name encoding
	 *     argv = child's argument vector, in the GLib file name encoding;
	 *         it must be non-empty and %NULL-terminated
	 *     envp = child's environment, or %NULL to inherit parent's, in the GLib file name encoding
	 *     flags = flags from #GSpawnFlags
	 *     childSetup = function to run in the child just before exec()
	 *     userData = user data for @child_setup
	 *     childPid = return location for child process ID, or %NULL
	 *     stdinFd = file descriptor to use for child's stdin, or `-1`
	 *     stdoutFd = file descriptor to use for child's stdout, or `-1`
	 *     stderrFd = file descriptor to use for child's stderr, or `-1`
	 *
	 * Returns: %TRUE on success, %FALSE if an error was set
	 *
	 * Since: 2.58
	 *
	 * Throws: GException on failure.
	 */
	public static bool asyncWithFds(string workingDirectory, string[] argv, string[] envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, out GPid childPid, int stdinFd, int stdoutFd, int stderrFd)
	{
		GError* err = null;

		auto __p = g_spawn_async_with_fds(Str.toStringz(workingDirectory), Str.toStringzArray(argv), Str.toStringzArray(envp), flags, childSetup, userData, &childPid, stdinFd, stdoutFd, stderrFd, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
