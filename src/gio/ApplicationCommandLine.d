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
 * inFile  = GApplicationCommandLine.html
 * outPack = gio
 * outFile = ApplicationCommandLine
 * strct   = GApplicationCommandLine
 * realStrct=
 * ctorStrct=
 * clss    = ApplicationCommandLine
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_application_command_line_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.Variant
 * 	- gio.File
 * 	- gio.InputStream
 * structWrap:
 * 	- GFile* -> File
 * 	- GInputStream* -> InputStream
 * 	- GVariant* -> Variant
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ApplicationCommandLine;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.Variant;
private import gio.File;
private import gio.InputStream;



private import gobject.ObjectG;

/**
 * GApplicationCommandLine represents a command-line invocation of
 * an application. It is created by GApplication and emitted
 * in the "command-line" signal and virtual function.
 *
 * The class contains the list of arguments that the program was invoked
 * with. It is also possible to query if the commandline invocation was
 * local (ie: the current process is running in direct response to the
 * invocation) or remote (ie: some other process forwarded the
 * commandline to this process).
 *
 * The GApplicationCommandLine object can provide the argc and argv
 * parameters for use with the GOptionContext command-line parsing API,
 * with the g_application_command_line_get_arguments() function. See
 *  Example 24, “Deferred commandline handling” for an example.
 *
 * The exit status of the originally-invoked process may be set and
 * messages can be printed to stdout or stderr of that process. The
 * lifecycle of the originally-invoked process is tied to the lifecycle
 * of this object (ie: the process exits when the last reference is
 * dropped).
 *
 * The main use for GApplicationCommandLine (and the
 * "command-line" signal) is 'Emacs server' like use cases:
 * You can set the EDITOR environment variable to have
 * e.g. git use your favourite editor to edit commit messages, and if you
 * already have an instance of the editor running, the editing will happen
 * in the running instance, instead of opening a new one. An important
 * aspect of this use case is that the process that gets started by git
 * does not return until the editing is done.
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 *
 * $(DDOC_COMMENT example)
 */
public class ApplicationCommandLine : ObjectG
{
	
	/** the main Gtk struct */
	protected GApplicationCommandLine* gApplicationCommandLine;
	
	
	public GApplicationCommandLine* getApplicationCommandLineStruct()
	{
		return gApplicationCommandLine;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gApplicationCommandLine;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GApplicationCommandLine* gApplicationCommandLine)
	{
		super(cast(GObject*)gApplicationCommandLine);
		this.gApplicationCommandLine = gApplicationCommandLine;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gApplicationCommandLine = cast(GApplicationCommandLine*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the list of arguments that was passed on the command line.
	 * The strings in the array may contain non-utf8 data.
	 * The return value is NULL-terminated and should be freed using
	 * g_strfreev().
	 * Since 2.28
	 * Returns: the string array containing the arguments (the argv). [array length=argc][transfer full]
	 */
	public string[] getArguments()
	{
		// gchar ** g_application_command_line_get_arguments  (GApplicationCommandLine *cmdline,  int *argc);
		int argc;
		auto p = g_application_command_line_get_arguments(gApplicationCommandLine, &argc);
		
		string[] strArray = null;
		foreach ( cstr; p[0 .. argc] )
		{
			strArray ~= Str.toString(cstr);
		}
		
		return strArray;
	}
	
	/**
	 * Gets the working directory of the command line invocation.
	 * The string may contain non-utf8 data.
	 * It is possible that the remote application did not send a working
	 * directory, so this may be NULL.
	 * The return value should not be modified or freed and is valid for as
	 * long as cmdline exists.
	 * Since 2.28
	 * Returns: the current directory, or NULL
	 */
	public string getCwd()
	{
		// const gchar * g_application_command_line_get_cwd (GApplicationCommandLine *cmdline);
		return Str.toString(g_application_command_line_get_cwd(gApplicationCommandLine));
	}
	
	/**
	 * Gets the contents of the 'environ' variable of the command line
	 * invocation, as would be returned by g_get_environ(), ie as a
	 * NULL-terminated list of strings in the form 'NAME=VALUE'.
	 * The strings may contain non-utf8 data.
	 * The remote application usually does not send an environment. Use
	 * G_APPLICATION_SEND_ENVIRONMENT to affect that. Even with this flag
	 * set it is possible that the environment is still not available (due
	 * to invocation messages from other applications).
	 * The return value should not be modified or freed and is valid for as
	 * long as cmdline exists.
	 * See g_application_command_line_getenv() if you are only interested
	 * in the value of a single environment variable.
	 * Since 2.28
	 * Returns: the environment strings, or NULL if they were not sent. [array zero-terminated=1][transfer none]
	 */
	public string[] getEnviron()
	{
		// const gchar * const * g_application_command_line_get_environ  (GApplicationCommandLine *cmdline);
		return Str.toStringArray(g_application_command_line_get_environ(gApplicationCommandLine));
	}
	
	/**
	 * Gets the stdin of the invoking process.
	 * The GInputStream can be used to read data passed to the standard
	 * input of the invoking process.
	 * This doesn't work on all platforms. Presently, it is only available
	 * on UNIX when using a DBus daemon capable of passing file descriptors.
	 * If stdin is not available then NULL will be returned. In the
	 * future, support may be expanded to other platforms.
	 * You must only call this function once per commandline invocation.
	 * Since 2.34
	 * Returns: a GInputStream for stdin. [transfer full]
	 */
	public InputStream getStdin()
	{
		// GInputStream * g_application_command_line_get_stdin  (GApplicationCommandLine *cmdline);
		auto p = g_application_command_line_get_stdin(gApplicationCommandLine);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) p);
	}
	
