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

module gtkc.giotypes;


public import gtkc.glibtypes;
public import gtkc.gobjecttypes;

/**
 * Flags used when querying a GFileInfo.
 * G_FILE_QUERY_INFO_NONE
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
 */
public enum GFileCreateFlags
{
	NONE = 0,
	PRIVATE = (1 << 0)
}
alias GFileCreateFlags FileCreateFlags;

/**
 * Flags used when copying or moving files.
 * G_FILE_COPY_NONE
 */
public enum GFileCopyFlags
{
	NONE = 0, /+*< nick=none >+/
	OVERWRITE = (1 << 0),
	BACKUP = (1 << 1),
	NOFOLLOW_SYMLINKS = (1 << 2),
	ALL_METADATA = (1 << 3),
	NO_FALLBACK_FOR_MOVE = (1 << 4)
}
alias GFileCopyFlags FileCopyFlags;

/**
 * Flags used to set what a GFileMonitor will watch for.
 * G_FILE_MONITOR_NONE
 */
public enum GFileMonitorFlags
{
	NONE = 0,
	WATCH_MOUNTS = (1 << 0)
}
alias GFileMonitorFlags FileMonitorFlags;

/**
 * Indicates a hint from the file system whether files should be
 * previewed in a file manager. Returned as the value of the key
 * G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW.
 * G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS
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
	TYPE_OBJECT
}
alias GFileAttributeType FileAttributeType;

/**
 * Flags specifying the behaviour of an attribute.
 * G_FILE_ATTRIBUTE_INFO_NONE
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
 */
public enum GFileAttributeStatus
{
	UNSET = 0,
	SET,
	ERROR_SETTING
}
alias GFileAttributeStatus FileAttributeStatus;

/**
 * Indicates the file's on-disk type.
 * G_FILE_TYPE_UNKNOWN
 */
public enum GFileType
{
	TYPE_UNKNOWN = 0,
	TYPE_REGULAR,
	TYPE_DIRECTORY,
	TYPE_SYMBOLIC_LINK,
	TYPE_SPECIAL, /+* socket, fifo, blockdev, chardev +/
	TYPE_SHORTCUT,
	TYPE_MOUNTABLE
}
alias GFileType FileType;

/**
 * GAskPasswordFlags are used to request specific information from the
 * user, or to notify the user of their choices in an authentication
 * situation.
 * G_ASK_PASSWORD_NEED_PASSWORD
 */
public enum GAskPasswordFlags
{
	NEED_PASSWORD = (1 << 0),
	NEED_USERNAME = (1 << 1),
	NEED_DOMAIN = (1 << 2),
	SAVING_SUPPORTED = (1 << 3),
	ANONYMOUS_SUPPORTED = (1 << 4)
}
alias GAskPasswordFlags AskPasswordFlags;

/**
 * GPasswordSave is used to indicate the lifespan of a saved password.
 * Gvfs stores passwords in the Gnome keyring when this flag allows it
 * to, and later retrieves it again from there.
 * G_PASSWORD_SAVE_NEVER
 */
public enum GPasswordSave
{
	NEVER,
	FOR_SESSION,
	PERMANENTLY
}
alias GPasswordSave PasswordSave;

/**
 * GMountOperationResult is returned as a result when a request for
 * information is send by the mounting operation.
 * G_MOUNT_OPERATION_HANDLED
 */
public enum GMountOperationResult
{
	HANDLED,
	ABORTED,
	UNHANDLED
}
alias GMountOperationResult MountOperationResult;

/**
 * Error codes returned by GIO functions.
 * G_IO_ERROR_FAILED
 */
public enum GIOErrorEnum
{
	FAILED,
	NOT_FOUND,
	EXISTS,
	IS_DIRECTORY,
	NOT_DIRECTORY,
	NOT_EMPTY,
	NOT_REGULAR_FILE,
	NOT_SYMBOLIC_LINK,
	NOT_MOUNTABLE_FILE,
	FILENAME_TOO_LONG,
	INVALID_FILENAME,
	TOO_MANY_LINKS,
	NO_SPACE,
	INVALID_ARGUMENT,
	PERMISSION_DENIED,
	NOT_SUPPORTED,
	NOT_MOUNTED,
	ALREADY_MOUNTED,
	CLOSED,
	CANCELLED,
	PENDING,
	READ_ONLY,
	CANT_CREATE_BACKUP,
	WRONG_ETAG,
	TIMED_OUT,
	WOULD_RECURSE,
	BUSY,
	WOULD_BLOCK,
	HOST_NOT_FOUND,
	WOULD_MERGE,
	FAILED_HANDLED
}
alias GIOErrorEnum IOErrorEnum;

