/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = glib-Miscellaneous-Utility-Functions.html
 * outPack = glib
 * outFile = Util
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = Util
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.ListG
 * 	- glib.Str
 * structWrap:
 * 	- GList* -> ListG
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.Util;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.ListG;
private import glib.Str;




/**
 * Description
 * These are portable utility functions.
 */
public class Util
{
	
	/**
	 * Creates a filename from a series of elements using the correct
	 * separator for filenames.
	 * On Unix, this function behaves identically to g_build_path
	 * (G_DIR_SEPARATOR_S, first_element, ....).
	 * On Windows, it takes into account that either the backslash
	 * (\ or slash (/) can be used
	 * as separator in filenames, but otherwise behaves as on Unix. When
	 * file pathname separators need to be inserted, the one that last
	 * previously occurred in the parameters (reading from left to right)
	 * is used.
	 * No attempt is made to force the resulting filename to be an absolute
	 * path. If the first element is a relative path, the result will
	 * be a relative path.
	 * Params:
	 * firstElement =  the first element in the path
	 * ... =  remaining elements in path, terminated by NULL
	 * Returns: a newly-allocated string that must be freed with g_free().
	 */
	public static string buildFilename(string[] firstElement ... )
	{
		// gchar* g_build_filename (const gchar *first_element,  ...);
		return buildFilenamev(Str.toStringzArray(firstElement));
	}
	
	/**
	 */
	
	/**
	 * Gets a human-readable name for the application, as set by
	 * g_set_application_name(). This name should be localized if
	 * possible, and is intended for display to the user. Contrast with
	 * g_get_prgname(), which gets a non-localized name. If
	 * g_set_application_name() has not been called, returns the result of
	 * g_get_prgname() (which may be NULL if g_set_prgname() has also not
	 * been called).
	 * Since 2.2
	 * Returns: human-readable application name. may return NULL
	 */
	public static string getApplicationName()
	{
		// const gchar* g_get_application_name (void);
		return Str.toString(g_get_application_name());
	}
	
	/**
	 * Sets a human-readable name for the application. This name should be
	 * localized if possible, and is intended for display to the user.
	 * Contrast with g_set_prgname(), which sets a non-localized name.
	 * g_set_prgname() will be called automatically by gtk_init(),
	 * but g_set_application_name() will not.
	 * Note that for thread safety reasons, this function can only
	 * be called once.
	 * The application name will be used in contexts such as error messages,
	 * or when displaying an application's name in the task list.
	 * Since 2.2
	 * Params:
	 * applicationName =  localized name of the application
	 */
	public static void setApplicationName(string applicationName)
	{
		// void g_set_application_name (const gchar *application_name);
		g_set_application_name(Str.toStringz(applicationName));
	}
	
	/**
	 * Gets the name of the program. This name should not
	 * be localized, contrast with g_get_application_name().
	 * (If you are using GDK or GTK+ the program name is set in gdk_init(),
	 * which is called by gtk_init(). The program name is found by taking
	 * the last component of argv[0].)
	 * Returns: the name of the program. The returned string belongs to GLib and must not be modified or freed.
	 */
	public static string getPrgname()
	{
		// gchar* g_get_prgname (void);
		return Str.toString(g_get_prgname());
	}
	
	/**
	 * Sets the name of the program. This name should not
	 * be localized, contrast with g_set_application_name(). Note that for
	 * thread-safety reasons this function can only be called once.
	 * Params:
	 * prgname =  the name of the program.
	 */
	public static void setPrgname(string prgname)
	{
		// void g_set_prgname (const gchar *prgname);
		g_set_prgname(Str.toStringz(prgname));
	}
	
	/**
	 * Returns the value of an environment variable. The name and value
	 * are in the GLib file name encoding. On UNIX, this means the actual
	 * bytes which might or might not be in some consistent character set
	 * and encoding. On Windows, it is in UTF-8. On Windows, in case the
	 * environment variable's value contains references to other
	 * environment variables, they are expanded.
	 * Params:
	 * variable =  the environment variable to get, in the GLib file name encoding.
	 * Returns: the value of the environment variable, or NULL ifthe environment variable is not found. The returned string may beoverwritten by the next call to g_getenv(), g_setenv() org_unsetenv().
	 */
	public static string getenv(string variable)
	{
		// const gchar* g_getenv (const gchar *variable);
		return Str.toString(g_getenv(Str.toStringz(variable)));
	}
	