	/**
	 * Creates a GFile corresponding to a filename that was given as part
	 * of the invocation of cmdline.
	 * This differs from g_file_new_for_commandline_arg() in that it
	 * resolves relative pathnames using the current working directory of
	 * the invoking process rather than the local process.
	 * Since 2.36
	 * Params:
	 * arg = an argument from cmdline
	 * Returns: a new GFile. [transfer full]
	 */
	public File createFileForArg(string arg)
	{
		// GFile * g_application_command_line_create_file_for_arg  (GApplicationCommandLine *cmdline,  const gchar *arg);
		auto p = g_application_command_line_create_file_for_arg(gApplicationCommandLine, Str.toStringz(arg));
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(File)(cast(GFile*) p);
	}
	
	/**
	 * Gets the value of a particular environment variable of the command
	 * line invocation, as would be returned by g_getenv(). The strings may
	 * contain non-utf8 data.
	 * The remote application usually does not send an environment. Use
	 * G_APPLICATION_SEND_ENVIRONMENT to affect that. Even with this flag
	 * set it is possible that the environment is still not available (due
	 * to invocation messages from other applications).
	 * The return value should not be modified or freed and is valid for as
	 * long as cmdline exists.
	 * Since 2.28
	 * Params:
	 * name = the environment variable to get
	 * Returns: the value of the variable, or NULL if unset or unsent
	 */
	public string getenv(string name)
	{
		// const gchar * g_application_command_line_getenv (GApplicationCommandLine *cmdline,  const gchar *name);
		return Str.toString(g_application_command_line_getenv(gApplicationCommandLine, Str.toStringz(name)));
	}
	
	/**
	 * Determines if cmdline represents a remote invocation.
	 * Since 2.28
	 * Returns: TRUE if the invocation was remote
	 */
	public int getIsRemote()
	{
		// gboolean g_application_command_line_get_is_remote  (GApplicationCommandLine *cmdline);
		return g_application_command_line_get_is_remote(gApplicationCommandLine);
	}
	
	/**
	 * Gets the platform data associated with the invocation of cmdline.
	 * This is a GVariant dictionary containing information about the
	 * context in which the invocation occurred. It typically contains
	 * information like the current working directory and the startup
	 * notification ID.
	 * For local invocation, it will be NULL.
	 * Since 2.28
	 * Returns: the platform data, or NULL. [allow-none]
	 */
	public Variant getPlatformData()
	{
		// GVariant * g_application_command_line_get_platform_data  (GApplicationCommandLine *cmdline);
		auto p = g_application_command_line_get_platform_data(gApplicationCommandLine);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Sets the exit status that will be used when the invoking process
	 * exits.
	 * The return value of the "command-line" signal is
	 * passed to this function when the handler returns. This is the usual
	 * way of setting the exit status.
	 * In the event that you want the remote invocation to continue running
	 * and want to decide on the exit status in the future, you can use this
	 * call. For the case of a remote invocation, the remote process will
	 * typically exit when the last reference is dropped on cmdline. The
	 * exit status of the remote process will be equal to the last value
	 * that was set with this function.
	 * In the case that the commandline invocation is local, the situation
	 * is slightly more complicated. If the commandline invocation results
	 * in the mainloop running (ie: because the use-count of the application
	 * increased to a non-zero value) then the application is considered to
	 * have been 'successful' in a certain sense, and the exit status is
	 * always zero. If the application use count is zero, though, the exit
	 * status of the local GApplicationCommandLine is used.
	 * Since 2.28
	 * Params:
	 * exitStatus = the exit status
	 */
	public void setExitStatus(int exitStatus)
	{
		// void g_application_command_line_set_exit_status  (GApplicationCommandLine *cmdline,  int exit_status);
		g_application_command_line_set_exit_status(gApplicationCommandLine, exitStatus);
	}
	
	/**
	 * Gets the exit status of cmdline. See
	 * g_application_command_line_set_exit_status() for more information.
	 * Since 2.28
	 * Returns: the exit status
	 */
	public int getExitStatus()
	{
		// int g_application_command_line_get_exit_status  (GApplicationCommandLine *cmdline);
		return g_application_command_line_get_exit_status(gApplicationCommandLine);
	}
}
