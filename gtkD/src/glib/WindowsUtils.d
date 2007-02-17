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
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 */

module glib.WindowsUtils;

private import gtkc.glibtypes;

private import gtkc.glib;

private import glib.Str;



/**
 * Description
 * These functions provide some level of UNIX emulation on the Windows platform.
 * If your application really needs the POSIX APIs, we suggest you try the Cygwin
 * project.
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
	 * error:
	 *  error code.
	 * Returns:
	 *  newly-allocated error message
	 */
	public static char[] errorMessage(int error)
	{
		// gchar* g_win32_error_message (gint error);
		return Str.toString(g_win32_error_message(error) );
	}
	
	/**
	 * The setlocale() function in the Microsoft C library uses locale
	 * names of the form "English_United States.1252" etc. We want the
	 * UNIXish standard form "en_US", "zh_TW" etc. This function gets the
	 * current thread locale from Windows - without any encoding info -
	 * and returns it as a string of the above form for use in forming
	 * file names etc. The returned string should be deallocated with
	 * g_free().
	 * Returns:
	 *  newly-allocated locale name.
	 */
	public static char[] getlocale()
	{
		// gchar* g_win32_getlocale (void);
		return Str.toString(g_win32_getlocale() );
	}
	
	/**
	 * Try to determine the installation directory for a software package.
	 * Typically used by GNU software packages.
	 * package should be a short identifier for the package. Typically it
	 * is the same identifier as used for
	 * GETTEXT_PACKAGE in software configured according
	 * to GNU standards. The function first looks in the Windows Registry
	 * for the value #InstallationDirectory in the key
	 * #HKLM\Software\package, and if that value
	 * exists and is a string, returns that.
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
	 * package:
	 *  An identifier for a software package, or NULL, in UTF-8
	 * dll_name:
	 *  The name of a DLL that a package provides, or NULL, in UTF-8
	 * Returns:
	 *  a string containing the installation directory for
	 * package. The string is in the GLib file name encoding, i.e. UTF-8
	 * on Windows. The return value should be freed with g_free() when not
	 * needed any longer.
	 */
	public static char[] getPackageInstallationDirectory(char[] p, char[] dllName)
	{
		// gchar* g_win32_get_package_installation_directory  (const gchar *package,  const gchar *dll_name);
		return Str.toString(g_win32_get_package_installation_directory(Str.toStringz(p), Str.toStringz(dllName)) );
	}
	
	/**
	 * Returns a newly-allocated string containing the path of the
	 * subdirectory subdir in the return value from calling
	 * g_win32_get_package_installation_directory() with the package and
	 * dll_name parameters.
	 * package:
	 *  An identifier for a software package, in UTF-8, or NULL
	 * dll_name:
	 *  The name of a DLL that a package provides, in UTF-8, or NULL
	 * subdir:
	 *  A subdirectory of the package installation directory, also in UTF-8
	 * Returns:
	 *  a string containing the complete path to subdir inside
	 * the installation directory of package. The returned string is in
	 * the GLib file name encoding, i.e. UTF-8 on Windows. The return
	 * value should be freed with g_free() when no longer needed.
	 */
	public static char[] getPackageInstallationSubdirectory(char[] p, char[] dllName, char[] subdir)
	{
		// gchar* g_win32_get_package_installation_subdirectory  (const gchar *package,  const gchar *dll_name,  const gchar *subdir);
		return Str.toString(g_win32_get_package_installation_subdirectory(Str.toStringz(p), Str.toStringz(dllName), Str.toStringz(subdir)) );
	}
	
	/**
	 * Returns version information for the Windows operating system the
	 * code is running on. See MSDN documentation for the GetVersion()
	 * function. To summarize, the most significant bit is one on Win9x,
	 * and zero on NT-based systems. Since version 2.14, GLib works only
	 * on NT-based systems, so checking whether your are running on Win9x
	 * in your own software is moot. The least significant byte is 4 on
	 * Windows NT 4, and 5 on Windows XP. Software that needs really
	 * detailled version and feature information should use Win32 API like
	 * GetVersionEx() and VerifyVersionInfo().
	 * Returns:
	 *  The version information.
	 * Since 2.6
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
	 * utf8filename:
	 *  a UTF-8 encoded filename.
	 * Returns:
	 *  The converted filename, or NULL on conversion
	 * failure and lack of short names.
	 * Since 2.8
	 */
	public static char[] localeFilenameFromUtf8(char[] utf8filename)
	{
		// gchar* g_win32_locale_filename_from_utf8 (const gchar *utf8filename);
		return Str.toString(g_win32_locale_filename_from_utf8(Str.toStringz(utf8filename)) );
	}
	
	
	
}
