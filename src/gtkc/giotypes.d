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

module gtkc.giotypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;

/**
 * Flags used when querying a GFileInfo.
 * G_FILE_QUERY_INFO_NONE
 * No flags set.
 * G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS
 * Don't follow symlinks.
 */
public enum GFileQueryInfoFlags
{
	NONE = 0,
	NOFOLLOW_SYMLINKS = (1 << 0) /+*< nick=nofollow-symlinks >+/
}
alias GFileQueryInfoFlags FileQueryInfoFlags;

/**
 * Flags used when an operation may create a file.
 * G_FILE_CREATE_NONE
 * No flags set.
 * G_FILE_CREATE_PRIVATE
 * Create a file that can only be
 *  accessed by the current user.
 * G_FILE_CREATE_REPLACE_DESTINATION
 * Replace the destination
 *  as if it didn't exist before. Don't try to keep any old
 *  permissions, replace instead of following links. This
 *  is generally useful if you're doing a "copy over"
 *  rather than a "save new version of" replace operation.
 *  You can think of it as "unlink destination" before
 *  writing to it, although the implementation may not
 *  be exactly like that. Since 2.20
 */
public enum GFileCreateFlags
{
	NONE = 0,
	PRIVATE = (1 << 0),
	REPLACE_DESTINATION = (1 << 1)
}
alias GFileCreateFlags FileCreateFlags;

/**
 * Flags used when copying or moving files.
 * G_FILE_COPY_NONE
 * No flags set.
 * G_FILE_COPY_OVERWRITE
 * Overwrite any existing files
 * G_FILE_COPY_BACKUP
 * Make a backup of any existing files.
 * G_FILE_COPY_NOFOLLOW_SYMLINKS
 * Don't follow symlinks.
 * G_FILE_COPY_ALL_METADATA
 * Copy all file metadata instead of just default set used for copy (see GFileInfo).
 * G_FILE_COPY_NO_FALLBACK_FOR_MOVE
 * Don't use copy and delete fallback if native move not supported.
 * G_FILE_COPY_TARGET_DEFAULT_PERMS
 * Leaves target file with default perms, instead of setting the source file perms.
 */
public enum GFileCopyFlags
{
	NONE = 0, /+*< nick=none >+/
	OVERWRITE = (1 << 0),
	BACKUP = (1 << 1),
	NOFOLLOW_SYMLINKS = (1 << 2),
	ALL_METADATA = (1 << 3),
	NO_FALLBACK_FOR_MOVE = (1 << 4),
	TARGET_DEFAULT_PERMS = (1 << 5)
}
alias GFileCopyFlags FileCopyFlags;

/**
 * Flags used to set what a GFileMonitor will watch for.
 * G_FILE_MONITOR_NONE
 * No flags set.
 * G_FILE_MONITOR_WATCH_MOUNTS
 * Watch for mount events.
 * G_FILE_MONITOR_SEND_MOVED
 * Pair DELETED and CREATED events caused
 *  by file renames (moves) and send a single G_FILE_MONITOR_EVENT_MOVED
 *  event instead (NB: not supported on all backends; the default
 *  behaviour -without specifying this flag- is to send single DELETED
 *  and CREATED events).
 */
public enum GFileMonitorFlags
{
	NONE = 0,
	WATCH_MOUNTS = (1 << 0),
	SEND_MOVED = (1 << 1)
}
alias GFileMonitorFlags FileMonitorFlags;

/**
 * Indicates a hint from the file system whether files should be
 * previewed in a file manager. Returned as the value of the key
 * G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW.
 * G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS
 * Only preview files if user has explicitly requested it.
 * G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL
 * Preview files if user has requested preview of "local" files.
 * G_FILESYSTEM_PREVIEW_TYPE_NEVER
 * Never preview files.
 */
