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
 * inFile  = glib-Windows-Compatibility-Functions.html
 * outPack = glib
 * outFile = WindowsUtils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = WindowsUtils
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_win32_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.WindowsUtils;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * These functions provide some level of UNIX emulation on the
 * Windows platform. If your application really needs the POSIX
 * APIs, we suggest you try the Cygwin project.
 */
public class WindowsUtils
{
	
	/**
	 */
	
	/**
	 * Translate a Win32 error code (as returned by GetLastError()) into
	 * the corresponding message. The message is either language neutral,
	 * or in the thread's language, or the user's language, the system's
	 * language, or US English (see docs for FormatMessage()). The
	 * returned string is in UTF-8. It should be deallocated with
	 * g_free().
	 * Params:
	 * error = error code.
	 * Returns: newly-allocated error message
	 */
	public static string errorMessage(int error)
	{
		// gchar * g_win32_error_message (gint error);
		return Str.toString(g_win32_error_message(error));
	}
	
	/**
	 * The setlocale() function in the Microsoft C library uses locale
	 * names of the form "English_United States.1252" etc. We want the
	 * UNIXish standard form "en_US", "zh_TW" etc. This function gets the
	 * current thread locale from Windows - without any encoding info -
	 * and returns it as a string of the above form for use in forming
	 * file names etc. The returned string should be deallocated with
	 * g_free().
	 * Returns: newly-allocated locale name.
	 */
	public static string getlocale()
	{
		// gchar * g_win32_getlocale (void);
		return Str.toString(g_win32_getlocale());
	}
	
	/**
	 * Warning
	 * g_win32_get_package_installation_directory has been deprecated since version 2.18 and should not be used in newly-written code. Pass the HMODULE of a DLL or EXE to
	 * g_win32_get_package_installation_directory_of_module() instead.
	 * Try to determine the installation directory for a software package.
	 * This function is deprecated. Use
	 * g_win32_get_package_installation_directory_of_module() instead.
	 * The use of package is deprecated. You should always pass NULL. A
	 * warning is printed if non-NULL is passed as package.
	 * The original intended use of package was for a short identifier of
	 * the package, typically the same identifier as used for
	 * GETTEXT_PACKAGE in software configured using GNU
	 * autotools. The function first looks in the Windows Registry for the
	 * value #InstallationDirectory in the key
	 * #HKLM\Software@package, and if that value
	 * exists and is a string, returns that.
	 * It is strongly recommended that packagers of GLib-using libraries
	 * for Windows do not store installation paths in the Registry to be
	 * used by this function as that interfers with having several
	 * parallel installations of the library. Enabling multiple
	 * installations of different versions of some GLib-using library, or
	 * GLib itself, is desirable for various reasons.
	 * For this reason it is recommeded to always pass NULL as
	 * package to this function, to avoid the temptation to use the
	 * Registry. In version 2.20 of GLib the package parameter
	 * will be ignored and this function won't look in the Registry at all.
	 * If package is NULL, or the above value isn't found in the
	 * Registry, but dll_name is non-NULL, it should name a DLL loaded
	 * into the current process. Typically that would be the name of the
	 * DLL calling this function, looking for its installation
	 * directory. The function then asks Windows what directory that DLL
	 * was loaded from. If that directory's last component is "bin" or
	 * "lib", the parent directory is returned, otherwise the directory
	 * itself. If that DLL isn't loaded, the function proceeds as if
	 * dll_name was NULL.
	 * If both package and dll_name are NULL, the directory from where
	 * the main executable of the process was loaded is used instead in
	 * the same way as above.
	 * Params:
	 * dllName = The name of a DLL that a package provides in UTF-8, or NULL. [allow-none]
	 * Returns: a string containing the installation directory for package. The string is in the GLib file name encoding, i.e. UTF-8. The return value should be freed with g_free() when not needed any longer. If the function fails NULL is returned.
	 */
	public static string getPackageInstallationDirectory(string p, string dllName)
	{
		// gchar * g_win32_get_package_installation_directory  (const gchar *package,  const gchar *dll_name);
		return Str.toString(g_win32_get_package_installation_directory(Str.toStringz(p), Str.toStringz(dllName)));
	}
	
