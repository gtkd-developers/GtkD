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


module gio.ApplicationCommandLine;

private import gio.FileIF;
private import gio.InputStream;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.Variant;
private import glib.VariantDict;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GApplicationCommandLine represents a command-line invocation of
 * an application.  It is created by #GApplication and emitted
 * in the #GApplication::command-line signal and virtual function.
 * 
 * The class contains the list of arguments that the program was invoked
 * with.  It is also possible to query if the commandline invocation was
 * local (ie: the current process is running in direct response to the
 * invocation) or remote (ie: some other process forwarded the
 * commandline to this process).
 * 
 * The GApplicationCommandLine object can provide the @argc and @argv
 * parameters for use with the #GOptionContext command-line parsing API,
 * with the g_application_command_line_get_arguments() function. See
 * [gapplication-example-cmdline3.c][gapplication-example-cmdline3]
 * for an example.
 * 
 * The exit status of the originally-invoked process may be set and
 * messages can be printed to stdout or stderr of that process.  The
 * lifecycle of the originally-invoked process is tied to the lifecycle
 * of this object (ie: the process exits when the last reference is
 * dropped).
 * 
 * The main use for #GApplicationCommandLine (and the
 * #GApplication::command-line signal) is 'Emacs server' like use cases:
 * You can set the `EDITOR` environment variable to have e.g. git use
 * your favourite editor to edit commit messages, and if you already
 * have an instance of the editor running, the editing will happen
 * in the running instance, instead of opening a new one. An important
 * aspect of this use case is that the process that gets started by git
 * does not return until the editing is done.
 * 
 * Normally, the commandline is completely handled in the
 * #GApplication::command-line handler. The launching instance exits
 * once the signal handler in the primary instance has returned, and
 * the return value of the signal handler becomes the exit status
 * of the launching instance.
 * |[<!-- language="C" -->
 * static int
 * command_line (GApplication            *application,
 * GApplicationCommandLine *cmdline)
 * {
 * gchar **argv;
 * gint argc;
 * gint i;
 * 
 * argv = g_application_command_line_get_arguments (cmdline, &argc);
 * 
 * g_application_command_line_print (cmdline,
 * "This text is written back\n"
 * "to stdout of the caller\n");
 * 
 * for (i = 0; i < argc; i++)
 * g_print ("argument %d: %s\n", i, argv[i]);
 * 
 * g_strfreev (argv);
 * 
 * return 0;
 * }
 * ]|
 * The complete example can be found here:
 * [gapplication-example-cmdline.c](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/tests/gapplication-example-cmdline.c)
 * 
 * In more complicated cases, the handling of the commandline can be
 * split between the launcher and the primary instance.
 * |[<!-- language="C" -->
 * static gboolean
 * test_local_cmdline (GApplication   *application,
 * gchar        ***arguments,
 * gint           *exit_status)
 * {
 * gint i, j;
 * gchar **argv;
 * 
 * argv = *arguments;
 * 
 * if (argv[0] == NULL)
 * {
 * *exit_status = 0;
 * return FALSE;
 * }
 * 
 * i = 1;
 * while (argv[i])
 * {
 * if (g_str_has_prefix (argv[i], "--local-"))
 * {
 * g_print ("handling argument %s locally\n", argv[i]);
 * g_free (argv[i]);
 * for (j = i; argv[j]; j++)
 * argv[j] = argv[j + 1];
 * }
 * else
 * {
 * g_print ("not handling argument %s locally\n", argv[i]);
 * i++;
 * }
 * }
 * 
 * *exit_status = 0;
 * 
 * return FALSE;
 * }
 * 
 * static void
 * test_application_class_init (TestApplicationClass *class)
 * {
 * G_APPLICATION_CLASS (class)->local_command_line = test_local_cmdline;
 * 
 * ...
 * }
 * ]|
 * In this example of split commandline handling, options that start
 * with `--local-` are handled locally, all other options are passed
 * to the #GApplication::command-line handler which runs in the primary
 * instance.
 * 
 * The complete example can be found here:
 * [gapplication-example-cmdline2.c](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/tests/gapplication-example-cmdline2.c)
 * 
 * If handling the commandline requires a lot of work, it may
 * be better to defer it.
 * |[<!-- language="C" -->
 * static gboolean
 * my_cmdline_handler (gpointer data)
 * {
 * GApplicationCommandLine *cmdline = data;
 * 
 * // do the heavy lifting in an idle
 * 
 * g_application_command_line_set_exit_status (cmdline, 0);
 * g_object_unref (cmdline); // this releases the application
 * 
 * return G_SOURCE_REMOVE;
 * }
 * 
 * static int
 * command_line (GApplication            *application,
 * GApplicationCommandLine *cmdline)
 * {
 * // keep the application running until we are done with this commandline
 * g_application_hold (application);
 * 
 * g_object_set_data_full (G_OBJECT (cmdline),
 * "application", application,
 * (GDestroyNotify)g_application_release);
 * 
 * g_object_ref (cmdline);
 * g_idle_add (my_cmdline_handler, cmdline);
 * 
 * return 0;
 * }
 * ]|
 * In this example the commandline is not completely handled before
 * the #GApplication::command-line handler returns. Instead, we keep
 * a reference to the #GApplicationCommandLine object and handle it
 * later (in this example, in an idle). Note that it is necessary to
 * hold the application until you are done with the commandline.
 * 
 * The complete example can be found here:
 * [gapplication-example-cmdline3.c](https://gitlab.gnome.org/GNOME/glib/-/blob/HEAD/gio/tests/gapplication-example-cmdline3.c)
 */
public class ApplicationCommandLine : ObjectG
{
	/** the main Gtk struct */
	protected GApplicationCommandLine* gApplicationCommandLine;

	/** Get the main Gtk struct */
	public GApplicationCommandLine* getApplicationCommandLineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gApplicationCommandLine;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gApplicationCommandLine;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GApplicationCommandLine* gApplicationCommandLine, bool ownedRef = false)
	{
		this.gApplicationCommandLine = gApplicationCommandLine;
		super(cast(GObject*)gApplicationCommandLine, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_application_command_line_get_type();
	}

	/**
	 * Creates a #GFile corresponding to a filename that was given as part
	 * of the invocation of @cmdline.
	 *
	 * This differs from g_file_new_for_commandline_arg() in that it
	 * resolves relative pathnames using the current working directory of
	 * the invoking process rather than the local process.
	 *
	 * Params:
	 *     arg = an argument from @cmdline
	 *
	 * Returns: a new #GFile
	 *
	 * Since: 2.36
	 */
	public FileIF createFileForArg(string arg)
	{
		auto __p = g_application_command_line_create_file_for_arg(gApplicationCommandLine, Str.toStringz(arg));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FileIF)(cast(GFile*) __p, true);
	}

	/**
	 * Gets the list of arguments that was passed on the command line.
	 *
	 * The strings in the array may contain non-UTF-8 data on UNIX (such as
	 * filenames or arguments given in the system locale) but are always in
	 * UTF-8 on Windows.
	 *
	 * If you wish to use the return value with #GOptionContext, you must
	 * use g_option_context_parse_strv().
	 *
	 * The return value is %NULL-terminated and should be freed using
	 * g_strfreev().
	 *
	 * Returns: the string array containing the arguments (the argv)
	 *
	 * Since: 2.28
	 */
	public string[] getArguments()
	{
		int argc;

		auto retStr = g_application_command_line_get_arguments(gApplicationCommandLine, &argc);

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr, argc);
	}

	/**
	 * Gets the working directory of the command line invocation.
	 * The string may contain non-utf8 data.
	 *
	 * It is possible that the remote application did not send a working
	 * directory, so this may be %NULL.
	 *
	 * The return value should not be modified or freed and is valid for as
	 * long as @cmdline exists.
	 *
	 * Returns: the current directory, or %NULL
	 *
	 * Since: 2.28
	 */
	public string getCwd()
	{
		return Str.toString(g_application_command_line_get_cwd(gApplicationCommandLine));
	}

	/**
	 * Gets the contents of the 'environ' variable of the command line
	 * invocation, as would be returned by g_get_environ(), ie as a
	 * %NULL-terminated list of strings in the form 'NAME=VALUE'.
	 * The strings may contain non-utf8 data.
	 *
	 * The remote application usually does not send an environment.  Use
	 * %G_APPLICATION_SEND_ENVIRONMENT to affect that.  Even with this flag
	 * set it is possible that the environment is still not available (due
	 * to invocation messages from other applications).
	 *
	 * The return value should not be modified or freed and is valid for as
	 * long as @cmdline exists.
	 *
	 * See g_application_command_line_getenv() if you are only interested
	 * in the value of a single environment variable.
	 *
	 * Returns: the environment strings, or %NULL if they were not sent
	 *
	 * Since: 2.28
	 */
	public string[] getEnviron()
	{
		return Str.toStringArray(g_application_command_line_get_environ(gApplicationCommandLine));
	}

	/**
	 * Gets the exit status of @cmdline.  See
	 * g_application_command_line_set_exit_status() for more information.
	 *
	 * Returns: the exit status
	 *
	 * Since: 2.28
	 */
	public int getExitStatus()
	{
		return g_application_command_line_get_exit_status(gApplicationCommandLine);
	}

	/**
	 * Determines if @cmdline represents a remote invocation.
	 *
	 * Returns: %TRUE if the invocation was remote
	 *
	 * Since: 2.28
	 */
	public bool getIsRemote()
	{
		return g_application_command_line_get_is_remote(gApplicationCommandLine) != 0;
	}

	/**
	 * Gets the options there were passed to g_application_command_line().
	 *
	 * If you did not override local_command_line() then these are the same
	 * options that were parsed according to the #GOptionEntrys added to the
	 * application with g_application_add_main_option_entries() and possibly
	 * modified from your GApplication::handle-local-options handler.
	 *
	 * If no options were sent then an empty dictionary is returned so that
	 * you don't need to check for %NULL.
	 *
	 * Returns: a #GVariantDict with the options
	 *
	 * Since: 2.40
	 */
	public VariantDict getOptionsDict()
	{
		auto __p = g_application_command_line_get_options_dict(gApplicationCommandLine);

		if(__p is null)
		{
			return null;
		}

		return new VariantDict(cast(GVariantDict*) __p);
	}

	/**
	 * Gets the platform data associated with the invocation of @cmdline.
	 *
	 * This is a #GVariant dictionary containing information about the
	 * context in which the invocation occurred.  It typically contains
	 * information like the current working directory and the startup
	 * notification ID.
	 *
	 * For local invocation, it will be %NULL.
	 *
	 * Returns: the platform data, or %NULL
	 *
	 * Since: 2.28
	 */
	public Variant getPlatformData()
	{
		auto __p = g_application_command_line_get_platform_data(gApplicationCommandLine);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p, true);
	}

	/**
	 * Gets the stdin of the invoking process.
	 *
	 * The #GInputStream can be used to read data passed to the standard
	 * input of the invoking process.
	 * This doesn't work on all platforms.  Presently, it is only available
	 * on UNIX when using a D-Bus daemon capable of passing file descriptors.
	 * If stdin is not available then %NULL will be returned.  In the
	 * future, support may be expanded to other platforms.
	 *
	 * You must only call this function once per commandline invocation.
	 *
	 * Returns: a #GInputStream for stdin
	 *
	 * Since: 2.34
	 */
	public InputStream getStdin()
	{
		auto __p = g_application_command_line_get_stdin(gApplicationCommandLine);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p, true);
	}

	/**
	 * Gets the value of a particular environment variable of the command
	 * line invocation, as would be returned by g_getenv().  The strings may
	 * contain non-utf8 data.
	 *
	 * The remote application usually does not send an environment.  Use
	 * %G_APPLICATION_SEND_ENVIRONMENT to affect that.  Even with this flag
	 * set it is possible that the environment is still not available (due
	 * to invocation messages from other applications).
	 *
	 * The return value should not be modified or freed and is valid for as
	 * long as @cmdline exists.
	 *
	 * Params:
	 *     name = the environment variable to get
	 *
	 * Returns: the value of the variable, or %NULL if unset or unsent
	 *
	 * Since: 2.28
	 */
	public string getenv(string name)
	{
		return Str.toString(g_application_command_line_getenv(gApplicationCommandLine, Str.toStringz(name)));
	}

	/**
	 * Sets the exit status that will be used when the invoking process
	 * exits.
	 *
	 * The return value of the #GApplication::command-line signal is
	 * passed to this function when the handler returns.  This is the usual
	 * way of setting the exit status.
	 *
	 * In the event that you want the remote invocation to continue running
	 * and want to decide on the exit status in the future, you can use this
	 * call.  For the case of a remote invocation, the remote process will
	 * typically exit when the last reference is dropped on @cmdline.  The
	 * exit status of the remote process will be equal to the last value
	 * that was set with this function.
	 *
	 * In the case that the commandline invocation is local, the situation
	 * is slightly more complicated.  If the commandline invocation results
	 * in the mainloop running (ie: because the use-count of the application
	 * increased to a non-zero value) then the application is considered to
	 * have been 'successful' in a certain sense, and the exit status is
	 * always zero.  If the application use count is zero, though, the exit
	 * status of the local #GApplicationCommandLine is used.
	 *
	 * Params:
	 *     exitStatus = the exit status
	 *
	 * Since: 2.28
	 */
	public void setExitStatus(int exitStatus)
	{
		g_application_command_line_set_exit_status(gApplicationCommandLine, exitStatus);
	}
}