public enum GFilesystemPreviewType
{
	TYPE_IF_ALWAYS = 0,
	TYPE_IF_LOCAL,
	TYPE_NEVER
}
alias GFilesystemPreviewType FilesystemPreviewType;

/**
 * The data types for file attributes.
 * G_FILE_ATTRIBUTE_TYPE_INVALID
 * indicates an invalid or uninitalized type.
 * G_FILE_ATTRIBUTE_TYPE_STRING
 * a null terminated UTF8 string.
 * G_FILE_ATTRIBUTE_TYPE_BYTE_STRING
 * a zero terminated string of non-zero bytes.
 * G_FILE_ATTRIBUTE_TYPE_BOOLEAN
 * a boolean value.
 * G_FILE_ATTRIBUTE_TYPE_UINT32
 * an unsigned 4-byte/32-bit integer.
 * G_FILE_ATTRIBUTE_TYPE_INT32
 * a signed 4-byte/32-bit integer.
 * G_FILE_ATTRIBUTE_TYPE_UINT64
 * an unsigned 8-byte/64-bit integer.
 * G_FILE_ATTRIBUTE_TYPE_INT64
 * a signed 8-byte/64-bit integer.
 * G_FILE_ATTRIBUTE_TYPE_OBJECT
 * a GObject.
 * G_FILE_ATTRIBUTE_TYPE_STRINGV
 * a NULL terminated char **. Since 2.22
 */
public enum GFileAttributeType
{
	TYPE_INVALID = 0,
	TYPE_STRING,
	TYPE_BYTE_STRING, /+* zero terminated string of non-zero bytes +/
	TYPE_BOOLEAN,
	TYPE_UINT32,
	TYPE_INT32,
	TYPE_UINT64,
	TYPE_INT64,
	TYPE_OBJECT,
	TYPE_STRINGV
}
alias GFileAttributeType FileAttributeType;

/**
 * Flags specifying the behaviour of an attribute.
 * G_FILE_ATTRIBUTE_INFO_NONE
 * no flags set.
 * G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE
 * copy the attribute values when the file is copied.
 * G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED
 * copy the attribute values when the file is moved.
 */
public enum GFileAttributeInfoFlags
{
	NONE = 0,
	COPY_WITH_FILE = (1 << 0),
	COPY_WHEN_MOVED = (1 << 1)
}
alias GFileAttributeInfoFlags FileAttributeInfoFlags;

/**
 * Used by g_file_set_attributes_from_info() when setting file attributes.
 * G_FILE_ATTRIBUTE_STATUS_UNSET
 * Attribute value is unset (empty).
 * G_FILE_ATTRIBUTE_STATUS_SET
 * Attribute value is set.
 * G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING
 * Indicates an error in setting the value.
 */
public enum GFileAttributeStatus
{
	UNSET = 0,
	SET,
	ERROR_SETTING
}
alias GFileAttributeStatus FileAttributeStatus;


/**
 * Main Gtk struct.
 * A handle to an object implementing the GFileIface interface.
 * Generally stores a location within the file system. Handles do not
 * necessarily represent files or directories that currently exist.
 */
public struct GFile{}


