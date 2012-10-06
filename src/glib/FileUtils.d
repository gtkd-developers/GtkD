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
 * inFile  = glib-File-Utilities.html
 * outPack = glib
 * outFile = FileUtils
 * strct   = 
 * realStrct=
 * ctorStrct=
 * clss    = FileUtils
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
 * 	- g_dir_
 * 	- g_mapped_file_
 * omit code:
 * 	- g_file_get_contents
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
 * The pathname argument should be in the GLib file name encoding.
 * On POSIX this is the actual on-disk encoding which might correspond
 * to the locale settings of the process (or the
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
	 * Reads an entire file into allocated memory, with good error
	 * checking.
	 * If the call was successful, it returns TRUE and sets contents to the file
	 * contents and length to the length of the file contents in bytes. The string
	 * stored in contents will be nul-terminated, so for text files you can pass
	 * NULL for the length argument. If the call was not successful, it returns
	 * FALSE and sets error. The error domain is G_FILE_ERROR. Possible error
	 * codes are those in the GFileError enumeration. In the error case,
	 * contents is set to NULL and length is set to zero.
	 * Params:
	 * filename = name of a file to read contents from, in the GLib file name encoding. [type filename]
	 * contents = location to store an allocated string, use g_free() to free
	 * the returned string. [out][array length=length][element-type guint8]
	 * Returns: TRUE on success, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public static int fileGetContents(string filename, out char[] contents)
	{
		// gboolean g_file_get_contents (const gchar *filename,  gchar **contents,  gsize *length,  GError **error);
		gchar* outcontents = null;
		size_t length;
		GError* err = null;
		
		auto p = g_file_get_contents(Str.toStringz(filename), &outcontents, &length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		contents = outcontents[0 .. length];
		return p;
	}
	
	/**
	 */
	
	/**
	 * Gets a GFileError constant based on the passed-in err_no.
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
	 * encoding. [type filename]
	 * contents = string to write to the file. [array length=length][element-type guint8]
	 * Returns: TRUE on success, FALSE if an error occurred
	 * Throws: GException on failure.
	 */
	public static int fileSetContents(string filename, string contents)
	{
		// gboolean g_file_set_contents (const gchar *filename,  const gchar *contents,  gssize length,  GError **error);
		GError* err = null;
		
		auto p = g_file_set_contents(Str.toStringz(filename), cast(char*)contents.ptr, cast(int) contents.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Returns TRUE if any of the tests in the bitfield test are
	 * TRUE. For example, (G_FILE_TEST_EXISTS |
	 * G_FILE_TEST_IS_DIR) will return TRUE if the file exists;
	 * the check whether it's a directory doesn't matter since the existence
	 * test is TRUE. With the current set of available tests, there's no point
	 * passing in more than one test at a time.
	 * Apart from G_FILE_TEST_IS_SYMLINK all tests follow symbolic links,
	 * so for a symbolic link to a regular file g_file_test() will return
	 * TRUE for both G_FILE_TEST_IS_SYMLINK and G_FILE_TEST_IS_REGULAR.
	 * Note, that for a dangling symbolic link g_file_test() will return
	 * TRUE for G_FILE_TEST_IS_SYMLINK and FALSE for all other flags.
	 * You should never use g_file_test() to test whether it is safe
	 * to perform an operation, because there is always the possibility
	 * of the condition changing before you actually perform the operation.
	 * For example, you might think you could use G_FILE_TEST_IS_SYMLINK
	 * to know whether it is safe to write to a file without being
	 * tricked into writing into a different location. It doesn't work!
	 * $(DDOC_COMMENT example)
	 * Another thing to note is that G_FILE_TEST_EXISTS and
	 * G_FILE_TEST_IS_EXECUTABLE are implemented using the access()
	 * system call. This usually doesn't matter, but if your program
	 * is setuid or setgid it means that these tests will give you
	 * the answer for the real user ID and group ID, rather than the
	 * effective user ID and group ID.
	 * On Windows, there are no symlinks, so testing for
	 * G_FILE_TEST_IS_SYMLINK will always return FALSE. Testing for
	 * G_FILE_TEST_IS_EXECUTABLE will just check that the file exists and
	 * its name indicates that it is executable, checking for well-known
	 * extensions and those listed in the PATHEXT environment variable.
	 * Params:
	 * filename = a filename to test in the GLib file name encoding
	 * test = bitfield of GFileTest flags
	 * Returns: whether a test was TRUE
	 */
	public static int fileTest(string filename, GFileTest test)
	{
		// gboolean g_file_test (const gchar *filename,  GFileTest test);
		return g_file_test(Str.toStringz(filename), test);
	}
	
	/**
	 * Opens a temporary file. See the mkstemp() documentation
	 * on most UNIX-like systems.
	 * The parameter is a string that should follow the rules for
	 * mkstemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkstemp() is slightly more flexible than mkstemp() in that the
	 * sequence does not have to occur at the very end of the template.
	 * The X string will be modified to form the name of a file that
	 * didn't exist. The string should be in the GLib file name encoding.
	 * Most importantly, on Windows it should be in UTF-8.
	 * Params:
	 * tmpl = template filename. [type filename]
	 * Returns: A file handle (as from open()) to the file opened for reading and writing. The file is opened in binary mode on platforms where there is a difference. The file handle should be closed with close(). In case of errors, -1 is returned and errno will be set.
	 */
	public static int mkstemp(string tmpl)
	{
		// gint g_mkstemp (gchar *tmpl);
		return g_mkstemp(Str.toStringz(tmpl));
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
	 * tmpl = template filename. [type filename]
	 * flags = flags to pass to an open() call in addition to O_EXCL
	 * and O_CREAT, which are passed automatically
	 * mode = permissions to create the temporary file with
	 * Returns: A file handle (as from open()) to the file opened for reading and writing. The file handle should be closed with close(). In case of errors, -1 is returned and errno will be set.
	 */
	public static int mkstempFull(string tmpl, int flags, int mode)
	{
		// gint g_mkstemp_full (gchar *tmpl,  gint flags,  gint mode);
		return g_mkstemp_full(Str.toStringz(tmpl), flags, mode);
	}
	
	/**
	 * Opens a file for writing in the preferred directory for temporary
	 * files (as returned by g_get_tmp_dir()).
	 * tmpl should be a string in the GLib file name encoding containing
	 * a sequence of six 'X' characters, as the parameter to g_mkstemp().
	 * However, unlike these functions, the template should only be a
	 * basename, no directory components are allowed. If template is
	 * NULL, a default template is used.
	 * Note that in contrast to g_mkstemp() (and mkstemp()) tmpl is not
	 * modified, and might thus be a read-only literal string.
	 * Upon success, and if name_used is non-NULL, the actual name used
	 * is returned in name_used. This string should be freed with g_free()
	 * when not needed any longer. The returned name is in the GLib file
	 * name encoding.
	 * Params:
	 * tmpl = Template for file name, as in
	 * g_mkstemp(), basename only, or NULL for a default template. [type filename][allow-none]
	 * nameUsed = location to store actual name used,
	 * or NULL. [out][type filename]
	 * Returns: A file handle (as from open()) to the file opened for reading and writing. The file is opened in binary mode on platforms where there is a difference. The file handle should be closed with close(). In case of errors, -1 is returned and error will be set.
	 * Throws: GException on failure.
	 */
	public static int fileOpenTmp(string tmpl, out string nameUsed)
	{
		// gint g_file_open_tmp (const gchar *tmpl,  gchar **name_used,  GError **error);
		char* outnameUsed = null;
		GError* err = null;
		
		auto p = g_file_open_tmp(Str.toStringz(tmpl), &outnameUsed, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		nameUsed = Str.toString(outnameUsed);
		return p;
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
		// gint g_mkdir_with_parents (const gchar *pathname,  gint mode);
		return g_mkdir_with_parents(Str.toStringz(pathname), mode);
	}
	
	/**
	 * Creates a temporary directory. See the mkdtemp() documentation
	 * on most UNIX-like systems.
	 * The parameter is a string that should follow the rules for
	 * mkdtemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkdtemp() is slightly more flexible than mkdtemp() in that the
	 * sequence does not have to occur at the very end of the template
	 * and you can pass a mode and additional flags. The X string will
	 * be modified to form the name of a directory that didn't exist.
	 * The string should be in the GLib file name encoding. Most importantly,
	 * on Windows it should be in UTF-8.
	 * Since 2.30
	 * Params:
	 * tmpl = template directory name. [type filename]
	 * Returns: A pointer to tmpl, which has been modified to hold the directory name. In case of errors, NULL is returned and errno will be set.
	 */
	public static string mkdtemp(string tmpl)
	{
		// gchar * g_mkdtemp (gchar *tmpl);
		return Str.toString(g_mkdtemp(Str.toStringz(tmpl)));
	}
	
	/**
	 * Creates a temporary directory. See the mkdtemp() documentation
	 * on most UNIX-like systems.
	 * The parameter is a string that should follow the rules for
	 * mkdtemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkdtemp() is slightly more flexible than mkdtemp() in that the
	 * sequence does not have to occur at the very end of the template
	 * and you can pass a mode. The X string will be modified to form
	 * the name of a directory that didn't exist. The string should be
	 * in the GLib file name encoding. Most importantly, on Windows it
	 * should be in UTF-8.
	 * Since 2.30
	 * Params:
	 * tmpl = template directory name. [type filename]
	 * mode = permissions to create the temporary directory with
	 * Returns: A pointer to tmpl, which has been modified to hold the directory name. In case of errors, NULL is returned, and errno will be set.
	 */
	public static string mkdtempFull(string tmpl, int mode)
	{
		// gchar * g_mkdtemp_full (gchar *tmpl,  gint mode);
		return Str.toString(g_mkdtemp_full(Str.toStringz(tmpl), mode));
	}
	
	/**
	 * A wrapper for the POSIX open() function. The open() function is
	 * used to convert a pathname into a file descriptor.
	 * On POSIX systems file descriptors are implemented by the operating
	 * system. On Windows, it's the C library that implements open() and
	 * file descriptors. The actual Win32 API for opening files is quite
	 * different, see MSDN documentation for CreateFile(). The Win32 API
	 * uses file handles, which are more randomish integers, not small
	 * integers like file descriptors.
	 * Because file descriptors are specific to the C library on Windows,
	 * the file descriptor returned by this function makes sense only to
	 * functions in the same C library. Thus if the GLib-using code uses a
	 * different C library than GLib does, the file descriptor returned by
	 * this function cannot be passed to C library functions like write()
	 * or read().
	 * See your C library manual for more details about open().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * flags = as in open()
	 * mode = as in open()
	 * Returns: a new file descriptor, or -1 if an error occurred. The return value can be used exactly like the return value from open().
	 */
	public static int open(string filename, int flags, int mode)
	{
		// int g_open (const gchar *filename,  int flags,  int mode);
		return g_open(Str.toStringz(filename), flags, mode);
	}
	
	/**
	 * A wrapper for the POSIX rename() function. The rename() function
	 * renames a file, moving it between directories if required.
	 * See your C library manual for more details about how rename() works
	 * on your system. It is not possible in general on Windows to rename
	 * a file that is open to some process.
	 * Since 2.6
	 * Params:
	 * oldfilename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * newfilename = a pathname in the GLib file name encoding
	 * Returns: 0 if the renaming succeeded, -1 if an error occurred
	 */
	public static int rename(string oldfilename, string newfilename)
	{
		// int g_rename (const gchar *oldfilename,  const gchar *newfilename);
		return g_rename(Str.toStringz(oldfilename), Str.toStringz(newfilename));
	}
	
	/**
	 * A wrapper for the POSIX mkdir() function. The mkdir() function
	 * attempts to create a directory with the given name and permissions.
	 * The mode argument is ignored on Windows.
	 * See your C library manual for more details about mkdir().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = permissions to use for the newly created directory
	 * Returns: 0 if the directory was successfully created, -1 if an error occurred
	 */
	public static int mkdir(string filename, int mode)
	{
		// int g_mkdir (const gchar *filename,  int mode);
		return g_mkdir(Str.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX stat() function. The stat() function
	 * returns information about a file. On Windows the stat() function in
	 * the C library checks only the FAT-style READONLY attribute and does
	 * not look at the ACL at all. Thus on Windows the protection bits in
	 * the st_mode field are a fabrication of little use.
	 * On Windows the Microsoft C libraries have several variants of the
	 * stat struct and stat() function with names
	 * like "_stat", "_stat32", "_stat32i64" and "_stat64i32". The one
	 * used here is for 32-bit code the one with 32-bit size and time
	 * fields, specifically called "_stat32".
	 * In Microsoft's compiler, by default "struct stat" means one with
	 * 64-bit time fields while in MinGW "struct stat" is the legacy one
	 * with 32-bit fields. To hopefully clear up this messs, the gstdio.h
	 * header defines a type GStatBuf which is the appropriate struct type
	 * depending on the platform and/or compiler being used. On POSIX it
	 * is just "struct stat", but note that even on POSIX platforms,
	 * "stat" might be a macro.
	 * See your C library manual for more details about stat().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * buf = a pointer to a stat struct, which
	 * will be filled with the file information
	 * Returns: 0 if the information was successfully retrieved, -1 if an error occurred
	 */
	public static int stat(string filename, GStatBuf* buf)
	{
		// int g_stat (const gchar *filename,  GStatBuf *buf);
		return g_stat(Str.toStringz(filename), buf);
	}
	
	/**
	 * A wrapper for the POSIX lstat() function. The lstat() function is
	 * like stat() except that in the case of symbolic links, it returns
	 * information about the symbolic link itself and not the file that it
	 * refers to. If the system does not support symbolic links g_lstat()
	 * is identical to g_stat().
	 * See your C library manual for more details about lstat().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * buf = a pointer to a stat struct, which
	 * will be filled with the file information
	 * Returns: 0 if the information was successfully retrieved, -1 if an error occurred
	 */
	public static int lstat(string filename, GStatBuf* buf)
	{
		// int g_lstat (const gchar *filename,  GStatBuf *buf);
		return g_lstat(Str.toStringz(filename), buf);
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
	 * A wrapper for the POSIX remove() function. The remove() function
	 * deletes a name from the filesystem.
	 * See your C library manual for more details about how remove() works
	 * on your system. On Unix, remove() removes also directories, as it
	 * calls unlink() for files and rmdir() for directories. On Windows,
	 * although remove() in the C library only works for files, this
	 * function tries first remove() and then if that fails rmdir(), and
	 * thus works for both files and directories. Note however, that on
	 * Windows, it is in general not possible to remove a file that is
	 * open to some process, or mapped into memory.
	 * If this function fails on Windows you can't infer too much from the
	 * errno value. rmdir() is tried regardless of what caused remove() to
	 * fail. Any errno value set by remove() will be overwritten by that
	 * set by rmdir().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns: 0 if the file was successfully removed, -1 if an error occurred
	 */
	public static int remove(string filename)
	{
		// int g_remove (const gchar *filename);
		return g_remove(Str.toStringz(filename));
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
	 * A wrapper for the stdio fopen() function. The fopen() function
	 * opens a file and associates a new stream with it.
	 * Because file descriptors are specific to the C library on Windows,
	 * and a file descriptor is partof the FILE struct, the
	 * FILE pointer returned by this function makes sense
	 * only to functions in the same C library. Thus if the GLib-using
	 * code uses a different C library than GLib does, the
	 * FILE pointer returned by this function cannot be
	 * passed to C library functions like fprintf() or fread().
	 * See your C library manual for more details about fopen().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = a string describing the mode in which the file should be
	 * opened
	 * Returns: A FILE pointer if the file was successfully opened, or NULL if an error occurred
	 */
	public static FILE* fopen(string filename, string mode)
	{
		// FILE * g_fopen (const gchar *filename,  const gchar *mode);
		return cast(FILE*)g_fopen(Str.toStringz(filename), Str.toStringz(mode));
	}
	
	/**
	 * A wrapper for the POSIX freopen() function. The freopen() function
	 * opens a file and associates it with an existing stream.
	 * See your C library manual for more details about freopen().
	 * Since 2.6
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = a string describing the mode in which the file should be
	 * opened
	 * stream = an existing stream which will be reused, or NULL. [allow-none]
	 * Returns: A FILE pointer if the file was successfully opened, or NULL if an error occurred.
	 */
	public static FILE* freopen(string filename, string mode, FILE* stream)
	{
		// FILE * g_freopen (const gchar *filename,  const gchar *mode,  FILE *stream);
		return cast(FILE*)g_freopen(Str.toStringz(filename), Str.toStringz(mode), cast(void*)stream);
	}
	
	/**
	 * A wrapper for the POSIX chmod() function. The chmod() function is
	 * used to set the permissions of a file system object.
	 * On Windows the file protection mechanism is not at all POSIX-like,
	 * and the underlying chmod() function in the C library just sets or
	 * clears the FAT-style READONLY attribute. It does not touch any
	 * ACL. Software that needs to manage file permissions on Windows
	 * exactly should use the Win32 API.
	 * See your C library manual for more details about chmod().
	 * Since 2.8
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = as in chmod()
	 * Returns: zero if the operation succeeded, -1 on error.
	 */
	public static int chmod(string filename, int mode)
	{
		// int g_chmod (const gchar *filename,  int mode);
		return g_chmod(Str.toStringz(filename), mode);
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
	 * A wrapper for the POSIX creat() function. The creat() function is
	 * used to convert a pathname into a file descriptor, creating a file
	 * if necessary.
	 * On POSIX systems file descriptors are implemented by the operating
	 * system. On Windows, it's the C library that implements creat() and
	 * file descriptors. The actual Windows API for opening files is
	 * different, see MSDN documentation for CreateFile(). The Win32 API
	 * uses file handles, which are more randomish integers, not small
	 * integers like file descriptors.
	 * Because file descriptors are specific to the C library on Windows,
	 * the file descriptor returned by this function makes sense only to
	 * functions in the same C library. Thus if the GLib-using code uses a
	 * different C library than GLib does, the file descriptor returned by
	 * this function cannot be passed to C library functions like write()
	 * or read().
	 * See your C library manual for more details about creat().
	 * Since 2.8
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode = as in creat()
	 * Returns: a new file descriptor, or -1 if an error occurred. The return value can be used exactly like the return value from creat().
	 */
	public static int creat(string filename, int mode)
	{
		// int g_creat (const gchar *filename,  int mode);
		return g_creat(Str.toStringz(filename), mode);
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
	
	/**
	 * A wrapper for the POSIX utime() function. The utime() function
	 * sets the access and modification timestamps of a file.
	 * See your C library manual for more details about how utime() works
	 * on your system.
	 * Since 2.18
	 * Params:
	 * filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * utb = a pointer to a struct utimbuf.
	 * Returns: 0 if the operation was successful, -1 if an error occurred
	 */
	public static int utime(string filename, void* utb)
	{
		// int g_utime (const gchar *filename,  struct utimbuf *utb);
		return g_utime(Str.toStringz(filename), utb);
	}
}