	/**
	 * Sets an environment variable. Both the variable's name and value
	 * should be in the GLib file name encoding. On UNIX, this means that
	 * they can be any sequence of bytes. On Windows, they should be in
	 * UTF-8.
	 * Note that on some systems, when variables are overwritten, the memory
	 * used for the previous variables and its value isn't reclaimed.
	 * Since 2.4
	 * Params:
	 * variable =  the environment variable to set, must not contain '='.
	 * value =  the value for to set the variable to.
	 * overwrite =  whether to change the variable if it already exists.
	 * Returns: FALSE if the environment variable couldn't be set.
	 */
	public static int setenv(string variable, string value, int overwrite)
	{
		// gboolean g_setenv (const gchar *variable,  const gchar *value,  gboolean overwrite);
		return g_setenv(Str.toStringz(variable), Str.toStringz(value), overwrite);
	}
	
	/**
	 * Removes an environment variable from the environment.
	 * Note that on some systems, when variables are overwritten, the memory
	 * used for the previous variables and its value isn't reclaimed.
	 * Furthermore, this function can't be guaranteed to operate in a
	 * threadsafe way.
	 * Since 2.4
	 * Params:
	 * variable =  the environment variable to remove, must not contain '='.
	 */
	public static void unsetenv(string variable)
	{
		// void g_unsetenv (const gchar *variable);
		g_unsetenv(Str.toStringz(variable));
	}
	
	/**
	 * Gets the names of all variables set in the environment.
	 * Since 2.8
	 * Returns: a NULL-terminated list of strings which must be freedwith g_strfreev().Programs that want to be portable to Windows should typically usethis function and g_getenv() instead of using the environ arrayfrom the C library directly. On Windows, the strings in the environarray are in system codepage encoding, while in most of the typicaluse cases for environment variables in GLib-using programs you wantthe UTF-8 encoding that this function and g_getenv() provide.
	 */
	public static char** listenv()
	{
		// gchar** g_listenv (void);
		return g_listenv();
	}
	
	/**
	 * Gets the user name of the current user. The encoding of the returned
	 * string is system-defined. On UNIX, it might be the preferred file name
	 * encoding, or something else, and there is no guarantee that it is even
	 * consistent on a machine. On Windows, it is always UTF-8.
	 * Returns: the user name of the current user.
	 */
	public static string getUserName()
	{
		// const gchar* g_get_user_name (void);
		return Str.toString(g_get_user_name());
	}
	
	/**
	 * Gets the real name of the user. This usually comes from the user's entry
	 * in the passwd file. The encoding of the returned
	 * string is system-defined. (On Windows, it is, however, always UTF-8.)
	 * If the real user name cannot be determined, the string "Unknown" is
	 * returned.
	 * Returns: the user's real name.
	 */
	public static string getRealName()
	{
		// const gchar* g_get_real_name (void);
		return Str.toString(g_get_real_name());
	}
	
	/**
	 * Returns a base directory in which to store non-essential, cached
	 * data specific to particular user.
	 * On UNIX platforms this is determined using the mechanisms described in
	 * the
	 * XDG Base Directory Specification
	 * Since 2.6
	 * Returns: a string owned by GLib that must not be modified  or freed.
	 */
	public static string getUserCacheDir()
	{
		// const gchar* g_get_user_cache_dir (void);
		return Str.toString(g_get_user_cache_dir());
	}
	
	/**
	 * Returns a base directory in which to access application data such
	 * as icons that is customized for a particular user.
	 * On UNIX platforms this is determined using the mechanisms described in
	 * the
	 * XDG Base Directory Specification
	 * Since 2.6
	 * Returns: a string owned by GLib that must not be modified  or freed.
	 */
	public static string getUserDataDir()
	{
		// const gchar* g_get_user_data_dir (void);
		return Str.toString(g_get_user_data_dir());
	}
	
