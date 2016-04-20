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


module glib.Util;

private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/** */
public struct Util
{
	/**
	 * Behaves exactly like g_build_filename(), but takes the path elements
	 * as a string array, instead of varargs. This function is mainly
	 * meant for language bindings.
	 *
	 * Params:
	 *     args = strings containing the path elements.
	 *
	 * Return: a newly-allocated string that must be freed with g_free().
	 *
	 * Since: 2.8
	 */
	public static string buildFilename(string[] firstElement ... )
	{
		return Str.toString(g_build_filenamev(Str.toStringzArray(firstElement)));
	}
	
	/**
	 * Behaves exactly like g_build_path(), but takes the path elements
	 * as a string array, instead of varargs. This function is mainly
	 * meant for language bindings.
	 *
	 * Params:
	 *     separator = a string used to separator the elements of the path.
	 *     args = strings containing the path elements.
	 *
	 * Return: a newly-allocated string that must be freed with g_free().
	 *
	 * Since: 2.8
	 */
	public static string buildPath(string separator, string[] firstElement ... )
	{
		return Str.toString(g_build_pathv(Str.toStringz(separator), Str.toStringzArray(firstElement)));
	}

	/**
	 */

	/**
	 * Specifies a function to be called at normal program termination.
	 *
	 * Since GLib 2.8.2, on Windows g_atexit() actually is a preprocessor
	 * macro that maps to a call to the atexit() function in the C
	 * library. This means that in case the code that calls g_atexit(),
	 * i.e. atexit(), is in a DLL, the function will be called when the
	 * DLL is detached from the program. This typically makes more sense
	 * than that the function is called when the GLib DLL is detached,
	 * which happened earlier when g_atexit() was a function in the GLib
	 * DLL.
	 *
	 * The behaviour of atexit() in the context of dynamically loaded
	 * modules is not formally specified and varies wildly.
	 *
	 * On POSIX systems, calling g_atexit() (or atexit()) in a dynamically
	 * loaded module which is unloaded before the program terminates might
	 * well cause a crash at program exit.
	 *
	 * Some POSIX systems implement atexit() like Windows, and have each
	 * dynamically loaded module maintain an own atexit chain that is
	 * called when the module is unloaded.
	 *
	 * On other POSIX systems, before a dynamically loaded module is
	 * unloaded, the registered atexit functions (if any) residing in that
	 * module are called, regardless where the code that registered them
	 * resided. This is presumably the most robust approach.
	 *
	 * As can be seen from the above, for portability it's best to avoid
	 * calling g_atexit() (or atexit()) except in the main executable of a
	 * program.
	 *
	 * Deprecated: It is best to avoid g_atexit().
	 *
	 * Params:
	 *     func = the function to call on normal program termination.
	 */
	public static void atexit(GVoidFunc func)
	{
		g_atexit(func);
	}

	/**
	 * Gets the name of the file without any leading directory
	 * components. It returns a pointer into the given file name
	 * string.
	 *
	 * Deprecated: Use g_path_get_basename() instead, but notice
	 * that g_path_get_basename() allocates new memory for the
	 * returned string, unlike this function which returns a pointer
	 * into the argument.
	 *
	 * Params:
	 *     fileName = the name of the file
	 *
	 * Return: the name of the file without any leading
	 *     directory components
	 */
	public static string basename(string fileName)
	{
		return Str.toString(g_basename(Str.toStringz(fileName)));
	}

	/**
	 * Find the position of the first bit set in @mask, searching
	 * from (but not including) @nth_bit upwards. Bits are numbered
	 * from 0 (least significant) to sizeof(#gulong) * 8 - 1 (31 or 63,
	 * usually). To start searching from the 0th bit, set @nth_bit to -1.
	 *
	 * Params:
	 *     mask = a #gulong containing flags
	 *     nthBit = the index of the bit to start the search from
	 *
	 * Return: the index of the first bit set which is higher than @nth_bit, or -1
	 *     if no higher bits are set
	 */
	public static int bitNthLsf(gulong mask, int nthBit)
	{
		return g_bit_nth_lsf(mask, nthBit);
	}

