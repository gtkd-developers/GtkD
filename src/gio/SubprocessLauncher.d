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


module gio.SubprocessLauncher;

private import gio.Subprocess;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * This class contains a set of options for launching child processes,
 * such as where its standard input and output will be directed, the
 * argument list, the environment, and more.
 * 
 * While the #GSubprocess class has high level functions covering
 * popular cases, use of this class allows access to more advanced
 * options.  It can also be used to launch multiple subprocesses with
 * a similar configuration.
 *
 * Since: 2.40
 */
public class SubprocessLauncher : ObjectG
{
	/** the main Gtk struct */
	protected GSubprocessLauncher* gSubprocessLauncher;

	/** Get the main Gtk struct */
	public GSubprocessLauncher* getSubprocessLauncherStruct()
	{
		return gSubprocessLauncher;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSubprocessLauncher;
	}

	protected override void setStruct(GObject* obj)
	{
		gSubprocessLauncher = cast(GSubprocessLauncher*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSubprocessLauncher* gSubprocessLauncher, bool ownedRef = false)
	{
		this.gSubprocessLauncher = gSubprocessLauncher;
		super(cast(GObject*)gSubprocessLauncher, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_subprocess_launcher_get_type();
	}

	/**
	 * Creates a new #GSubprocessLauncher.
	 *
	 * The launcher is created with the default options.  A copy of the
	 * environment of the calling process is made at the time of this call
	 * and will be used as the environment that the process is launched in.
	 *
	 * Params:
	 *     flags = #GSubprocessFlags
	 *
	 * Since: 2.40
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(GSubprocessFlags flags)
	{
		auto p = g_subprocess_launcher_new(flags);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GSubprocessLauncher*) p, true);
	}

	/**
	 * Returns the value of the environment variable @variable in the
	 * environment of processes launched from this launcher.
	 *
	 * On UNIX, the returned string can be an arbitrary byte string.
	 * On Windows, it will be UTF-8.
	 *
	 * Params:
	 *     variable = the environment variable to get
	 *
	 * Return: the value of the environment variable, %NULL if unset
	 *
	 * Since: 2.40
	 */
	public string getenv(string variable)
	{
		return Str.toString(g_subprocess_launcher_getenv(gSubprocessLauncher, Str.toStringz(variable)));
	}

	/**
	 * Sets up a child setup function.
	 *
	 * The child setup function will be called after fork() but before
	 * exec() on the child's side.
	 *
	 * @destroy_notify will not be automatically called on the child's side
	 * of the fork().  It will only be called when the last reference on the
	 * #GSubprocessLauncher is dropped or when a new child setup function is
	 * given.
	 *
	 * %NULL can be given as @child_setup to disable the functionality.
	 *
	 * Child setup functions are only available on UNIX.
	 *
	 * Params:
	 *     childSetup = a #GSpawnChildSetupFunc to use as the child setup function
	 *     userData = user data for @child_setup
	 *     destroyNotify = a #GDestroyNotify for @user_data
	 *
	 * Since: 2.40
	 */
	public void setChildSetup(GSpawnChildSetupFunc childSetup, void* userData, GDestroyNotify destroyNotify)
	{
		g_subprocess_launcher_set_child_setup(gSubprocessLauncher, childSetup, userData, destroyNotify);
	}

	/**
	 * Sets the current working directory that processes will be launched
	 * with.
	 *
	 * By default processes are launched with the current working directory
	 * of the launching process at the time of launch.
	 *
	 * Params:
	 *     cwd = the cwd for launched processes
	 *
	 * Since: 2.40
	 */
	public void setCwd(string cwd)
	{
		g_subprocess_launcher_set_cwd(gSubprocessLauncher, Str.toStringz(cwd));
	}

	/**
	 * Replace the entire environment of processes launched from this
	 * launcher with the given 'environ' variable.
	 *
	 * Typically you will build this variable by using g_listenv() to copy
	 * the process 'environ' and using the functions g_environ_setenv(),
	 * g_environ_unsetenv(), etc.
	 *
	 * As an alternative, you can use g_subprocess_launcher_setenv(),
	 * g_subprocess_launcher_unsetenv(), etc.
	 *
	 * On UNIX, all strings in this array can be arbitrary byte strings.
	 * On Windows, they should be in UTF-8.
	 *
	 * Params:
	 *     env = the replacement environment
	 *
	 * Since: 2.40
	 */
	public void setEnviron(string[] env)
	{
		g_subprocess_launcher_set_environ(gSubprocessLauncher, Str.toStringzArray(env));
	}

	/**
	 * Sets the flags on the launcher.
	 *
	 * The default flags are %G_SUBPROCESS_FLAGS_NONE.
	 *
	 * You may not set flags that specify conflicting options for how to
	 * handle a particular stdio stream (eg: specifying both
	 * %G_SUBPROCESS_FLAGS_STDIN_PIPE and
	 * %G_SUBPROCESS_FLAGS_STDIN_INHERIT).
	 *
	 * You may also not set a flag that conflicts with a previous call to a
	 * function like g_subprocess_launcher_set_stdin_file_path() or
	 * g_subprocess_launcher_take_stdout_fd().
	 *
	 * Params:
	 *     flags = #GSubprocessFlags
	 *
	 * Since: 2.40
	 */
	public void setFlags(GSubprocessFlags flags)
	{
		g_subprocess_launcher_set_flags(gSubprocessLauncher, flags);
	}

	/**
	 * Sets the file path to use as the stderr for spawned processes.
	 *
	 * If @path is %NULL then any previously given path is unset.
	 *
	 * The file will be created or truncated when the process is spawned, as
	 * would be the case if using '2>' at the shell.
	 *
	 * If you want to send both stdout and stderr to the same file then use
	 * %G_SUBPROCESS_FLAGS_STDERR_MERGE.
	 *
	 * You may not set a stderr file path if a stderr fd is already set or
	 * if the launcher flags contain any flags directing stderr elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     path = a filename or %NULL
	 *
	 * Since: 2.40
	 */
	public void setStderrFilePath(string path)
	{
		g_subprocess_launcher_set_stderr_file_path(gSubprocessLauncher, Str.toStringz(path));
	}

	/**
	 * Sets the file path to use as the stdin for spawned processes.
	 *
	 * If @path is %NULL then any previously given path is unset.
	 *
	 * The file must exist or spawning the process will fail.
	 *
	 * You may not set a stdin file path if a stdin fd is already set or if
	 * the launcher flags contain any flags directing stdin elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     path = a filename or %NULL
	 *
	 * Since: 2.40
	 */
	public void setStdinFilePath(string path)
	{
		g_subprocess_launcher_set_stdin_file_path(gSubprocessLauncher, Str.toStringz(path));
	}

	/**
	 * Sets the file path to use as the stdout for spawned processes.
	 *
	 * If @path is %NULL then any previously given path is unset.
	 *
	 * The file will be created or truncated when the process is spawned, as
	 * would be the case if using '>' at the shell.
	 *
	 * You may not set a stdout file path if a stdout fd is already set or
	 * if the launcher flags contain any flags directing stdout elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     path = a filename or %NULL
	 *
	 * Since: 2.40
	 */
	public void setStdoutFilePath(string path)
	{
		g_subprocess_launcher_set_stdout_file_path(gSubprocessLauncher, Str.toStringz(path));
	}

	/**
	 * Sets the environment variable @variable in the environment of
	 * processes launched from this launcher.
	 *
	 * On UNIX, both the variable's name and value can be arbitrary byte
	 * strings, except that the variable's name cannot contain '='.
	 * On Windows, they should be in UTF-8.
	 *
	 * Params:
	 *     variable = the environment variable to set, must not contain '='
	 *     value = the new value for the variable
	 *     overwrite = whether to change the variable if it already exists
	 *
	 * Since: 2.40
	 */
	public void setenv(string variable, string value, bool overwrite)
	{
		g_subprocess_launcher_setenv(gSubprocessLauncher, Str.toStringz(variable), Str.toStringz(value), overwrite);
	}

	/**
	 * Creates a #GSubprocess given a provided array of arguments.
	 *
	 * Params:
	 *     argv = Command line arguments
	 *
	 * Return: A new #GSubprocess, or %NULL on error (and @error will be set)
	 *
	 * Since: 2.40
	 *
	 * Throws: GException on failure.
	 */
	public Subprocess spawnv(string[] argv)
	{
		GError* err = null;
		
		auto p = g_subprocess_launcher_spawnv(gSubprocessLauncher, Str.toStringzArray(argv), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Subprocess)(cast(GSubprocess*) p, true);
	}

	/**
	 * Transfer an arbitrary file descriptor from parent process to the
	 * child.  This function takes "ownership" of the fd; it will be closed
	 * in the parent when @self is freed.
	 *
	 * By default, all file descriptors from the parent will be closed.
	 * This function allows you to create (for example) a custom pipe() or
	 * socketpair() before launching the process, and choose the target
	 * descriptor in the child.
	 *
	 * An example use case is GNUPG, which has a command line argument
	 * --passphrase-fd providing a file descriptor number where it expects
	 * the passphrase to be written.
	 *
	 * Params:
	 *     sourceFd = File descriptor in parent process
	 *     targetFd = Target descriptor for child process
	 */
	public void takeFd(int sourceFd, int targetFd)
	{
		g_subprocess_launcher_take_fd(gSubprocessLauncher, sourceFd, targetFd);
	}

	/**
	 * Sets the file descriptor to use as the stderr for spawned processes.
	 *
	 * If @fd is -1 then any previously given fd is unset.
	 *
	 * Note that the default behaviour is to pass stderr through to the
	 * stderr of the parent process.
	 *
	 * The passed @fd belongs to the #GSubprocessLauncher.  It will be
	 * automatically closed when the launcher is finalized.  The file
	 * descriptor will also be closed on the child side when executing the
	 * spawned process.
	 *
	 * You may not set a stderr fd if a stderr file path is already set or
	 * if the launcher flags contain any flags directing stderr elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     fd = a file descriptor, or -1
	 *
	 * Since: 2.40
	 */
	public void takeStderrFd(int fd)
	{
		g_subprocess_launcher_take_stderr_fd(gSubprocessLauncher, fd);
	}

	/**
	 * Sets the file descriptor to use as the stdin for spawned processes.
	 *
	 * If @fd is -1 then any previously given fd is unset.
	 *
	 * Note that if your intention is to have the stdin of the calling
	 * process inherited by the child then %G_SUBPROCESS_FLAGS_STDIN_INHERIT
	 * is a better way to go about doing that.
	 *
	 * The passed @fd is noted but will not be touched in the current
	 * process.  It is therefore necessary that it be kept open by the
	 * caller until the subprocess is spawned.  The file descriptor will
	 * also not be explicitly closed on the child side, so it must be marked
	 * O_CLOEXEC if that's what you want.
	 *
	 * You may not set a stdin fd if a stdin file path is already set or if
	 * the launcher flags contain any flags directing stdin elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     fd = a file descriptor, or -1
	 *
	 * Since: 2.40
	 */
	public void takeStdinFd(int fd)
	{
		g_subprocess_launcher_take_stdin_fd(gSubprocessLauncher, fd);
	}

	/**
	 * Sets the file descriptor to use as the stdout for spawned processes.
	 *
	 * If @fd is -1 then any previously given fd is unset.
	 *
	 * Note that the default behaviour is to pass stdout through to the
	 * stdout of the parent process.
	 *
	 * The passed @fd is noted but will not be touched in the current
	 * process.  It is therefore necessary that it be kept open by the
	 * caller until the subprocess is spawned.  The file descriptor will
	 * also not be explicitly closed on the child side, so it must be marked
	 * O_CLOEXEC if that's what you want.
	 *
	 * You may not set a stdout fd if a stdout file path is already set or
	 * if the launcher flags contain any flags directing stdout elsewhere.
	 *
	 * This feature is only available on UNIX.
	 *
	 * Params:
	 *     fd = a file descriptor, or -1
	 *
	 * Since: 2.40
	 */
	public void takeStdoutFd(int fd)
	{
		g_subprocess_launcher_take_stdout_fd(gSubprocessLauncher, fd);
	}

	/**
	 * Removes the environment variable @variable from the environment of
	 * processes launched from this launcher.
	 *
	 * On UNIX, the variable's name can be an arbitrary byte string not
	 * containing '='. On Windows, it should be in UTF-8.
	 *
	 * Params:
	 *     variable = the environment variable to unset, must not contain '='
	 *
	 * Since: 2.40
	 */
	public void unsetenv(string variable)
	{
		g_subprocess_launcher_unsetenv(gSubprocessLauncher, Str.toStringz(variable));
	}
}
