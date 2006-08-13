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
 * outFile = Spawn
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Spawn
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_spawn_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_spawn_async_with_pipes
 * imports:
 * 	- glib.ErrorG
 * 	- glib.MainLoop
 * 	- glib.Str
 * 	- std.thread
 * 	- std.stdio
 * 	- std.c.string;
 * structWrap:
 * 	- GMainLoop* -> MainLoop
 * local aliases:
 */

module glib.Spawn;

private import glib.typedefs;

private import lib.glib;

private import glib.ErrorG;
private import glib.MainLoop;
private import glib.Str;
private import std.thread;
private import std.stdio;
private import std.c.string;;

/**
 * Description
 */
public class Spawn
{
	
	char[] workingDirectory = ".";
	char[][] argv;
	char[][] envp;
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
	public this(char[] program, char[][] envp=null)
	{
		argv ~= program;
		this.envp = envp;
	}
	
	/**
	 * Creates a Spawn for execution.
	 */
	public this(char[][] program, char[][] envp=null)
	{
		argv = program;
		this.envp = envp;
	}
	
	/**
	 * Adds a delegate to be notified on the end of the child process.
	 * Params:
	 *    	delegate(int =
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
		if ( childPid != 0 )
		{
			closePid(childPid);
			childPid = 0;
		}
	}
	
	/**
	 * Adds a parameter to the execution program
	 */
	public void addParm(char[] parm)
	{
		argv ~= parm;
	}
	