/**
 * Specifies what type of event a monitor event is.
 * G_FILE_MONITOR_EVENT_CHANGED
 */
public enum GFileMonitorEvent
{
	CHANGED,
	CHANGES_DONE_HINT,
	DELETED,
	CREATED,
	ATTRIBUTE_CHANGED,
	PRE_UNMOUNT,
	UNMOUNTED
}
alias GFileMonitorEvent FileMonitorEvent;

/**
 * GOutputStreamSpliceFlags determine how streams should be spliced.
 * G_OUTPUT_STREAM_SPLICE_NONE
 */
public enum GOutputStreamSpliceFlags
{
	NONE = 0,
	CLOSE_SOURCE = (1 << 0),
	CLOSE_TARGET = (1 << 1)
}
alias GOutputStreamSpliceFlags OutputStreamSpliceFlags;

/**
 * GDataStreamByteOrder is used to ensure proper endianness of streaming data sources
 * across various machine architectures.
 * G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN
 */
public enum GDataStreamByteOrder
{
	BIG_ENDIAN,
	LITTLE_ENDIAN,
	HOST_ENDIAN
}
alias GDataStreamByteOrder DataStreamByteOrder;

/**
 * GDataStreamNewlineType is used when checking for or setting the line endings for a given file.
 * G_DATA_STREAM_NEWLINE_TYPE_LF
 */
public enum GDataStreamNewlineType
{
	TYPE_LF,
	TYPE_CR,
	TYPE_CR_LF,
	TYPE_ANY
}
alias GDataStreamNewlineType DataStreamNewlineType;

/**
 * Flags used when creating a GAppInfo.
 * G_APP_INFO_CREATE_NONE
 */
public enum GAppInfoCreateFlags
{
	NONE = 0, /+*< nick=none >+/
	NEEDS_TERMINAL = (1 << 0), /+*< nick=needs-terminal >+/
	SUPPORTS_URIS = (1 << 1) /+*< nick=supports-uris >+/
}
alias GAppInfoCreateFlags AppInfoCreateFlags;

/**
 * Flags used when mounting a mount.
 * G_MOUNT_MOUNT_NONE
 */
public enum GMountMountFlags
{
	NONE = 0
}
alias GMountMountFlags MountMountFlags;

/**
 * Flags used when an unmounting a mount.
 * G_MOUNT_UNMOUNT_NONE
 */
public enum GMountUnmountFlags
{
	NONE = 0,
	FORCE = (1 << 0)
}
alias GMountUnmountFlags MountUnmountFlags;

/**
 * GEmblemOrigin is used to add information about the origin of the emblem
 * to GEmblem.
 * G_EMBLEM_ORIGIN_UNKNOWN
 */
public enum GEmblemOrigin
{
	UNKNOWN,
	DEVICE,
	LIVEMETADATA,
	TAG
}
alias GEmblemOrigin EmblemOrigin;


/**
 * Main Gtk struct.
 * A handle to an object implementing the GFileIface interface.
 * Generally stores a location within the file system. Handles do not
 * necessarily represent files or directories that currently exist.
 */
public struct GFile{}


/**
 * An interface for writing VFS file handles.
 * GTypeInterface g_iface;
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
}


/**
 * Information about a specific attribute.
 * char *name;
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
 * GFileAttributeInfo *infos;
 */
public struct GFileAttributeInfoList
{
	GFileAttributeInfo *infos;
	int nInfos;
}


/**
 * Determines if a string matches a file attribute.
 */
public struct GFileAttributeMatcher{}


/**
 * Main Gtk struct.
 * Stores information about a file system object referenced by a GFile.
 */
public struct GFileInfo{}


/**
 * Main Gtk struct.
 * A per matched file iterator.
 */
public struct GFileEnumerator{}


/**
 * Main Gtk struct.
 * Class for providing authentication methods for mounting operations,
 * such as mounting a file locally, or authenticating with a server.
 */
public struct GMountOperation{}


/**
 * Main Gtk struct.
 * Watches for changes to a file.
 */
public struct GFileMonitor{}


