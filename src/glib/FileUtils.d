/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
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
 * inFile  = glib-File-Utilities.html
 * outPack = glib
 * outFile = FileUtils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = FileUtils
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * 	- g_dir_
 * 	- g_mapped_file_
 * omit code:
 * omit signals:
 * imports:
 * 	- std.c.stdio
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.FileUtils;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;


version(Tango) {
	private import tango.stdc.stdio;
} else {
	private import std.c.stdio;
}



/**
 * Description
 * There is a group of functions which wrap the common POSIX functions
 * dealing with filenames (g_open(), g_rename(), g_mkdir(), g_stat(),
 * g_unlink(), g_remove(), g_fopen(), g_freopen()). The point of these
 * wrappers is to make it possible to handle file names with any Unicode
 * characters in them on Windows without having to use ifdefs and the
 * wide character API in the application code.
 * The pathname argument should be in the GLib file name encoding. On
 * POSIX this is the actual on-disk encoding which might correspond to
 * the locale settings of the process (or the
 * G_FILENAME_ENCODING environment variable), or not.
 * On Windows the GLib file name encoding is UTF-8. Note that the
 * Microsoft C library does not use UTF-8, but has separate APIs for
 * current system code page and wide characters (UTF-16). The GLib
 * wrappers call the wide character API if present (on modern Windows
 * systems), otherwise convert to/from the system code page.
 * Another group of functions allows to open and read directories
 * in the GLib file name encoding. These are g_dir_open(),
 * g_dir_read_name(), g_dir_rewind(), g_dir_close().
 */
public class FileUtils
{
	
	/**
	 */
	
	/**
	 * Gets a GFileError constant based on the passed-in errno.
	 * For example, if you pass in EEXIST this function returns
	 * G_FILE_ERROR_EXIST. Unlike errno values, you can portably
	 * assume that all GFileError values will exist.
	 * Normally a GFileError value goes into a GError returned
	 * from a function that manipulates files. So you would use
	 * g_file_error_from_errno() when constructing a GError.
	 * Params:
	 * errNo = an "errno" value
	 * Returns: GFileError corresponding to the given errno
	 */
	public static GFileError fileErrorFromErrno(int errNo)
	{
		// GFileError g_file_error_from_errno (gint err_no);
		return g_file_error_from_errno(errNo);
	}
	
	/**
	 * Writes all of contents to a file named filename, with good error checking.
	 * If a file called filename already exists it will be overwritten.
	 * This write is atomic in the sense that it is first written to a temporary
	 * Since 2.8
	 * Params:
	 * filename = name of a file to write contents to, in the GLib file name
	 * encoding
	 * contents = string to write to the file
	 * length = length of contents, or -1 if contents is a nul-terminated string
	 * Returns: TRUE on success, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public static int fileSetContents(string filename, string contents, gssize length)
	{
		// gboolean g_file_set_contents (const gchar *filename,  const gchar *contents,  gssize length,  GError **error);
		GError* err = null;
		
		auto p = g_file_set_contents(Str.toStringz(filename), Str.toStringz(contents), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Opens a temporary file. See the mkstemp() documentation
	 * on most UNIX-like systems.
	 * The parameter is a string that should follow the rules for
	 * mkstemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkstemp_full() is slightly more flexible than mkstemp()
	 * in that the sequence does not have to occur at the very end of the
	 * template and you can pass a mode and additional flags. The X
	 * string will be modified to form the name of a file that didn't exist.
	 * The string should be in the GLib file name encoding. Most importantly,
	 * on Windows it should be in UTF-8.
	 * Since 2.22
	 * Params:
	 * tmpl = template filename
	 * flags = flags to pass to an open() call in addition to O_EXCL and
	 * O_CREAT, which are passed automatically
	 * mode = permissios to create the temporary file with
	 * Returns: A file handle (as from open()) to the file opened for reading and writing. The file handle should be closed with close(). In case of errors, -1 is returned.
	 */
	public static int mkstempFull(string tmpl, int flags, int mode)
	{
		// gint g_mkstemp_full (gchar *tmpl,  int flags,  int mode);
		return g_mkstemp_full(Str.toStringz(tmpl), flags, mode);
	}
	
	/**
	 * Reads the contents of the symbolic link filename like the POSIX
	 * readlink() function. The returned string is in the encoding used
	 * for filenames. Use g_filename_to_utf8() to convert it to UTF-8.
	 * Since 2.4
	 * Params:
	 * filename = the symbolic link
	 * Returns: A newly-allocated string with the contents of the symbolic link, or NULL if an error occurred.
	 * Throws: GException on failure.
	 */
	public static string fileReadLink(string filename)
	{
		// gchar * g_file_read_link (const gchar *filename,  GError **error);
		GError* err = null;
		
		auto p = g_file_read_link(Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toString(p);
	}
	
	/**
	 * Create a directory if it doesn't already exist. Create intermediate
	 * parent directories as needed, too.
	 * Since 2.8
	 * Params:
	 * pathname = a pathname in the GLib file name encoding
	 * mode = permissions to use for newly created directories
	 * Returns: 0 if the directory already exists, or was successfully created. Returns -1 if an error occurred, with errno set.
	 */
	public static int mkdirWithParents(string pathname, int mode)
	{
		// int g_mkdir_with_parents (const gchar *pathname,  int mode);
		return g_mkdir_with_parents(Str.toStringz(pathname), mode);
	}
	
	/**
	 * A wrapper for the POSIX unlink() function. The unlink() function
	 * deletes a name from the filesystem. If this was the last link to the
	 * file and no processes have it opened, the diskspace occupied by the
	 * file is freed.
	 * See your C library manual for more details about unlink(). Note
	 * that on Windows, it is in general not possible to delete files that
	 * are open to some process, or mapped into memory.
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns: 0 if the name was successfully deleted, -1 if an error occurred
	 */
	public static int unlink(string filename)
	{
		// int g_unlink (const gchar *filename);
		return g_unlink(Str.toStringz(filename));
	}
	
	/**
	 * A wrapper for the POSIX rmdir() function. The rmdir() function
	 * deletes a directory from the filesystem.
	 * See your C library manual for more details about how rmdir() works
	 * on your system.
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns: 0 if the directory was successfully removed, -1 if an error occurred
	 */
	public static int rmdir(string filename)
	{
		// int g_rmdir (const gchar *filename);
		return g_rmdir(Str.toStringz(filename));
	}
	
	/**
	 * A wrapper for the POSIX access() function. This function is used to
	 * test a pathname for one or several of read, write or execute
	 * permissions, or just existence.
	 * On Windows, the file protection mechanism is not at all POSIX-like,
	 * and the underlying function in the C library only checks the
	 * FAT-style READONLY attribute, and does not look at the ACL of a
	 * file at all. This function is this in practise almost useless on
	 * Windows. Software that needs to handle file permissions on Windows
	 * more exactly should use the Win32 API.
	 * See your C library manual for more details about access().
	 * Since 2.8
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = as in access()
	 * Returns: zero if the pathname refers to an existing file system object that has all the tested permissions, or -1 otherwise or on error.
	 */
	public static int access(string filename, int mode)
	{
		// int g_access (const gchar *filename,  int mode);
		return g_access(Str.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX chdir() function. The function changes the
	 * current directory of the process to path.
	 * See your C library manual for more details about chdir().
	 * Since 2.8
	 * Params:
	 * path = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns: 0 on success, -1 if an error occurred.
	 */
	public static int chdir(string path)
	{
		// int g_chdir (const gchar *path);
		return g_chdir(Str.toStringz(path));
	}
}