	/**
	 * Returns a base directory in which to store user-specific application
	 * configuration information such as user preferences and settings.
	 * On UNIX platforms this is determined using the mechanisms described in
	 * the
	 * XDG Base Directory Specification
	 * Since 2.6
	 * Returns: a string owned by GLib that must not be modified  or freed.
	 */
	public static string getUserConfigDir()
	{
		// const gchar* g_get_user_config_dir (void);
		return Str.toString(g_get_user_config_dir());
	}
	
	/**
	 * Returns the full path of a special directory using its logical id.
	 * On Unix this is done using the XDG special user directories.
	 * Depending on the platform, the user might be able to change the path
	 * of the special directory without requiring the session to restart; GLib
	 * will not reflect any change once the special directories are loaded.
	 * Since 2.14
	 * Params:
	 * directory =  the logical id of special directory
	 * Returns: the path to the specified special directory, or NULL if the logical id was not found. The returned string is owned by GLib and should not be modified or freed.
	 */
	public static string getUserSpecialDir(GUserDirectory directory)
	{
		// const gchar* g_get_user_special_dir (GUserDirectory directory);
		return Str.toString(g_get_user_special_dir(directory));
	}
	
	/**
	 * Returns an ordered list of base directories in which to access
	 * system-wide application data.
	 * On UNIX platforms this is determined using the mechanisms described in
	 * the
	 * XDG Base Directory Specification
	 * On Windows the first elements in the list are the Application Data
	 * and Documents folders for All Users. (These can be determined only
	 * on Windows 2000 or later and are not present in the list on other
	 * Windows versions.) See documentation for CSIDL_COMMON_APPDATA and
	 * CSIDL_COMMON_DOCUMENTS.
	 * Then follows the "share" subfolder in the installation folder for
	 * the package containing the DLL that calls this function, if it can
	 * be determined.
	 * Finally the list contains the "share" subfolder in the installation
	 * folder for GLib, and in the installation folder for the package the
	 * application's .exe file belongs to.
	 * The installation folders above are determined by looking up the
	 * folder where the module (DLL or EXE) in question is located. If the
	 * folder's name is "bin", its parent is used, otherwise the folder
	 * itself.
	 * Note that on Windows the returned list can vary depending on where
	 * this function is called.
	 * Since 2.6
	 * Returns: a NULL-terminated array of strings owned by GLib that must  not be modified or freed.
	 */
	public static char** getSystemDataDirs()
	{
		// const gchar* const * g_get_system_data_dirs (void);
		return g_get_system_data_dirs();
	}
	
	/**
	 * Returns an ordered list of base directories in which to access
	 * system-wide configuration information.
	 * On UNIX platforms this is determined using the mechanisms described in
	 * the
	 * XDG Base Directory Specification
	 * Since 2.6
	 * Returns: a NULL-terminated array of strings owned by GLib that must  not be modified or freed.
	 */
	public static char** getSystemConfigDirs()
	{
		// const gchar* const * g_get_system_config_dirs (void);
		return g_get_system_config_dirs();
	}
	
	/**
	 * Return a name for the machine.
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
	 * Since 2.8
	 * Returns: the host name of the machine.
	 */
	public static string getHostName()
	{
		// const gchar* g_get_host_name (void);
		return Str.toString(g_get_host_name());
	}
	
	/**
	 * Gets the current user's home directory as defined in the
	 * password database.
	 * Note that in contrast to traditional UNIX tools, this function
	 * prefers passwd entries over the HOME
	 * environment variable.
	 * One of the reasons for this decision is that applications in many
	 * cases need special handling to deal with the case where
	 * HOME is
	 * Not owned by the user
	 * Not writeable
	 * Not even readable
	 * Since applications are in general not written
	 * to deal with these situations it was considered better to make
	 * g_get_homedir() not pay attention to HOME and to
	 * return the real home directory for the user. If applications
	 * Returns: the current user's home directory
	 */
	public static string getHomeDir()
	{
		// const gchar* g_get_home_dir (void);
		return Str.toString(g_get_home_dir());
	}
	