/**
 * Main Gtk struct.
 * Allows actions to be cancelled.
 */
public struct GCancellable{}


/**
 * Main Gtk struct.
 * Holds results information for an asynchronous operation,
 * usually passed directly to a asynchronous _finish() operation.
 */
public struct GAsyncResult{}


/**
 * Interface definition for GAsyncResult.
 * GTypeInterface g_iface;
 */
public struct GAsyncResultIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) void*  function(GAsyncResult *asyncResult)  getUserData;
	extern(C) GObject *  function(GAsyncResult *asyncResult)  getSourceObject;
}


/**
 * Main Gtk struct.
 * Opaque class for definining and scheduling IO jobs.
 */
public struct GIOSchedulerJob{}


/**
 * Main Gtk struct.
 * A simple implementation of GAsyncResult.
 */
public struct GSimpleAsyncResult{}


/**
 * Main Gtk struct.
 * Seek object for streaming operations.
 */
public struct GSeekable{}


/**
 * Provides an interface for implementing seekable functionality on I/O Streams.
 * GTypeInterface g_iface;
 */
public struct GSeekableIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) long  function(GSeekable *seekable)  tell;
	extern(C) int  function(GSeekable *seekable)  canSeek;
	extern(C) int  function(GSeekable *seekable,long offset,GSeekType type,GCancellable *cancellable,GError **error)  seek;
	extern(C) int  function(GSeekable *seekable)  canTruncate;
	extern(C) int  function(GSeekable *seekable,long offset,GCancellable *cancellable,GError **error)  truncateFn;
	/+* TODO: Async seek/truncate +/
}


/**
 * Main Gtk struct.
 * Base class for streaming input operations.
 */
public struct GInputStream{}


/**
 * Main Gtk struct.
 * Base class for writing output.
 * All classes derived from GOutputStream should implement synchronous
 * writing, splicing, flushing and closing streams, but may implement
 * asynchronous versions.
 */
public struct GOutputStream{}


/**
 * Main Gtk struct.
 * A subclass of GInputStream for opened files. This adds
 * a few file-specific operations and seeking.
 * GFileInputStream implements GSeekable.
 */
public struct GFileInputStream{}


/**
 * Main Gtk struct.
 * A subclass of GOutputStream for opened files. This adds
 * a few file-specific operations and seeking and truncating.
 * GFileOutputStream implements GSeekable.
 */
public struct GFileOutputStream{}


/**
 * Main Gtk struct.
 * A base class for all input streams that work on an underlying stream.
 */
public struct GFilterInputStream{}


/**
 * Main Gtk struct.
 * A base class for all output streams that work on an underlying stream.
 */
public struct GFilterOutputStream{}


/**
 * Main Gtk struct.
 * Implements GInputStream for arbitrary memory chunks.
 */
public struct GMemoryInputStream{}


/**
 * Main Gtk struct.
 * Implements GOutputStream for arbitrary memory chunks.
 */
public struct GMemoryOutputStream{}


/**
 * Main Gtk struct.
 * Implements GFilterInputStream with a sized input buffer.
 */
public struct GBufferedInputStream{}


/**
 * Main Gtk struct.
 * An implementation of GFilterOutputStream with a sized buffer.
 */
public struct GBufferedOutputStream{}


/**
 * Main Gtk struct.
 * An implementation of GBufferedInputStream that allows for high-level
 * data manipulation of arbitrary data (including binary operations).
 */
public struct GDataInputStream{}


/**
 * Main Gtk struct.
 * An implementation of GBufferedOutputStream that allows for high-level
 * data manipulation of arbitrary data (including binary operations).
 */
public struct GDataOutputStream{}


/**
 * Main Gtk struct.
 * Implements GInputStream for reading from selectable unix file descriptors
 */
public struct GUnixInputStream{}


/**
 * Main Gtk struct.
 * Implements GOutputStream for outputting to selectable unix file descriptors
 */
public struct GUnixOutputStream{}


/**
 * Main Gtk struct.
 * Information about an installed application and methods to launch
 * it (with file arguments).
 */
public struct GAppInfo{}


/**
 * Application Information interface, for operating system portability.
 * GTypeInterface g_iface;
 */
