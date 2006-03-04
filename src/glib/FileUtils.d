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
 * outFile = FileUtils
 * strct   = 
 * clss    = FileUtils
 * prefixes:
 * 	- g_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- std.c.stdio
 * structWrap:
 * local aliases:
 */

module glib.FileUtils;

private import glib.typedefs;

private import lib.glib;

private import std.c.stdio;
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
	 * err_no:
	 *  an "errno" value
	 * Returns:
	 *  GFileError corresponding to the given errno
	 */
	public static GFileError fileErrorFromErrno(int errNo)
	{
		// GFileError g_file_error_from_errno (gint err_no);
		return g_file_error_from_errno(errNo);
	}
	
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
	 * filename:
	 *  name of a file to read contents from, in the GLib file name encoding
	 * contents:
	 *  location to store an allocated string
	 * length:
	 *  location to store length in bytes of the contents, or NULL
	 * error:
	 *  return location for a GError, or NULL
	 * Returns:
	 *  TRUE on success, FALSE if an error occurred
	 */
	public static int fileGetContents(char[] filename, char** contents, uint* length, GError** error)
	{
		// gboolean g_file_get_contents (const gchar *filename,  gchar **contents,  gsize *length,  GError **error);
		return g_file_get_contents(std.string.toStringz(filename), contents, length, error);
	}
	
	/**
	 * Writes all of contents to a file named filename, with good error checking.
	 * If a file called filename already exists it will be overwritten.
	 * This write is atomic in the sense that it is first written to a temporary
	 * file which is then renamed to the final name. Notes:
	 *  On Unix, if filename already exists hard links to filename will break.
	 *  Also since the file is recreated, existing permissions, access control
	 *  lists, metadata etc. may be lost. If filename is a symbolic link,
	 *  the link itself will be replaced, not the linked file.
	 *  On Windows renaming a file will not remove an existing file with the
	 *  new name, so on Windows there is a race condition between the existing
	 *  file being removed and the temporary file being renamed.
	 *  On Windows there is no way to remove a file that is open to some
	 *  process, or mapped into memory. Thus, this function will fail if
	 *  filename already exists and is open.
	 * If the call was sucessful, it returns TRUE. If the call was not successful,
	 * it returns FALSE and sets error. The error domain is G_FILE_ERROR.
	 * Possible error codes are those in the GFileError enumeration.
	 * filename:
	 *  name of a file to write contents to, in the GLib file name
	 *  encoding
	 * contents:
	 *  string to write to the file
	 * length:
	 *  length of contents, or -1 if contents is a nul-terminated string
	 * error:
	 *  return location for a GError, or NULL
	 * Returns:
	 *  TRUE on success, FALSE if an error occurred
	 * Since 2.8
	 */
	public static int fileSetContents(char[] filename, char[] contents, int length, GError** error)
	{
		// gboolean g_file_set_contents (const gchar *filename,  const gchar *contents,  gssize length,  GError **error);
		return g_file_set_contents(std.string.toStringz(filename), std.string.toStringz(contents), length, error);
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
	 * to know whether it is is safe to write to a file without being
	 * tricked into writing into a different location. It doesn't work!
	 * /+* DON'T DO THIS +/
	 *  if (!g_file_test (filename, G_FILE_TEST_IS_SYMLINK)) {
		 *  fd = g_open (filename, O_WRONLY);
		 *  /+* write to fd +/
	 *  }
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
	 * filename:
	 *  a filename to test in the GLib file name encoding
	 * test:
	 *  bitfield of GFileTest flags
	 * Returns:
	 *  whether a test was TRUE
	 */
	public static int fileTest(char[] filename, GFileTest test)
	{
		// gboolean g_file_test (const gchar *filename,  GFileTest test);
		return g_file_test(std.string.toStringz(filename), test);
	}
	
	/**
	 * Opens a temporary file. See the mkstemp() documentation
	 * on most UNIX-like systems. This is a portability wrapper, which simply calls
	 * mkstemp() on systems that have it, and implements
	 * it in GLib otherwise.
	 * The parameter is a string that should match the rules for
	 * mkstemp(), i.e. end in "XXXXXX". The X string will
	 * be modified to form the name of a file that didn't exist.
	 * The string should be in the GLib file name encoding. Most importantly,
	 * on Windows it should be in UTF-8.
	 * tmpl:
	 *  template filename
	 * Returns:
	 *  A file handle (as from open()) to the file
	 * opened for reading and writing. The file is opened in binary mode
	 * on platforms where there is a difference. The file handle should be
	 * closed with close(). In case of errors, -1 is returned.
	 */
	public static int mkstemp(char[] tmpl)
	{
		// gint g_mkstemp (gchar *tmpl);
		return g_mkstemp(std.string.toStringz(tmpl));
	}
	
	/**
	 * Opens a file for writing in the preferred directory for temporary
	 * files (as returned by g_get_tmp_dir()).
	 * tmpl should be a string in the GLib file name encoding ending with
	 * six 'X' characters, as the parameter to g_mkstemp() (or mkstemp()).
	 * However, unlike these functions, the template should only be a
	 * basename, no directory components are allowed. If template is
	 * NULL, a default template is used.
	 * Note that in contrast to g_mkstemp() (and mkstemp())
	 * tmpl is not modified, and might thus be a read-only literal string.
	 * The actual name used is returned in name_used if non-NULL. This
	 * string should be freed with g_free() when not needed any longer.
	 * The returned name is in the GLib file name encoding.
	 * tmpl:
	 *  Template for file name, as in g_mkstemp(), basename only
	 * name_used:
	 *  location to store actual name used
	 * error:
	 *  return location for a GError
	 * Returns:
	 *  A file handle (as from open()) to
	 * the file opened for reading and writing. The file is opened in binary
	 * mode on platforms where there is a difference. The file handle should be
	 * closed with close(). In case of errors, -1 is returned
	 * and error will be set.
	 */
	public static int fileOpenTmp(char[] tmpl, char** nameUsed, GError** error)
	{
		// gint g_file_open_tmp (const gchar *tmpl,  gchar **name_used,  GError **error);
		return g_file_open_tmp(std.string.toStringz(tmpl), nameUsed, error);
	}
	
	/**
	 * Reads the contents of the symbolic link filename like the POSIX
	 * readlink() function. The returned string is in the encoding used
	 * for filenames. Use g_filename_to_utf8() to convert it to UTF-8.
	 * filename:
	 *  the symbolic link
	 * error:
	 *  return location for a GError
	 * Returns:
	 *  A newly allocated string with the contents of the symbolic link,
	 *  or NULL if an error occurred.
	 * Since 2.4
	 */
	public static char[] fileReadLink(char[] filename, GError** error)
	{
		// gchar* g_file_read_link (const gchar *filename,  GError **error);
		return std.string.toString(g_file_read_link(std.string.toStringz(filename), error) );
	}
	
	/**
	 * Create a directory if it doesn't already exist. Create intermediate
	 * parent directories as needed, too.
	 * pathname:
	 *  a pathname in the GLib file name encoding
	 * mode:
	 *  permissions to use for newly created directories
	 * Returns:
	 *  0 if the directory already exists, or was successfully
	 * created. Returns -1 if an error occurred, with errno set.
	 * Since 2.8
	 */
	public static int mkdirWithParents(char[] pathname, int mode)
	{
		// int g_mkdir_with_parents (const gchar *pathname,  int mode);
		return g_mkdir_with_parents(std.string.toStringz(pathname), mode);
	}
	
	
	/**
	 * Opens a directory for reading. The names of the files in the
	 * directory can then be retrieved using g_dir_read_name().
	 * path:
	 *  the path to the directory you are interested in. On Unix
	 *  in the on-disk encoding. On Windows in UTF-8
	 * flags:
	 *  Currently must be set to 0. Reserved for future use.
	 * error:
	 *  return location for a GError, or NULL.
	 *  If non-NULL, an error will be set if and only if
	 *  g_dir_open() fails.
	 * Returns:
	 *  a newly allocated GDir on success, NULL on failure.
	 *  If non-NULL, you must free the result with g_dir_close()
	 *  when you are finished with it.
	 */
	public static GDir* dirOpen(char[] path, uint flags, GError** error)
	{
		// GDir* g_dir_open (const gchar *path,  guint flags,  GError **error);
		return g_dir_open(std.string.toStringz(path), flags, error);
	}
	
	/**
	 * Retrieves the name of the next entry in the directory. The '.' and
	 * '..' entries are omitted. On Windows, the returned name is in
	 * UTF-8. On Unix, it is in the on-disk encoding.
	 * dir:
	 *  a GDir* created by g_dir_open()
	 * Returns:
	 *  The entry's name or NULL if there are no
	 *  more entries. The return value is owned by GLib and
	 *  must not be modified or freed.
	 */
	public static char[] dirReadName(GDir* dir)
	{
		// const gchar* g_dir_read_name (GDir *dir);
		return std.string.toString(g_dir_read_name(dir) );
	}
	
	/**
	 * Resets the given directory. The next call to g_dir_read_name()
	 * will return the first entry again.
	 * dir:
	 *  a GDir* created by g_dir_open()
	 */
	public static void dirRewind(GDir* dir)
	{
		// void g_dir_rewind (GDir *dir);
		g_dir_rewind(dir);
	}
	
	/**
	 * Closes the directory and deallocates all related resources.
	 * dir:
	 *  a GDir* created by g_dir_open()
	 */
	public static void dirClose(GDir* dir)
	{
		// void g_dir_close (GDir *dir);
		g_dir_close(dir);
	}
	
	
	/**
	 * Maps a file into memory. On UNIX, this is using the mmap() function.
	 * If writable is TRUE, the mapped buffer may be modified, otherwise
	 * it is an error to modify the mapped buffer. Modifications to the buffer
	 * are not visible to other processes mapping the same file, and are not
	 * written back to the file.
	 * Note that modifications of the underlying file might affect the contents
	 * of the GMappedFile. Therefore, mapping should only be used if the file
	 * will not be modified, or if all modifications of the file are done
	 * atomically (e.g. using g_file_set_contents()).
	 * filename:
	 *  The path of the file to load, in the GLib filename encoding
	 * writable:
	 *  wether the mapping should be writable
	 * error:
	 *  return location for a GError, or NULL
	 * Returns:
	 *  a newly allocated GMappedFile which must be freed
	 *  with g_mapped_file_free(), or NULL if the mapping failed.
	 * Since 2.8
	 */
	public static GMappedFile* mappedFileNew(char[] filename, int writable, GError** error)
	{
		// GMappedFile* g_mapped_file_new (const gchar *filename,  gboolean writable,  GError **error);
		return g_mapped_file_new(std.string.toStringz(filename), writable, error);
	}
	
	/**
	 * Unmaps the buffer of file and frees it.
	 * file:
	 *  a GMappedFile
	 * Since 2.8
	 */
	public static void mappedFileFree(GMappedFile* file)
	{
		// void g_mapped_file_free (GMappedFile *file);
		g_mapped_file_free(file);
	}
	
	/**
	 * Returns the length of the contents of a GMappedFile.
	 * file:
	 *  a GMappedFile
	 * Returns:
	 *  the length of the contents of file.
	 * Since 2.8
	 */
	public static uint mappedFileGetLength(GMappedFile* file)
	{
		// gsize g_mapped_file_get_length (GMappedFile *file);
		return g_mapped_file_get_length(file);
	}
	
	/**
	 * Returns the contents of a GMappedFile.
	 * Note that the contents may not be zero-terminated,
	 * even if the GMappedFile is backed by a text file.
	 * file:
	 *  a GMappedFile
	 * Returns:
	 *  the contents of file.
	 * Since 2.8
	 */
	public static char[] mappedFileGetContents(GMappedFile* file)
	{
		// gchar* g_mapped_file_get_contents (GMappedFile *file);
		return std.string.toString(g_mapped_file_get_contents(file) );
	}
	
	/**
	 * A wrapper for the POSIX open() function. The open() function is
	 * used to convert a pathname into a file descriptor. Note that on
	 * POSIX systems file descriptors are implemented by the operating
	 * system. On Windows, it's the C library that implements open() and
	 * file descriptors. The actual Windows API for opening files is
	 * something different.
	 * See the C library manual for more details about open().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * flags:
	 *  as in open()
	 * mode:
	 *  as in open()
	 * Returns:
	 *  a new file descriptor, or -1 if an error occurred. The
	 * return value can be used exactly like the return value from open().
	 * Since 2.6
	 */
	public static int open(char[] filename, int flags, int mode)
	{
		// int g_open (const gchar *filename,  int flags,  int mode);
		return g_open(std.string.toStringz(filename), flags, mode);
	}
	
	/**
	 * A wrapper for the POSIX rename() function. The rename() function
	 * renames a file, moving it between directories if required.
	 * See your C library manual for more details about how rename() works
	 * on your system. Note in particular that on Win9x it is not possible
	 * to rename a file if a file with the new name already exists. Also
	 * it is not possible in general on Windows to rename an open file.
	 * oldfilename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * newfilename:
	 *  a pathname in the GLib file name encoding
	 * Returns:
	 *  0 if the renaming succeeded, -1 if an error occurred
	 * Since 2.6
	 */
	public static int rename(char[] oldfilename, char[] newfilename)
	{
		// int g_rename (const gchar *oldfilename,  const gchar *newfilename);
		return g_rename(std.string.toStringz(oldfilename), std.string.toStringz(newfilename));
	}
	
	/**
	 * A wrapper for the POSIX mkdir() function. The mkdir() function
	 * attempts to create a directory with the given name and permissions.
	 * See the C library manual for more details about mkdir().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  permissions to use for the newly created directory
	 * Returns:
	 *  0 if the directory was successfully created, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int mkdir(char[] filename, int mode)
	{
		// int g_mkdir (const gchar *filename,  int mode);
		return g_mkdir(std.string.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX stat() function. The stat() function
	 * returns information about a file.
	 * See the C library manual for more details about stat().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * buf:
	 *  a pointer to a stat struct, which
	 *  will be filled with the file information
	 * Returns:
	 *  0 if the information was successfully retrieved, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int stat(char[] filename, void* buf)
	{
		// int g_stat (const gchar *filename,  struct stat *buf);
		return g_stat(std.string.toStringz(filename), buf);
	}
	
	/**
	 * A wrapper for the POSIX lstat() function. The lstat() function is
	 * like stat() except that in the case of symbolic links, it returns
	 * information about the symbolic link itself and not the file that it
	 * refers to. If the system does not support symbolic links g_lstat()
	 * is identical to g_stat().
	 * See the C library manual for more details about lstat().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * buf:
	 *  a pointer to a stat struct, which
	 *  will be filled with the file information
	 * Returns:
	 *  0 if the information was successfully retrieved, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int lstat(char[] filename, void* buf)
	{
		// int g_lstat (const gchar *filename,  struct stat *buf);
		return g_lstat(std.string.toStringz(filename), buf);
	}
	
	/**
	 * A wrapper for the POSIX unlink() function. The unlink() function
	 * deletes a name from the filesystem. If this was the last link to the
	 * file and no processes have it opened, the diskspace occupied by the
	 * file is freed.
	 * See your C library manual for more details about unlink(). Note
	 * that on Windows, it is in general not possible to delete files that
	 * are open to some process, or mapped into memory.
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns:
	 *  0 if the name was successfully deleted, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int unlink(char[] filename)
	{
		// int g_unlink (const gchar *filename);
		return g_unlink(std.string.toStringz(filename));
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
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns:
	 *  0 if the file was successfully removed, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int remove(char[] filename)
	{
		// int g_remove (const gchar *filename);
		return g_remove(std.string.toStringz(filename));
	}
	
	/**
	 * A wrapper for the POSIX rmdir() function. The rmdir() function
	 * deletes a directory from the filesystem.
	 * See your C library manual for more details about how rmdir() works
	 * on your system.
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns:
	 *  0 if the directory was successfully removed, -1 if an error
	 *  occurred
	 * Since 2.6
	 */
	public static int rmdir(char[] filename)
	{
		// int g_rmdir (const gchar *filename);
		return g_rmdir(std.string.toStringz(filename));
	}
	
	/**
	 * A wrapper for the POSIX fopen() function. The fopen() function opens
	 * a file and associates a new stream with it.
	 * See the C library manual for more details about fopen().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  a string describing the mode in which the file should be
	 *  opened
	 * Returns:
	 *  A FILE pointer if the file was successfully
	 *  opened, or NULL if an error occurred
	 * Since 2.6
	 */
	public static FILE* fopen(char[] filename, char[] mode)
	{
		// FILE* g_fopen (const gchar *filename,  const gchar *mode);
		return g_fopen(std.string.toStringz(filename), std.string.toStringz(mode));
	}
	
	/**
	 * A wrapper for the POSIX freopen() function. The freopen() function
	 * opens a file and associates it with an existing stream.
	 * See the C library manual for more details about freopen().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  a string describing the mode in which the file should be
	 *  opened
	 * stream:
	 *  an existing stream which will be reused, or NULL
	 * Returns:
	 *  A FILE pointer if the file was successfully
	 *  opened, or NULL if an error occurred.
	 * Since 2.6
	 */
	public static FILE* freopen(char[] filename, char[] mode, FILE* stream)
	{
		// FILE* g_freopen (const gchar *filename,  const gchar *mode,  FILE *stream);
		return g_freopen(std.string.toStringz(filename), std.string.toStringz(mode), stream);
	}
	
	/**
	 * A wrapper for the POSIX chmod() function. The chmod() function is
	 * used to set the permissions of a file system object. Note that on
	 * Windows the file protection mechanism is not at all POSIX-like, and
	 * the underlying chmod() function in the C library just sets or
	 * clears the READONLY attribute. It does not touch any ACL. Software
	 * that needs to manage file permissions on Windows exactly should
	 * use the Win32 API.
	 * See the C library manual for more details about chmod().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  as in chmod()
	 * Returns:
	 *  zero if the operation succeeded, -1 on error.
	 * Since 2.8
	 */
	public static int chmod(char[] filename, int mode)
	{
		// int g_chmod (const gchar *filename,  int mode);
		return g_chmod(std.string.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX access() function. This function is used to
	 * test a pathname for one or several of read, write or execute
	 * permissions, or just existence. On Windows, the underlying access()
	 * function in the C library only checks the READONLY attribute, and
	 * does not look at the ACL at all. Software that needs to handle file
	 * permissions on Windows more exactly should use the Win32 API.
	 * See the C library manual for more details about access().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  as in access()
	 * Returns:
	 *  zero if the pathname refers to an existing file system
	 * object that has all the tested permissions, or -1 otherwise or on
	 * error.
	 * Since 2.8
	 */
	public static int access(char[] filename, int mode)
	{
		// int g_access (const gchar *filename,  int mode);
		return g_access(std.string.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX creat() function. The creat() function is
	 * used to convert a pathname into a file descriptor, creating a file
	 * if necessar. Note that on POSIX systems file descriptors are
	 * implemented by the operating system. On Windows, it's the C library
	 * that implements creat() and file descriptors. The actual Windows
	 * API for opening files is something different.
	 * See the C library manual for more details about creat().
	 * filename:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * mode:
	 *  as in creat()
	 * Returns:
	 *  a new file descriptor, or -1 if an error occurred. The
	 * return value can be used exactly like the return value from creat().
	 * Since 2.8
	 */
	public static int creat(char[] filename, int mode)
	{
		// int g_creat (const gchar *filename,  int mode);
		return g_creat(std.string.toStringz(filename), mode);
	}
	
	/**
	 * A wrapper for the POSIX chdir() function. The function changes the
	 * current directory of the process to path.
	 * See your C library manual for more details about chdir().
	 * path:
	 *  a pathname in the GLib file name encoding (UTF-8 on Windows)
	 * Returns:
	 *  0 on success, -1 if an error occurred.
	 * Since 2.8
	 */
	public static int chdir(char[] path)
	{
		// int g_chdir (const gchar *path);
		return g_chdir(std.string.toStringz(path));
	}
}