	/**
	 * Gets the directory to use for temporary files. This is found from
	 * inspecting the environment variables TMPDIR,
	 * TMP, and TEMP in that order. If none
	 * of those are defined "/tmp" is returned on UNIX and "C:\" on Windows.
	 * The encoding of the returned string is system-defined. On Windows,
	 * it is always UTF-8. The return value is never NULL.
	 * Returns: the directory to use for temporary files.
	 */
	public static string getTmpDir()
	{
		// const gchar* g_get_tmp_dir (void);
		return Str.toString(g_get_tmp_dir());
	}
	
	/**
	 * Gets the current directory.
	 * The returned string should be freed when no longer needed. The encoding
	 * of the returned string is system defined. On Windows, it is always UTF-8.
	 * Returns: the current directory.
	 */
	public static string getCurrentDir()
	{
		// gchar* g_get_current_dir (void);
		return Str.toString(g_get_current_dir());
	}
	
	/**
	 * Warning
	 * g_basename has been deprecated since version 2.2 and should not be used in newly-written code. Use g_path_get_basename() instead, but notice that
	 * g_path_get_basename() allocates new memory for the returned string, unlike
	 * this function which returns a pointer into the argument.
	 * Gets the name of the file without any leading directory components.
	 * It returns a pointer into the given file name string.
	 * Params:
	 * fileName =  the name of the file.
	 * Returns: the name of the file without any leading directory components.
	 */
	public static string basename(string fileName)
	{
		// const gchar* g_basename (const gchar *file_name);
		return Str.toString(g_basename(Str.toStringz(fileName)));
	}
	
	/**
	 * Returns TRUE if the given file_name is an absolute file name,
	 * i.e. it contains a full path from the root directory such as "/usr/local"
	 * on UNIX or "C:\windows" on Windows systems.
	 * Params:
	 * fileName =  a file name.
	 * Returns: TRUE if file_name is an absolute path.
	 */
	public static int pathIsAbsolute(string fileName)
	{
		// gboolean g_path_is_absolute (const gchar *file_name);
		return g_path_is_absolute(Str.toStringz(fileName));
	}
	
	/**
	 * Returns a pointer into file_name after the root component, i.e. after
	 * the "/" in UNIX or "C:\" under Windows. If file_name is not an absolute
	 * path it returns NULL.
	 * Params:
	 * fileName =  a file name.
	 * Returns: a pointer into file_name after the root component.
	 */
	public static string pathSkipRoot(string fileName)
	{
		// const gchar* g_path_skip_root (const gchar *file_name);
		return Str.toString(g_path_skip_root(Str.toStringz(fileName)));
	}
	
	/**
	 * Gets the last component of the filename. If file_name ends with a
	 * directory separator it gets the component before the last slash. If
	 * file_name consists only of directory separators (and on Windows,
	 * possibly a drive letter), a single separator is returned. If
	 * file_name is empty, it gets ".".
	 * Params:
	 * fileName =  the name of the file.
	 * Returns: a newly allocated string containing the last component of  the filename.
	 */
	public static string pathGetBasename(string fileName)
	{
		// gchar* g_path_get_basename (const gchar *file_name);
		return Str.toString(g_path_get_basename(Str.toStringz(fileName)));
	}
	
	/**
	 * Gets the directory components of a file name. If the file name has no
	 * directory components "." is returned. The returned string should be
	 * freed when no longer needed.
	 * Params:
	 * fileName =  the name of the file.
	 * Returns: the directory components of the file.
	 */
	public static string pathGetDirname(string fileName)
	{
		// gchar* g_path_get_dirname (const gchar *file_name);
		return Str.toString(g_path_get_dirname(Str.toStringz(fileName)));
	}
	
	/**
	 * Behaves exactly like g_build_filename(), but takes the path elements
	 * as a string array, instead of varargs. This function is mainly
	 * meant for language bindings.
	 * Since 2.8
	 * Params:
	 * args =  NULL-terminated array of strings containing the path elements.
	 * Returns: a newly-allocated string that must be freed with g_free().
	 */
	public static string buildFilenamev(char** args)
	{
		// gchar* g_build_filenamev (gchar **args);
		return Str.toString(g_build_filenamev(args));
	}
	