public struct GAppInfoIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GAppInfo *  function(GAppInfo *appinfo)  dup;
	extern(C) int  function(GAppInfo *appinfo1,GAppInfo *appinfo2)  equal;
	extern(C) char *  function(GAppInfo *appinfo)  getId;
	extern(C) char *  function(GAppInfo *appinfo)  getName;
	extern(C) char *  function(GAppInfo *appinfo)  getDescription;
	extern(C) char *  function(GAppInfo *appinfo)  getExecutable;
	extern(C) GIcon *  function(GAppInfo *appinfo)  getIcon;
	extern(C) int  function(GAppInfo *appinfo,GList *filenames,GAppLaunchContext *launchContext,GError **error)  launch;
	extern(C) int  function(GAppInfo *appinfo)  supportsUris;
	extern(C) int  function(GAppInfo *appinfo)  supportsFiles;
	extern(C) int  function(GAppInfo *appinfo,GList *uris,GAppLaunchContext *launchContext,GError **error)  launchUris;
	extern(C) int  function(GAppInfo *appinfo)  shouldShow;
	/+* For changing associations +/
	extern(C) int  function(GAppInfo *appinfo,char *contentType,GError **error)  setAsDefaultForType;
	extern(C) int  function(GAppInfo *appinfo,char *extension,GError **error)  setAsDefaultForExtension;
	extern(C) int  function(GAppInfo *appinfo,char *contentType,GError **error)  addSupportsType;
	extern(C) int  function(GAppInfo *appinfo)  canRemoveSupportsType;
	extern(C) int  function(GAppInfo *appinfo,char *contentType,GError **error)  removeSupportsType;
}


/**
 * Integrating the launch with the launching application. This is used to
 * handle for instance startup notification and launching the new application
 * on the same screen as the launching window.
 */
public struct GAppLaunchContext{}


/**
 * Main Gtk struct.
 * Information about an installed application from a desktop file.
 */
public struct GDesktopAppInfo{}


/**
 * Interface that is used by backends to associate default
 * handlers with URI schemes.
 */
public struct GDesktopAppInfoLookup{}


/**
 * Main Gtk struct.
 * A Volume Monitor that watches for volume events.
 */
public struct GVolumeMonitor{}


/**
 * Main Gtk struct.
 * Opaque mountable volume object.
 */
public struct GVolume{}


/**
 * Interface for implementing operations for mountable volumes.
 * GTypeInterface g_iface;
 */
