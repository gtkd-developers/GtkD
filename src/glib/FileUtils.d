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


module glib.FileUtils;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gtkc.glib;
public  import gtkc.glibtypes;


/** */
public struct FileUtils
{

	/**
	 * A wrapper for the POSIX access() function. This function is used to
	 * test a pathname for one or several of read, write or execute
	 * permissions, or just existence.
	 *
	 * On Windows, the file protection mechanism is not at all POSIX-like,
	 * and the underlying function in the C library only checks the
	 * FAT-style READONLY attribute, and does not look at the ACL of a
	 * file at all. This function is this in practise almost useless on
	 * Windows. Software that needs to handle file permissions on Windows
	 * more exactly should use the Win32 API.
	 *
	 * See your C library manual for more details about access().
	 *
	 * Params:
	 *     filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 *     mode = as in access()
	 *
	 * Return: zero if the pathname refers to an existing file system
	 *     object that has all the tested permissions, or -1 otherwise
	 *     or on error.
	 *
	 * Since: 2.8
	 */
	public static int access(string filename, int mode)
	{
		return g_access(Str.toStringz(filename), mode);
	}

	/**
	 * A wrapper for the POSIX chdir() function. The function changes the
	 * current directory of the process to @path.
	 *
	 * See your C library manual for more details about chdir().
	 *
	 * Params:
	 *     path = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 *
	 * Return: 0 on success, -1 if an error occurred.
	 *
	 * Since: 2.8
	 */
	public static int chdir(string path)
	{
		return g_chdir(Str.toStringz(path));
	}