	/**
	 * This function tries to determine the installation directory of a
	 * software package based on the location of a DLL of the software
	 * package.
	 * hmodule should be the handle of a loaded DLL or NULL. The
	 * function looks up the directory that DLL was loaded from. If
	 * hmodule is NULL, the directory the main executable of the current
	 * process is looked up. If that directory's last component is "bin"
	 * or "lib", its parent directory is returned, otherwise the directory
	 * itself.
	 * It thus makes sense to pass only the handle to a "public" DLL of a
	 * software package to this function, as such DLLs typically are known
	 * to be installed in a "bin" or occasionally "lib" subfolder of the
	 * installation folder. DLLs that are of the dynamically loaded module
	 * or plugin variety are often located in more private locations
	 * deeper down in the tree, from which it is impossible for GLib to
	 * deduce the root of the package installation.
	 * The typical use case for this function is to have a DllMain() that
	 * saves the handle for the DLL. Then when code in the DLL needs to
	 * construct names of files in the installation tree it calls this
	 * function passing the DLL handle.
	 * Since 2.16
	 * Params:
	 * hmodule = The Win32 handle for a DLL loaded into the current process, or NULL. [allow-none]
	 * Returns: a string containing the guessed installation directory for the software package hmodule is from. The string is in the GLib file name encoding, i.e. UTF-8. The return value should be freed with g_free() when not needed any longer. If the function fails NULL is returned.
	 */
	public static string getPackageInstallationDirectoryOfModule(void* hmodule)
	{
		// gchar * g_win32_get_package_installation_directory_of_module  (gpointer hmodule);
		return Str.toString(g_win32_get_package_installation_directory_of_module(hmodule));
	}
	
	/**
	 * Warning
	 * g_win32_get_package_installation_subdirectory has been deprecated since version 2.18 and should not be used in newly-written code. Pass the HMODULE of a DLL or EXE to
	 * g_win32_get_package_installation_directory_of_module() instead, and
	 * then construct a subdirectory pathname with g_build_filename().
	 * This function is deprecated. Use
	 * g_win32_get_package_installation_directory_of_module() and
	 * g_build_filename() instead.
	 * Returns a newly-allocated string containing the path of the
	 * subdirectory subdir in the return value from calling
	 * g_win32_get_package_installation_directory() with the package and
	 * dll_name parameters. See the documentation for
	 * g_win32_get_package_installation_directory() for more details. In
	 * particular, note that it is deprecated to pass anything except NULL
	 * as package.
	 * Params:
	 * dllName = The name of a DLL that a package provides, in UTF-8, or NULL. [allow-none]
	 * subdir = A subdirectory of the package installation directory, also in UTF-8
	 * Returns: a string containing the complete path to subdir inside the installation directory of package. The returned string is in the GLib file name encoding, i.e. UTF-8. The return value should be freed with g_free() when no longer needed. If something goes wrong, NULL is returned.
	 */
	public static string getPackageInstallationSubdirectory(string p, string dllName, string subdir)
	{
		// gchar * g_win32_get_package_installation_subdirectory  (const gchar *package,  const gchar *dll_name,  const gchar *subdir);
		return Str.toString(g_win32_get_package_installation_subdirectory(Str.toStringz(p), Str.toStringz(dllName), Str.toStringz(subdir)));
	}
	
	/**
	 * Returns version information for the Windows operating system the
	 * code is running on. See MSDN documentation for the GetVersion()
	 * function. To summarize, the most significant bit is one on Win9x,
	 * and zero on NT-based systems. Since version 2.14, GLib works only
	 * on NT-based systems, so checking whether your are running on Win9x
	 * in your own software is moot. The least significant byte is 4 on
	 * Windows NT 4, and 5 on Windows XP. Software that needs really
	 * detailed version and feature information should use Win32 API like
	 * GetVersionEx() and VerifyVersionInfo().
	 * Since 2.6
	 * Returns: The version information.
	 */
	public static uint getWindowsVersion()
	{
		// guint g_win32_get_windows_version (void);
		return g_win32_get_windows_version();
	}
	
	/**
	 * Converts a filename from UTF-8 to the system codepage.
	 * On NT-based Windows, on NTFS file systems, file names are in
	 * Unicode. It is quite possible that Unicode file names contain
	 * characters not representable in the system codepage. (For instance,
	 * Greek or Cyrillic characters on Western European or US Windows
	 * installations, or various less common CJK characters on CJK Windows
	 * installations.)
	 * In such a case, and if the filename refers to an existing file, and
	 * the file system stores alternate short (8.3) names for directory
	 * entries, the short form of the filename is returned. Note that the
	 * "short" name might in fact be longer than the Unicode name if the
	 * Unicode name has very short pathname components containing
	 * non-ASCII characters. If no system codepage name for the file is
	 * possible, NULL is returned.
	 * The return value is dynamically allocated and should be freed with
	 * g_free() when no longer needed.
	 * Since 2.8
	 * Params:
	 * utf8filename = a UTF-8 encoded filename.
	 * Returns: The converted filename, or NULL on conversion failure and lack of short names.
	 */
	public static string localeFilenameFromUtf8(string utf8filename)
	{
		// gchar * g_win32_locale_filename_from_utf8 (const gchar *utf8filename);
		return Str.toString(g_win32_locale_filename_from_utf8(Str.toStringz(utf8filename)));
	}
}