	/**
	 * Find the position of the first bit set in @mask, searching
	 * from (but not including) @nth_bit downwards. Bits are numbered
	 * from 0 (least significant) to sizeof(#gulong) * 8 - 1 (31 or 63,
	 * usually). To start searching from the last bit, set @nth_bit to
	 * -1 or GLIB_SIZEOF_LONG * 8.
	 *
	 * Params:
	 *     mask = a #gulong containing flags
	 *     nthBit = the index of the bit to start the search from
	 *
	 * Return: the index of the first bit set which is lower than @nth_bit, or -1
	 *     if no lower bits are set
	 */
	public static int bitNthMsf(gulong mask, int nthBit)
	{
		return g_bit_nth_msf(mask, nthBit);
	}

	/**
	 * Gets the number of bits used to hold @number,
	 * e.g. if @number is 4, 3 bits are needed.
	 *
	 * Params:
	 *     number = a #guint
	 *
	 * Return: the number of bits used to hold @number
	 */
	public static uint bitStorage(gulong number)
	{
		return g_bit_storage(number);
	}

	/**
	 * Returns the value of the environment variable @variable in the
	 * provided list @envp.
	 *
	 * Params:
	 *     envp = an environment
	 *         list (eg, as returned from g_get_environ()), or %NULL
	 *         for an empty environment list
	 *     variable = the environment variable to get
	 *
	 * Return: the value of the environment variable, or %NULL if
	 *     the environment variable is not set in @envp. The returned
	 *     string is owned by @envp, and will be freed if @variable is
	 *     set or unset again.
	 *
	 * Since: 2.32
	 */
	public static string environGetenv(string[] envp, string variable)
	{
		return Str.toString(g_environ_getenv(Str.toStringzArray(envp), Str.toStringz(variable)));
	}