	/**
	 * This wraps the close() call; in case of error, %errno will be
	 * preserved, but the error will also be stored as a #GError in @error.
	 *
	 * Besides using #GError, there is another major reason to prefer this
	 * function over the call provided by the system; on Unix, it will
	 * attempt to correctly handle %EINTR, which has platform-specific
	 * semantics.
	 *
	 * Params:
	 *     fd = A file descriptor
	 *
	 * Return: %TRUE on success, %FALSE if there was an error.
	 *
	 * Since: 2.36
	 *
	 * Throws: GException on failure.
	 */
	public static bool close(int fd)
	{
		GError* err = null;
		
		auto p = g_close(fd, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Gets a #GFileError constant based on the passed-in @err_no.
	 * For example, if you pass in `EEXIST` this function returns
	 * #G_FILE_ERROR_EXIST. Unlike `errno` values, you can portably
	 * assume that all #GFileError values will exist.
	 *
	 * Normally a #GFileError value goes into a #GError returned
	 * from a function that manipulates files. So you would use
	 * g_file_error_from_errno() when constructing a #GError.
	 *
	 * Params:
	 *     errNo = an "errno" value
	 *
	 * Return: #GFileError corresponding to the given @errno
	 */
	public static GFileError fileErrorFromErrno(int errNo)
	{
		return g_file_error_from_errno(errNo);
	}

	/** */
	public static GQuark fileErrorQuark()
	{
		return g_file_error_quark();
	}

	/**
	 * Reads an entire file into allocated memory, with good error
	 * checking.
	 *
	 * If the call was successful, it returns %TRUE and sets @contents to the file
	 * contents and @length to the length of the file contents in bytes. The string
	 * stored in @contents will be nul-terminated, so for text files you can pass
	 * %NULL for the @length argument. If the call was not successful, it returns
	 * %FALSE and sets @error. The error domain is #G_FILE_ERROR. Possible error
	 * codes are those in the #GFileError enumeration. In the error case,
	 * @contents is set to %NULL and @length is set to zero.
	 *
	 * Params:
	 *     filename = name of a file to read contents from, in the GLib file name encoding
	 *     contents = location to store an allocated string, use g_free() to free
	 *         the returned string
	 *     length = location to store length in bytes of the contents, or %NULL
	 *
	 * Return: %TRUE on success, %FALSE if an error occurred
	 *
	 * Throws: GException on failure.
	 */
	public static bool fileGetContents(string filename, out string contents)
	{
		char* outcontents = null;
		size_t length;
		GError* err = null;
		
		auto p = g_file_get_contents(Str.toStringz(filename), &outcontents, &length, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		contents = Str.toString(outcontents, length);
		
		return p;
	}

	/**
	 * Opens a file for writing in the preferred directory for temporary
	 * files (as returned by g_get_tmp_dir()).
	 *
	 * @tmpl should be a string in the GLib file name encoding containing
	 * a sequence of six 'X' characters, as the parameter to g_mkstemp().
	 * However, unlike these functions, the template should only be a
	 * basename, no directory components are allowed. If template is
	 * %NULL, a default template is used.
	 *
	 * Note that in contrast to g_mkstemp() (and mkstemp()) @tmpl is not
	 * modified, and might thus be a read-only literal string.
	 *
	 * Upon success, and if @name_used is non-%NULL, the actual name used
	 * is returned in @name_used. This string should be freed with g_free()
	 * when not needed any longer. The returned name is in the GLib file
	 * name encoding.
	 *
	 * Params:
	 *     tmpl = Template for file name, as in
	 *         g_mkstemp(), basename only, or %NULL for a default template
	 *     nameUsed = location to store actual name used,
	 *         or %NULL
	 *
	 * Return: A file handle (as from open()) to the file opened for
	 *     reading and writing. The file is opened in binary mode on platforms
	 *     where there is a difference. The file handle should be closed with
	 *     close(). In case of errors, -1 is returned and @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	public static int fileOpenTmp(string tmpl, out string nameUsed)
	{
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
	 * Reads the contents of the symbolic link @filename like the POSIX
	 * readlink() function.  The returned string is in the encoding used
	 * for filenames. Use g_filename_to_utf8() to convert it to UTF-8.
	 *
	 * Params:
	 *     filename = the symbolic link
	 *
	 * Return: A newly-allocated string with the contents of the symbolic link,
	 *     or %NULL if an error occurred.
	 *
	 * Since: 2.4
	 *
	 * Throws: GException on failure.
	 */
	public static string fileReadLink(string filename)
	{
		GError* err = null;
		
		auto retStr = g_file_read_link(Str.toStringz(filename), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Writes all of @contents to a file named @filename, with good error checking.
	 * If a file called @filename already exists it will be overwritten.
	 *
	 * This write is atomic in the sense that it is first written to a temporary
	 * file which is then renamed to the final name. Notes:
	 *
	 * - On UNIX, if @filename already exists hard links to @filename will break.
	 * Also since the file is recreated, existing permissions, access control
	 * lists, metadata etc. may be lost. If @filename is a symbolic link,
	 * the link itself will be replaced, not the linked file.
	 *
	 * - On Windows renaming a file will not remove an existing file with the
	 * new name, so on Windows there is a race condition between the existing
	 * file being removed and the temporary file being renamed.
	 *
	 * - On Windows there is no way to remove a file that is open to some
	 * process, or mapped into memory. Thus, this function will fail if
	 * @filename already exists and is open.
	 *
	 * If the call was successful, it returns %TRUE. If the call was not successful,
	 * it returns %FALSE and sets @error. The error domain is #G_FILE_ERROR.
	 * Possible error codes are those in the #GFileError enumeration.
	 *
	 * Note that the name for the temporary file is constructed by appending up
	 * to 7 characters to @filename.
	 *
	 * Params:
	 *     filename = name of a file to write @contents to, in the GLib file name
	 *         encoding
	 *     contents = string to write to the file
	 *     length = length of @contents, or -1 if @contents is a nul-terminated string
	 *
	 * Return: %TRUE on success, %FALSE if an error occurred
	 *
	 * Since: 2.8
	 *
	 * Throws: GException on failure.
	 */
	public static bool fileSetContents(string filename, string contents)
	{
		GError* err = null;
		
		auto p = g_file_set_contents(Str.toStringz(filename), Str.toStringz(contents), cast(ptrdiff_t)contents.length, &err) != 0;
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}

	/**
	 * Returns %TRUE if any of the tests in the bitfield @test are
	 * %TRUE. For example, `(G_FILE_TEST_EXISTS | G_FILE_TEST_IS_DIR)`
	 * will return %TRUE if the file exists; the check whether it's a
	 * directory doesn't matter since the existence test is %TRUE. With
	 * the current set of available tests, there's no point passing in
	 * more than one test at a time.
	 *
	 * Apart from %G_FILE_TEST_IS_SYMLINK all tests follow symbolic links,
	 * so for a symbolic link to a regular file g_file_test() will return
	 * %TRUE for both %G_FILE_TEST_IS_SYMLINK and %G_FILE_TEST_IS_REGULAR.
	 *
	 * Note, that for a dangling symbolic link g_file_test() will return
	 * %TRUE for %G_FILE_TEST_IS_SYMLINK and %FALSE for all other flags.
	 *
	 * You should never use g_file_test() to test whether it is safe
	 * to perform an operation, because there is always the possibility
	 * of the condition changing before you actually perform the operation.
	 * For example, you might think you could use %G_FILE_TEST_IS_SYMLINK
	 * to know whether it is safe to write to a file without being
	 * tricked into writing into a different location. It doesn't work!
	 * |[<!-- language="C" -->
	 * // DON'T DO THIS
	 * if (!g_file_test (filename, G_FILE_TEST_IS_SYMLINK))
	 * {
	 * fd = g_open (filename, O_WRONLY);
	 * // write to fd
	 * }
	 * ]|
	 *
	 * Another thing to note is that %G_FILE_TEST_EXISTS and
	 * %G_FILE_TEST_IS_EXECUTABLE are implemented using the access()
	 * system call. This usually doesn't matter, but if your program
	 * is setuid or setgid it means that these tests will give you
	 * the answer for the real user ID and group ID, rather than the
	 * effective user ID and group ID.
	 *
	 * On Windows, there are no symlinks, so testing for
	 * %G_FILE_TEST_IS_SYMLINK will always return %FALSE. Testing for
	 * %G_FILE_TEST_IS_EXECUTABLE will just check that the file exists and
	 * its name indicates that it is executable, checking for well-known
	 * extensions and those listed in the `PATHEXT` environment variable.
	 *
	 * Params:
	 *     filename = a filename to test in the GLib file name encoding
	 *     test = bitfield of #GFileTest flags
	 *
	 * Return: whether a test was %TRUE
	 */
	public static bool fileTest(string filename, GFileTest test)
	{
		return g_file_test(Str.toStringz(filename), test) != 0;
	}

	/**
	 * Create a directory if it doesn't already exist. Create intermediate
	 * parent directories as needed, too.
	 *
	 * Params:
	 *     pathname = a pathname in the GLib file name encoding
	 *     mode = permissions to use for newly created directories
	 *
	 * Return: 0 if the directory already exists, or was successfully
	 *     created. Returns -1 if an error occurred, with errno set.
	 *
	 * Since: 2.8
	 */
	public static int mkdirWithParents(string pathname, int mode)
	{
		return g_mkdir_with_parents(Str.toStringz(pathname), mode);
	}

	/**
	 * Creates a temporary directory. See the mkdtemp() documentation
	 * on most UNIX-like systems.
	 *
	 * The parameter is a string that should follow the rules for
	 * mkdtemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkdtemp() is slightly more flexible than mkdtemp() in that the
	 * sequence does not have to occur at the very end of the template
	 * and you can pass a @mode and additional @flags. The X string will
	 * be modified to form the name of a directory that didn't exist.
	 * The string should be in the GLib file name encoding. Most importantly,
	 * on Windows it should be in UTF-8.
	 *
	 * Params:
	 *     tmpl = template directory name
	 *
	 * Return: A pointer to @tmpl, which has been modified
	 *     to hold the directory name.  In case of errors, %NULL is
	 *     returned and %errno will be set.
	 *
	 * Since: 2.30
	 */
	public static string mkdtemp(string tmpl)
	{
		auto retStr = g_mkdtemp(Str.toStringz(tmpl));
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Creates a temporary directory. See the mkdtemp() documentation
	 * on most UNIX-like systems.
	 *
	 * The parameter is a string that should follow the rules for
	 * mkdtemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkdtemp() is slightly more flexible than mkdtemp() in that the
	 * sequence does not have to occur at the very end of the template
	 * and you can pass a @mode. The X string will be modified to form
	 * the name of a directory that didn't exist. The string should be
	 * in the GLib file name encoding. Most importantly, on Windows it
	 * should be in UTF-8.
	 *
	 * Params:
	 *     tmpl = template directory name
	 *     mode = permissions to create the temporary directory with
	 *
	 * Return: A pointer to @tmpl, which has been modified
	 *     to hold the directory name. In case of errors, %NULL is
	 *     returned, and %errno will be set.
	 *
	 * Since: 2.30
	 */
	public static string mkdtempFull(string tmpl, int mode)
	{
		auto retStr = g_mkdtemp_full(Str.toStringz(tmpl), mode);
		
		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Opens a temporary file. See the mkstemp() documentation
	 * on most UNIX-like systems.
	 *
	 * The parameter is a string that should follow the rules for
	 * mkstemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkstemp() is slightly more flexible than mkstemp() in that the
	 * sequence does not have to occur at the very end of the template.
	 * The X string will be modified to form the name of a file that
	 * didn't exist. The string should be in the GLib file name encoding.
	 * Most importantly, on Windows it should be in UTF-8.
	 *
	 * Params:
	 *     tmpl = template filename
	 *
	 * Return: A file handle (as from open()) to the file
	 *     opened for reading and writing. The file is opened in binary
	 *     mode on platforms where there is a difference. The file handle
	 *     should be closed with close(). In case of errors, -1 is
	 *     returned and %errno will be set.
	 */
	public static int mkstemp(string tmpl)
	{
		return g_mkstemp(Str.toStringz(tmpl));
	}

	/**
	 * Opens a temporary file. See the mkstemp() documentation
	 * on most UNIX-like systems.
	 *
	 * The parameter is a string that should follow the rules for
	 * mkstemp() templates, i.e. contain the string "XXXXXX".
	 * g_mkstemp_full() is slightly more flexible than mkstemp()
	 * in that the sequence does not have to occur at the very end of the
	 * template and you can pass a @mode and additional @flags. The X
	 * string will be modified to form the name of a file that didn't exist.
	 * The string should be in the GLib file name encoding. Most importantly,
	 * on Windows it should be in UTF-8.
	 *
	 * Params:
	 *     tmpl = template filename
	 *     flags = flags to pass to an open() call in addition to O_EXCL
	 *         and O_CREAT, which are passed automatically
	 *     mode = permissions to create the temporary file with
	 *
	 * Return: A file handle (as from open()) to the file
	 *     opened for reading and writing. The file handle should be
	 *     closed with close(). In case of errors, -1 is returned
	 *     and %errno will be set.
	 *
	 * Since: 2.22
	 */
	public static int mkstempFull(string tmpl, int flags, int mode)
	{
		return g_mkstemp_full(Str.toStringz(tmpl), flags, mode);
	}

	/**
	 * A wrapper for the POSIX rmdir() function. The rmdir() function
	 * deletes a directory from the filesystem.
	 *
	 * See your C library manual for more details about how rmdir() works
	 * on your system.
	 *
	 * Params:
	 *     filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 *
	 * Return: 0 if the directory was successfully removed, -1 if an error
	 *     occurred
	 *
	 * Since: 2.6
	 */
	public static int rmdir(string filename)
	{
		return g_rmdir(Str.toStringz(filename));
	}

	/**
	 * A wrapper for the POSIX unlink() function. The unlink() function
	 * deletes a name from the filesystem. If this was the last link to the
	 * file and no processes have it opened, the diskspace occupied by the
	 * file is freed.
	 *
	 * See your C library manual for more details about unlink(). Note
	 * that on Windows, it is in general not possible to delete files that
	 * are open to some process, or mapped into memory.
	 *
	 * Params:
	 *     filename = a pathname in the GLib file name encoding (UTF-8 on Windows)
	 *
	 * Return: 0 if the name was successfully deleted, -1 if an error
	 *     occurred
	 *
	 * Since: 2.6
	 */
	public static int unlink(string filename)
	{
		return g_unlink(Str.toStringz(filename));
	}
}
