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


module gio.FileIF;

private import gio.AppInfo;
private import gio.AppInfoIF;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.File;
private import gio.FileAttributeInfoList;
private import gio.FileEnumerator;
private import gio.FileIF;
private import gio.FileIOStream;
private import gio.FileInfo;
private import gio.FileInputStream;
private import gio.FileMonitor;
private import gio.FileOutputStream;
private import gio.Mount;
private import gio.MountIF;
private import gio.MountOperation;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * #GFile is a high level abstraction for manipulating files on a
 * virtual file system. #GFiles are lightweight, immutable objects
 * that do no I/O upon creation. It is necessary to understand that
 * #GFile objects do not represent files, merely an identifier for a
 * file. All file content I/O is implemented as streaming operations
 * (see #GInputStream and #GOutputStream).
 * 
 * To construct a #GFile, you can use:
 * - g_file_new_for_path() if you have a path.
 * - g_file_new_for_uri() if you have a URI.
 * - g_file_new_for_commandline_arg() for a command line argument.
 * - g_file_new_tmp() to create a temporary file from a template.
 * - g_file_parse_name() from a UTF-8 string gotten from g_file_get_parse_name().
 * 
 * One way to think of a #GFile is as an abstraction of a pathname. For
 * normal files the system pathname is what is stored internally, but as
 * #GFiles are extensible it could also be something else that corresponds
 * to a pathname in a userspace implementation of a filesystem.
 * 
 * #GFiles make up hierarchies of directories and files that correspond to
 * the files on a filesystem. You can move through the file system with
 * #GFile using g_file_get_parent() to get an identifier for the parent
 * directory, g_file_get_child() to get a child within a directory,
 * g_file_resolve_relative_path() to resolve a relative path between two
 * #GFiles. There can be multiple hierarchies, so you may not end up at
 * the same root if you repeatedly call g_file_get_parent() on two different
 * files.
 * 
 * All #GFiles have a basename (get with g_file_get_basename()). These names
 * are byte strings that are used to identify the file on the filesystem
 * (relative to its parent directory) and there is no guarantees that they
 * have any particular charset encoding or even make any sense at all. If
 * you want to use filenames in a user interface you should use the display
 * name that you can get by requesting the
 * %G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME attribute with g_file_query_info().
 * This is guaranteed to be in UTF-8 and can be used in a user interface.
 * But always store the real basename or the #GFile to use to actually
 * access the file, because there is no way to go from a display name to
 * the actual name.
 * 
 * Using #GFile as an identifier has the same weaknesses as using a path
 * in that there may be multiple aliases for the same file. For instance,
 * hard or soft links may cause two different #GFiles to refer to the same
 * file. Other possible causes for aliases are: case insensitive filesystems,
 * short and long names on FAT/NTFS, or bind mounts in Linux. If you want to
 * check if two #GFiles point to the same file you can query for the
 * %G_FILE_ATTRIBUTE_ID_FILE attribute. Note that #GFile does some trivial
 * canonicalization of pathnames passed in, so that trivial differences in
 * the path string used at creation (duplicated slashes, slash at end of
 * path, "." or ".." path segments, etc) does not create different #GFiles.
 * 
 * Many #GFile operations have both synchronous and asynchronous versions
 * to suit your application. Asynchronous versions of synchronous functions
 * simply have _async() appended to their function names. The asynchronous
 * I/O functions call a #GAsyncReadyCallback which is then used to finalize
 * the operation, producing a GAsyncResult which is then passed to the
 * function's matching _finish() operation.
 * 
 * It is highly recommended to use asynchronous calls when running within a
 * shared main loop, such as in the main thread of an application. This avoids
 * I/O operations blocking other sources on the main loop from being dispatched.
 * Synchronous I/O operations should be performed from worker threads. See the
 * [introduction to asynchronous programming section][async-programming] for
 * more.
 * 
 * Some #GFile operations almost always take a noticeable amount of time, and
 * so do not have synchronous analogs. Notable cases include:
 * - g_file_mount_mountable() to mount a mountable file.
 * - g_file_unmount_mountable_with_operation() to unmount a mountable file.
 * - g_file_eject_mountable_with_operation() to eject a mountable file.
 * 
 * ## Entity Tags # {#gfile-etag}
 * 
 * One notable feature of #GFiles are entity tags, or "etags" for
 * short. Entity tags are somewhat like a more abstract version of the
 * traditional mtime, and can be used to quickly determine if the file
 * has been modified from the version on the file system. See the
 * HTTP 1.1
 * [specification](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html)
 * for HTTP Etag headers, which are a very similar concept.
 */
public interface FileIF{
	/** Get the main Gtk struct */
	public GFile* getFileStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/**
	 * Constructs a #GFile with the given @parse_name (i.e. something
	 * given by g_file_get_parse_name()). This operation never fails,
	 * but the returned object might not support any I/O operation if
	 * the @parse_name cannot be parsed.
	 *
	 * Params:
	 *     parseName = a file name or path to be parsed
	 *
	 * Return: a new #GFile.
	 */
	public static FileIF parseName(string parseName);

	/**
	 * Gets an output stream for appending data to the file.
	 * If the file doesn't already exist it is created.
	 *
	 * By default files created are generally readable by everyone,
	 * but if you pass #G_FILE_CREATE_PRIVATE in @flags the file
	 * will be made readable only to the current user, to the level that
	 * is supported on the target filesystem.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * Some file systems don't allow all file names, and may return an
	 * %G_IO_ERROR_INVALID_FILENAME error. If the file is a directory the
	 * %G_IO_ERROR_IS_DIRECTORY error will be returned. Other errors are
	 * possible too, and depend on what kind of filesystem the file is on.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileOutputStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream appendTo(GFileCreateFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously opens @file for appending.
	 *
	 * For more details, see g_file_append_to() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_append_to_finish() to get the result
	 * of the operation.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void appendToAsync(GFileCreateFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file append operation started with
	 * g_file_append_to_async().
	 *
	 * Params:
	 *     res = #GAsyncResult
	 *
	 * Return: a valid #GFileOutputStream
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream appendToFinish(AsyncResultIF res);

	/**
	 * Copies the file @source to the location specified by @destination.
	 * Can not handle recursive copies of directories.
	 *
	 * If the flag #G_FILE_COPY_OVERWRITE is specified an already
	 * existing @destination file is overwritten.
	 *
	 * If the flag #G_FILE_COPY_NOFOLLOW_SYMLINKS is specified then symlinks
	 * will be copied as symlinks, otherwise the target of the
	 * @source symlink will be copied.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * If @progress_callback is not %NULL, then the operation can be monitored
	 * by setting this to a #GFileProgressCallback function.
	 * @progress_callback_data will be passed to this function. It is guaranteed
	 * that this callback will be called after all data has been transferred with
	 * the total number of bytes copied during the operation.
	 *
	 * If the @source file does not exist, then the %G_IO_ERROR_NOT_FOUND error
	 * is returned, independent on the status of the @destination.
	 *
	 * If #G_FILE_COPY_OVERWRITE is not specified and the target exists, then
	 * the error %G_IO_ERROR_EXISTS is returned.
	 *
	 * If trying to overwrite a file over a directory, the %G_IO_ERROR_IS_DIRECTORY
	 * error is returned. If trying to overwrite a directory with a directory the
	 * %G_IO_ERROR_WOULD_MERGE error is returned.
	 *
	 * If the source is a directory and the target does not exist, or
	 * #G_FILE_COPY_OVERWRITE is specified and the target is a file, then the
	 * %G_IO_ERROR_WOULD_RECURSE error is returned.
	 *
	 * If you are interested in copying the #GFile object itself (not the on-disk
	 * file), see g_file_dup().
	 *
	 * Params:
	 *     destination = destination #GFile
	 *     flags = set of #GFileCopyFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     progressCallback = function to callback with
	 *         progress information, or %NULL if progress information is not needed
	 *     progressCallbackData = user data to pass to @progress_callback
	 *
	 * Return: %TRUE on success, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool copy(FileIF destination, GFileCopyFlags flags, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData);

	/**
	 * Copies the file @source to the location specified by @destination
	 * asynchronously. For details of the behaviour, see g_file_copy().
	 *
	 * If @progress_callback is not %NULL, then that function that will be called
	 * just like in g_file_copy(). The callback will run in the default main context
	 * of the thread calling g_file_copy_async() — the same context as @callback is
	 * run in.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * g_file_copy_finish() to get the result of the operation.
	 *
	 * Params:
	 *     destination = destination #GFile
	 *     flags = set of #GFileCopyFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     progressCallback = function to callback with progress
	 *         information, or %NULL if progress information is not needed
	 *     progressCallbackData = user data to pass to @progress_callback
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void copyAsync(FileIF destination, GFileCopyFlags flags, int ioPriority, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData);

	/**
	 * Copies the file attributes from @source to @destination.
	 *
	 * Normally only a subset of the file attributes are copied,
	 * those that are copies in a normal file copy operation
	 * (which for instance does not include e.g. owner). However
	 * if #G_FILE_COPY_ALL_METADATA is specified in @flags, then
	 * all the metadata that is possible to copy is copied. This
	 * is useful when implementing move by copy + delete source.
	 *
	 * Params:
	 *     destination = a #GFile to copy attributes to
	 *     flags = a set of #GFileCopyFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the attributes were copied successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool copyAttributes(FileIF destination, GFileCopyFlags flags, Cancellable cancellable);

	/**
	 * Finishes copying the file started with g_file_copy_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	public bool copyFinish(AsyncResultIF res);

	/**
	 * Creates a new file and returns an output stream for writing to it.
	 * The file must not already exist.
	 *
	 * By default files created are generally readable by everyone,
	 * but if you pass #G_FILE_CREATE_PRIVATE in @flags the file
	 * will be made readable only to the current user, to the level
	 * that is supported on the target filesystem.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If a file or directory with this name already exists the
	 * %G_IO_ERROR_EXISTS error will be returned. Some file systems don't
	 * allow all file names, and may return an %G_IO_ERROR_INVALID_FILENAME
	 * error, and if the name is to long %G_IO_ERROR_FILENAME_TOO_LONG will
	 * be returned. Other errors are possible too, and depend on what kind
	 * of filesystem the file is on.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileOutputStream for the newly created
	 *     file, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream create(GFileCreateFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously creates a new file and returns an output stream
	 * for writing to it. The file must not already exist.
	 *
	 * For more details, see g_file_create() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_create_finish() to get the result
	 * of the operation.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void createAsync(GFileCreateFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file create operation started with
	 * g_file_create_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileOutputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream createFinish(AsyncResultIF res);

	/**
	 * Creates a new file and returns a stream for reading and
	 * writing to it. The file must not already exist.
	 *
	 * By default files created are generally readable by everyone,
	 * but if you pass #G_FILE_CREATE_PRIVATE in @flags the file
	 * will be made readable only to the current user, to the level
	 * that is supported on the target filesystem.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If a file or directory with this name already exists, the
	 * %G_IO_ERROR_EXISTS error will be returned. Some file systems don't
	 * allow all file names, and may return an %G_IO_ERROR_INVALID_FILENAME
	 * error, and if the name is too long, %G_IO_ERROR_FILENAME_TOO_LONG
	 * will be returned. Other errors are possible too, and depend on what
	 * kind of filesystem the file is on.
	 *
	 * Note that in many non-local file cases read and write streams are
	 * not supported, so make sure you really need to do read and write
	 * streaming, rather than just opening for reading or writing.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileIOStream for the newly created
	 *     file, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream createReadwrite(GFileCreateFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously creates a new file and returns a stream
	 * for reading and writing to it. The file must not already exist.
	 *
	 * For more details, see g_file_create_readwrite() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_create_readwrite_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     flags = a set of #GFileCreateFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void createReadwriteAsync(GFileCreateFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file create operation started with
	 * g_file_create_readwrite_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream createReadwriteFinish(AsyncResultIF res);

	/**
	 * Deletes a file. If the @file is a directory, it will only be
	 * deleted if it is empty. This has the same semantics as g_unlink().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the file was deleted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool delet(Cancellable cancellable);

	/**
	 * Asynchronously delete a file. If the @file is a directory, it will
	 * only be deleted if it is empty.  This has the same semantics as
	 * g_unlink().
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.34
	 */
	public void deleteAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes deleting a file started with g_file_delete_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the file was deleted. %FALSE otherwise.
	 *
	 * Since: 2.34
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteFinish(AsyncResultIF result);

	/**
	 * Duplicates a #GFile handle. This operation does not duplicate
	 * the actual file or directory represented by the #GFile; see
	 * g_file_copy() if attempting to copy a file.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: a new #GFile that is a duplicate
	 *     of the given #GFile.
	 */
	public FileIF dup();

	/**
	 * Starts an asynchronous eject on a mountable.
	 * When this operation has completed, @callback will be called with
	 * @user_user data, and the operation can be finalized with
	 * g_file_eject_mountable_finish().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Deprecated: Use g_file_eject_mountable_with_operation() instead.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 */
	public void ejectMountable(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous eject operation started by
	 * g_file_eject_mountable().
	 *
	 * Deprecated: Use g_file_eject_mountable_with_operation_finish()
	 * instead.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the @file was ejected successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool ejectMountableFinish(AsyncResultIF result);

	/**
	 * Starts an asynchronous eject on a mountable.
	 * When this operation has completed, @callback will be called with
	 * @user_user data, and the operation can be finalized with
	 * g_file_eject_mountable_with_operation_finish().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation,
	 *         or %NULL to avoid user interaction
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void ejectMountableWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous eject operation started by
	 * g_file_eject_mountable_with_operation().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the @file was ejected successfully.
	 *     %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool ejectMountableWithOperationFinish(AsyncResultIF result);

	/**
	 * Gets the requested information about the files in a directory.
	 * The result is a #GFileEnumerator object that will give out
	 * #GFileInfo objects for all the files in the directory.
	 *
	 * The @attributes value is a string that specifies the file
	 * attributes that should be gathered. It is not an error if
	 * it's not possible to read a particular requested attribute
	 * from a file - it just won't be set. @attributes should
	 * be a comma-separated list of attributes or attribute wildcards.
	 * The wildcard "*" means all attributes, and a wildcard like
	 * "standard::*" means all attributes in the standard namespace.
	 * An example attribute query be "standard::*,owner::user".
	 * The standard attributes are available as defines, like
	 * #G_FILE_ATTRIBUTE_STANDARD_NAME.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If the file does not exist, the %G_IO_ERROR_NOT_FOUND error will
	 * be returned. If the file is not a directory, the %G_IO_ERROR_NOT_DIRECTORY
	 * error will be returned. Other errors are possible too.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: A #GFileEnumerator if successful,
	 *     %NULL on error. Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileEnumerator enumerateChildren(string attributes, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously gets the requested information about the files
	 * in a directory. The result is a #GFileEnumerator object that will
	 * give out #GFileInfo objects for all the files in the directory.
	 *
	 * For more details, see g_file_enumerate_children() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call g_file_enumerate_children_finish() to get the result of
	 * the operation.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void enumerateChildrenAsync(string attributes, GFileQueryInfoFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an async enumerate children operation.
	 * See g_file_enumerate_children_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileEnumerator or %NULL
	 *     if an error occurred.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileEnumerator enumerateChildrenFinish(AsyncResultIF res);

	/**
	 * Checks if the two given #GFiles refer to the same file.
	 *
	 * Note that two #GFiles that differ can still refer to the same
	 * file on the filesystem due to various forms of filename
	 * aliasing.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     file2 = the second #GFile
	 *
	 * Return: %TRUE if @file1 and @file2 are equal.
	 */
	public bool equal(FileIF file2);

	/**
	 * Gets a #GMount for the #GFile.
	 *
	 * If the #GFileIface for @file does not have a mount (e.g.
	 * possibly a remote share), @error will be set to %G_IO_ERROR_NOT_FOUND
	 * and %NULL will be returned.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GMount where the @file is located
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public MountIF findEnclosingMount(Cancellable cancellable);

	/**
	 * Asynchronously gets the mount for the file.
	 *
	 * For more details, see g_file_find_enclosing_mount() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_find_enclosing_mount_finish() to
	 * get the result of the operation.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void findEnclosingMountAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous find mount request.
	 * See g_file_find_enclosing_mount_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: #GMount for given @file or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public MountIF findEnclosingMountFinish(AsyncResultIF res);

	/**
	 * Gets the base name (the last component of the path) for a given #GFile.
	 *
	 * If called for the top level of a system (such as the filesystem root
	 * or a uri like sftp://host/) it will return a single directory separator
	 * (and on Windows, possibly a drive letter).
	 *
	 * The base name is a byte string (not UTF-8). It has no defined encoding
	 * or rules other than it may not contain zero bytes.  If you want to use
	 * filenames in a user interface you should use the display name that you
	 * can get by requesting the %G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME
	 * attribute with g_file_query_info().
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: string containing the #GFile's base name, or
	 *     %NULL if given #GFile is invalid. The returned string should be
	 *     freed with g_free() when no longer needed.
	 */
	public string getBasename();

	/**
	 * Gets a child of @file with basename equal to @name.
	 *
	 * Note that the file with that specific name might not exist, but
	 * you can still have a #GFile that points to it. You can use this
	 * for instance to create that file.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     name = string containing the child's basename
	 *
	 * Return: a #GFile to a child specified by @name.
	 *     Free the returned object with g_object_unref().
	 */
	public FileIF getChild(string name);

	/**
	 * Gets the child of @file for a given @display_name (i.e. a UTF-8
	 * version of the name). If this function fails, it returns %NULL
	 * and @error will be set. This is very useful when constructing a
	 * #GFile for a new file and the user entered the filename in the
	 * user interface, for instance when you select a directory and
	 * type a filename in the file selector.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     displayName = string to a possible child
	 *
	 * Return: a #GFile to the specified child, or
	 *     %NULL if the display name couldn't be converted.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileIF getChildForDisplayName(string displayName);

	/**
	 * Gets the parent directory for the @file.
	 * If the @file represents the root directory of the
	 * file system, then %NULL will be returned.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: a #GFile structure to the
	 *     parent of the given #GFile or %NULL if there is no parent. Free
	 *     the returned object with g_object_unref().
	 */
	public FileIF getParent();

	/**
	 * Gets the parse name of the @file.
	 * A parse name is a UTF-8 string that describes the
	 * file such that one can get the #GFile back using
	 * g_file_parse_name().
	 *
	 * This is generally used to show the #GFile as a nice
	 * full-pathname kind of string in a user interface,
	 * like in a location entry.
	 *
	 * For local files with names that can safely be converted
	 * to UTF-8 the pathname is used, otherwise the IRI is used
	 * (a form of URI that allows UTF-8 characters unescaped).
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: a string containing the #GFile's parse name.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	public string getParseName();

	/**
	 * Gets the local pathname for #GFile, if one exists. If non-%NULL, this is
	 * guaranteed to be an absolute, canonical path. It might contain symlinks.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: string containing the #GFile's path, or %NULL
	 *     if no such path exists. The returned string should be freed
	 *     with g_free() when no longer needed.
	 */
	public string getPath();

	/**
	 * Gets the path for @descendant relative to @parent.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     descendant = input #GFile
	 *
	 * Return: string with the relative path from @descendant
	 *     to @parent, or %NULL if @descendant doesn't have @parent as
	 *     prefix. The returned string should be freed with g_free() when
	 *     no longer needed.
	 */
	public string getRelativePath(FileIF descendant);

	/**
	 * Gets the URI for the @file.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: a string containing the #GFile's URI.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	public string getUri();

	/**
	 * Gets the URI scheme for a #GFile.
	 * RFC 3986 decodes the scheme as:
	 * |[
	 * URI = scheme ":" hier-part [ "?" query ] [ "#" fragment ]
	 * ]|
	 * Common schemes include "file", "http", "ftp", etc.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: a string containing the URI scheme for the given
	 *     #GFile. The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	public string getUriScheme();

	/**
	 * Checks if @file has a parent, and optionally, if it is @parent.
	 *
	 * If @parent is %NULL then this function returns %TRUE if @file has any
	 * parent at all.  If @parent is non-%NULL then %TRUE is only returned
	 * if @file is an immediate child of @parent.
	 *
	 * Params:
	 *     parent = the parent to check for, or %NULL
	 *
	 * Return: %TRUE if @file is an immediate child of @parent (or any parent in
	 *     the case that @parent is %NULL).
	 *
	 * Since: 2.24
	 */
	public bool hasParent(FileIF parent);

	/**
	 * Checks whether @file has the prefix specified by @prefix.
	 *
	 * In other words, if the names of initial elements of @file's
	 * pathname match @prefix. Only full pathname elements are matched,
	 * so a path like /foo is not considered a prefix of /foobar, only
	 * of /foo/bar.
	 *
	 * A #GFile is not a prefix of itself. If you want to check for
	 * equality, use g_file_equal().
	 *
	 * This call does no I/O, as it works purely on names. As such it can
	 * sometimes return %FALSE even if @file is inside a @prefix (from a
	 * filesystem point of view), because the prefix of @file is an alias
	 * of @prefix.
	 *
	 * Params:
	 *     prefix = input #GFile
	 *
	 * Return: %TRUE if the @files's parent, grandparent, etc is @prefix,
	 *     %FALSE otherwise.
	 */
	public bool hasPrefix(FileIF prefix);

	/**
	 * Checks to see if a #GFile has a given URI scheme.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     uriScheme = a string containing a URI scheme
	 *
	 * Return: %TRUE if #GFile's backend supports the
	 *     given URI scheme, %FALSE if URI scheme is %NULL,
	 *     not supported, or #GFile is invalid.
	 */
	public bool hasUriScheme(string uriScheme);

	/**
	 * Creates a hash value for a #GFile.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: 0 if @file is not a valid #GFile, otherwise an
	 *     integer that can be used as hash value for the #GFile.
	 *     This function is intended for easily hashing a #GFile to
	 *     add to a #GHashTable or similar data structure.
	 */
	public uint hash();

	/**
	 * Checks to see if a file is native to the platform.
	 *
	 * A native file s one expressed in the platform-native filename format,
	 * e.g. "C:\Windows" or "/usr/bin/". This does not mean the file is local,
	 * as it might be on a locally mounted remote filesystem.
	 *
	 * On some systems non-native files may be available using the native
	 * filesystem via a userspace filesystem (FUSE), in these cases this call
	 * will return %FALSE, but g_file_get_path() will still return a native path.
	 *
	 * This call does no blocking I/O.
	 *
	 * Return: %TRUE if @file is native
	 */
	public bool isNative();

	/**
	 * Loads the content of the file into memory. The data is always
	 * zero-terminated, but this is not included in the resultant @length.
	 * The returned @content should be freed with g_free() when no longer
	 * needed.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     contents = a location to place the contents of the file
	 *     length = a location to place the length of the contents of the file,
	 *         or %NULL if the length is not needed
	 *     etagOut = a location to place the current entity tag for the file,
	 *         or %NULL if the entity tag is not needed
	 *
	 * Return: %TRUE if the @file's contents were successfully loaded.
	 *     %FALSE if there were errors.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadContents(Cancellable cancellable, out string contents, out string etagOut);

	/**
	 * Starts an asynchronous load of the @file's contents.
	 *
	 * For more details, see g_file_load_contents() which is
	 * the synchronous version of this call.
	 *
	 * When the load operation has completed, @callback will be called
	 * with @user data. To finish the operation, call
	 * g_file_load_contents_finish() with the #GAsyncResult returned by
	 * the @callback.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void loadContentsAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous load of the @file's contents.
	 * The contents are placed in @contents, and @length is set to the
	 * size of the @contents string. The @content should be freed with
	 * g_free() when no longer needed. If @etag_out is present, it will be
	 * set to the new entity tag for the @file.
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     contents = a location to place the contents of the file
	 *     length = a location to place the length of the contents of the file,
	 *         or %NULL if the length is not needed
	 *     etagOut = a location to place the current entity tag for the file,
	 *         or %NULL if the entity tag is not needed
	 *
	 * Return: %TRUE if the load was successful. If %FALSE and @error is
	 *     present, it will be set appropriately.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadContentsFinish(AsyncResultIF res, out string contents, out string etagOut);

	/**
	 * Reads the partial contents of a file. A #GFileReadMoreCallback should
	 * be used to stop reading from the file when appropriate, else this
	 * function will behave exactly as g_file_load_contents_async(). This
	 * operation can be finished by g_file_load_partial_contents_finish().
	 *
	 * Users of this function should be aware that @user_data is passed to
	 * both the @read_more_callback and the @callback.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     readMoreCallback = a #GFileReadMoreCallback to receive partial data
	 *         and to specify whether further data should be read
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to the callback functions
	 */
	public void loadPartialContentsAsync(Cancellable cancellable, GFileReadMoreCallback readMoreCallback, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous partial load operation that was started
	 * with g_file_load_partial_contents_async(). The data is always
	 * zero-terminated, but this is not included in the resultant @length.
	 * The returned @content should be freed with g_free() when no longer
	 * needed.
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     contents = a location to place the contents of the file
	 *     length = a location to place the length of the contents of the file,
	 *         or %NULL if the length is not needed
	 *     etagOut = a location to place the current entity tag for the file,
	 *         or %NULL if the entity tag is not needed
	 *
	 * Return: %TRUE if the load was successful. If %FALSE and @error is
	 *     present, it will be set appropriately.
	 *
	 * Throws: GException on failure.
	 */
	public bool loadPartialContentsFinish(AsyncResultIF res, out string contents, out string etagOut);

	/**
	 * Creates a directory. Note that this will only create a child directory
	 * of the immediate parent directory of the path or URI given by the #GFile.
	 * To recursively create directories, see g_file_make_directory_with_parents().
	 * This function will fail if the parent directory does not exist, setting
	 * @error to %G_IO_ERROR_NOT_FOUND. If the file system doesn't support
	 * creating directories, this function will fail, setting @error to
	 * %G_IO_ERROR_NOT_SUPPORTED.
	 *
	 * For a local #GFile the newly created directory will have the default
	 * (current) ownership and permissions of the current process.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE on successful creation, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool makeDirectory(Cancellable cancellable);

	/**
	 * Asynchronously creates a directory.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.38
	 */
	public void makeDirectoryAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous directory creation, started with
	 * g_file_make_directory_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE on successful directory creation, %FALSE otherwise.
	 *
	 * Since: 2.38
	 *
	 * Throws: GException on failure.
	 */
	public bool makeDirectoryFinish(AsyncResultIF result);

	/**
	 * Creates a directory and any parent directories that may not
	 * exist similar to 'mkdir -p'. If the file system does not support
	 * creating directories, this function will fail, setting @error to
	 * %G_IO_ERROR_NOT_SUPPORTED. If the directory itself already exists,
	 * this function will fail setting @error to %G_IO_ERROR_EXISTS, unlike
	 * the similar g_mkdir_with_parents().
	 *
	 * For a local #GFile the newly created directories will have the default
	 * (current) ownership and permissions of the current process.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if all directories have been successfully created, %FALSE
	 *     otherwise.
	 *
	 * Since: 2.18
	 *
	 * Throws: GException on failure.
	 */
	public bool makeDirectoryWithParents(Cancellable cancellable);

	/**
	 * Creates a symbolic link named @file which contains the string
	 * @symlink_value.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     symlinkValue = a string with the path for the target of the new symlink
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE on the creation of a new symlink, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool makeSymbolicLink(string symlinkValue, Cancellable cancellable);

	/**
	 * Recursively measures the disk usage of @file.
	 *
	 * This is essentially an analog of the 'du' command, but it also
	 * reports the number of directories and non-directory files encountered
	 * (including things like symbolic links).
	 *
	 * By default, errors are only reported against the toplevel file
	 * itself.  Errors found while recursing are silently ignored, unless
	 * %G_FILE_DISK_USAGE_REPORT_ALL_ERRORS is given in @flags.
	 *
	 * The returned size, @disk_usage, is in bytes and should be formatted
	 * with g_format_size() in order to get something reasonable for showing
	 * in a user interface.
	 *
	 * @progress_callback and @progress_data can be given to request
	 * periodic progress updates while scanning.  See the documentation for
	 * #GFileMeasureProgressCallback for information about when and how the
	 * callback will be invoked.
	 *
	 * Params:
	 *     flags = #GFileMeasureFlags
	 *     cancellable = optional #GCancellable
	 *     progressCallback = a #GFileMeasureProgressCallback
	 *     progressData = user_data for @progress_callback
	 *     diskUsage = the number of bytes of disk space used
	 *     numDirs = the number of directories encountered
	 *     numFiles = the number of non-directories encountered
	 *
	 * Return: %TRUE if successful, with the out parameters set.
	 *     %FALSE otherwise, with @error set.
	 *
	 * Since: 2.38
	 *
	 * Throws: GException on failure.
	 */
	public bool measureDiskUsage(GFileMeasureFlags flags, Cancellable cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, out ulong diskUsage, out ulong numDirs, out ulong numFiles);

	/**
	 * Recursively measures the disk usage of @file.
	 *
	 * This is the asynchronous version of g_file_measure_disk_usage().  See
	 * there for more information.
	 *
	 * Params:
	 *     flags = #GFileMeasureFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable
	 *     progressCallback = a #GFileMeasureProgressCallback
	 *     progressData = user_data for @progress_callback
	 *     callback = a #GAsyncReadyCallback to call when complete
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.38
	 */
	public void measureDiskUsageAsync(GFileMeasureFlags flags, int ioPriority, Cancellable cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, GAsyncReadyCallback callback, void* userData);

	/**
	 * Collects the results from an earlier call to
	 * g_file_measure_disk_usage_async().  See g_file_measure_disk_usage() for
	 * more information.
	 *
	 * Params:
	 *     result = the #GAsyncResult passed to your #GAsyncReadyCallback
	 *     diskUsage = the number of bytes of disk space used
	 *     numDirs = the number of directories encountered
	 *     numFiles = the number of non-directories encountered
	 *
	 * Return: %TRUE if successful, with the out parameters set.
	 *     %FALSE otherwise, with @error set.
	 *
	 * Since: 2.38
	 *
	 * Throws: GException on failure.
	 */
	public bool measureDiskUsageFinish(AsyncResultIF result, out ulong diskUsage, out ulong numDirs, out ulong numFiles);

	/**
	 * Obtains a file or directory monitor for the given file,
	 * depending on the type of the file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     flags = a set of #GFileMonitorFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileMonitor for the given @file,
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.18
	 *
	 * Throws: GException on failure.
	 */
	public FileMonitor monitor(GFileMonitorFlags flags, Cancellable cancellable);

	/**
	 * Obtains a directory monitor for the given file.
	 * This may fail if directory monitoring is not supported.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * It does not make sense for @flags to contain
	 * %G_FILE_MONITOR_WATCH_HARD_LINKS, since hard links can not be made to
	 * directories.  It is not possible to monitor all the files in a
	 * directory for changes made via hard links; if you want to do this then
	 * you must register individual watches with g_file_monitor().
	 *
	 * Params:
	 *     flags = a set of #GFileMonitorFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileMonitor for the given @file,
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileMonitor monitorDirectory(GFileMonitorFlags flags, Cancellable cancellable);

	/**
	 * Obtains a file monitor for the given file. If no file notification
	 * mechanism exists, then regular polling of the file is used.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * If @flags contains %G_FILE_MONITOR_WATCH_HARD_LINKS then the monitor
	 * will also attempt to report changes made to the file via another
	 * filename (ie, a hard link). Without this flag, you can only rely on
	 * changes made through the filename contained in @file to be
	 * reported. Using this flag may result in an increase in resource
	 * usage, and may not have any effect depending on the #GFileMonitor
	 * backend and/or filesystem type.
	 *
	 * Params:
	 *     flags = a set of #GFileMonitorFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileMonitor for the given @file,
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileMonitor monitorFile(GFileMonitorFlags flags, Cancellable cancellable);

	/**
	 * Starts a @mount_operation, mounting the volume that contains
	 * the file @location.
	 *
	 * When this operation has completed, @callback will be called with
	 * @user_user data, and the operation can be finalized with
	 * g_file_mount_enclosing_volume_finish().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation
	 *         or %NULL to avoid user interaction
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 */
	public void mountEnclosingVolume(GMountMountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes a mount operation started by g_file_mount_enclosing_volume().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if successful. If an error has occurred,
	 *     this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	public bool mountEnclosingVolumeFinish(AsyncResultIF result);

	/**
	 * Mounts a file of type G_FILE_TYPE_MOUNTABLE.
	 * Using @mount_operation, you can request callbacks when, for instance,
	 * passwords are needed during authentication.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_mount_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation,
	 *         or %NULL to avoid user interaction
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 */
	public void mountMountable(GMountMountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes a mount operation. See g_file_mount_mountable() for details.
	 *
	 * Finish an asynchronous mount operation that was started
	 * with g_file_mount_mountable().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: a #GFile or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileIF mountMountableFinish(AsyncResultIF result);

	/**
	 * Tries to move the file or directory @source to the location specified
	 * by @destination. If native move operations are supported then this is
	 * used, otherwise a copy + delete fallback is used. The native
	 * implementation may support moving directories (for instance on moves
	 * inside the same filesystem), but the fallback code does not.
	 *
	 * If the flag #G_FILE_COPY_OVERWRITE is specified an already
	 * existing @destination file is overwritten.
	 *
	 * If the flag #G_FILE_COPY_NOFOLLOW_SYMLINKS is specified then symlinks
	 * will be copied as symlinks, otherwise the target of the
	 * @source symlink will be copied.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * If @progress_callback is not %NULL, then the operation can be monitored
	 * by setting this to a #GFileProgressCallback function.
	 * @progress_callback_data will be passed to this function. It is
	 * guaranteed that this callback will be called after all data has been
	 * transferred with the total number of bytes copied during the operation.
	 *
	 * If the @source file does not exist, then the %G_IO_ERROR_NOT_FOUND
	 * error is returned, independent on the status of the @destination.
	 *
	 * If #G_FILE_COPY_OVERWRITE is not specified and the target exists,
	 * then the error %G_IO_ERROR_EXISTS is returned.
	 *
	 * If trying to overwrite a file over a directory, the %G_IO_ERROR_IS_DIRECTORY
	 * error is returned. If trying to overwrite a directory with a directory the
	 * %G_IO_ERROR_WOULD_MERGE error is returned.
	 *
	 * If the source is a directory and the target does not exist, or
	 * #G_FILE_COPY_OVERWRITE is specified and the target is a file, then
	 * the %G_IO_ERROR_WOULD_RECURSE error may be returned (if the native
	 * move operation isn't available).
	 *
	 * Params:
	 *     destination = #GFile pointing to the destination location
	 *     flags = set of #GFileCopyFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     progressCallback = #GFileProgressCallback
	 *         function for updates
	 *     progressCallbackData = gpointer to user data for
	 *         the callback function
	 *
	 * Return: %TRUE on successful move, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool move(FileIF destination, GFileCopyFlags flags, Cancellable cancellable, GFileProgressCallback progressCallback, void* progressCallbackData);

	/**
	 * Opens an existing file for reading and writing. The result is
	 * a #GFileIOStream that can be used to read and write the contents
	 * of the file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If the file does not exist, the %G_IO_ERROR_NOT_FOUND error will
	 * be returned. If the file is a directory, the %G_IO_ERROR_IS_DIRECTORY
	 * error will be returned. Other errors are possible too, and depend on
	 * what kind of filesystem the file is on. Note that in many non-local
	 * file cases read and write streams are not supported, so make sure you
	 * really need to do read and write streaming, rather than just opening
	 * for reading or writing.
	 *
	 * Params:
	 *     cancellable = a #GCancellable
	 *
	 * Return: #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream openReadwrite(Cancellable cancellable);

	/**
	 * Asynchronously opens @file for reading and writing.
	 *
	 * For more details, see g_file_open_readwrite() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_open_readwrite_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void openReadwriteAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file read operation started with
	 * g_file_open_readwrite_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream openReadwriteFinish(AsyncResultIF res);

	/**
	 * Polls a file of type #G_FILE_TYPE_MOUNTABLE.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_mount_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void pollMountable(Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes a poll operation. See g_file_poll_mountable() for details.
	 *
	 * Finish an asynchronous poll operation that was polled
	 * with g_file_poll_mountable().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the operation finished successfully. %FALSE
	 *     otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool pollMountableFinish(AsyncResultIF result);

	/**
	 * Returns the #GAppInfo that is registered as the default
	 * application to handle the file specified by @file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Return: a #GAppInfo if the handle was found,
	 *     %NULL if there were errors.
	 *     When you are done with it, release it with g_object_unref()
	 *
	 * Throws: GException on failure.
	 */
	public AppInfoIF queryDefaultHandler(Cancellable cancellable);

	/**
	 * Utility function to check if a particular file exists. This is
	 * implemented using g_file_query_info() and as such does blocking I/O.
	 *
	 * Note that in many cases it is racy to first check for file existence
	 * and then execute something based on the outcome of that, because the
	 * file might have been created or removed in between the operations. The
	 * general approach to handling that is to not check, but just do the
	 * operation and handle the errors as they come.
	 *
	 * As an example of race-free checking, take the case of reading a file,
	 * and if it doesn't exist, creating it. There are two racy versions: read
	 * it, and on error create it; and: check if it exists, if not create it.
	 * These can both result in two processes creating the file (with perhaps
	 * a partially written file as the result). The correct approach is to
	 * always try to create the file with g_file_create() which will either
	 * atomically create the file or fail with a %G_IO_ERROR_EXISTS error.
	 *
	 * However, in many cases an existence check is useful in a user interface,
	 * for instance to make a menu item sensitive/insensitive, so that you don't
	 * have to fool users that something is possible and then just show an error
	 * dialog. If you do this, you should make sure to also handle the errors
	 * that can happen due to races when you execute the operation.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the file exists (and can be detected without error),
	 *     %FALSE otherwise (or if cancelled).
	 */
	public bool queryExists(Cancellable cancellable);

	/**
	 * Utility function to inspect the #GFileType of a file. This is
	 * implemented using g_file_query_info() and as such does blocking I/O.
	 *
	 * The primary use case of this method is to check if a file is
	 * a regular file, directory, or symlink.
	 *
	 * Params:
	 *     flags = a set of #GFileQueryInfoFlags passed to g_file_query_info()
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: The #GFileType of the file and #G_FILE_TYPE_UNKNOWN
	 *     if the file does not exist
	 *
	 * Since: 2.18
	 */
	public GFileType queryFileType(GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Similar to g_file_query_info(), but obtains information
	 * about the filesystem the @file is on, rather than the file itself.
	 * For instance the amount of space available and the type of
	 * the filesystem.
	 *
	 * The @attributes value is a string that specifies the attributes
	 * that should be gathered. It is not an error if it's not possible
	 * to read a particular requested attribute from a file - it just
	 * won't be set. @attributes should be a comma-separated list of
	 * attributes or attribute wildcards. The wildcard "*" means all
	 * attributes, and a wildcard like "filesystem::*" means all attributes
	 * in the filesystem namespace. The standard namespace for filesystem
	 * attributes is "filesystem". Common attributes of interest are
	 * #G_FILE_ATTRIBUTE_FILESYSTEM_SIZE (the total size of the filesystem
	 * in bytes), #G_FILE_ATTRIBUTE_FILESYSTEM_FREE (number of bytes available),
	 * and #G_FILE_ATTRIBUTE_FILESYSTEM_TYPE (type of the filesystem).
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If the file does not exist, the %G_IO_ERROR_NOT_FOUND error will
	 * be returned. Other errors are possible too, and depend on what
	 * kind of filesystem the file is on.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileInfo or %NULL if there was an error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryFilesystemInfo(string attributes, Cancellable cancellable);

	/**
	 * Asynchronously gets the requested information about the filesystem
	 * that the specified @file is on. The result is a #GFileInfo object
	 * that contains key-value attributes (such as type or size for the
	 * file).
	 *
	 * For more details, see g_file_query_filesystem_info() which is the
	 * synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call g_file_query_info_finish() to get the result of the
	 * operation.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void queryFilesystemInfoAsync(string attributes, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous filesystem info query.
	 * See g_file_query_filesystem_info_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: #GFileInfo for given @file
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryFilesystemInfoFinish(AsyncResultIF res);

	/**
	 * Gets the requested information about specified @file.
	 * The result is a #GFileInfo object that contains key-value
	 * attributes (such as the type or size of the file).
	 *
	 * The @attributes value is a string that specifies the file
	 * attributes that should be gathered. It is not an error if
	 * it's not possible to read a particular requested attribute
	 * from a file - it just won't be set. @attributes should be a
	 * comma-separated list of attributes or attribute wildcards.
	 * The wildcard "*" means all attributes, and a wildcard like
	 * "standard::*" means all attributes in the standard namespace.
	 * An example attribute query be "standard::*,owner::user".
	 * The standard attributes are available as defines, like
	 * #G_FILE_ATTRIBUTE_STANDARD_NAME.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * For symlinks, normally the information about the target of the
	 * symlink is returned, rather than information about the symlink
	 * itself. However if you pass #G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS
	 * in @flags the information about the symlink itself will be returned.
	 * Also, for symlinks that point to non-existing files the information
	 * about the symlink itself will be returned.
	 *
	 * If the file does not exist, the %G_IO_ERROR_NOT_FOUND error will be
	 * returned. Other errors are possible too, and depend on what kind of
	 * filesystem the file is on.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileInfo for the given @file, or %NULL
	 *     on error. Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfo(string attributes, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously gets the requested information about specified @file.
	 * The result is a #GFileInfo object that contains key-value attributes
	 * (such as type or size for the file).
	 *
	 * For more details, see g_file_query_info() which is the synchronous
	 * version of this call.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call g_file_query_info_finish() to get the result of the operation.
	 *
	 * Params:
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the
	 *         request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void queryInfoAsync(string attributes, GFileQueryInfoFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file info query.
	 * See g_file_query_info_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: #GFileInfo for given @file
	 *     or %NULL on error. Free the returned object with
	 *     g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInfo queryInfoFinish(AsyncResultIF res);

	/**
	 * Obtain the list of settable attributes for the file.
	 *
	 * Returns the type and full attribute name of all the attributes
	 * that can be set on this file. This doesn't mean setting it will
	 * always succeed though, you might get an access failure, or some
	 * specific file may not support a specific attribute.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileAttributeInfoList describing the settable attributes.
	 *     When you are done with it, release it with
	 *     g_file_attribute_info_list_unref()
	 *
	 * Throws: GException on failure.
	 */
	public FileAttributeInfoList querySettableAttributes(Cancellable cancellable);

	/**
	 * Obtain the list of attribute namespaces where new attributes
	 * can be created by a user. An example of this is extended
	 * attributes (in the "xattr" namespace).
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileAttributeInfoList describing the writable namespaces.
	 *     When you are done with it, release it with
	 *     g_file_attribute_info_list_unref()
	 *
	 * Throws: GException on failure.
	 */
	public FileAttributeInfoList queryWritableNamespaces(Cancellable cancellable);

	/**
	 * Opens a file for reading. The result is a #GFileInputStream that
	 * can be used to read the contents of the file.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * If the file does not exist, the %G_IO_ERROR_NOT_FOUND error will be
	 * returned. If the file is a directory, the %G_IO_ERROR_IS_DIRECTORY
	 * error will be returned. Other errors are possible too, and depend
	 * on what kind of filesystem the file is on.
	 *
	 * Params:
	 *     cancellable = a #GCancellable
	 *
	 * Return: #GFileInputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInputStream read(Cancellable cancellable);

	/**
	 * Asynchronously opens @file for reading.
	 *
	 * For more details, see g_file_read() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_read_finish() to get the result
	 * of the operation.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void readAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file read operation started with
	 * g_file_read_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileInputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileInputStream readFinish(AsyncResultIF res);

	/**
	 * Returns an output stream for overwriting the file, possibly
	 * creating a backup copy of the file first. If the file doesn't exist,
	 * it will be created.
	 *
	 * This will try to replace the file in the safest way possible so
	 * that any errors during the writing will not affect an already
	 * existing copy of the file. For instance, for local files it
	 * may write to a temporary file and then atomically rename over
	 * the destination when the stream is closed.
	 *
	 * By default files created are generally readable by everyone,
	 * but if you pass #G_FILE_CREATE_PRIVATE in @flags the file
	 * will be made readable only to the current user, to the level that
	 * is supported on the target filesystem.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled
	 * by triggering the cancellable object from another thread. If the
	 * operation was cancelled, the error %G_IO_ERROR_CANCELLED will be
	 * returned.
	 *
	 * If you pass in a non-%NULL @etag value and @file already exists, then
	 * this value is compared to the current entity tag of the file, and if
	 * they differ an %G_IO_ERROR_WRONG_ETAG error is returned. This
	 * generally means that the file has been changed since you last read
	 * it. You can get the new etag from g_file_output_stream_get_etag()
	 * after you've finished writing and closed the #GFileOutputStream. When
	 * you load a new file you can use g_file_input_stream_query_info() to
	 * get the etag of the file.
	 *
	 * If @make_backup is %TRUE, this function will attempt to make a
	 * backup of the current file before overwriting it. If this fails
	 * a %G_IO_ERROR_CANT_CREATE_BACKUP error will be returned. If you
	 * want to replace anyway, try again with @make_backup set to %FALSE.
	 *
	 * If the file is a directory the %G_IO_ERROR_IS_DIRECTORY error will
	 * be returned, and if the file is some other form of non-regular file
	 * then a %G_IO_ERROR_NOT_REGULAR_FILE error will be returned. Some
	 * file systems don't allow all file names, and may return an
	 * %G_IO_ERROR_INVALID_FILENAME error, and if the name is to long
	 * %G_IO_ERROR_FILENAME_TOO_LONG will be returned. Other errors are
	 * possible too, and depend on what kind of filesystem the file is on.
	 *
	 * Params:
	 *     etag = an optional [entity tag][gfile-etag]
	 *         for the current #GFile, or #NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileOutputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream replace(string etag, bool makeBackup, GFileCreateFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously overwrites the file, replacing the contents,
	 * possibly creating a backup copy of the file first.
	 *
	 * For more details, see g_file_replace() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_replace_finish() to get the result
	 * of the operation.
	 *
	 * Params:
	 *     etag = an [entity tag][gfile-etag] for the current #GFile,
	 *         or %NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void replaceAsync(string etag, bool makeBackup, GFileCreateFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Replaces the contents of @file with @contents of @length bytes.
	 *
	 * If @etag is specified (not %NULL), any existing file must have that etag,
	 * or the error %G_IO_ERROR_WRONG_ETAG will be returned.
	 *
	 * If @make_backup is %TRUE, this function will attempt to make a backup
	 * of @file. Internally, it uses g_file_replace(), so will try to replace the
	 * file contents in the safest way possible. For example, atomic renames are
	 * used when replacing local files’ contents.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * The returned @new_etag can be used to verify that the file hasn't
	 * changed the next time it is saved over.
	 *
	 * Params:
	 *     contents = a string containing the new contents for @file
	 *     length = the length of @contents in bytes
	 *     etag = the old [entity-tag][gfile-etag] for the document,
	 *         or %NULL
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     newEtag = a location to a new [entity tag][gfile-etag]
	 *         for the document. This should be freed with g_free() when no longer
	 *         needed, or %NULL
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *
	 * Return: %TRUE if successful. If an error has occurred, this function
	 *     will return %FALSE and set @error appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	public bool replaceContents(string contents, string etag, bool makeBackup, GFileCreateFlags flags, out string newEtag, Cancellable cancellable);

	/**
	 * Starts an asynchronous replacement of @file with the given
	 * @contents of @length bytes. @etag will replace the document's
	 * current entity tag.
	 *
	 * When this operation has completed, @callback will be called with
	 * @user_user data, and the operation can be finalized with
	 * g_file_replace_contents_finish().
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * If @make_backup is %TRUE, this function will attempt to
	 * make a backup of @file.
	 *
	 * Note that no copy of @content will be made, so it must stay valid
	 * until @callback is called. See g_file_replace_contents_bytes_async()
	 * for a #GBytes version that will automatically hold a reference to the
	 * contents (without copying) for the duration of the call.
	 *
	 * Params:
	 *     contents = string of contents to replace the file with
	 *     length = the length of @contents in bytes
	 *     etag = a new [entity tag][gfile-etag] for the @file, or %NULL
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void replaceContentsAsync(string contents, string etag, bool makeBackup, GFileCreateFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Same as g_file_replace_contents_async() but takes a #GBytes input instead.
	 * This function will keep a ref on @contents until the operation is done.
	 * Unlike g_file_replace_contents_async() this allows forgetting about the
	 * content without waiting for the callback.
	 *
	 * When this operation has completed, @callback will be called with
	 * @user_user data, and the operation can be finalized with
	 * g_file_replace_contents_finish().
	 *
	 * Params:
	 *     contents = a #GBytes
	 *     etag = a new [entity tag][gfile-etag] for the @file, or %NULL
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.40
	 */
	public void replaceContentsBytesAsync(Bytes contents, string etag, bool makeBackup, GFileCreateFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous replace of the given @file. See
	 * g_file_replace_contents_async(). Sets @new_etag to the new entity
	 * tag for the document, if present.
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     newEtag = a location of a new [entity tag][gfile-etag]
	 *         for the document. This should be freed with g_free() when it is no
	 *         longer needed, or %NULL
	 *
	 * Return: %TRUE on success, %FALSE on failure.
	 *
	 * Throws: GException on failure.
	 */
	public bool replaceContentsFinish(AsyncResultIF res, out string newEtag);

	/**
	 * Finishes an asynchronous file replace operation started with
	 * g_file_replace_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileOutputStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileOutputStream replaceFinish(AsyncResultIF res);

	/**
	 * Returns an output stream for overwriting the file in readwrite mode,
	 * possibly creating a backup copy of the file first. If the file doesn't
	 * exist, it will be created.
	 *
	 * For details about the behaviour, see g_file_replace() which does the
	 * same thing but returns an output stream only.
	 *
	 * Note that in many non-local file cases read and write streams are not
	 * supported, so make sure you really need to do read and write streaming,
	 * rather than just opening for reading or writing.
	 *
	 * Params:
	 *     etag = an optional [entity tag][gfile-etag]
	 *         for the current #GFile, or #NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream replaceReadwrite(string etag, bool makeBackup, GFileCreateFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously overwrites the file in read-write mode,
	 * replacing the contents, possibly creating a backup copy
	 * of the file first.
	 *
	 * For more details, see g_file_replace_readwrite() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_replace_readwrite_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     etag = an [entity tag][gfile-etag] for the current #GFile,
	 *         or %NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void replaceReadwriteAsync(string etag, bool makeBackup, GFileCreateFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file replace operation started with
	 * g_file_replace_readwrite_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFileIOStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public FileIOStream replaceReadwriteFinish(AsyncResultIF res);

	/**
	 * Resolves a relative path for @file to an absolute path.
	 *
	 * This call does no blocking I/O.
	 *
	 * Params:
	 *     relativePath = a given relative path string
	 *
	 * Return: #GFile to the resolved path.
	 *     %NULL if @relative_path is %NULL or if @file is invalid.
	 *     Free the returned object with g_object_unref().
	 */
	public FileIF resolveRelativePath(string relativePath);

	/**
	 * Sets an attribute in the file with attribute name @attribute to @value.
	 *
	 * Some attributes can be unset by setting @attribute to
	 * %G_FILE_ATTRIBUTE_TYPE_INVALID and @value_p to %NULL.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     type = The type of the attribute
	 *     valueP = a pointer to the value (or the pointer
	 *         itself if the type is a pointer type)
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the attribute was set, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttribute(string attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_BYTE_STRING to @value.
	 * If @attribute is of a different type, this operation will fail,
	 * returning %FALSE.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a string containing the attribute's new value
	 *     flags = a #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set to @value
	 *     in the @file, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeByteString(string attribute, string value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_INT32 to @value.
	 * If @attribute is of a different type, this operation will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a #gint32 containing the attribute's new value
	 *     flags = a #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set to @value
	 *     in the @file, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeInt32(string attribute, int value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_INT64 to @value.
	 * If @attribute is of a different type, this operation will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a #guint64 containing the attribute's new value
	 *     flags = a #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeInt64(string attribute, long value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_STRING to @value.
	 * If @attribute is of a different type, this operation will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a string containing the attribute's value
	 *     flags = #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeString(string attribute, string value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_UINT32 to @value.
	 * If @attribute is of a different type, this operation will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a #guint32 containing the attribute's new value
	 *     flags = a #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set to @value
	 *     in the @file, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeUint32(string attribute, uint value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Sets @attribute of type %G_FILE_ATTRIBUTE_TYPE_UINT64 to @value.
	 * If @attribute is of a different type, this operation will fail.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     attribute = a string containing the attribute's name
	 *     value = a #guint64 containing the attribute's new value
	 *     flags = a #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE if the @attribute was successfully set to @value
	 *     in the @file, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributeUint64(string attribute, ulong value, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Asynchronously sets the attributes of @file with @info.
	 *
	 * For more details, see g_file_set_attributes_from_info(),
	 * which is the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_set_attributes_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     info = a #GFileInfo
	 *     flags = a #GFileQueryInfoFlags
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback
	 *     userData = a #gpointer
	 */
	public void setAttributesAsync(FileInfo info, GFileQueryInfoFlags flags, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes setting an attribute started in g_file_set_attributes_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *     info = a #GFileInfo
	 *
	 * Return: %TRUE if the attributes were set correctly, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributesFinish(AsyncResultIF result, out FileInfo info);

	/**
	 * Tries to set all attributes in the #GFileInfo on the target
	 * values, not stopping on the first error.
	 *
	 * If there is any error during this operation then @error will
	 * be set to the first error. Error on particular fields are flagged
	 * by setting the "status" field in the attribute value to
	 * %G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING, which means you can
	 * also detect further errors.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     info = a #GFileInfo
	 *     flags = #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %FALSE if there was any error, %TRUE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool setAttributesFromInfo(FileInfo info, GFileQueryInfoFlags flags, Cancellable cancellable);

	/**
	 * Renames @file to the specified display name.
	 *
	 * The display name is converted from UTF-8 to the correct encoding
	 * for the target filesystem if possible and the @file is renamed to this.
	 *
	 * If you want to implement a rename operation in the user interface the
	 * edit name (#G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME) should be used as the
	 * initial value in the rename widget, and then the result after editing
	 * should be passed to g_file_set_display_name().
	 *
	 * On success the resulting converted filename is returned.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     displayName = a string
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: a #GFile specifying what @file was renamed to,
	 *     or %NULL if there was an error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileIF setDisplayName(string displayName, Cancellable cancellable);

	/**
	 * Asynchronously sets the display name for a given #GFile.
	 *
	 * For more details, see g_file_set_display_name() which is
	 * the synchronous version of this call.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_set_display_name_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     displayName = a string
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void setDisplayNameAsync(string displayName, int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes setting a display name started with
	 * g_file_set_display_name_async().
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *
	 * Return: a #GFile or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	public FileIF setDisplayNameFinish(AsyncResultIF res);

	/**
	 * Starts a file of type #G_FILE_TYPE_MOUNTABLE.
	 * Using @start_operation, you can request callbacks when, for instance,
	 * passwords are needed during authentication.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_mount_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     startOperation = a #GMountOperation, or %NULL to avoid user interaction
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void startMountable(GDriveStartFlags flags, MountOperation startOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes a start operation. See g_file_start_mountable() for details.
	 *
	 * Finish an asynchronous start operation that was started
	 * with g_file_start_mountable().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the operation finished successfully. %FALSE
	 *     otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool startMountableFinish(AsyncResultIF result);

	/**
	 * Stops a file of type #G_FILE_TYPE_MOUNTABLE.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_stop_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation,
	 *         or %NULL to avoid user interaction.
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void stopMountable(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an stop operation, see g_file_stop_mountable() for details.
	 *
	 * Finish an asynchronous stop operation that was started
	 * with g_file_stop_mountable().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool stopMountableFinish(AsyncResultIF result);

	/**
	 * Checks if @file supports
	 * [thread-default contexts][g-main-context-push-thread-default-context].
	 * If this returns %FALSE, you cannot perform asynchronous operations on
	 * @file in a thread that has a thread-default context.
	 *
	 * Return: Whether or not @file supports thread-default contexts.
	 *
	 * Since: 2.22
	 */
	public bool supportsThreadContexts();

	/**
	 * Sends @file to the "Trashcan", if possible. This is similar to
	 * deleting it, but the user can recover it before emptying the trashcan.
	 * Not all file systems support trashing, so this call can return the
	 * %G_IO_ERROR_NOT_SUPPORTED error.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *
	 * Return: %TRUE on successful trash, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool trash(Cancellable cancellable);

	/**
	 * Asynchronously sends @file to the Trash location, if possible.
	 *
	 * Params:
	 *     ioPriority = the [I/O priority][io-priority] of the request
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.38
	 */
	public void trashAsync(int ioPriority, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an asynchronous file trashing operation, started with
	 * g_file_trash_async().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE on successful trash, %FALSE otherwise.
	 *
	 * Since: 2.38
	 *
	 * Throws: GException on failure.
	 */
	public bool trashFinish(AsyncResultIF result);

	/**
	 * Unmounts a file of type G_FILE_TYPE_MOUNTABLE.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_unmount_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Deprecated: Use g_file_unmount_mountable_with_operation() instead.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 */
	public void unmountMountable(GMountUnmountFlags flags, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an unmount operation, see g_file_unmount_mountable() for details.
	 *
	 * Finish an asynchronous unmount operation that was started
	 * with g_file_unmount_mountable().
	 *
	 * Deprecated: Use g_file_unmount_mountable_with_operation_finish()
	 * instead.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool unmountMountableFinish(AsyncResultIF result);

	/**
	 * Unmounts a file of type #G_FILE_TYPE_MOUNTABLE.
	 *
	 * If @cancellable is not %NULL, then the operation can be cancelled by
	 * triggering the cancellable object from another thread. If the operation
	 * was cancelled, the error %G_IO_ERROR_CANCELLED will be returned.
	 *
	 * When the operation is finished, @callback will be called.
	 * You can then call g_file_unmount_mountable_finish() to get
	 * the result of the operation.
	 *
	 * Params:
	 *     flags = flags affecting the operation
	 *     mountOperation = a #GMountOperation,
	 *         or %NULL to avoid user interaction
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call
	 *         when the request is satisfied, or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void unmountMountableWithOperation(GMountUnmountFlags flags, MountOperation mountOperation, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);

	/**
	 * Finishes an unmount operation,
	 * see g_file_unmount_mountable_with_operation() for details.
	 *
	 * Finish an asynchronous unmount operation that was started
	 * with g_file_unmount_mountable_with_operation().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Return: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool unmountMountableWithOperationFinish(AsyncResultIF result);
}