	/**
	 * Behaves exactly like g_build_path(), but takes the path elements
	 * as a string array, instead of varargs. This function is mainly
	 * meant for language bindings.
	 * Since 2.8
	 * Params:
	 * separator =  a string used to separator the elements of the path.
	 * args =  NULL-terminated array of strings containing the path elements.
	 * Returns: a newly-allocated string that must be freed with g_free().
	 */
	public static string buildPathv(string separator, char** args)
	{
		// gchar* g_build_pathv (const gchar *separator,  gchar **args);
		return Str.toString(g_build_pathv(Str.toStringz(separator), args));
	}
	
	/**
	 * Formats a size (for example the size of a file) into a human readable string.
	 * Sizes are rounded to the nearest size prefix (KB, MB, GB) and are displayed rounded to
	 * the nearest tenth. E.g. the file size 3292528 bytes will be converted into
	 * the string "3.1 MB".
	 * The prefix units base is 1024 (i.e. 1 KB is 1024 bytes).
	 * Since 2.16
	 * Params:
	 * size =  a size in bytes.
	 * Returns: a formatted string containing a human readable file size.
	 */
	public static string formatSizeForDisplay(long size)
	{
		// char* g_format_size_for_display (goffset size);
		return Str.toString(g_format_size_for_display(size));
	}
	
	/**
	 * Locates the first executable named program in the user's path, in the
	 * same way that execvp() would locate it. Returns an allocated string
	 * with the absolute path name, or NULL if the program is not found in
	 * the path. If program is already an absolute path, returns a copy of
	 * program if program exists and is executable, and NULL otherwise.
	 * On Windows, if program does not have a file type suffix, tries
	 * with the suffixes .exe, .cmd, .bat and .com, and the suffixes in
	 * the PATHEXT environment variable.
	 * On Windows, it looks for the file in the same way as CreateProcess()
	 * would. This means first in the directory where the executing
	 * program was loaded from, then in the current directory, then in the
	 * Windows 32-bit system directory, then in the Windows directory, and
	 * finally in the directories in the PATH environment
	 * variable. If the program is found, the return value contains the
	 * full name including the type suffix.
	 * Params:
	 * program =  a program name in the GLib file name encoding
	 * Returns: absolute path, or NULL
	 */
	public static string findProgramInPath(string program)
	{
		// gchar* g_find_program_in_path (const gchar *program);
		return Str.toString(g_find_program_in_path(Str.toStringz(program)));
	}
	
	/**
	 * Find the position of the first bit set in mask, searching from (but not
	 * including) nth_bit upwards. Bits are numbered from 0 (least significant)
	 * to sizeof(gulong) * 8 - 1 (31 or 63, usually). To start searching from the
	 * 0th bit, set nth_bit to -1.
	 * Params:
	 * mask = a gulong containing flags.
	 * nthBit = the index of the bit to start the search from.
	 * Returns:the index of the first bit set which is higher than nth_bit.
	 */
	public static int bitNthLsf(uint mask, int nthBit)
	{
		// gint g_bit_nth_lsf (gulong mask,  gint nth_bit);
		return g_bit_nth_lsf(mask, nthBit);
	}
	
	/**
	 * Find the position of the first bit set in mask, searching from (but not
	 * including) nth_bit downwards. Bits are numbered from 0 (least significant)
	 * to sizeof(gulong) * 8 - 1 (31 or 63, usually). To start searching from the
	 * last bit, set nth_bit to -1 or GLIB_SIZEOF_LONG * 8.
	 * Params:
	 * mask = a gulong containing flags.
	 * nthBit = the index of the bit to start the search from.
	 * Returns:the index of the first bit set which is lower than nth_bit.
	 */
	public static int bitNthMsf(uint mask, int nthBit)
	{
		// gint g_bit_nth_msf (gulong mask,  gint nth_bit);
		return g_bit_nth_msf(mask, nthBit);
	}
	
	/**
	 * Gets the number of bits used to hold number,
	 * e.g. if number is 4, 3 bits are needed.
	 * Params:
	 * number = a guint.
	 * Returns:the number of bits used to hold number.
	 */
	public static uint bitStorage(uint number)
	{
		// guint g_bit_storage (gulong number);
		return g_bit_storage(number);
	}
	