/**
 * An interface for writing VFS file handles.
 * GTypeInterface  g_iface;
 * The parent interface.
 * dup  ()
 * Duplicates a GFile.
 * hash  ()
 * Creates a hash of a GFile.
 * equal  ()
 * Checks equality of two given GFiles.
 * is_native  ()
 * Checks to see if a file is native to the system.
 * has_uri_scheme  ()
 * Checks to see if a GFile has a given URI scheme.
 * get_uri_scheme  ()
 * Gets the URI scheme for a GFile.
 * get_basename  ()
 * Gets the basename for a given GFile.
 * get_path  ()
 * Gets the current path within a GFile.
 * get_uri  ()
 * Gets a URI for the path within a GFile.
 * get_parse_name  ()
 * Gets the parsed name for the GFile.
 * get_parent  ()
 * Gets the parent directory for the GFile.
 * prefix_matches  ()
 * Checks whether a GFile contains a specified file.
 * get_relative_path  ()
 * Gets the path for a GFile relative to a given path.
 * resolve_relative_path  ()
 * Resolves a relative path for a GFile to an absolute path.
 * get_child_for_display_name  ()
 * Gets the child GFile for a given display name.
 * enumerate_children  ()
 * Gets a GFileEnumerator with the children of a GFile.
 * enumerate_children_async  ()
 * Asynchronously gets a GFileEnumerator with the children of a GFile.
 * enumerate_children_finish  ()
 * Finishes asynchronously enumerating the children.
 * query_info  ()
 * Gets the GFileInfo for a GFile.
 * query_info_async  ()
 * Asynchronously gets the GFileInfo for a GFile.
 * query_info_finish  ()
 * Finishes an asynchronous query info operation.
 * query_filesystem_info  ()
 * Gets a GFileInfo for the file system GFile is on.
 * query_filesystem_info_async  ()
 * Asynchronously gets a GFileInfo for the file system GFile is on.
 * query_filesystem_info_finish  ()
 * Finishes asynchronously getting the file system info.
 * find_enclosing_mount  ()
 * Gets a GMount for the GFile.
 * find_enclosing_mount_async  ()
 * Asynchronously gets the GMount for a GFile.
 * find_enclosing_mount_finish  ()
 * Finishes asynchronously getting the volume.
 * set_display_name  ()
 * Sets the display name for a GFile.
 * set_display_name_async  ()
 * Asynchronously sets a GFile's display name.
 * set_display_name_finish  ()
 * Finishes asynchronously setting a GFile's display name.
 * query_settable_attributes  ()
 * Returns a list of GFileAttributes that can be set.
 * _query_settable_attributes_async  ()
 * Asynchronously gets a list of GFileAttributes that can be set.
 * _query_settable_attributes_finish  ()
 * Finishes asynchronously querying settable attributes.
 * query_writable_namespaces  ()
 * Returns a list of GFileAttribute namespaces that are writable.
 * _query_writable_namespaces_async  ()
 * Asynchronously gets a list of GFileAttribute namespaces that are writable.
 * _query_writable_namespaces_finish  ()
 * Finishes asynchronously querying the writable namespaces.
 * set_attribute  ()
 * Sets a GFileAttribute.
 * set_attributes_from_info  ()
 * Sets a GFileAttribute with information from a GFileInfo.
 * set_attributes_async  ()
 * Asynchronously sets a file's attributes.
 * set_attributes_finish  ()
 * Finishes setting a file's attributes asynchronously.
 * read_fn  ()
 * Reads a file asynchronously.
 * read_async  ()
 * Asynchronously reads a file.
 * read_finish  ()
 * Finishes asynchronously reading a file.
 * append_to  ()
 * Writes to the end of a file.
 * append_to_async  ()
 * Asynchronously writes to the end of a file.
 * append_to_finish  ()
 * Finishes an asynchronous file append operation.
 * create  ()
 * Creates a new file.
 * create_async  ()
 * Asynchronously creates a file.
 * create_finish  ()
 * Finishes asynchronously creating a file.
 * replace  ()
 * Replaces the contents of a file.
 * replace_async  ()
 * Asynchronously replaces the contents of a file.
 * replace_finish  ()
 * Finishes asynchronously replacing a file.
 * delete_file  ()
 * Deletes a file.
 * _delete_file_async  ()
 * Asynchronously deletes a file.
 * _delete_file_finish  ()
 * Finishes an asynchronous delete.
 * trash  ()
 * Sends a GFile to the Trash location.
 * _trash_async  ()
 * Asynchronously sends a GFile to the Trash location.
 * _trash_finish  ()
 * Finishes an asynchronous file trashing operation.
 * make_directory  ()
 * Makes a directory.
 * _make_directory_async  ()
 * Asynchronously makes a directory.
 * _make_directory_finish  ()
 * Finishes making a directory asynchronously.
 * make_symbolic_link  ()
 * Makes a symbolic link.
 * _make_symbolic_link_async  ()
 * Asynchronously makes a symbolic link
 * _make_symbolic_link_finish  ()
 * Finishes making a symbolic link asynchronously.
 * copy  ()
 * Copies a file.
 * copy_async  ()
 * Asynchronously copies a file.
 * copy_finish  ()
 * Finishes an asynchronous copy operation.
 * move  ()
 * Moves a file.
 * _move_async  ()
 * Asynchronously moves a file.
 * _move_finish  ()
 * Finishes an asynchronous move operation.
 * mount_mountable  ()
 * Mounts a mountable object.
 * mount_mountable_finish  ()
 * Finishes a mounting operation.
 * unmount_mountable  ()
 * Unmounts a mountable object.
 * unmount_mountable_finish  ()
 * Finishes an unmount operation.
 * eject_mountable  ()
 * Ejects a mountable.
 * eject_mountable_finish  ()
 * Finishes an eject operation.
 * mount_enclosing_volume  ()
 * Mounts a specified location.
 * mount_enclosing_volume_finish  ()
 * Finishes mounting a specified location.
 * monitor_dir  ()
 * Creates a GFileMonitor for the location.
 * monitor_file  ()
 * Creates a GFileMonitor for the location.
 * open_readwrite  ()
 * Open file read/write. Since 2.22.
 * open_readwrite_async  ()
 * Asynchronously opens file read/write. Since 2.22.
 * open_readwrite_finish  ()
 * Finishes an asynchronous open read/write. Since 2.22.
 * create_readwrite  ()
 * Creates file read/write. Since 2.22.
 * create_readwrite_async  ()
 * Asynchronously creates file read/write. Since 2.22.
 * create_readwrite_finish  ()
 * Finishes an asynchronous creates read/write. Since 2.22.
 * replace_readwrite  ()
 * Replaces file read/write. Since 2.22.
 * replace_readwrite_async  ()
 * Asynchronously replaces file read/write. Since 2.22.
 * replace_readwrite_finish  ()
 * Finishes an asynchronous replace read/write. Since 2.22.
 * start_mountable  ()
 * Starts a mountable object. Since 2.22.
 * start_mountable_finish  ()
 * Finishes an start operation. Since 2.22.
 * stop_mountable  ()
 * Stops a mountable. Since 2.22.
 * stop_mountable_finish  ()
 * Finishes an stop operation. Since 2.22.
 * gboolean  supports_thread_contexts;
 * a boolean that indicates whether the GFile implementation supports thread-default contexts. Since 2.22.
 * unmount_mountable_with_operation  ()
 * Unmounts a mountable object using a GMountOperation. Since 2.22.
 * unmount_mountable_with_operation_finish  ()
 * Finishes an unmount operation using a GMountOperation. Since 2.22.
 * eject_mountable_with_operation  ()
 * Ejects a mountable object using a GMountOperation. Since 2.22.
 * eject_mountable_with_operation_finish  ()
 * Finishes an eject operation using a GMountOperation. Since 2.22.
 * poll_mountable  ()
 * Polls a mountable object for media changes. Since 2.22.
 * poll_mountable_finish  ()
 * Finishes an poll operation for media changes. Since 2.22.
 */