public struct GVolumeIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void  function(GVolume *volume)  changed;
	extern(C) void  function(GVolume *volume)  removed;
	/+* Virtual Table +/
	extern(C) char *  function(GVolume *volume)  getName;
	extern(C) GIcon *  function(GVolume *volume)  getIcon;
	extern(C) char *  function(GVolume *volume)  getUuid;
	extern(C) GDrive *  function(GVolume *volume)  getDrive;
	extern(C) GMount *  function(GVolume *volume)  getMount;
	extern(C) int  function(GVolume *volume)  canMount;
	extern(C) int  function(GVolume *volume)  canEject;
	extern(C) void  function(GVolume *volume,GMountMountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  mountFn;
	extern(C) int  function(GVolume *volume,GAsyncResult *result,GError **error)  mountFinish;
	extern(C) void  function(GVolume *volume,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  eject;
	extern(C) int  function(GVolume *volume,GAsyncResult *result,GError **error)  ejectFinish;
	extern(C) char *  function(GVolume *volume,char *kind)  getIdentifier;
	extern(C) char **  function(GVolume *volume)  enumerateIdentifiers;
	extern(C) int  function(GVolume *volume)  shouldAutomount;
	extern(C) GFile *  function(GVolume *volume)  getActivationRoot;
}


/**
 * Main Gtk struct.
 * A handle to an object implementing the GMountIface interface.
 */
public struct GMount{}


/**
 * Interface for implementing operations for mounts.
 * GTypeInterface g_iface;
 */
public struct GMountIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void  function(GMount *mount)  changed;
	extern(C) void  function(GMount *mount)  unmounted;
	/+* Virtual Table +/
	extern(C) GFile *  function(GMount *mount)  getRoot;
	extern(C) char *  function(GMount *mount)  getName;
	extern(C) GIcon *  function(GMount *mount)  getIcon;
	extern(C) char *  function(GMount *mount)  getUuid;
	extern(C) GVolume *  function(GMount *mount)  getVolume;
	extern(C) GDrive *  function(GMount *mount)  getDrive;
	extern(C) int  function(GMount *mount)  canUnmount;
	extern(C) int  function(GMount *mount)  canEject;
	extern(C) void  function(GMount *mount,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  unmount;
	extern(C) int  function(GMount *mount,GAsyncResult *result,GError **error)  unmountFinish;
	extern(C) void  function(GMount *mount,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  eject;
	extern(C) int  function(GMount *mount,GAsyncResult *result,GError **error)  ejectFinish;
	extern(C) void  function(GMount *mount,GMountMountFlags flags,GMountOperation *mountOperation,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  remount;
	extern(C) int  function(GMount *mount,GAsyncResult *result,GError **error)  remountFinish;
	extern(C) void  function(GMount *mount,int forceRescan,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  guessContentType;
	extern(C) char **  function(GMount *mount,GAsyncResult *result,GError **error)  guessContentTypeFinish;
	extern(C) char **  function(GMount *mount,int forceRescan,GCancellable *cancellable,GError **error)  guessContentTypeSync;
}


/**
 * Main Gtk struct.
 * Opaque drive object.
 */
public struct GDrive{}


/**
 * Interface for creating GDrive implementations.
 * GTypeInterface g_iface;
 */
public struct GDriveIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void  function(GDrive *drive)  changed;
	extern(C) void  function(GDrive *drive)  disconnected;
	extern(C) void  function(GDrive *drive)  ejectButton;
	/+* Virtual Table +/
	extern(C) char *  function(GDrive *drive)  getName;
	extern(C) GIcon *  function(GDrive *drive)  getIcon;
	extern(C) int  function(GDrive *drive)  hasVolumes;
	extern(C) GList *  function(GDrive *drive)  getVolumes;
	extern(C) int  function(GDrive *drive)  isMediaRemovable;
	extern(C) int  function(GDrive *drive)  hasMedia;
	extern(C) int  function(GDrive *drive)  isMediaCheckAutomatic;
	extern(C) int  function(GDrive *drive)  canEject;
	extern(C) int  function(GDrive *drive)  canPollForMedia;
	extern(C) void  function(GDrive *drive,GMountUnmountFlags flags,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  eject;
	extern(C) int  function(GDrive *drive,GAsyncResult *result,GError **error)  ejectFinish;
	extern(C) void  function(GDrive *drive,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  pollForMedia;
	extern(C) int  function(GDrive *drive,GAsyncResult *result,GError **error)  pollForMediaFinish;
	extern(C) char *  function(GDrive *drive,char *kind)  getIdentifier;
	extern(C) char **  function(GDrive *drive)  enumerateIdentifiers;
}


/**
 * Implementation of the GMount interface for Unix systems.
 */
public struct GUnixMount{}


/**
 * Defines a Unix mount point (e.g. /dev).
 * This corresponds roughly to a fstab entry.
 */
public struct GUnixMountPoint{}


/**
 * Main Gtk struct.
 * Defines a Unix mount entry (e.g. /media/cdrom).
 * This corresponds roughly to a mtab entry.
 */
public struct GUnixMountEntry{}


/**
 * Watches GUnixMounts for changes.
 */
public struct GUnixMountMonitor{}


/**
 * Main Gtk struct.
 * An abstract type that specifies an icon.
 */
public struct GIcon{}


/**
 * GIconIface is used to implement GIcon types for various
 * different systems. See GThemedIcon and GLoadableIcon for
 * examples of how to implement this interface.
 * GTypeInterface g_iface;
 */
public struct GIconIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) uint  function(GIcon *icon)  hash;
	extern(C) int  function(GIcon *icon1,GIcon *icon2)  equal;
}


/**
 * Main Gtk struct.
 * Gets an icon for a GFile. Implements GLoadableIcon.
 */
public struct GFileIcon{}


/**
 * Main Gtk struct.
 * Generic type for all kinds of icons that can be loaded
 * as a stream.
 */
public struct GLoadableIcon{}


/**
 * Interface for icons that can be loaded as a stream.
 * GTypeInterface g_iface;
 */
public struct GLoadableIconIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GInputStream *  function(GLoadableIcon *icon,int size,char **type,GCancellable *cancellable,GError **error)  load;
	extern(C) void  function(GLoadableIcon *icon,int size,GCancellable *cancellable,GAsyncReadyCallback callback,void* userData)  loadAsync;
	extern(C) GInputStream *  function(GLoadableIcon *icon,GAsyncResult *res,char **type,GError **error)  loadFinish;
}


/**
 * Main Gtk struct.
 * An implementation of GIcon for themed icons.
 */
public struct GThemedIcon{}


/**
 * Main Gtk struct.
 * An implementation of GIcon for icons with emblems.
 */
public struct GEmblemedIcon{}


/**
 * Main Gtk struct.
 * An object for Emblems
 */
public struct GEmblem{}


/**
 * Main Gtk struct.
 * Completes filenames based on files that exist within the file system.
 */
public struct GFilenameCompleter{}


/**
 * Main Gtk struct.
 * Virtual File System object.
 */
public struct GVfs{}


/**
 * Main Gtk struct.
 * Opaque module base class for extending GIO.
 */
public struct GIOModule{}


/**
 * Main Gtk struct.
 */
public struct GIOExtension{}


public struct GIOExtensionPoint{}


/*
 * When doing file operations that may take a while, such as moving
 * a file or copying a file, a progress callback is used to pass how
 * far along that operation is to the application.
 * current_num_bytes :
 *  the current number of bytes in the operation.
 * total_num_bytes :
 *  the total number of bytes in the operation.
 * user_data :
 *  user data passed to the callback.
 */
// void (*GFileProgressCallback) (goffset current_num_bytes,  goffset total_num_bytes,  gpointer user_data);
public typedef extern(C) void  function (long, long, void*) GFileProgressCallback;

/*
 * When loading the partial contents of a file with g_file_read_partial_contents(),
 * it may become necessary to determine if any more data from the file should be loaded.
 * A GFileReadMoreCallback function facilitates this by returning TRUE if more data
 * should be read, or FALSE otherwise.
 * file_contents :
 *  the data as currently read.
 * file_size :
 *  the size of the data currently read.
 * callback_data :
 *  data passed to the callback.
 * Returns :
 *  TRUE if more data should be read back. FALSE otherwise.
 */
// gboolean (*GFileReadMoreCallback) (const char *file_contents,  goffset file_size,  gpointer callback_data);
public typedef extern(C) int  function (char*, long, void*) GFileReadMoreCallback;

/*
 * Type definition for a function that will be called back when an asynchronous
 * operation within GIO has been completed.
 * source_object :
 *  the object the asynchronous operation was started with.
 * res :
 *  a GAsyncResult.
 * user_data :
 *  user data passed to the callback.
 */
// void (*GAsyncReadyCallback) (GObject *source_object,  GAsyncResult *res,  gpointer user_data);
public typedef extern(C) void  function (GObject*, GAsyncResult*, void*) GAsyncReadyCallback;

/*
 * I/O Job function.
 * Note that depending on whether threads are available, the
 * GIOScheduler may run jobs in separate threads or in an idle
 * in the mainloop.
 * Long-running jobs should periodically check the cancellable
 * to see if they have been cancelled.
 * job :
 *  a GIOSchedulerJob.
 * cancellable :
 *  optional GCancellable object, NULL to ignore.
 * user_data :
 *  the data to pass to callback function
 * Returns :
 *  TRUE if this function should be called again to
 *  complete the job, FALSE if the job is complete (or cancelled)
 */
// gboolean (*GIOSchedulerJobFunc) (GIOSchedulerJob *job,  GCancellable *cancellable,  gpointer user_data);
public typedef extern(C) int  function (GIOSchedulerJob*, GCancellable*, void*) GIOSchedulerJobFunc;

/*
 * Simple thread function that runs an asynchronous operation and
 * checks for cancellation.
 * res :
 *  a GSimpleAsyncResult.
 * object :
 *  a GObject.
 * cancellable :
 *  optional GCancellable object, NULL to ignore.
 */
// void (*GSimpleAsyncThreadFunc) (GSimpleAsyncResult *res,  GObject *object,  GCancellable *cancellable);
public typedef extern(C) void  function (GSimpleAsyncResult*, GObject*, GCancellable*) GSimpleAsyncThreadFunc;

/*
 * Changes the size of the memory block pointed to by data to
 * size bytes.
 * The function should have the same semantics as realloc().
 * data :
 *  memory block to reallocate
 * size :
 *  size to reallocate data to
 * Returns :
 *  a pointer to the reallocated memory
 */
// gpointer (*GReallocFunc) (gpointer data,  gsize size);
public typedef extern(C) void*  function (void*, uint) GReallocFunc;