	/**
	 * Gets the last error message
	 */
	public char[] getLastError()
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
	bool delegate(char[]) readOutput = null,
	bool delegate(char[]) readError = null )
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
			g_child_watch_add(childPid, cast(GChildWatchFunc)(&childWatchCallback), this);
			standardInput = fdopen(stdIn, "w");
			standardOutput = fdopen(stdOut, "r");
			standardError = fdopen(stdErr, "r");
			
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
		bool delegate(char[]) read;
		FILE* file;
		
		int lineCount;
		
		this(FILE* file, bool delegate (char[]) read )
		{
			this.file = file;
			this.read = read;
		}
		
		public int run()
		{
			char[] line = readLine(file);
			while( line !is null )
			{
				++lineCount;
				//writefln("Spawn.ReadFile.run line (%s) ========== >>>%s<<<", lineCount, line);
				//printf("Spawn.ReadFile.run line (%d) ========== >>>%.*s<<<", lineCount, line);
				if ( read !is null )
				{
					read(line);
				}
				line = readLine(file);
			}
			return 0;
		}
	}
	
	private char[] readLine(FILE* stream, int max=4096)
	{
		if ( feof(stream) )
		{
			if ( externalWatch !is null )
			{
				externalWatch(this);
			}
			return null;
		}
		char[] line;
		line.length = max+1;
		char* lineP = fgets(&line[0], max, stream);
		if ( lineP is null )
		{
			return "";
		}
		int l = strlen(&line[0]);
		if ( l > 0 ) --l;
		//printf("\nreadLine\n");
		//foreach ( char c ; line )
		//{
			//        printf("%c", c);
		//}
		//printf("\n\n");
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
	
	char[] getOutputString()
	{
		return Str.toString(strOutput);
	}
	
	char[] getErrorString()
	{
		return Str.toString(strError);
	}
	
	int getExitStatus()
	{
		return exitStatus;
	}
	
	public int commandLineSync()
	{
		char[] commandLine;
		foreach ( int count, char[] arg; argv)
		{
			if ( count > 0 )
			{
				commandLine ~= ' ';
			}
			commandLine ~= arg;
		}
		return g_spawn_command_line_sync(
		
		Str.toStringz(commandLine),
		&strOutput,
		&strError,
		&exitStatus,
		&error);
	}
	
	
	
	
	/**
	 */
	
	
	
	
	
	
	/**
	 * See g_spawn_async_with_pipes() for a full description; this function
	 * simply calls the g_spawn_async_with_pipes() without any pipes.
	 * working_directory:
	 *  child's current working directory, or NULL to inherit parent's
	 * argv:
	 *  child's argument vector
	 * envp:
	 *  child's environment, or NULL to inherit parent's
	 * flags:
	 *  flags from GSpawnFlags
	 * child_setup:
	 *  function to run in the child just before exec()
	 * user_data:
	 *  user data for child_setup
	 * child_pid:
	 *  return location for child process ID, or NULL
	 * error:
	 *  return location for error
	 * Returns:
	 *  TRUE on success, FALSE if error is set
	 */
	public static int async(char[] workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, GPid* childPid, GError** error)
	{
		// gboolean g_spawn_async (const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  GPid *child_pid,  GError **error);
		return g_spawn_async(Str.toStringz(workingDirectory), argv, envp, flags, childSetup, userData, childPid, error);
	}
	
	/**
	 * Executes a child synchronously (waits for the child to exit before returning).
	 * All output from the child is stored in standard_output and standard_error,
	 * if those parameters are non-NULL. If exit_status is non-NULL, the exit
	 * status of the child is stored there as it would be returned by
	 * waitpid(); standard UNIX macros such as WIFEXITED() and WEXITSTATUS()
	 * must be used to evaluate the exit status. If an error occurs, no data is
	 * returned in standard_output, standard_error, or exit_status.
	 * This function calls g_spawn_async_with_pipes() internally; see that
	 * function for full details on the other parameters and details on
	 * how these functions work on Windows.
	 * working_directory:
	 *  child's current working directory, or NULL to inherit parent's
	 * argv:
	 *  child's argument vector
	 * envp:
	 *  child's environment, or NULL to inherit parent's
	 * flags:
	 *  flags from GSpawnFlags
	 * child_setup:
	 *  function to run in the child just before exec()
	 * user_data:
	 *  user data for child_setup
	 * standard_output:
	 *  return location for child output
	 * standard_error:
	 *  return location for child error messages
	 * exit_status:
	 *  return location for child exit status, as returned by waitpid()
	 * error:
	 *  return location for error
	 * Returns:
	 *  TRUE on success, FALSE if an error was set.
	 */
	public static int sync(char[] workingDirectory, char** argv, char** envp, GSpawnFlags flags, GSpawnChildSetupFunc childSetup, void* userData, char** standardOutput, char** standardError, int* exitStatus, GError** error)
	{
		// gboolean g_spawn_sync (const gchar *working_directory,  gchar **argv,  gchar **envp,  GSpawnFlags flags,  GSpawnChildSetupFunc child_setup,  gpointer user_data,  gchar **standard_output,  gchar **standard_error,  gint *exit_status,  GError **error);
		return g_spawn_sync(Str.toStringz(workingDirectory), argv, envp, flags, childSetup, userData, standardOutput, standardError, exitStatus, error);
	}
	
	/**
	 * A simple version of g_spawn_async() that parses a command line with
	 * g_shell_parse_argv() and passes it to g_spawn_async(). Runs a
	 * command line in the background. Unlike g_spawn_async(), the
	 * G_SPAWN_SEARCH_PATH flag is enabled, other flags are not. Note
	 * that G_SPAWN_SEARCH_PATH can have security implications, so
	 * consider using g_spawn_async() directly if appropriate. Possible
	 * errors are those from g_shell_parse_argv() and g_spawn_async().
	 * The same concerns on Windows apply as for g_spawn_command_line_sync().
	 * command_line:
	 *  a command line
	 * error:
	 *  return location for errors
	 * Returns:
	 *  TRUE on success, FALSE if error is set.
	 */
	public static int commandLineAsync(char[] commandLine, GError** error)
	{
		// gboolean g_spawn_command_line_async (const gchar *command_line,  GError **error);
		return g_spawn_command_line_async(Str.toStringz(commandLine), error);
	}
	
	/**
	 * A simple version of g_spawn_sync() with little-used parameters
	 * removed, taking a command line instead of an argument vector. See
	 * g_spawn_sync() for full details. command_line will be parsed by
	 * g_shell_parse_argv(). Unlike g_spawn_sync(), the G_SPAWN_SEARCH_PATH flag
	 * is enabled. Note that G_SPAWN_SEARCH_PATH can have security
	 * implications, so consider using g_spawn_sync() directly if
	 * appropriate. Possible errors are those from g_spawn_sync() and those
	 * from g_shell_parse_argv().
	 * If exit_status is non-NULL, the exit status of the child is stored there as
	 * it would be returned by waitpid(); standard UNIX macros such as WIFEXITED()
	 * and WEXITSTATUS() must be used to evaluate the exit status.
	 * On Windows, please note the implications of g_shell_parse_argv()
	 * parsing command_line. Parsing is done according to Unix shell rules, not
	 * Windows command interpreter rules.
	 * Space is a separator, and backslashes are
	 * special. Thus you cannot simply pass a command_line containing
	 * canonical Windows paths, like "c:\\program files\\app\\app.exe", as
	 * the backslashes will be eaten, and the space will act as a
	 * separator. You need to enclose such paths with single quotes, like
	 * "'c:\\program files\\app\\app.exe' 'e:\\folder\\argument.txt'".
	 * command_line:
	 *  a command line
	 * standard_output:
	 *  return location for child output
	 * standard_error:
	 *  return location for child errors
	 * exit_status:
	 *  return location for child exit status, as returned by waitpid()
	 * error:
	 *  return location for errors
	 * Returns:
	 *  TRUE on success, FALSE if an error was set
	 */
	public static int commandLineSync(char[] commandLine, char** standardOutput, char** standardError, int* exitStatus, GError** error)
	{
		// gboolean g_spawn_command_line_sync (const gchar *command_line,  gchar **standard_output,  gchar **standard_error,  gint *exit_status,  GError **error);
		return g_spawn_command_line_sync(Str.toStringz(commandLine), standardOutput, standardError, exitStatus, error);
	}
	
	/**
	 * On some platforms, notably WIN32, the GPid type represents a resource
	 * which must be closed to prevent resource leaking. g_spawn_close_pid()
	 * is provided for this purpose. It should be used on all platforms, even
	 * though it doesn't do anything under UNIX.
	 * pid:
	 *  The process identifier to close
	 */
	public static void closePid(GPid pid)
	{
		// void g_spawn_close_pid (GPid pid);
		g_spawn_close_pid(pid);
	}
}