	/**
	 * Gets the smallest prime number from a built-in array of primes which
	 * is larger than num. This is used within GLib to calculate the optimum
	 * size of a GHashTable.
	 * The built-in array of primes ranges from 11 to 13845163 such that
	 * each prime is approximately 1.5-2 times the previous prime.
	 * Params:
	 * num = a guint.
	 * Returns:the smallest prime number from a built-in array of primes which islarger than num.
	 */
	public static uint spacedPrimesClosest(uint num)
	{
		// guint g_spaced_primes_closest (guint num);
		return g_spaced_primes_closest(num);
	}
	
	/**
	 * Specifies a function to be called at normal program termination.
	 * Since GLib 2.8.2, on Windows g_atexit() actually is a preprocessor
	 * macro that maps to a call to the atexit() function in the C
	 * library. This means that in case the code that calls g_atexit(),
	 * i.e. atexit(), is in a DLL, the function will be called when the
	 * DLL is detached from the program. This typically makes more sense
	 * than that the function is called when the GLib DLL is detached,
	 * which happened earlier when g_atexit() was a function in the GLib
	 * DLL.
	 * The behaviour of atexit() in the context of dynamically loaded
	 * modules is not formally specified and varies wildly.
	 * On POSIX systems, calling g_atexit() (or atexit()) in a dynamically
	 * loaded module which is unloaded before the program terminates might
	 * well cause a crash at program exit.
	 * Some POSIX systems implement atexit() like Windows, and have each
	 * dynamically loaded module maintain an own atexit chain that is
	 * called when the module is unloaded.
	 * On other POSIX systems, before a dynamically loaded module is
	 * unloaded, the registered atexit functions (if any) residing in that
	 * module are called, regardless where the code that registered them
	 * resided. This is presumably the most robust approach.
	 * As can be seen from the above, for portability it's best to avoid
	 * calling g_atexit() (or atexit()) except in the main executable of a
	 * program.
	 * Params:
	 * func =  the function to call on normal program termination.
	 */
	public static void atexit(GVoidFunc func)
	{
		// void g_atexit (GVoidFunc func);
		g_atexit(func);
	}
	
	/**
	 * Parses a string containing debugging options
	 * into a guint containing bit flags. This is used
	 * within GDK and GTK+ to parse the debug options passed on the
	 * command line or through environment variables.
	 * Params:
	 * string =  a list of debug options separated by colons, spaces, or
	 * commas; or the string "all" to set all flags, or NULL.
	 * keys =  pointer to an array of GDebugKey which associate
	 *  strings with bit flags.
	 * nkeys =  the number of GDebugKeys in the array.
	 * Returns: the combined set of bit flags.
	 */
	public static uint parseDebugString(string string, GDebugKey* keys, uint nkeys)
	{
		// guint g_parse_debug_string (const gchar *string,  const GDebugKey *keys,  guint nkeys);
		return g_parse_debug_string(Str.toStringz(string), keys, nkeys);
	}
	
	/**
	 * This is just like the standard C qsort() function, but
	 * the comparison routine accepts a user data argument.
	 * Params:
	 * pbase =  start of array to sort
	 * totalElems =  elements in the array
	 * size =  size of each element
	 * compareFunc =  function to compare elements
	 * userData =  data to pass to compare_func
	 */
	public static void qsortWithData(void* pbase, int totalElems, uint size, GCompareDataFunc compareFunc, void* userData)
	{
		// void g_qsort_with_data (gconstpointer pbase,  gint total_elems,  gsize size,  GCompareDataFunc compare_func,  gpointer user_data);
		g_qsort_with_data(pbase, totalElems, size, compareFunc, userData);
	}
	
	/**
	 * Set the pointer at the specified location to NULL.
	 * Params:
	 * nullifyLocation =  the memory address of the pointer.
	 */
	public static void nullifyPointer(void** nullifyLocation)
	{
		// void g_nullify_pointer (gpointer *nullify_location);
		g_nullify_pointer(nullifyLocation);
	}
}