public struct GFileIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GFile *  function(GFile *file)  dup;
	extern(C) uint  function(GFile *file)  hash;
	extern(C) int  function(GFile *file1,GFile *file2)  equal;
	extern(C) int  function(GFile *file)  isNative;
	extern(C) int  function(GFile *file,char *uriScheme)  hasUriScheme;
	extern(C) char *  function(GFile *file)  getUriScheme;
	extern(C) char *  function(GFile *file)  getBasename;
	extern(C) char *  function(GFile *file)  getPath;
	extern(C) char *  function(GFile *file)  getUri;
	extern(C) char *  function(GFile *file)  getParseName;
	extern(C) GFile *  function(GFile *file)  getParent;
	extern(C) int  function(GFile *prefix,GFile *file)  prefixMatches;
	extern(C) char *  function(GFile *parent,GFile *descendant)  getRelativePath;
	extern(C) GFile *  function(GFile *file,char *relativePath)  resolveRelativePath;
	extern(C) GFile *  function(GFile *file,char *displayName,GError **error)  getChildForDisplayName;
	extern(C) GFileEnumerator *  function(GFile *file,char *attributes,GFileQueryInfoFlags flags,GCancellable *cancellable,GError **error)  enumerateChildren;
	extern(C) void  function(GFile *file,char *attributes,GFileQueryInfoFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  enumerateChildrenAsync;
	extern(C) GFileEnumerator *  function(GFile *file,GAsyncResult *res,GError **error)  enumerateChildrenFinish;
	extern(C) GFileInfo *  function(GFile *file,char *attributes,GFileQueryInfoFlags flags,GCancellable *cancellable,GError **error)  queryInfo;
	extern(C) void  function(GFile *file,char *attributes,GFileQueryInfoFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  queryInfoAsync;
	extern(C) GFileInfo *  function(GFile *file,GAsyncResult *res,GError **error)  queryInfoFinish;
	extern(C) GFileInfo *  function(GFile *file,char *attributes,GCancellable *cancellable,GError **error)  queryFilesystemInfo;
	extern(C) void  function(GFile *file,char *attributes,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  queryFilesystemInfoAsync;
	extern(C) GFileInfo *  function(GFile *file,GAsyncResult *res,GError **error)  queryFilesystemInfoFinis;
	extern(C) GMount *  function(GFile *file,GCancellable *cancellable,GError **error)  findEnclosingMount;
	extern(C) void  function(GFile *file,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  findEnclosingMountAsync;
	extern(C) GMount *  function(GFile *file,GAsyncResult *res,GError **error)  findEnclosingMountFinish;
	extern(C) GFile *  function(GFile *file,char *displayName,GCancellable *cancellable,GError **error)  setDisplayName;
	extern(C) void  function(GFile *file,char *displayName,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  setDisplayNameAsync;
	extern(C) GFile *  function(GFile *file,GAsyncResult *res,GError **error)  setDisplayNameFinish;
	extern(C) GFileAttributeInfoList *  function(GFile *file,GCancellable *cancellable,GError **error)  querySettableAttributes;
	extern(C) void  function()  _QuerySettableAttributesAsync;
	extern(C) void  function()  _QuerySettableAttributesFinish;
	extern(C) GFileAttributeInfoList *  function(GFile *file,GCancellable *cancellable,GError **error)  queryWritableNamespaces;
	extern(C) void  function()  _QueryWritableNamespacesAsync;
	extern(C) void  function()  _QueryWritableNamespacesFinish;
	extern(C) int  function(GFile *file,char *attribute,GFileAttributeType type,void* valueP,GFileQueryInfoFlags flags,GCancellable *cancellable,GError **error)  setAttribute;
	extern(C) int  function(GFile *file,GFileInfo *info,GFileQueryInfoFlags flags,GCancellable *cancellable,GError **error)  setAttributesFromInfo;
	extern(C) void  function(GFile *file,GFileInfo *info,GFileQueryInfoFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  setAttributesAsync;
	extern(C) int  function(GFile *file,GAsyncResult *result,GFileInfo **info,GError **error)  setAttributesFinish;
	extern(C) GFileInputStream *  function(GFile *file,GCancellable *cancellable,GError **error)  readFn;
	extern(C) void  function(GFile *file,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  readAsync;
	extern(C) GFileInputStream *  function(GFile *file,GAsyncResult *res,GError **error)  readFinish;
	extern(C) GFileOutputStream *  function(GFile *file,GFileCreateFlags flags,GCancellable *cancellable,GError **error)  appendTo;
	extern(C) void  function(GFile *file,GFileCreateFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  appendToAsync;
	extern(C) GFileOutputStream *  function(GFile *file,GAsyncResult *res,GError **error)  appendToFinish;
	extern(C) GFileOutputStream *  function(GFile *file,GFileCreateFlags flags,GCancellable *cancellable,GError **error)  create;
	extern(C) void  function(GFile *file,GFileCreateFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  createAsync;
	extern(C) GFileOutputStream *  function(GFile *file,GAsyncResult *res,GError **error)  createFinish;
	extern(C) GFileOutputStream *  function(GFile *file,char *etag,int makeBackup,GFileCreateFlags flags,GCancellable *cancellable,GError **error)  replace;
	extern(C) void  function(GFile *file,char *etag,int makeBackup,GFileCreateFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  replaceAsync;
	extern(C) GFileOutputStream *  function(GFile *file,GAsyncResult *res,GError **error)  replaceFinish;
	extern(C) int  function(GFile *file,GCancellable *cancellable,GError **error)  deleteFile;
	extern(C) void  function()  _DeleteFileAsync;
	extern(C) void  function()  _DeleteFileFinish;
	extern(C) int  function(GFile *file,GCancellable *cancellable,GError **error)  trash;
	extern(C) void  function()  _TrashAsync;
	extern(C) void  function()  _TrashFinish;
	extern(C) int  function(GFile *file,GCancellable *cancellable,GError **error)  makeDirectory;
	extern(C) void  function()  _MakeDirectoryAsync;
	extern(C) void  function()  _MakeDirectoryFinish;
	extern(C) int  function(GFile *file,char *symlinkValue,GCancellable *cancellable,GError **error)  makeSymbolicLink;
	extern(C) void  function()  _MakeSymbolicLinkAsync;
	extern(C) void  function()  _MakeSymbolicLinkFinish;
	extern(C) int  function(GFile *source,GFile *destination,GFileCopyFlags flags,GCancellable *cancellable,GFileProgressCallback progressCallback,void* progressCallbackData,GError **error)  copy;
	extern(C) void  function(GFile *source,GFile *destination,GFileCopyFlags flags,int ioPriority,GCancellable *cancellable,GFileProgressCallback progressCallback,void* progressCallbackData,GAsyncReadyCallback callback,void* userData)  copyAsync;
	extern(C) int  function(GFile *file,GAsyncResult *res,GError **error)  copyFinish;
	extern(C) int  function(GFile *source,GFile *destination,GFileCopyFlags flags,GCancellable *cancellable,GFileProgressCallback progressCallback,void* progressCallbackData,GError **error)  move;
	extern(C) void  function()  _MoveAsync;
	extern(C) void  function()  _MoveFinish;
	extern(C) void  function(GFile *file,GMountMountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  mountMountable;
	extern(C) GFile *  function(GFile *file,GAsyncResult *result,GError **error)  mountMountableFinish;
	extern(C) void  function(GFile *file,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  unmountMountable;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  unmountMountableFinish;
	extern(C) void  function(GFile *file,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  ejectMountable;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  ejectMountableFinish;
	extern(C) void  function(GFile *location,GMountMountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  mountEnclosingVolume;
	extern(C) int  function(GFile *location,GAsyncResult *result,GError **error)  mountEnclosingVolumeFinish;
	extern(C) GFileMonitor *  function(GFile *file,GFileMonitorFlags flags,GCancellable *cancellable,GError **error)  monitorDir;
	extern(C) GFileMonitor *  function(GFile *file,GFileMonitorFlags flags,GCancellable *cancellable,GError **error)  monitorFile;
	extern(C) GFileIOStream *  function(GFile *file,GCancellable *cancellable,GError **error)  openReadwrite;
	extern(C) void  function(GFile *file,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  openReadwriteAsync;
	extern(C) GFileIOStream *  function(GFile *file,GAsyncResult *res,GError **error)  openReadwriteFinish;
	extern(C) GFileIOStream *  function(GFile *file,GFileCreateFlags flags,GCancellable *cancellable,GError **error)  createReadwrite;
	extern(C) void  function(GFile *file,GFileCreateFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  createReadwriteAsync;
	extern(C) GFileIOStream *  function(GFile *file,GAsyncResult *res,GError **error)  createReadwriteFinish;
	extern(C) GFileIOStream *  function(GFile *file,char *etag,int makeBackup,GFileCreateFlags flags,GCancellable *cancellable,GError **error)  replaceReadwrite;
	extern(C) void  function(GFile *file,char *etag,int makeBackup,GFileCreateFlags flags,int ioPriority,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  replaceReadwriteAsync;
	extern(C) GFileIOStream *  function(GFile *file,GAsyncResult *res,GError **error)  replaceReadwriteFinish;
	extern(C) void  function(GFile *file,GDriveStartFlags flags,GMountOperation *startOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  startMountable;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  startMountableFinish;
	extern(C) void  function(GFile *file,GMountUnmountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  stopMountable;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  stopMountableFinish;
	int supportsThreadContexts;
	extern(C) void  function(GFile *file,GMountUnmountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  unmountMountableWithOperation;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  unmountMountableWithOperationFinish;
	extern(C) void  function(GFile *file,GMountUnmountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  ejectMountableWithOperation;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  ejectMountableWithOperationFinish;
	extern(C) void  function(GFile *file,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  pollMountable;
	extern(C) int  function(GFile *file,GAsyncResult *result,GError **error)  pollMountableFinish;
}


/**
 * Information about a specific attribute.
 * char  *name;
 * the name of the attribute.
 * GFileAttributeType  type;
 * the GFileAttributeType type of the attribute.
 * GFileAttributeInfoFlags  flags;
 * a set of GFileAttributeInfoFlags.
 */
public struct GFileAttributeInfo
{
	char *name;
	GFileAttributeType type;
	GFileAttributeInfoFlags flags;
}


/**
 * Main Gtk struct.
 * Acts as a lightweight registry for possible valid file attributes.
 * The registry stores Key-Value pair formats as GFileAttributeInfos.
 * GFileAttributeInfo  *infos;
 * an array of GFileAttributeInfos.
 * int  n_infos;
 * the number of values in the array.
 */
public struct GFileAttributeInfoList
{
	GFileAttributeInfo *infos;
	int nInfos;
}


/*
 * When doing file operations that may take a while, such as moving
 * a file or copying a file, a progress callback is used to pass how
 * far along that operation is to the application.
 * current_num_bytes  :
 * the current number of bytes in the operation.
 * total_num_bytes  :
 * the total number of bytes in the operation.
 * user_data  :
 * user data passed to the callback.
 */
// void (*GFileProgressCallback) (goffset current_num_bytes,  goffset total_num_bytes,  gpointer user_data);
public alias extern(C) void  function (long, long, void*) GFileProgressCallback;

/*
 * When loading the partial contents of a file with g_file_load_partial_contents_async(),
 * it may become necessary to determine if any more data from the file should be loaded.
 * A GFileReadMoreCallback function facilitates this by returning TRUE if more data
 * should be read, or FALSE otherwise.
 * file_contents  :
 * the data as currently read.
 * file_size  :
 * the size of the data currently read.
 * callback_data  :
 * data passed to the callback.
 * Returns  :
 * TRUE if more data should be read back. FALSE otherwise.
 */
// gboolean (*GFileReadMoreCallback) (const char *file_contents,  goffset file_size,  gpointer callback_data);
public alias extern(C) int  function (char*, long, void*) GFileReadMoreCallback;