	/**
	 * Sets the environment variable @variable in the provided list
	 * @envp to @value.
	 *
	 * Params:
	 *     envp = an
	 *         environment list that can be freed using g_strfreev() (e.g., as
	 *         returned from g_get_environ()), or %NULL for an empty
	 *         environment list
	 *     variable = the environment variable to set, must not contain '='
	 *     value = the value for to set the variable to
	 *     overwrite = whether to change the variable if it already exists
	 *
	 * Return: the
	 *     updated environment list. Free it using g_strfreev().
	 *
	 * Since: 2.32
	 */
	public static string[] environSetenv(string[] envp, string variable, string value, bool overwrite)
	{
		auto retStr = g_environ_setenv(Str.toStringzArray(envp), Str.toStringz(variable), Str.toStringz(value), overwrite);
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Removes the environment variable @variable from the provided
	 * environment @envp.
	 *
	 * Params:
	 *     envp = an environment
	 *         list that can be freed using g_strfreev() (e.g., as returned from g_get_environ()),
	 *         or %NULL for an empty environment list
	 *     variable = the environment variable to remove, must not contain '='
	 *
	 * Return: the
	 *     updated environment list. Free it using g_strfreev().
	 *
	 * Since: 2.32
	 */
	public static string[] environUnsetenv(string[] envp, string variable)
	{
		auto retStr = g_environ_unsetenv(Str.toStringzArray(envp), Str.toStringz(variable));
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Locates the first executable named @program in the user's path, in the
	 * same way that execvp() would locate it. Returns an allocated string
	 * with the absolute path name, or %NULL if the program is not found in
	 * the path. If @program is already an absolute path, returns a copy of
	 * @program if @program exists and is executable, and %NULL otherwise.
	 *
	 * On Windows, if @program does not have a file type suffix, tries
	 * with the suffixes .exe, .cmd, .bat and .com, and the suffixes in
	 * the `PATHEXT` environment variable.
	 *
	 * On Windows, it looks for the file in the same way as CreateProcess()
	 * would. This means first in the directory where the executing
	 * program was loaded from, then in the current directory, then in the
	 * Windows 32-bit system directory, then in the Windows directory, and
	 * finally in the directories in the `PATH` environment variable. If
	 * the program is found, the return value contains the full name
	 * including the type suffix.
	 *
	 * Params:
	 *     program = a program name in the GLib file name encoding
	 *
	 * Return: a newly-allocated string with the absolute path, or %NULL
	 */
	public static string findProgramInPath(string program)
	{
		auto retStr = g_find_program_in_path(Str.toStringz(program));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Formats a size (for example the size of a file) into a human readable
	 * string.  Sizes are rounded to the nearest size prefix (kB, MB, GB)
	 * and are displayed rounded to the nearest tenth. E.g. the file size
	 * 3292528 bytes will be converted into the string "3.2 MB".
	 *
	 * The prefix units base is 1000 (i.e. 1 kB is 1000 bytes).
	 *
	 * This string should be freed with g_free() when not needed any longer.
	 *
	 * See g_format_size_full() for more options about how the size might be
	 * formatted.
	 *
	 * Params:
	 *     size = a size in bytes
	 *
	 * Return: a newly-allocated formatted string containing a human readable
	 *     file size
	 *
	 * Since: 2.30
	 */
	public static string formatSize(ulong size)
	{
		auto retStr = g_format_size(size);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Formats a size (for example the size of a file) into a human
	 * readable string. Sizes are rounded to the nearest size prefix
	 * (KB, MB, GB) and are displayed rounded to the nearest tenth.
	 * E.g. the file size 3292528 bytes will be converted into the
	 * string "3.1 MB".
	 *
	 * The prefix units base is 1024 (i.e. 1 KB is 1024 bytes).
	 *
	 * This string should be freed with g_free() when not needed any longer.
	 *
	 * Deprecated: This function is broken due to its use of SI
	 * suffixes to denote IEC units. Use g_format_size() instead.
	 *
	 * Params:
	 *     size = a size in bytes
	 *
	 * Return: a newly-allocated formatted string containing a human
	 *     readable file size
	 *
	 * Since: 2.16
	 */
	public static string formatSizeForDisplay(long size)
	{
		auto retStr = g_format_size_for_display(size);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Formats a size.
	 *
	 * This function is similar to g_format_size() but allows for flags
	 * that modify the output. See #GFormatSizeFlags.
	 *
	 * Params:
	 *     size = a size in bytes
	 *     flags = #GFormatSizeFlags to modify the output
	 *
	 * Return: a newly-allocated formatted string containing a human
	 *     readable file size
	 *
	 * Since: 2.30
	 */
	public static string formatSizeFull(ulong size, GFormatSizeFlags flags)
	{
		auto retStr = g_format_size_full(size, flags);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets a human-readable name for the application, as set by
	 * g_set_application_name(). This name should be localized if
	 * possible, and is intended for display to the user.  Contrast with
	 * g_get_prgname(), which gets a non-localized name. If
	 * g_set_application_name() has not been called, returns the result of
	 * g_get_prgname() (which may be %NULL if g_set_prgname() has also not
	 * been called).
	 *
	 * Return: human-readable application name. may return %NULL
	 *
	 * Since: 2.2
	 */
	public static string getApplicationName()
	{
		return Str.toString(g_get_application_name());
	}

	/**
	 * Gets the list of environment variables for the current process.
	 *
	 * The list is %NULL terminated and each item in the list is of the
	 * form 'NAME=VALUE'.
	 *
	 * This is equivalent to direct access to the 'environ' global variable,
	 * except portable.
	 *
	 * The return value is freshly allocated and it should be freed with
	 * g_strfreev() when it is no longer needed.
	 *
	 * Return: the list of
	 *     environment variables
	 *
	 * Since: 2.28
	 */
	public static string[] getEnviron()
	{
		auto retStr = g_get_environ();
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Gets the current directory.
	 *
	 * The returned string should be freed when no longer needed.
	 * The encoding of the returned string is system defined.
	 * On Windows, it is always UTF-8.
	 *
	 * Since GLib 2.40, this function will return the value of the "PWD"
	 * environment variable if it is set and it happens to be the same as
	 * the current directory.  This can make a difference in the case that
	 * the current directory is the target of a symbolic link.
	 *
	 * Return: the current directory
	 */
	public static string getCurrentDir()
	{
		auto retStr = g_get_current_dir();
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the current user's home directory.
	 *
	 * As with most UNIX tools, this function will return the value of the
	 * `HOME` environment variable if it is set to an existing absolute path
	 * name, falling back to the `passwd` file in the case that it is unset.
	 *
	 * If the path given in `HOME` is non-absolute, does not exist, or is
	 * not a directory, the result is undefined.
	 *
	 * Before version 2.36 this function would ignore the `HOME` environment
	 * variable, taking the value from the `passwd` database instead. This was
	 * changed to increase the compatibility of GLib with other programs (and
	 * the XDG basedir specification) and to increase testability of programs
	 * based on GLib (by making it easier to run them from test frameworks).
	 *
	 * If your program has a strong requirement for either the new or the
	 * old behaviour (and if you don't wish to increase your GLib
	 * dependency to ensure that the new behaviour is in effect) then you
	 * should either directly check the `HOME` environment variable yourself
	 * or unset it before calling any functions in GLib.
	 *
	 * Return: the current user's home directory
	 */
	public static string getHomeDir()
	{
		return Str.toString(g_get_home_dir());
	}

	/**
	 * Return a name for the machine.
	 *
	 * The returned name is not necessarily a fully-qualified domain name,
	 * or even present in DNS or some other name service at all. It need
	 * not even be unique on your local network or site, but usually it
	 * is. Callers should not rely on the return value having any specific
	 * properties like uniqueness for security purposes. Even if the name
	 * of the machine is changed while an application is running, the
	 * return value from this function does not change. The returned
	 * string is owned by GLib and should not be modified or freed. If no
	 * name can be determined, a default fixed string "localhost" is
	 * returned.
	 *
	 * Return: the host name of the machine.
	 *
	 * Since: 2.8
	 */
	public static string getHostName()
	{
		return Str.toString(g_get_host_name());
	}

	/**
	 * Gets the name of the program. This name should not be localized,
	 * in contrast to g_get_application_name().
	 *
	 * If you are using GDK or GTK+ the program name is set in gdk_init(),
	 * which is called by gtk_init(). The program name is found by taking
	 * the last component of @argv[0].
	 *
	 * Return: the name of the program. The returned string belongs
	 *     to GLib and must not be modified or freed.
	 */
	public static string getPrgname()
	{
		return Str.toString(g_get_prgname());
	}

	/**
	 * Gets the real name of the user. This usually comes from the user's
	 * entry in the `passwd` file. The encoding of the returned string is
	 * system-defined. (On Windows, it is, however, always UTF-8.) If the
	 * real user name cannot be determined, the string "Unknown" is
	 * returned.
	 *
	 * Return: the user's real name.
	 */
	public static string getRealName()
	{
		return Str.toString(g_get_real_name());
	}

	/**
	 * Returns an ordered list of base directories in which to access
	 * system-wide configuration information.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
	 * In this case the list of directories retrieved will be `XDG_CONFIG_DIRS`.
	 *
	 * On Windows is the directory that contains application data for all users.
	 * A typical path is C:\Documents and Settings\All Users\Application Data.
	 * This folder is used for application data that is not user specific.
	 * For example, an application can store a spell-check dictionary, a database
	 * of clip art, or a log file in the CSIDL_COMMON_APPDATA folder.
	 * This information will not roam and is available to anyone using the computer.
	 *
	 * Return: a %NULL-terminated array of strings owned by GLib that must
	 *     not be modified or freed.
	 *
	 * Since: 2.6
	 */
	public static string[] getSystemConfigDirs()
	{
		return Str.toStringArray(g_get_system_config_dirs());
	}

	/**
	 * Returns an ordered list of base directories in which to access
	 * system-wide application data.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec)
	 * In this case the list of directories retrieved will be XDG_DATA_DIRS.
	 *
	 * On Windows the first elements in the list are the Application Data
	 * and Documents folders for All Users. (These can be determined only
	 * on Windows 2000 or later and are not present in the list on other
	 * Windows versions.) See documentation for CSIDL_COMMON_APPDATA and
	 * CSIDL_COMMON_DOCUMENTS.
	 *
	 * Then follows the "share" subfolder in the installation folder for
	 * the package containing the DLL that calls this function, if it can
	 * be determined.
	 *
	 * Finally the list contains the "share" subfolder in the installation
	 * folder for GLib, and in the installation folder for the package the
	 * application's .exe file belongs to.
	 *
	 * The installation folders above are determined by looking up the
	 * folder where the module (DLL or EXE) in question is located. If the
	 * folder's name is "bin", its parent is used, otherwise the folder
	 * itself.
	 *
	 * Note that on Windows the returned list can vary depending on where
	 * this function is called.
	 *
	 * Return: a %NULL-terminated array of strings owned by GLib that must
	 *     not be modified or freed.
	 *
	 * Since: 2.6
	 */
	public static string[] getSystemDataDirs()
	{
		return Str.toStringArray(g_get_system_data_dirs());
	}

	/**
	 * Gets the directory to use for temporary files.
	 *
	 * On UNIX, this is taken from the `TMPDIR` environment variable.
	 * If the variable is not set, `P_tmpdir` is
	 * used, as defined by the system C library. Failing that, a
	 * hard-coded default of "/tmp" is returned.
	 *
	 * On Windows, the `TEMP` environment variable is used, with the
	 * root directory of the Windows installation (eg: "C:\") used
	 * as a default.
	 *
	 * The encoding of the returned string is system-defined. On Windows,
	 * it is always UTF-8. The return value is never %NULL or the empty
	 * string.
	 *
	 * Return: the directory to use for temporary files.
	 */
	public static string getTmpDir()
	{
		return Str.toString(g_get_tmp_dir());
	}

	/**
	 * Returns a base directory in which to store non-essential, cached
	 * data specific to particular user.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
	 * In this case the directory retrieved will be XDG_CACHE_HOME.
	 *
	 * On Windows is the directory that serves as a common repository for
	 * temporary Internet files. A typical path is
	 * C:\Documents and Settings\username\Local Settings\Temporary Internet Files.
	 * See documentation for CSIDL_INTERNET_CACHE.
	 *
	 * Return: a string owned by GLib that must not be modified
	 *     or freed.
	 *
	 * Since: 2.6
	 */
	public static string getUserCacheDir()
	{
		return Str.toString(g_get_user_cache_dir());
	}

	/**
	 * Returns a base directory in which to store user-specific application
	 * configuration information such as user preferences and settings.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
	 * In this case the directory retrieved will be `XDG_CONFIG_HOME`.
	 *
	 * On Windows this is the folder to use for local (as opposed to
	 * roaming) application data. See documentation for
	 * CSIDL_LOCAL_APPDATA. Note that on Windows it thus is the same as
	 * what g_get_user_data_dir() returns.
	 *
	 * Return: a string owned by GLib that must not be modified
	 *     or freed.
	 *
	 * Since: 2.6
	 */
	public static string getUserConfigDir()
	{
		return Str.toString(g_get_user_config_dir());
	}

	/**
	 * Returns a base directory in which to access application data such
	 * as icons that is customized for a particular user.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
	 * In this case the directory retrieved will be `XDG_DATA_HOME`.
	 *
	 * On Windows this is the folder to use for local (as opposed to
	 * roaming) application data. See documentation for
	 * CSIDL_LOCAL_APPDATA. Note that on Windows it thus is the same as
	 * what g_get_user_config_dir() returns.
	 *
	 * Return: a string owned by GLib that must not be modified
	 *     or freed.
	 *
	 * Since: 2.6
	 */
	public static string getUserDataDir()
	{
		return Str.toString(g_get_user_data_dir());
	}

	/**
	 * Gets the user name of the current user. The encoding of the returned
	 * string is system-defined. On UNIX, it might be the preferred file name
	 * encoding, or something else, and there is no guarantee that it is even
	 * consistent on a machine. On Windows, it is always UTF-8.
	 *
	 * Return: the user name of the current user.
	 */
	public static string getUserName()
	{
		return Str.toString(g_get_user_name());
	}

	/**
	 * Returns a directory that is unique to the current user on the local
	 * system.
	 *
	 * On UNIX platforms this is determined using the mechanisms described
	 * in the
	 * [XDG Base Directory Specification](http://www.freedesktop.org/Standards/basedir-spec).
	 * This is the directory
	 * specified in the `XDG_RUNTIME_DIR` environment variable.
	 * In the case that this variable is not set, we return the value of
	 * g_get_user_cache_dir(), after verifying that it exists.
	 *
	 * On Windows this is the folder to use for local (as opposed to
	 * roaming) application data. See documentation for
	 * CSIDL_LOCAL_APPDATA.  Note that on Windows it thus is the same as
	 * what g_get_user_config_dir() returns.
	 *
	 * Return: a string owned by GLib that must not be modified or freed.
	 *
	 * Since: 2.28
	 */
	public static string getUserRuntimeDir()
	{
		return Str.toString(g_get_user_runtime_dir());
	}

	/**
	 * Returns the full path of a special directory using its logical id.
	 *
	 * On UNIX this is done using the XDG special user directories.
	 * For compatibility with existing practise, %G_USER_DIRECTORY_DESKTOP
	 * falls back to `$HOME/Desktop` when XDG special user directories have
	 * not been set up.
	 *
	 * Depending on the platform, the user might be able to change the path
	 * of the special directory without requiring the session to restart; GLib
	 * will not reflect any change once the special directories are loaded.
	 *
	 * Params:
	 *     directory = the logical id of special directory
	 *
	 * Return: the path to the specified special directory, or %NULL
	 *     if the logical id was not found. The returned string is owned by
	 *     GLib and should not be modified or freed.
	 *
	 * Since: 2.14
	 */
	public static string getUserSpecialDir(GUserDirectory directory)
	{
		return Str.toString(g_get_user_special_dir(directory));
	}

	/**
	 * Returns the value of an environment variable.
	 *
	 * On UNIX, the name and value are byte strings which might or might not
	 * be in some consistent character set and encoding. On Windows, they are
	 * in UTF-8.
	 * On Windows, in case the environment variable's value contains
	 * references to other environment variables, they are expanded.
	 *
	 * Params:
	 *     variable = the environment variable to get
	 *
	 * Return: the value of the environment variable, or %NULL if
	 *     the environment variable is not found. The returned string
	 *     may be overwritten by the next call to g_getenv(), g_setenv()
	 *     or g_unsetenv().
	 */
	public static string getenv(string variable)
	{
		return Str.toString(g_getenv(Str.toStringz(variable)));
	}

	/**
	 * Gets the names of all variables set in the environment.
	 *
	 * Programs that want to be portable to Windows should typically use
	 * this function and g_getenv() instead of using the environ array
	 * from the C library directly. On Windows, the strings in the environ
	 * array are in system codepage encoding, while in most of the typical
	 * use cases for environment variables in GLib-using programs you want
	 * the UTF-8 encoding that this function and g_getenv() provide.
	 *
	 * Return: a %NULL-terminated
	 *     list of strings which must be freed with g_strfreev().
	 *
	 * Since: 2.8
	 */
	public static string[] listenv()
	{
		auto retStr = g_listenv();
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Set the pointer at the specified location to %NULL.
	 *
	 * Params:
	 *     nullifyLocation = the memory address of the pointer.
	 */
	public static void nullifyPointer(void** nullifyLocation)
	{
		g_nullify_pointer(nullifyLocation);
	}

	/**
	 * Parses a string containing debugging options
	 * into a %guint containing bit flags. This is used
	 * within GDK and GTK+ to parse the debug options passed on the
	 * command line or through environment variables.
	 *
	 * If @string is equal to "all", all flags are set. Any flags
	 * specified along with "all" in @string are inverted; thus,
	 * "all,foo,bar" or "foo,bar,all" sets all flags except those
	 * corresponding to "foo" and "bar".
	 *
	 * If @string is equal to "help", all the available keys in @keys
	 * are printed out to standard error.
	 *
	 * Params:
	 *     str = a list of debug options separated by colons, spaces, or
	 *         commas, or %NULL.
	 *     keys = pointer to an array of #GDebugKey which associate
	 *         strings with bit flags.
	 *     nkeys = the number of #GDebugKeys in the array.
	 *
	 * Return: the combined set of bit flags.
	 */
	public static uint parseDebugString(string str, GDebugKey[] keys)
	{
		return g_parse_debug_string(Str.toStringz(str), keys.ptr, cast(uint)keys.length);
	}

	/**
	 * Gets the last component of the filename.
	 *
	 * If @file_name ends with a directory separator it gets the component
	 * before the last slash. If @file_name consists only of directory
	 * separators (and on Windows, possibly a drive letter), a single
	 * separator is returned. If @file_name is empty, it gets ".".
	 *
	 * Params:
	 *     fileName = the name of the file
	 *
	 * Return: a newly allocated string containing the last
	 *     component of the filename
	 */
	public static string pathGetBasename(string fileName)
	{
		auto retStr = g_path_get_basename(Str.toStringz(fileName));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Gets the directory components of a file name.
	 *
	 * If the file name has no directory components "." is returned.
	 * The returned string should be freed when no longer needed.
	 *
	 * Params:
	 *     fileName = the name of the file
	 *
	 * Return: the directory components of the file
	 */
	public static string pathGetDirname(string fileName)
	{
		auto retStr = g_path_get_dirname(Str.toStringz(fileName));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Returns %TRUE if the given @file_name is an absolute file name.
	 * Note that this is a somewhat vague concept on Windows.
	 *
	 * On POSIX systems, an absolute file name is well-defined. It always
	 * starts from the single root directory. For example "/usr/local".
	 *
	 * On Windows, the concepts of current drive and drive-specific
	 * current directory introduce vagueness. This function interprets as
	 * an absolute file name one that either begins with a directory
	 * separator such as "\Users\tml" or begins with the root on a drive,
	 * for example "C:\Windows". The first case also includes UNC paths
	 * such as "\\myserver\docs\foo". In all cases, either slashes or
	 * backslashes are accepted.
	 *
	 * Note that a file name relative to the current drive root does not
	 * truly specify a file uniquely over time and across processes, as
	 * the current drive is a per-process value and can be changed.
	 *
	 * File names relative the current directory on some specific drive,
	 * such as "D:foo/bar", are not interpreted as absolute by this
	 * function, but they obviously are not relative to the normal current
	 * directory as returned by getcwd() or g_get_current_dir()
	 * either. Such paths should be avoided, or need to be handled using
	 * Windows-specific code.
	 *
	 * Params:
	 *     fileName = a file name
	 *
	 * Return: %TRUE if @file_name is absolute
	 */
	public static bool pathIsAbsolute(string fileName)
	{
		return g_path_is_absolute(Str.toStringz(fileName)) != 0;
	}

	/**
	 * Returns a pointer into @file_name after the root component,
	 * i.e. after the "/" in UNIX or "C:\" under Windows. If @file_name
	 * is not an absolute path it returns %NULL.
	 *
	 * Params:
	 *     fileName = a file name
	 *
	 * Return: a pointer into @file_name after the root component
	 */
	public static string pathSkipRoot(string fileName)
	{
		return Str.toString(g_path_skip_root(Str.toStringz(fileName)));
	}

	/**
	 * This is just like the standard C qsort() function, but
	 * the comparison routine accepts a user data argument.
	 *
	 * This is guaranteed to be a stable sort since version 2.32.
	 *
	 * Params:
	 *     pbase = start of array to sort
	 *     totalElems = elements in the array
	 *     size = size of each element
	 *     compareFunc = function to compare elements
	 *     userData = data to pass to @compare_func
	 */
	public static void qsortWithData(void* pbase, int totalElems, size_t size, GCompareDataFunc compareFunc, void* userData)
	{
		g_qsort_with_data(pbase, totalElems, size, compareFunc, userData);
	}

	/**
	 * Resets the cache used for g_get_user_special_dir(), so
	 * that the latest on-disk version is used. Call this only
	 * if you just changed the data on disk yourself.
	 *
	 * Due to threadsafety issues this may cause leaking of strings
	 * that were previously returned from g_get_user_special_dir()
	 * that can't be freed. We ensure to only leak the data for
	 * the directories that actually changed value though.
	 *
	 * Since: 2.22
	 */
	public static void reloadUserSpecialDirsCache()
	{
		g_reload_user_special_dirs_cache();
	}

	/**
	 * Sets a human-readable name for the application. This name should be
	 * localized if possible, and is intended for display to the user.
	 * Contrast with g_set_prgname(), which sets a non-localized name.
	 * g_set_prgname() will be called automatically by gtk_init(),
	 * but g_set_application_name() will not.
	 *
	 * Note that for thread safety reasons, this function can only
	 * be called once.
	 *
	 * The application name will be used in contexts such as error messages,
	 * or when displaying an application's name in the task list.
	 *
	 * Params:
	 *     applicationName = localized name of the application
	 *
	 * Since: 2.2
	 */
	public static void setApplicationName(string applicationName)
	{
		g_set_application_name(Str.toStringz(applicationName));
	}

	/**
	 * Sets the name of the program. This name should not be localized,
	 * in contrast to g_set_application_name().
	 *
	 * Note that for thread-safety reasons this function can only be called once.
	 *
	 * Params:
	 *     prgname = the name of the program.
	 */
	public static void setPrgname(string prgname)
	{
		g_set_prgname(Str.toStringz(prgname));
	}

	/**
	 * Sets an environment variable. On UNIX, both the variable's name and
	 * value can be arbitrary byte strings, except that the variable's name
	 * cannot contain '='. On Windows, they should be in UTF-8.
	 *
	 * Note that on some systems, when variables are overwritten, the memory
	 * used for the previous variables and its value isn't reclaimed.
	 *
	 * You should be mindful of the fact that environment variable handling
	 * in UNIX is not thread-safe, and your program may crash if one thread
	 * calls g_setenv() while another thread is calling getenv(). (And note
	 * that many functions, such as gettext(), call getenv() internally.)
	 * This function is only safe to use at the very start of your program,
	 * before creating any other threads (or creating objects that create
	 * worker threads of their own).
	 *
	 * If you need to set up the environment for a child process, you can
	 * use g_get_environ() to get an environment array, modify that with
	 * g_environ_setenv() and g_environ_unsetenv(), and then pass that
	 * array directly to execvpe(), g_spawn_async(), or the like.
	 *
	 * Params:
	 *     variable = the environment variable to set, must not contain '='.
	 *     value = the value for to set the variable to.
	 *     overwrite = whether to change the variable if it already exists.
	 *
	 * Return: %FALSE if the environment variable couldn't be set.
	 *
	 * Since: 2.4
	 */
	public static bool setenv(string variable, string value, bool overwrite)
	{
		return g_setenv(Str.toStringz(variable), Str.toStringz(value), overwrite) != 0;
	}

	/**
	 * Gets the smallest prime number from a built-in array of primes which
	 * is larger than @num. This is used within GLib to calculate the optimum
	 * size of a #GHashTable.
	 *
	 * The built-in array of primes ranges from 11 to 13845163 such that
	 * each prime is approximately 1.5-2 times the previous prime.
	 *
	 * Params:
	 *     num = a #guint
	 *
	 * Return: the smallest prime number from a built-in array of primes
	 *     which is larger than @num
	 */
	public static uint spacedPrimesClosest(uint num)
	{
		return g_spaced_primes_closest(num);
	}

	/**
	 * Removes an environment variable from the environment.
	 *
	 * Note that on some systems, when variables are overwritten, the
	 * memory used for the previous variables and its value isn't reclaimed.
	 *
	 * You should be mindful of the fact that environment variable handling
	 * in UNIX is not thread-safe, and your program may crash if one thread
	 * calls g_unsetenv() while another thread is calling getenv(). (And note
	 * that many functions, such as gettext(), call getenv() internally.) This
	 * function is only safe to use at the very start of your program, before
	 * creating any other threads (or creating objects that create worker
	 * threads of their own).
	 *
	 * If you need to set up the environment for a child process, you can
	 * use g_get_environ() to get an environment array, modify that with
	 * g_environ_setenv() and g_environ_unsetenv(), and then pass that
	 * array directly to execvpe(), g_spawn_async(), or the like.
	 *
	 * Params:
	 *     variable = the environment variable to remove, must not contain '='
	 *
	 * Since: 2.4
	 */
	public static void unsetenv(string variable)
	{
		g_unsetenv(Str.toStringz(variable));
	}
}
