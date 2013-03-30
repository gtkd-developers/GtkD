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


enum GResolverRecordType
{
	SRV = 1,
	MX,
	TXT,
	SOA,
	NS
}
alias GResolverRecordType ResolverRecordType;

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
 * G_FILE_MONITOR_WATCH_HARD_LINKS
 * Watch for changes to the file made
 *  via another hard link. Since 2.36.
 */
public enum GFileMonitorFlags
{
	NONE = 0,
	WATCH_MOUNTS = (1 << 0),
	SEND_MOVED = (1 << 1),
	WATCH_HARD_LINKS = (1 << 2)
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
 * Indicates the file's on-disk type.
 * G_FILE_TYPE_UNKNOWN
 * File's type is unknown.
 * G_FILE_TYPE_REGULAR
 * File handle represents a regular file.
 * G_FILE_TYPE_DIRECTORY
 * File handle represents a directory.
 * G_FILE_TYPE_SYMBOLIC_LINK
 * File handle represents a symbolic link
 *  (Unix systems).
 * G_FILE_TYPE_SPECIAL
 * File is a "special" file, such as a socket, fifo,
 *  block device, or character device.
 * G_FILE_TYPE_SHORTCUT
 * File is a shortcut (Windows systems).
 * G_FILE_TYPE_MOUNTABLE
 * File is a mountable location.
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
 * Error codes returned by GIO functions.
 * G_IO_ERROR_FAILED
 * Generic error condition for when any operation fails.
 * G_IO_ERROR_NOT_FOUND
 * File not found.
 * G_IO_ERROR_EXISTS
 * File already exists.
 * G_IO_ERROR_IS_DIRECTORY
 * File is a directory.
 * G_IO_ERROR_NOT_DIRECTORY
 * File is not a directory.
 * G_IO_ERROR_NOT_EMPTY
 * File is a directory that isn't empty.
 * G_IO_ERROR_NOT_REGULAR_FILE
 * File is not a regular file.
 * G_IO_ERROR_NOT_SYMBOLIC_LINK
 * File is not a symbolic link.
 * G_IO_ERROR_NOT_MOUNTABLE_FILE
 * File cannot be mounted.
 * G_IO_ERROR_FILENAME_TOO_LONG
 * Filename is too many characters.
 * G_IO_ERROR_INVALID_FILENAME
 * Filename is invalid or contains invalid characters.
 * G_IO_ERROR_TOO_MANY_LINKS
 * File contains too many symbolic links.
 * G_IO_ERROR_NO_SPACE
 * No space left on drive.
 * G_IO_ERROR_INVALID_ARGUMENT
 * Invalid argument.
 * G_IO_ERROR_PERMISSION_DENIED
 * Permission denied.
 * G_IO_ERROR_NOT_SUPPORTED
 * Operation not supported for the current backend.
 * G_IO_ERROR_NOT_MOUNTED
 * File isn't mounted.
 * G_IO_ERROR_ALREADY_MOUNTED
 * File is already mounted.
 * G_IO_ERROR_CLOSED
 * File was closed.
 * G_IO_ERROR_CANCELLED
 * Operation was cancelled. See GCancellable.
 * G_IO_ERROR_PENDING
 * Operations are still pending.
 * G_IO_ERROR_READ_ONLY
 * File is read only.
 * G_IO_ERROR_CANT_CREATE_BACKUP
 * Backup couldn't be created.
 * G_IO_ERROR_WRONG_ETAG
 * File's Entity Tag was incorrect.
 * G_IO_ERROR_TIMED_OUT
 * Operation timed out.
 * G_IO_ERROR_WOULD_RECURSE
 * Operation would be recursive.
 * G_IO_ERROR_BUSY
 * File is busy.
 * G_IO_ERROR_WOULD_BLOCK
 * Operation would block.
 * G_IO_ERROR_HOST_NOT_FOUND
 * Host couldn't be found (remote operations).
 * G_IO_ERROR_WOULD_MERGE
 * Operation would merge files.
 * G_IO_ERROR_FAILED_HANDLED
 * Operation failed and a helper program has
 *  already interacted with the user. Do not display any error dialog.
 * G_IO_ERROR_TOO_MANY_OPEN_FILES
 * The current process has too many files
 *  open and can't open any more. Duplicate descriptors do count toward
 *  this limit. Since 2.20
 * G_IO_ERROR_NOT_INITIALIZED
 * The object has not been initialized. Since 2.22
 * G_IO_ERROR_ADDRESS_IN_USE
 * The requested address is already in use. Since 2.22
 * G_IO_ERROR_PARTIAL_INPUT
 * Need more input to finish operation. Since 2.24
 * G_IO_ERROR_INVALID_DATA
 * The input data was invalid. Since 2.24
 * G_IO_ERROR_DBUS_ERROR
 * A remote object generated an error that
 *  doesn't correspond to a locally registered GError error
 *  domain. Use g_dbus_error_get_remote_error() to extract the D-Bus
 *  error name and g_dbus_error_strip_remote_error() to fix up the
 *  message so it matches what was received on the wire. Since 2.26.
 * G_IO_ERROR_HOST_UNREACHABLE
 * Host unreachable. Since 2.26
 * G_IO_ERROR_NETWORK_UNREACHABLE
 * Network unreachable. Since 2.26
 * G_IO_ERROR_CONNECTION_REFUSED
 * Connection refused. Since 2.26
 * G_IO_ERROR_PROXY_FAILED
 * Connection to proxy server failed. Since 2.26
 * G_IO_ERROR_PROXY_AUTH_FAILED
 * Proxy authentication failed. Since 2.26
 * G_IO_ERROR_PROXY_NEED_AUTH
 * Proxy server needs authentication. Since 2.26
 * G_IO_ERROR_PROXY_NOT_ALLOWED
 * Proxy connection is not allowed by ruleset.
 *  Since 2.26
 * G_IO_ERROR_BROKEN_PIPE
 * Broken pipe. Since 2.36
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
	FAILED_HANDLED,
	TOO_MANY_OPEN_FILES,
	NOT_INITIALIZED,
	ADDRESS_IN_USE,
	PARTIAL_INPUT,
	INVALID_DATA,
	DBUS_ERROR,
	HOST_UNREACHABLE,
	NETWORK_UNREACHABLE,
	CONNECTION_REFUSED,
	PROXY_FAILED,
	PROXY_AUTH_FAILED,
	PROXY_NEED_AUTH,
	PROXY_NOT_ALLOWED,
	BROKEN_PIPE
}
alias GIOErrorEnum IOErrorEnum;

/**
 * GAskPasswordFlags are used to request specific information from the
 * user, or to notify the user of their choices in an authentication
 * situation.
 * G_ASK_PASSWORD_NEED_PASSWORD
 * operation requires a password.
 * G_ASK_PASSWORD_NEED_USERNAME
 * operation requires a username.
 * G_ASK_PASSWORD_NEED_DOMAIN
 * operation requires a domain.
 * G_ASK_PASSWORD_SAVING_SUPPORTED
 * operation supports saving settings.
 * G_ASK_PASSWORD_ANONYMOUS_SUPPORTED
 * operation supports anonymous users.
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
 * never save a password.
 * G_PASSWORD_SAVE_FOR_SESSION
 * save a password for the session.
 * G_PASSWORD_SAVE_PERMANENTLY
 * save a password permanently.
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
 * The request was fulfilled and the
 *  user specified data is now available
 * G_MOUNT_OPERATION_ABORTED
 * The user requested the mount operation
 *  to be aborted
 * G_MOUNT_OPERATION_UNHANDLED
 * The request was unhandled (i.e. not
 *  implemented)
 */
public enum GMountOperationResult
{
	HANDLED,
	ABORTED,
	UNHANDLED
}
alias GMountOperationResult MountOperationResult;

/**
 * Specifies what type of event a monitor event is.
 * G_FILE_MONITOR_EVENT_CHANGED
 * a file changed.
 * G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT
 * a hint that this was probably the last change in a set of changes.
 * G_FILE_MONITOR_EVENT_DELETED
 * a file was deleted.
 * G_FILE_MONITOR_EVENT_CREATED
 * a file was created.
 * G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED
 * a file attribute was changed.
 * G_FILE_MONITOR_EVENT_PRE_UNMOUNT
 * the file location will soon be unmounted.
 * G_FILE_MONITOR_EVENT_UNMOUNTED
 * the file location was unmounted.
 * G_FILE_MONITOR_EVENT_MOVED
 * the file was moved.
 */
public enum GFileMonitorEvent
{
	CHANGED,
	CHANGES_DONE_HINT,
	DELETED,
	CREATED,
	ATTRIBUTE_CHANGED,
	PRE_UNMOUNT,
	UNMOUNTED,
	MOVED
}
alias GFileMonitorEvent FileMonitorEvent;

/**
 * Results returned from g_converter_convert().
 * G_CONVERTER_ERROR
 * There was an error during conversion.
 * G_CONVERTER_CONVERTED
 * Some data was consumed or produced
 * G_CONVERTER_FINISHED
 * The conversion is finished
 * G_CONVERTER_FLUSHED
 * Flushing is finished
 * Since 2.24
 */
public enum GConverterResult
{
	ERROR = 0, /+*< nick=error >+/
	CONVERTED = 1, /+*< nick=converted >+/
	FINISHED = 2, /+*< nick=finished >+/
	FLUSHED = 3 /+*< nick=flushed >+/
}
alias GConverterResult ConverterResult;

/**
 * Flags used when calling a g_converter_convert().
 * G_CONVERTER_NO_FLAGS
 * No flags.
 * G_CONVERTER_INPUT_AT_END
 * At end of input data
 * G_CONVERTER_FLUSH
 * Flush data
 * Since 2.24
 */
public enum GConverterFlags
{
	NO_FLAGS = 0, /+*< nick=none >+/
	INPUT_AT_END = (1 << 0), /+*< nick=input-at-end >+/
	FLUSH = (1 << 1) /+*< nick=flush >+/
}
alias GConverterFlags ConverterFlags;

/**
 * Used to select the type of data format to use for GZlibDecompressor
 * and GZlibCompressor.
 * G_ZLIB_COMPRESSOR_FORMAT_ZLIB
 * deflate compression with zlib header
 * G_ZLIB_COMPRESSOR_FORMAT_GZIP
 * gzip file format
 * G_ZLIB_COMPRESSOR_FORMAT_RAW
 * deflate compression with no header
 * Since 2.24
 */
public enum GZlibCompressorFormat
{
	ZLIB,
	GZIP,
	RAW
}
alias GZlibCompressorFormat ZlibCompressorFormat;

/**
 * GOutputStreamSpliceFlags determine how streams should be spliced.
 * G_OUTPUT_STREAM_SPLICE_NONE
 * Do not close either stream.
 * G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE
 * Close the source stream after
 *  the splice.
 * G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET
 * Close the target stream after
 *  the splice.
 */
public enum GOutputStreamSpliceFlags
{
	NONE = 0,
	CLOSE_SOURCE = (1 << 0),
	CLOSE_TARGET = (1 << 1)
}
alias GOutputStreamSpliceFlags OutputStreamSpliceFlags;

/**
 * GIOStreamSpliceFlags determine how streams should be spliced.
 * G_IO_STREAM_SPLICE_NONE
 * Do not close either stream.
 * G_IO_STREAM_SPLICE_CLOSE_STREAM1
 * Close the first stream after
 *  the splice.
 * G_IO_STREAM_SPLICE_CLOSE_STREAM2
 * Close the second stream after
 *  the splice.
 * G_IO_STREAM_SPLICE_WAIT_FOR_BOTH
 * Wait for both splice operations to finish
 *  before calling the callback.
 * Since 2.28
 */
public enum GIOStreamSpliceFlags
{
	NONE = 0,
	CLOSE_STREAM1 = (1 << 0),
	CLOSE_STREAM2 = (1 << 1),
	WAIT_FOR_BOTH = (1 << 2)
}
alias GIOStreamSpliceFlags IOStreamSpliceFlags;

/**
 * GDataStreamByteOrder is used to ensure proper endianness of streaming data sources
 * across various machine architectures.
 * G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN
 * Selects Big Endian byte order.
 * G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN
 * Selects Little Endian byte order.
 * G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN
 * Selects endianness based on host machine's architecture.
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
 * Selects "LF" line endings, common on most modern UNIX platforms.
 * G_DATA_STREAM_NEWLINE_TYPE_CR
 * Selects "CR" line endings.
 * G_DATA_STREAM_NEWLINE_TYPE_CR_LF
 * Selects "CR, LF" line ending, common on Microsoft Windows.
 * G_DATA_STREAM_NEWLINE_TYPE_ANY
 * Automatically try to handle any line ending type.
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
 * No flags.
 * G_APP_INFO_CREATE_NEEDS_TERMINAL
 * Application opens in a terminal window.
 * G_APP_INFO_CREATE_SUPPORTS_URIS
 * Application supports URI arguments.
 * G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION
 * Application supports startup notification. Since 2.26
 */
public enum GAppInfoCreateFlags
{
	NONE = 0, /+*< nick=none >+/
	NEEDS_TERMINAL = (1 << 0), /+*< nick=needs-terminal >+/
	SUPPORTS_URIS = (1 << 1), /+*< nick=supports-uris >+/
	SUPPORTS_STARTUP_NOTIFICATION = (1 << 2) /+*< nick=supports-startup-notification >+/
}
alias GAppInfoCreateFlags AppInfoCreateFlags;

/**
 * Flags used when mounting a mount.
 * G_MOUNT_MOUNT_NONE
 * No flags set.
 */
public enum GMountMountFlags
{
	NONE = 0
}
alias GMountMountFlags MountMountFlags;

/**
 * Flags used when an unmounting a mount.
 * G_MOUNT_UNMOUNT_NONE
 * No flags set.
 * G_MOUNT_UNMOUNT_FORCE
 * Unmount even if there are outstanding
 *  file operations on the mount.
 */
public enum GMountUnmountFlags
{
	NONE = 0,
	FORCE = (1 << 0)
}
alias GMountUnmountFlags MountUnmountFlags;

/**
 * Flags used when starting a drive.
 * G_DRIVE_START_NONE
 * No flags set.
 * Since 2.22
 */
public enum GDriveStartFlags
{
	NONE = 0
}
alias GDriveStartFlags DriveStartFlags;

/**
 * Enumeration describing how a drive can be started/stopped.
 * G_DRIVE_START_STOP_TYPE_UNKNOWN
 * Unknown or drive doesn't support
 *  start/stop.
 * G_DRIVE_START_STOP_TYPE_SHUTDOWN
 * The stop method will physically
 *  shut down the drive and e.g. power down the port the drive is
 *  attached to.
 * G_DRIVE_START_STOP_TYPE_NETWORK
 * The start/stop methods are used
 *  for connecting/disconnect to the drive over the network.
 * G_DRIVE_START_STOP_TYPE_MULTIDISK
 * The start/stop methods will
 *  assemble/disassemble a virtual drive from several physical
 *  drives.
 * G_DRIVE_START_STOP_TYPE_PASSWORD
 * The start/stop methods will
 *  unlock/lock the disk (for example using the ATA “SECURITY
 *  UNLOCK DEVICE” command)
 * Since 2.22
 */
public enum GDriveStartStopType
{
	TYPE_UNKNOWN,
	TYPE_SHUTDOWN,
	TYPE_NETWORK,
	TYPE_MULTIDISK,
	TYPE_PASSWORD
}
alias GDriveStartStopType DriveStartStopType;

/**
 * GEmblemOrigin is used to add information about the origin of the emblem
 * to GEmblem.
 * G_EMBLEM_ORIGIN_UNKNOWN
 * Emblem of unknown origin
 * G_EMBLEM_ORIGIN_DEVICE
 * Emblem adds device-specific information
 * G_EMBLEM_ORIGIN_LIVEMETADATA
 * Emblem depicts live metadata, such as "readonly"
 * G_EMBLEM_ORIGIN_TAG
 * Emblem comes from a user-defined tag, e.g. set by nautilus (in the future)
 * Since 2.18
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
 * Flags used when creating a GSocket. Some protocols may not implement
 * all the socket types.
 * G_SOCKET_TYPE_INVALID
 * Type unknown or wrong
 * G_SOCKET_TYPE_STREAM
 * Reliable connection-based byte streams (e.g. TCP).
 * G_SOCKET_TYPE_DATAGRAM
 * Connectionless, unreliable datagram passing.
 *  (e.g. UDP)
 * G_SOCKET_TYPE_SEQPACKET
 * Reliable connection-based passing of datagrams
 *  of fixed maximum length (e.g. SCTP).
 * Since 2.22
 */
public enum GSocketType
{
	TYPE_INVALID,
	TYPE_STREAM,
	TYPE_DATAGRAM,
	TYPE_SEQPACKET
}
alias GSocketType SocketType;

/**
 * A protocol identifier is specified when creating a GSocket, which is a
 * family/type specific identifier, where 0 means the default protocol for
 * the particular family/type.
 * This enum contains a set of commonly available and used protocols. You
 * can also pass any other identifiers handled by the platform in order to
 * use protocols not listed here.
 * G_SOCKET_PROTOCOL_UNKNOWN
 * The protocol type is unknown
 * G_SOCKET_PROTOCOL_DEFAULT
 * The default protocol for the family/type
 * G_SOCKET_PROTOCOL_TCP
 * TCP over IP
 * G_SOCKET_PROTOCOL_UDP
 * UDP over IP
 * G_SOCKET_PROTOCOL_SCTP
 * SCTP over IP
 * Since 2.22
 */
public enum GSocketProtocol
{
	UNKNOWN = -1,
	DEFAULT = 0,
	TCP = 6,
	UDP = 17,
	SCTP = 132
}
alias GSocketProtocol SocketProtocol;

/**
 * Flags used in g_socket_receive_message() and g_socket_send_message().
 * The flags listed in the enum are some commonly available flags, but the
 * values used for them are the same as on the platform, and any other flags
 * are passed in/out as is. So to use a platform specific flag, just include
 * the right system header and pass in the flag.
 * G_SOCKET_MSG_NONE
 * No flags.
 * G_SOCKET_MSG_OOB
 * Request to send/receive out of band data.
 * G_SOCKET_MSG_PEEK
 * Read data from the socket without removing it from
 *  the queue.
 * G_SOCKET_MSG_DONTROUTE
 * Don't use a gateway to send out the packet,
 *  only send to hosts on directly connected networks.
 * Since 2.22
 */
public enum GSocketMsgFlags
{
	NONE,
	OOB = 1,
	PEEK = 2,
	DONTROUTE = 4
}
alias GSocketMsgFlags SocketMsgFlags;

/**
 * The protocol family of a GSocketAddress. (These values are
 * identical to the system defines AF_INET, AF_INET6 and AF_UNIX,
 * if available.)
 * G_SOCKET_FAMILY_INVALID
 * no address family
 * G_SOCKET_FAMILY_UNIX
 * the UNIX domain family
 * G_SOCKET_FAMILY_IPV4
 * the IPv4 family
 * G_SOCKET_FAMILY_IPV6
 * the IPv6 family
 * Since 2.22
 */
public enum GSocketFamily
{
	INVALID,
	UNIX = 1,
	IPV4 = 2,
	IPV6 = 23
}
alias GSocketFamily SocketFamily;

/**
 * The type of name used by a GUnixSocketAddress.
 * G_UNIX_SOCKET_ADDRESS_PATH indicates a traditional unix domain
 * socket bound to a filesystem path. G_UNIX_SOCKET_ADDRESS_ANONYMOUS
 * indicates a socket not bound to any name (eg, a client-side socket,
 * or a socket created with socketpair()).
 * For abstract sockets, there are two incompatible ways of naming
 * them; the man pages suggest using the entire struct
 * sockaddr_un as the name, padding the unused parts of the
 * sun_path field with zeroes; this corresponds to
 * G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED. However, many programs
 * instead just use a portion of sun_path, and pass an appropriate
 * smaller length to bind() or connect(). This is
 * G_UNIX_SOCKET_ADDRESS_ABSTRACT.
 * G_UNIX_SOCKET_ADDRESS_INVALID
 * invalid
 * G_UNIX_SOCKET_ADDRESS_ANONYMOUS
 * anonymous
 * G_UNIX_SOCKET_ADDRESS_PATH
 * a filesystem path
 * G_UNIX_SOCKET_ADDRESS_ABSTRACT
 * an abstract name
 * G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED
 * an abstract name, 0-padded
 *  to the full length of a unix socket name
 * Since 2.26
 */
public enum GUnixSocketAddressType
{
	INVALID,
	ANONYMOUS,
	PATH,
	ABSTRACT,
	ABSTRACT_PADDED
}
alias GUnixSocketAddressType UnixSocketAddressType;

/**
 * Enumeration describing different kinds of native credential types.
 * G_CREDENTIALS_TYPE_INVALID
 * Indicates an invalid native credential type.
 * G_CREDENTIALS_TYPE_LINUX_UCRED
 * The native credentials type is a struct ucred.
 * G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED
 * The native credentials type is a struct cmsgcred.
 * G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED
 * The native credentials type is a struct sockpeercred. Added in 2.30.
 * Since 2.26
 */
public enum GCredentialsType
{
	TYPE_INVALID,
	TYPE_LINUX_UCRED,
	TYPE_FREEBSD_CMSGCRED,
	TYPE_OPENBSD_SOCKPEERCRED
}
alias GCredentialsType CredentialsType;

/**
 * Describes an event occurring on a GSocketClient. See the
 * "event" signal for more details.
 * Additional values may be added to this type in the future.
 * G_SOCKET_CLIENT_RESOLVING
 * The client is doing a DNS lookup.
 * G_SOCKET_CLIENT_RESOLVED
 * The client has completed a DNS lookup.
 * G_SOCKET_CLIENT_CONNECTING
 * The client is connecting to a remote
 *  host (either a proxy or the destination server).
 * G_SOCKET_CLIENT_CONNECTED
 * The client has connected to a remote
 *  host.
 * G_SOCKET_CLIENT_PROXY_NEGOTIATING
 * The client is negotiating
 *  with a proxy to connect to the destination server.
 * G_SOCKET_CLIENT_PROXY_NEGOTIATED
 * The client has negotiated
 *  with the proxy server.
 * G_SOCKET_CLIENT_TLS_HANDSHAKING
 * The client is performing a
 *  TLS handshake.
 * G_SOCKET_CLIENT_TLS_HANDSHAKED
 * The client has performed a
 *  TLS handshake.
 * G_SOCKET_CLIENT_COMPLETE
 * The client is done with a particular
 *  GSocketConnectable.
 * Since 2.32
 */
public enum GSocketClientEvent
{
	RESOLVING,
	RESOLVED,
	CONNECTING,
	CONNECTED,
	PROXY_NEGOTIATING,
	PROXY_NEGOTIATED,
	TLS_HANDSHAKING,
	TLS_HANDSHAKED,
	COMPLETE
}
alias GSocketClientEvent SocketClientEvent;

/**
 * An error code used with G_TLS_ERROR in a GError returned from a
 * TLS-related routine.
 * G_TLS_ERROR_UNAVAILABLE
 * No TLS provider is available
 * G_TLS_ERROR_MISC
 * Miscellaneous TLS error
 * G_TLS_ERROR_BAD_CERTIFICATE
 * A certificate could not be parsed
 * G_TLS_ERROR_NOT_TLS
 * The TLS handshake failed because the
 *  peer does not seem to be a TLS server.
 * G_TLS_ERROR_HANDSHAKE
 * The TLS handshake failed because the
 *  peer's certificate was not acceptable.
 * G_TLS_ERROR_CERTIFICATE_REQUIRED
 * The TLS handshake failed because
 *  the server requested a client-side certificate, but none was
 *  provided. See g_tls_connection_set_certificate().
 * G_TLS_ERROR_EOF
 * The TLS connection was closed without proper
 *  notice, which may indicate an attack. See
 *  g_tls_connection_set_require_close_notify().
 * Since 2.28
 */
public enum GTlsError
{
	UNAVAILABLE,
	MISC,
	BAD_CERTIFICATE,
	NOT_TLS,
	HANDSHAKE,
	CERTIFICATE_REQUIRED,
	EOF
}
alias GTlsError TlsError;

/**
 * The client authentication mode for a GTlsServerConnection.
 * G_TLS_AUTHENTICATION_NONE
 * client authentication not required
 * G_TLS_AUTHENTICATION_REQUESTED
 * client authentication is requested
 * G_TLS_AUTHENTICATION_REQUIRED
 * client authentication is required
 * Since 2.28
 */
public enum GTlsAuthenticationMode
{
	NONE,
	REQUESTED,
	REQUIRED
}
alias GTlsAuthenticationMode TlsAuthenticationMode;

/**
 * A set of flags describing TLS certification validation. This can be
 * used to set which validation steps to perform (eg, with
 * g_tls_client_connection_set_validation_flags()), or to describe why
 * a particular certificate was rejected (eg, in
 * "accept-certificate").
 * G_TLS_CERTIFICATE_UNKNOWN_CA
 * The signing certificate authority is
 *  not known.
 * G_TLS_CERTIFICATE_BAD_IDENTITY
 * The certificate does not match the
 *  expected identity of the site that it was retrieved from.
 * G_TLS_CERTIFICATE_NOT_ACTIVATED
 * The certificate's activation time
 *  is still in the future
 * G_TLS_CERTIFICATE_EXPIRED
 * The certificate has expired
 * G_TLS_CERTIFICATE_REVOKED
 * The certificate has been revoked
 *  according to the GTlsConnection's certificate revocation list.
 * G_TLS_CERTIFICATE_INSECURE
 * The certificate's algorithm is
 *  considered insecure.
 * G_TLS_CERTIFICATE_GENERIC_ERROR
 * Some other error occurred validating
 *  the certificate
 * G_TLS_CERTIFICATE_VALIDATE_ALL
 * the combination of all of the above
 *  flags
 * Since 2.28
 */
public enum GTlsCertificateFlags
{
	UNKNOWN_CA = (1 << 0),
	BAD_IDENTITY = (1 << 1),
	NOT_ACTIVATED = (1 << 2),
	EXPIRED = (1 << 3),
	REVOKED = (1 << 4),
	INSECURE = (1 << 5),
	GENERIC_ERROR = (1 << 6),
	VALIDATE_ALL = 0x007f
}
alias GTlsCertificateFlags TlsCertificateFlags;

/**
 * When to allow rehandshaking. See
 * g_tls_connection_set_rehandshake_mode().
 * G_TLS_REHANDSHAKE_NEVER
 * Never allow rehandshaking
 * G_TLS_REHANDSHAKE_SAFELY
 * Allow safe rehandshaking only
 * G_TLS_REHANDSHAKE_UNSAFELY
 * Allow unsafe rehandshaking
 * Since 2.28
 */
public enum GTlsRehandshakeMode
{
	NEVER,
	SAFELY,
	UNSAFELY
}
alias GTlsRehandshakeMode TlsRehandshakeMode;

/**
 * Flags for g_tls_database_verify_chain().
 * G_TLS_DATABASE_VERIFY_NONE
 * No verification flags
 * Since 2.30
 */
public enum GTlsDatabaseVerifyFlags
{
	NONE = 0
}
alias GTlsDatabaseVerifyFlags TlsDatabaseVerifyFlags;

/**
 * Flags for g_tls_database_lookup_certificate_handle(),
 * g_tls_database_lookup_certificate_issuer(),
 * and g_tls_database_lookup_certificates_issued_by().
 * G_TLS_DATABASE_LOOKUP_NONE
 * No lookup flags
 * G_TLS_DATABASE_LOOKUP_KEYPAIR
 * Restrict lookup to certificates that have
 *  a private key.
 * Since 2.30
 */
public enum GTlsDatabaseLookupFlags
{
	NONE = 0,
	KEYPAIR = 1
}
alias GTlsDatabaseLookupFlags TlsDatabaseLookupFlags;

/**
 * GTlsInteractionResult is returned by various functions in GTlsInteraction
 * when finishing an interaction request.
 * G_TLS_INTERACTION_UNHANDLED
 * The interaction was unhandled (i.e. not
 *  implemented).
 * G_TLS_INTERACTION_HANDLED
 * The interaction completed, and resulting data
 *  is available.
 * G_TLS_INTERACTION_FAILED
 * The interaction has failed, or was cancelled.
 *  and the operation should be aborted.
 * Since 2.30
 */
public enum GTlsInteractionResult
{
	UNHANDLED,
	HANDLED,
	FAILED
}
alias GTlsInteractionResult TlsInteractionResult;

/**
 * Various flags for the password.
 * G_TLS_PASSWORD_NONE
 * No flags
 * G_TLS_PASSWORD_RETRY
 * The password was wrong, and the user should retry.
 * G_TLS_PASSWORD_MANY_TRIES
 * Hint to the user that the password has been
 *  wrong many times, and the user may not have many chances left.
 * G_TLS_PASSWORD_FINAL_TRY
 * Hint to the user that this is the last try to get
 *  this password right.
 * Since 2.30
 */
public enum GTlsPasswordFlags
{
	NONE = 0,
	RETRY = 1 << 1,
	MANY_TRIES = 1 << 2,
	FINAL_TRY = 1 << 3
}
alias GTlsPasswordFlags TlsPasswordFlags;

/**
 * An error code used with G_RESOLVER_ERROR in a GError returned
 * from a GResolver routine.
 * G_RESOLVER_ERROR_NOT_FOUND
 * the requested name/address/service was not
 *  found
 * G_RESOLVER_ERROR_TEMPORARY_FAILURE
 * the requested information could not
 *  be looked up due to a network error or similar problem
 * G_RESOLVER_ERROR_INTERNAL
 * unknown error
 * Since 2.22
 * Signal Details
 * The "reload" signal
 * void user_function (GResolver *resolver,
 *  gpointer user_data) : Run Last
 * Emitted when the resolver notices that the system resolver
 * configuration has changed.
 * resolver :
 * a GResolver
 * user_data :
 * user data set when the signal handler was connected.
 */
public enum GResolverError
{
	NOT_FOUND,
	TEMPORARY_FAILURE,
	INTERNAL
}
alias GResolverError ResolverError;

/**
 * Flags describing the access control of a D-Bus property.
 * G_DBUS_PROPERTY_INFO_FLAGS_NONE
 * No flags set.
 * G_DBUS_PROPERTY_INFO_FLAGS_READABLE
 * Property is readable.
 * G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE
 * Property is writable.
 * Since 2.26
 */
public enum GDBusPropertyInfoFlags
{
	NONE = 0,
	READABLE = (1<<0),
	WRITABLE = (1<<1)
}
alias GDBusPropertyInfoFlags DBusPropertyInfoFlags;

/**
 * Error codes for the G_DBUS_ERROR error domain.
 * G_DBUS_ERROR_FAILED
 * A generic error; "something went wrong" - see the error message for
 * more.
 * G_DBUS_ERROR_NO_MEMORY
 * There was not enough memory to complete an operation.
 * G_DBUS_ERROR_SERVICE_UNKNOWN
 * The bus doesn't know how to launch a service to supply the bus name
 * you wanted.
 * G_DBUS_ERROR_NAME_HAS_NO_OWNER
 * The bus name you referenced doesn't exist (i.e. no application owns
 * it).
 * G_DBUS_ERROR_NO_REPLY
 * No reply to a message expecting one, usually means a timeout occurred.
 * G_DBUS_ERROR_IO_ERROR
 * Something went wrong reading or writing to a socket, for example.
 * G_DBUS_ERROR_BAD_ADDRESS
 * A D-Bus bus address was malformed.
 * G_DBUS_ERROR_NOT_SUPPORTED
 * Requested operation isn't supported (like ENOSYS on UNIX).
 * G_DBUS_ERROR_LIMITS_EXCEEDED
 * Some limited resource is exhausted.
 * G_DBUS_ERROR_ACCESS_DENIED
 * Security restrictions don't allow doing what you're trying to do.
 * G_DBUS_ERROR_AUTH_FAILED
 * Authentication didn't work.
 * G_DBUS_ERROR_NO_SERVER
 * Unable to connect to server (probably caused by ECONNREFUSED on a
 * socket).
 * G_DBUS_ERROR_TIMEOUT
 * Certain timeout errors, possibly ETIMEDOUT on a socket. Note that
 * G_DBUS_ERROR_NO_REPLY is used for message reply timeouts. Warning:
 * this is confusingly-named given that G_DBUS_ERROR_TIMED_OUT also
 * exists. We can't fix it for compatibility reasons so just be
 * careful.
 * G_DBUS_ERROR_NO_NETWORK
 * No network access (probably ENETUNREACH on a socket).
 * G_DBUS_ERROR_ADDRESS_IN_USE
 * Can't bind a socket since its address is in use (i.e. EADDRINUSE).
 * G_DBUS_ERROR_DISCONNECTED
 * The connection is disconnected and you're trying to use it.
 * G_DBUS_ERROR_INVALID_ARGS
 * Invalid arguments passed to a method call.
 * G_DBUS_ERROR_FILE_NOT_FOUND
 * Missing file.
 * G_DBUS_ERROR_FILE_EXISTS
 * Existing file and the operation you're using does not silently overwrite.
 * G_DBUS_ERROR_UNKNOWN_METHOD
 * Method name you invoked isn't known by the object you invoked it on.
 * G_DBUS_ERROR_TIMED_OUT
 * Certain timeout errors, e.g. while starting a service. Warning: this is
 * confusingly-named given that G_DBUS_ERROR_TIMEOUT also exists. We
 * can't fix it for compatibility reasons so just be careful.
 * G_DBUS_ERROR_MATCH_RULE_NOT_FOUND
 * Tried to remove or modify a match rule that didn't exist.
 * G_DBUS_ERROR_MATCH_RULE_INVALID
 * The match rule isn't syntactically valid.
 * G_DBUS_ERROR_SPAWN_EXEC_FAILED
 * While starting a new process, the exec() call failed.
 * G_DBUS_ERROR_SPAWN_FORK_FAILED
 * While starting a new process, the fork() call failed.
 * G_DBUS_ERROR_SPAWN_CHILD_EXITED
 * While starting a new process, the child exited with a status code.
 * G_DBUS_ERROR_SPAWN_CHILD_SIGNALED
 * While starting a new process, the child exited on a signal.
 * G_DBUS_ERROR_SPAWN_FAILED
 * While starting a new process, something went wrong.
 * G_DBUS_ERROR_SPAWN_SETUP_FAILED
 * We failed to setup the environment correctly.
 * G_DBUS_ERROR_SPAWN_CONFIG_INVALID
 * We failed to setup the config parser correctly.
 * G_DBUS_ERROR_SPAWN_SERVICE_INVALID
 * Bus name was not valid.
 * G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND
 * Service file not found in system-services directory.
 * G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID
 * Permissions are incorrect on the setuid helper.
 * G_DBUS_ERROR_SPAWN_FILE_INVALID
 * Service file invalid (Name, User or Exec missing).
 * G_DBUS_ERROR_SPAWN_NO_MEMORY
 * Tried to get a UNIX process ID and it wasn't available.
 * G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN
 * Tried to get a UNIX process ID and it wasn't available.
 * G_DBUS_ERROR_INVALID_SIGNATURE
 * A type signature is not valid.
 * G_DBUS_ERROR_INVALID_FILE_CONTENT
 * A file contains invalid syntax or is otherwise broken.
 * G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN
 * Asked for SELinux security context and it wasn't available.
 * G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN
 * Asked for ADT audit data and it wasn't available.
 * G_DBUS_ERROR_OBJECT_PATH_IN_USE
 * There's already an object with the requested object path.
 * Since 2.26
 */
public enum GDBusError
{
	FAILED, /+* org.freedesktop.DBus.Error.Failed +/
	NO_MEMORY, /+* org.freedesktop.DBus.Error.NoMemory +/
	SERVICE_UNKNOWN, /+* org.freedesktop.DBus.Error.ServiceUnknown +/
	NAME_HAS_NO_OWNER, /+* org.freedesktop.DBus.Error.NameHasNoOwner +/
	NO_REPLY, /+* org.freedesktop.DBus.Error.NoReply +/
	IO_ERROR, /+* org.freedesktop.DBus.Error.IOError +/
	BAD_ADDRESS, /+* org.freedesktop.DBus.Error.BadAddress +/
	NOT_SUPPORTED, /+* org.freedesktop.DBus.Error.NotSupported +/
	LIMITS_EXCEEDED, /+* org.freedesktop.DBus.Error.LimitsExceeded +/
	ACCESS_DENIED, /+* org.freedesktop.DBus.Error.AccessDenied +/
	AUTH_FAILED, /+* org.freedesktop.DBus.Error.AuthFailed +/
	NO_SERVER, /+* org.freedesktop.DBus.Error.NoServer +/
	TIMEOUT, /+* org.freedesktop.DBus.Error.Timeout +/
	NO_NETWORK, /+* org.freedesktop.DBus.Error.NoNetwork +/
	ADDRESS_IN_USE, /+* org.freedesktop.DBus.Error.AddressInUse +/
	DISCONNECTED, /+* org.freedesktop.DBus.Error.Disconnected +/
	INVALID_ARGS, /+* org.freedesktop.DBus.Error.InvalidArgs +/
	FILE_NOT_FOUND, /+* org.freedesktop.DBus.Error.FileNotFound +/
	FILE_EXISTS, /+* org.freedesktop.DBus.Error.FileExists +/
	UNKNOWN_METHOD, /+* org.freedesktop.DBus.Error.UnknownMethod +/
	TIMED_OUT, /+* org.freedesktop.DBus.Error.TimedOut +/
	MATCH_RULE_NOT_FOUND, /+* org.freedesktop.DBus.Error.MatchRuleNotFound +/
	MATCH_RULE_INVALID, /+* org.freedesktop.DBus.Error.MatchRuleInvalid +/
	SPAWN_EXEC_FAILED, /+* org.freedesktop.DBus.Error.Spawn.ExecFailed +/
	SPAWN_FORK_FAILED, /+* org.freedesktop.DBus.Error.Spawn.ForkFailed +/
	SPAWN_CHILD_EXITED, /+* org.freedesktop.DBus.Error.Spawn.ChildExited +/
	SPAWN_CHILD_SIGNALED, /+* org.freedesktop.DBus.Error.Spawn.ChildSignaled +/
	SPAWN_FAILED, /+* org.freedesktop.DBus.Error.Spawn.Failed +/
	SPAWN_SETUP_FAILED, /+* org.freedesktop.DBus.Error.Spawn.FailedToSetup +/
	SPAWN_CONFIG_INVALID, /+* org.freedesktop.DBus.Error.Spawn.ConfigInvalid +/
	SPAWN_SERVICE_INVALID, /+* org.freedesktop.DBus.Error.Spawn.ServiceNotValid +/
	SPAWN_SERVICE_NOT_FOUND, /+* org.freedesktop.DBus.Error.Spawn.ServiceNotFound +/
	SPAWN_PERMISSIONS_INVALID, /+* org.freedesktop.DBus.Error.Spawn.PermissionsInvalid +/
	SPAWN_FILE_INVALID, /+* org.freedesktop.DBus.Error.Spawn.FileInvalid +/
	SPAWN_NO_MEMORY, /+* org.freedesktop.DBus.Error.Spawn.NoMemory +/
	UNIX_PROCESS_ID_UNKNOWN, /+* org.freedesktop.DBus.Error.UnixProcessIdUnknown +/
	INVALID_SIGNATURE, /+* org.freedesktop.DBus.Error.InvalidSignature +/
	INVALID_FILE_CONTENT, /+* org.freedesktop.DBus.Error.InvalidFileContent +/
	SELINUX_SECURITY_CONTEXT_UNKNOWN, /+* org.freedesktop.DBus.Error.SELinuxSecurityContextUnknown +/
	ADT_AUDIT_DATA_UNKNOWN, /+* org.freedesktop.DBus.Error.AdtAuditDataUnknown +/
	OBJECT_PATH_IN_USE /+* org.freedesktop.DBus.Error.ObjectPathInUse +/
}
alias GDBusError DBusError;

/**
 * Message types used in GDBusMessage.
 * G_DBUS_MESSAGE_TYPE_INVALID
 * Message is of invalid type.
 * G_DBUS_MESSAGE_TYPE_METHOD_CALL
 * Method call.
 * G_DBUS_MESSAGE_TYPE_METHOD_RETURN
 * Method reply.
 * G_DBUS_MESSAGE_TYPE_ERROR
 * Error reply.
 * G_DBUS_MESSAGE_TYPE_SIGNAL
 * Signal emission.
 * Since 2.26
 */
public enum GDBusMessageType
{
	TYPE_INVALID,
	TYPE_METHOD_CALL,
	TYPE_METHOD_RETURN,
	TYPE_ERROR,
	TYPE_SIGNAL
}
alias GDBusMessageType DBusMessageType;

/**
 * Message flags used in GDBusMessage.
 * G_DBUS_MESSAGE_FLAGS_NONE
 * No flags set.
 * G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED
 * A reply is not expected.
 * G_DBUS_MESSAGE_FLAGS_NO_AUTO_START
 * The bus must not launch an
 * owner for the destination name in response to this message.
 * Since 2.26
 */
public enum GDBusMessageFlags
{
	NONE = 0,
	NO_REPLY_EXPECTED = (1<<0),
	NO_AUTO_START = (1<<1)
}
alias GDBusMessageFlags DBusMessageFlags;

/**
 * Header fields used in GDBusMessage.
 * G_DBUS_MESSAGE_HEADER_FIELD_INVALID
 * Not a valid header field.
 * G_DBUS_MESSAGE_HEADER_FIELD_PATH
 * The object path.
 * G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE
 * The interface name.
 * G_DBUS_MESSAGE_HEADER_FIELD_MEMBER
 * The method or signal name.
 * G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME
 * The name of the error that occurred.
 * G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL
 * The serial number the message is a reply to.
 * G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION
 * The name the message is intended for.
 * G_DBUS_MESSAGE_HEADER_FIELD_SENDER
 * Unique name of the sender of the message (filled in by the bus).
 * G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE
 * The signature of the message body.
 * G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS
 * The number of UNIX file descriptors that accompany the message.
 * Since 2.26
 */
public enum GDBusMessageHeaderField
{
	INVALID,
	PATH,
	INTERFACE,
	MEMBER,
	ERROR_NAME,
	REPLY_SERIAL,
	DESTINATION,
	SENDER,
	SIGNATURE,
	NUM_UNIX_FDS
}
alias GDBusMessageHeaderField DBusMessageHeaderField;

/**
 * Enumeration used to describe the byte order of a D-Bus message.
 * G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN
 * The byte order is big endian.
 * G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN
 * The byte order is little endian.
 * Since 2.26
 */
public enum GDBusMessageByteOrder
{
	BIG_ENDIAN = 'B',
	LITTLE_ENDIAN = 'l'
}
alias GDBusMessageByteOrder DBusMessageByteOrder;

/**
 * An enumeration for well-known message buses.
 * G_BUS_TYPE_STARTER
 * An alias for the message bus that activated the process, if any.
 * G_BUS_TYPE_NONE
 * Not a message bus.
 * G_BUS_TYPE_SYSTEM
 * The system-wide message bus.
 * G_BUS_TYPE_SESSION
 * The login session message bus.
 * Since 2.26
 */
public enum GBusType
{
	TYPE_STARTER = -1,
	TYPE_NONE = 0,
	TYPE_SYSTEM = 1,
	TYPE_SESSION = 2
}
alias GBusType BusType;

/**
 * Flags used when creating a new GDBusConnection.
 * G_DBUS_CONNECTION_FLAGS_NONE
 * No flags set.
 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT
 * Perform authentication against server.
 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER
 * Perform authentication against client.
 * G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS
 * When
 * authenticating as a server, allow the anonymous authentication
 * method.
 * G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION
 * Pass this flag if connecting to a peer that is a
 * message bus. This means that the Hello() method will be invoked as part of the connection setup.
 * G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING
 * If set, processing of D-Bus messages is
 * delayed until g_dbus_connection_start_message_processing() is called.
 * Since 2.26
 */
public enum GDBusConnectionFlags
{
	NONE = 0,
	AUTHENTICATION_CLIENT = (1<<0),
	AUTHENTICATION_SERVER = (1<<1),
	AUTHENTICATION_ALLOW_ANONYMOUS = (1<<2),
	MESSAGE_BUS_CONNECTION = (1<<3),
	DELAY_MESSAGE_PROCESSING = (1<<4)
}
alias GDBusConnectionFlags DBusConnectionFlags;

/**
 * Capabilities negotiated with the remote peer.
 * G_DBUS_CAPABILITY_FLAGS_NONE
 * No flags set.
 * G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING
 * The connection
 * supports exchanging UNIX file descriptors with the remote peer.
 * Since 2.26
 */
public enum GDBusCapabilityFlags
{
	NONE = 0,
	UNIX_FD_PASSING = (1<<0)
}
alias GDBusCapabilityFlags DBusCapabilityFlags;

/**
 * Flags used in g_dbus_connection_call() and similar APIs.
 * G_DBUS_CALL_FLAGS_NONE
 * No flags set.
 * G_DBUS_CALL_FLAGS_NO_AUTO_START
 * The bus must not launch
 * an owner for the destination name in response to this method
 * invocation.
 * Since 2.26
 */
public enum GDBusCallFlags
{
	NONE = 0,
	NO_AUTO_START = (1<<0)
}
alias GDBusCallFlags DBusCallFlags;

/**
 * Flags used when subscribing to signals via g_dbus_connection_signal_subscribe().
 * G_DBUS_SIGNAL_FLAGS_NONE
 * No flags set.
 * G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE
 * Don't actually send the AddMatch
 * D-Bus call for this signal subscription. This gives you more control
 * over which match rules you add (but you must add them manually).
 * Since 2.26
 */
public enum GDBusSignalFlags
{
	NONE = 0,
	NO_MATCH_RULE = (1<<0)
}
alias GDBusSignalFlags DBusSignalFlags;

/**
 * Flags used when sending GDBusMessages on a GDBusConnection.
 * G_DBUS_SEND_MESSAGE_FLAGS_NONE
 * No flags set.
 * G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL
 * Do not automatically
 * assign a serial number from the GDBusConnection object when
 * sending a message.
 * Since 2.26
 */
public enum GDBusSendMessageFlags
{
	NONE = 0,
	PRESERVE_SERIAL = (1<<0)
}
alias GDBusSendMessageFlags DBusSendMessageFlags;

/**
 * Flags passed to g_dbus_connection_register_subtree().
 * G_DBUS_SUBTREE_FLAGS_NONE
 * No flags set.
 * G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES
 * Method calls to objects not in the enumerated range
 *  will still be dispatched. This is useful if you want
 *  to dynamically spawn objects in the subtree.
 * Since 2.26
 */
public enum GDBusSubtreeFlags
{
	NONE = 0,
	DISPATCH_TO_UNENUMERATED_NODES = (1<<0)
}
alias GDBusSubtreeFlags DBusSubtreeFlags;

/**
 * Flags used when creating a GDBusServer.
 * G_DBUS_SERVER_FLAGS_NONE
 * No flags set.
 * G_DBUS_SERVER_FLAGS_RUN_IN_THREAD
 * All "new-connection"
 * signals will run in separated dedicated threads (see signal for
 * details).
 * G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS
 * Allow the anonymous
 * authentication method.
 * Since 2.26
 */
public enum GDBusServerFlags
{
	NONE = 0,
	RUN_IN_THREAD = (1<<0),
	AUTHENTICATION_ALLOW_ANONYMOUS = (1<<1)
}
alias GDBusServerFlags DBusServerFlags;

/**
 * Flags used in g_bus_own_name().
 * G_BUS_NAME_OWNER_FLAGS_NONE
 * No flags set.
 * G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT
 * Allow another message bus connection to claim the name.
 * G_BUS_NAME_OWNER_FLAGS_REPLACE
 * If another message bus connection owns the name and have
 * specified G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT, then take the name from the other connection.
 * Since 2.26
 */
public enum GBusNameOwnerFlags
{
	NONE = 0, /+*< nick=none >+/
	ALLOW_REPLACEMENT = (1 << 0), /+*< nick=allow-replacement >+/
	REPLACE = (1 << 1) /+*< nick=replace >+/
}
alias GBusNameOwnerFlags BusNameOwnerFlags;

/**
 * Flags used in g_bus_watch_name().
 * G_BUS_NAME_WATCHER_FLAGS_NONE
 * No flags set.
 * G_BUS_NAME_WATCHER_FLAGS_AUTO_START
 * If no-one owns the name when
 * beginning to watch the name, ask the bus to launch an owner for the
 * name.
 * Since 2.26
 */
public enum GBusNameWatcherFlags
{
	NONE = 0,
	AUTO_START = (1<<0)
}
alias GBusNameWatcherFlags BusNameWatcherFlags;

/**
 * Flags describing the behavior of a GDBusInterfaceSkeleton instance.
 * G_DBUS_INTERFACE_SKELETON_FLAGS_NONE
 * No flags set.
 * G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD
 * Each method invocation is handled in
 *  a thread dedicated to the invocation. This means that the method implementation can use blocking IO
 *  without blocking any other part of the process. It also means that the method implementation must
 *  use locking to access data structures used by other threads.
 * Since 2.30
 */
public enum GDBusInterfaceSkeletonFlags
{
	NONE = 0,
	HANDLE_METHOD_INVOCATIONS_IN_THREAD = (1<<0)
}
alias GDBusInterfaceSkeletonFlags DBusInterfaceSkeletonFlags;

/**
 * Flags used when constructing an instance of a GDBusProxy derived class.
 * G_DBUS_PROXY_FLAGS_NONE
 * No flags set.
 * G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES
 * Don't load properties.
 * G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS
 * Don't connect to signals on the remote object.
 * G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START
 * If not set and the proxy if for a well-known name,
 * then request the bus to launch an owner for the name if no-one owns the name. This flag can
 * only be used in proxies for well-known names.
 * G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES
 * If set, the property value for any invalidated property will be (asynchronously) retrieved upon receiving the PropertiesChanged D-Bus signal and the property will not cause emission of the "g-properties-changed" signal. When the value is received the "g-properties-changed" signal is emitted for the property along with the retrieved value. Since 2.32.
 * Since 2.26
 */
public enum GDBusProxyFlags
{
	NONE = 0,
	DO_NOT_LOAD_PROPERTIES = (1<<0),
	DO_NOT_CONNECT_SIGNALS = (1<<1),
	DO_NOT_AUTO_START = (1<<2),
	GET_INVALIDATED_PROPERTIES = (1<<3)
}
alias GDBusProxyFlags DBusProxyFlags;

/**
 * Flags used when constructing a GDBusObjectManagerClient.
 * G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE
 * No flags set.
 * G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START
 * If not set and the
 *  manager is for a well-known name, then request the bus to launch
 *  an owner for the name if no-one owns the name. This flag can only
 *  be used in managers for well-known names.
 * Since 2.30
 */
public enum GDBusObjectManagerClientFlags
{
	NONE = 0,
	DO_NOT_AUTO_START = (1<<0)
}
alias GDBusObjectManagerClientFlags DBusObjectManagerClientFlags;

/**
 * Flags used when creating a binding. These flags determine in which
 * direction the binding works. The default is to synchronize in both
 * directions.
 * G_SETTINGS_BIND_DEFAULT
 * Equivalent to G_SETTINGS_BIND_GET|G_SETTINGS_BIND_SET
 * G_SETTINGS_BIND_GET
 * Update the GObject property when the setting changes.
 *  It is an error to use this flag if the property is not writable.
 * G_SETTINGS_BIND_SET
 * Update the setting when the GObject property changes.
 *  It is an error to use this flag if the property is not readable.
 * G_SETTINGS_BIND_NO_SENSITIVITY
 * Do not try to bind a "sensitivity" property to the writability of the setting
 * G_SETTINGS_BIND_GET_NO_CHANGES
 * When set in addition to G_SETTINGS_BIND_GET, set the GObject property
 *  value initially from the setting, but do not listen for changes of the setting
 * G_SETTINGS_BIND_INVERT_BOOLEAN
 * When passed to g_settings_bind(), uses a pair of mapping functions that invert
 *  the boolean value when mapping between the setting and the property. The setting and property must both
 *  be booleans. You cannot pass this flag to g_settings_bind_with_mapping().
 */
public enum GSettingsBindFlags
{
	DEFAULT,
	GET = (1<<0),
	SET = (1<<1),
	NO_SENSITIVITY = (1<<2),
	GET_NO_CHANGES = (1<<3),
	INVERT_BOOLEAN = (1<<4)
}
alias GSettingsBindFlags SettingsBindFlags;

/**
 * GResourceFlags give information about a particular file inside a resource
 * bundle.
 * G_RESOURCE_FLAGS_NONE
 * No flags set.
 * G_RESOURCE_FLAGS_COMPRESSED
 * The file is compressed.
 * Since 2.32
 */
public enum GResourceFlags
{
	NONE = 0,
	COMPRESSED = (1<<0)
}
alias GResourceFlags ResourceFlags;

/**
 * GResourceLookupFlags determine how resource path lookups are handled.
 * G_RESOURCE_LOOKUP_FLAGS_NONE
 * No flags set.
 * Since 2.32
 */
public enum GResourceLookupFlags
{
	NONE = 0
}
alias GResourceLookupFlags ResourceLookupFlags;

/**
 * An error code used with G_RESOURCE_ERROR in a GError returned
 * from a GResource routine.
 * G_RESOURCE_ERROR_NOT_FOUND
 * no file was found at the requested path
 * G_RESOURCE_ERROR_INTERNAL
 * unknown error
 * Since 2.32
 */
public enum GResourceError
{
	NOT_FOUND,
	INTERNAL
}
alias GResourceError ResourceError;

/**
 * Flags used to define the behaviour of a GApplication.
 * G_APPLICATION_FLAGS_NONE
 * Default
 * G_APPLICATION_IS_SERVICE
 * Run as a service. In this mode, registration
 *  fails if the service is already running, and the application
 *  will initially wait up to 10 seconds for an initial activation
 *  message to arrive.
 * G_APPLICATION_IS_LAUNCHER
 * Don't try to become the primary instance.
 * G_APPLICATION_HANDLES_OPEN
 * This application handles opening files (in
 *  the primary instance). Note that this flag only affects the default
 *  implementation of local_command_line(), and has no effect if
 *  G_APPLICATION_HANDLES_COMMAND_LINE is given.
 *  See g_application_run() for details.
 * G_APPLICATION_HANDLES_COMMAND_LINE
 * This application handles command line
 *  arguments (in the primary instance). Note that this flag only affect
 *  the default implementation of local_command_line().
 *  See g_application_run() for details.
 * G_APPLICATION_SEND_ENVIRONMENT
 * Send the environment of the
 *  launching process to the primary instance. Set this flag if your
 *  application is expected to behave differently depending on certain
 *  environment variables. For instance, an editor might be expected
 *  to use the GIT_COMMITTER_NAME environment variable
 *  when editing a git commit message. The environment is available
 *  to the "command-line" signal handler, via
 *  g_application_command_line_getenv().
 * G_APPLICATION_NON_UNIQUE
 * Make no attempts to do any of the typical
 *  single-instance application negotiation, even if the application
 *  ID is given. The application neither attempts to become the
 *  owner of the application ID nor does it check if an existing
 *  owner already exists. Everything occurs in the local process.
 *  Since: 2.30.
 * Since 2.28
 */
public enum GApplicationFlags
{
	NONE,
	G_APPLICATION_IS_SERVICE = (1 << 0),
	G_APPLICATION_IS_LAUNCHER = (1 << 1),
	G_APPLICATION_HANDLES_OPEN = (1 << 2),
	G_APPLICATION_HANDLES_COMMAND_LINE = (1 << 3),
	G_APPLICATION_SEND_ENVIRONMENT = (1 << 4),
	G_APPLICATION_NON_UNIQUE = (1 << 5)
}
alias GApplicationFlags ApplicationFlags;

/**
 * Flags for use with g_io_module_scope_new().
 * G_IO_MODULE_SCOPE_NONE
 * No module scan flags
 * G_IO_MODULE_SCOPE_BLOCK_DUPLICATES
 * When using this scope to load or
 *  scan modules, automatically block a modules which has the same base
 *  basename as previously loaded module.
 * Since 2.30
 */
public enum GIOModuleScopeFlags
{
	NONE,
	BLOCK_DUPLICATES
}
alias GIOModuleScopeFlags IOModuleScopeFlags;

/**
 * Flags to define future GTestDBus behaviour.
 * G_TEST_DBUS_NONE
 * No flags.
 * Since 2.34
 */
public enum GTestDBusFlags
{
	NONE = 0
}
alias GTestDBusFlags TestDBusFlags;


struct GStaticResource
{
	guint8* data;
	gsize   data_len;
	GResource* resource;
	GStaticResource* next;
	gpointer padding;
}


/**
 * Main Gtk struct.
 * A handle to an object implementing the GFileIface interface.
 * Generally stores a location within the file system. Handles do not
 * necessarily represent files or directories that currently exist.
 */
public struct GFile{}


/**
 * An interface for writing VFS file handles.
 * GTypeInterface g_iface;
 * The parent interface.
 * dup ()
 * Duplicates a GFile.
 * hash ()
 * Creates a hash of a GFile.
 * equal ()
 * Checks equality of two given GFiles.
 * is_native ()
 * Checks to see if a file is native to the system.
 * has_uri_scheme ()
 * Checks to see if a GFile has a given URI scheme.
 * get_uri_scheme ()
 * Gets the URI scheme for a GFile.
 * get_basename ()
 * Gets the basename for a given GFile.
 * get_path ()
 * Gets the current path within a GFile.
 * get_uri ()
 * Gets a URI for the path within a GFile.
 * get_parse_name ()
 * Gets the parsed name for the GFile.
 * get_parent ()
 * Gets the parent directory for the GFile.
 * prefix_matches ()
 * Checks whether a GFile contains a specified file.
 * get_relative_path ()
 * Gets the path for a GFile relative to a given path.
 * resolve_relative_path ()
 * Resolves a relative path for a GFile to an absolute path.
 * get_child_for_display_name ()
 * Gets the child GFile for a given display name.
 * enumerate_children ()
 * Gets a GFileEnumerator with the children of a GFile.
 * enumerate_children_async ()
 * Asynchronously gets a GFileEnumerator with the children of a GFile.
 * enumerate_children_finish ()
 * Finishes asynchronously enumerating the children.
 * query_info ()
 * Gets the GFileInfo for a GFile.
 * query_info_async ()
 * Asynchronously gets the GFileInfo for a GFile.
 * query_info_finish ()
 * Finishes an asynchronous query info operation.
 * query_filesystem_info ()
 * Gets a GFileInfo for the file system GFile is on.
 * query_filesystem_info_async ()
 * Asynchronously gets a GFileInfo for the file system GFile is on.
 * query_filesystem_info_finish ()
 * Finishes asynchronously getting the file system info.
 * find_enclosing_mount ()
 * Gets a GMount for the GFile.
 * find_enclosing_mount_async ()
 * Asynchronously gets the GMount for a GFile.
 * find_enclosing_mount_finish ()
 * Finishes asynchronously getting the volume.
 * set_display_name ()
 * Sets the display name for a GFile.
 * set_display_name_async ()
 * Asynchronously sets a GFile's display name.
 * set_display_name_finish ()
 * Finishes asynchronously setting a GFile's display name.
 * query_settable_attributes ()
 * Returns a list of GFileAttributes that can be set.
 * _query_settable_attributes_async ()
 * Asynchronously gets a list of GFileAttributes that can be set.
 * _query_settable_attributes_finish ()
 * Finishes asynchronously querying settable attributes.
 * query_writable_namespaces ()
 * Returns a list of GFileAttribute namespaces that are writable.
 * _query_writable_namespaces_async ()
 * Asynchronously gets a list of GFileAttribute namespaces that are writable.
 * _query_writable_namespaces_finish ()
 * Finishes asynchronously querying the writable namespaces.
 * set_attribute ()
 * Sets a GFileAttribute.
 * set_attributes_from_info ()
 * Sets a GFileAttribute with information from a GFileInfo.
 * set_attributes_async ()
 * Asynchronously sets a file's attributes.
 * set_attributes_finish ()
 * Finishes setting a file's attributes asynchronously.
 * read_fn ()
 * Reads a file asynchronously.
 * read_async ()
 * Asynchronously reads a file.
 * read_finish ()
 * Finishes asynchronously reading a file.
 * append_to ()
 * Writes to the end of a file.
 * append_to_async ()
 * Asynchronously writes to the end of a file.
 * append_to_finish ()
 * Finishes an asynchronous file append operation.
 * create ()
 * Creates a new file.
 * create_async ()
 * Asynchronously creates a file.
 * create_finish ()
 * Finishes asynchronously creating a file.
 * replace ()
 * Replaces the contents of a file.
 * replace_async ()
 * Asynchronously replaces the contents of a file.
 * replace_finish ()
 * Finishes asynchronously replacing a file.
 * delete_file ()
 * Deletes a file.
 * delete_file_async ()
 * Asynchronously deletes a file.
 * delete_file_finish ()
 * Finishes an asynchronous delete.
 * trash ()
 * Sends a GFile to the Trash location.
 * _trash_async ()
 * Asynchronously sends a GFile to the Trash location.
 * _trash_finish ()
 * Finishes an asynchronous file trashing operation.
 * make_directory ()
 * Makes a directory.
 * _make_directory_async ()
 * Asynchronously makes a directory.
 * _make_directory_finish ()
 * Finishes making a directory asynchronously.
 * make_symbolic_link ()
 * Makes a symbolic link.
 * _make_symbolic_link_async ()
 * Asynchronously makes a symbolic link
 * _make_symbolic_link_finish ()
 * Finishes making a symbolic link asynchronously.
 * copy ()
 * Copies a file.
 * copy_async ()
 * Asynchronously copies a file.
 * copy_finish ()
 * Finishes an asynchronous copy operation.
 * move ()
 * Moves a file.
 * _move_async ()
 * Asynchronously moves a file.
 * _move_finish ()
 * Finishes an asynchronous move operation.
 * mount_mountable ()
 * Mounts a mountable object.
 * mount_mountable_finish ()
 * Finishes a mounting operation.
 * unmount_mountable ()
 * Unmounts a mountable object.
 * unmount_mountable_finish ()
 * Finishes an unmount operation.
 * eject_mountable ()
 * Ejects a mountable.
 * eject_mountable_finish ()
 * Finishes an eject operation.
 * mount_enclosing_volume ()
 * Mounts a specified location.
 * mount_enclosing_volume_finish ()
 * Finishes mounting a specified location.
 * monitor_dir ()
 * Creates a GFileMonitor for the location.
 * monitor_file ()
 * Creates a GFileMonitor for the location.
 * open_readwrite ()
 * Open file read/write. Since 2.22.
 * open_readwrite_async ()
 * Asynchronously opens file read/write. Since 2.22.
 * open_readwrite_finish ()
 * Finishes an asynchronous open read/write. Since 2.22.
 * create_readwrite ()
 * Creates file read/write. Since 2.22.
 * create_readwrite_async ()
 * Asynchronously creates file read/write. Since 2.22.
 * create_readwrite_finish ()
 * Finishes an asynchronous creates read/write. Since 2.22.
 * replace_readwrite ()
 * Replaces file read/write. Since 2.22.
 * replace_readwrite_async ()
 * Asynchronously replaces file read/write. Since 2.22.
 * replace_readwrite_finish ()
 * Finishes an asynchronous replace read/write. Since 2.22.
 * start_mountable ()
 * Starts a mountable object. Since 2.22.
 * start_mountable_finish ()
 * Finishes an start operation. Since 2.22.
 * stop_mountable ()
 * Stops a mountable. Since 2.22.
 * stop_mountable_finish ()
 * Finishes an stop operation. Since 2.22.
 * gboolean supports_thread_contexts;
 * a boolean that indicates whether the GFile implementation supports thread-default contexts. Since 2.22.
 * unmount_mountable_with_operation ()
 * Unmounts a mountable object using a GMountOperation. Since 2.22.
 * unmount_mountable_with_operation_finish ()
 * Finishes an unmount operation using a GMountOperation. Since 2.22.
 * eject_mountable_with_operation ()
 * Ejects a mountable object using a GMountOperation. Since 2.22.
 * eject_mountable_with_operation_finish ()
 * Finishes an eject operation using a GMountOperation. Since 2.22.
 * poll_mountable ()
 * Polls a mountable object for media changes. Since 2.22.
 * poll_mountable_finish ()
 * Finishes an poll operation for media changes. Since 2.22.
 */
public struct GFileIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GFile * function(GFile* file)  dup;
	extern(C) uint function(GFile* file)  hash;
	extern(C) int function(GFile* file1, GFile* file2)  equal;
	extern(C) int function(GFile* file)  isNative;
	extern(C) int function(GFile* file, char* uriScheme)  hasUriScheme;
	extern(C) char * function(GFile* file)  getUriScheme;
	extern(C) char * function(GFile* file)  getBasename;
	extern(C) char * function(GFile* file)  getPath;
	extern(C) char * function(GFile* file)  getUri;
	extern(C) char * function(GFile* file)  getParseName;
	extern(C) GFile * function(GFile* file)  getParent;
	extern(C) int function(GFile* prefix, GFile* file)  prefixMatches;
	extern(C) char * function(GFile* parent, GFile* descendant)  getRelativePath;
	extern(C) GFile * function(GFile* file, char* relativePath)  resolveRelativePath;
	extern(C) GFile * function(GFile* file, char* displayName, GError** error)  getChildForDisplayName;
	extern(C) GFileEnumerator * function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)  enumerateChildren;
	extern(C) void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  enumerateChildrenAsync;
	extern(C) GFileEnumerator * function(GFile* file, GAsyncResult* res, GError** error)  enumerateChildrenFinish;
	extern(C) GFileInfo * function(GFile* file, char* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)  queryInfo;
	extern(C) void function(GFile* file, char* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  queryInfoAsync;
	extern(C) GFileInfo * function(GFile* file, GAsyncResult* res, GError** error)  queryInfoFinish;
	extern(C) GFileInfo * function(GFile* file, char* attributes, GCancellable* cancellable, GError** error)  queryFilesystemInfo;
	extern(C) void function(GFile* file, char* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  queryFilesystemInfoAsync;
	extern(C) GFileInfo * function(GFile* file, GAsyncResult* res, GError** error)  queryFilesystemInfoFinish;
	extern(C) GMount * function(GFile* file, GCancellable* cancellable, GError** error)  findEnclosingMount;
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  findEnclosingMountAsync;
	extern(C) GMount * function(GFile* file, GAsyncResult* res, GError** error)  findEnclosingMountFinish;
	extern(C) GFile * function(GFile* file, char* displayName, GCancellable* cancellable, GError** error)  setDisplayName;
	extern(C) void function(GFile* file, char* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  setDisplayNameAsync;
	extern(C) GFile * function(GFile* file, GAsyncResult* res, GError** error)  setDisplayNameFinish;
	extern(C) GFileAttributeInfoList * function(GFile* file, GCancellable* cancellable, GError** error)  querySettableAttributes;
	extern(C) void function()  _QuerySettableAttributesAsync;
	extern(C) void function()  _QuerySettableAttributesFinish;
	extern(C) GFileAttributeInfoList * function(GFile* file, GCancellable* cancellable, GError** error)  queryWritableNamespaces;
	extern(C) void function()  _QueryWritableNamespacesAsync;
	extern(C) void function()  _QueryWritableNamespacesFinish;
	extern(C) int function(GFile* file, char* attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)  setAttribute;
	extern(C) int function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** error)  setAttributesFromInfo;
	extern(C) void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  setAttributesAsync;
	extern(C) int function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** error)  setAttributesFinish;
	extern(C) GFileInputStream * function(GFile* file, GCancellable* cancellable, GError** error)  readFn;
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  readAsync;
	extern(C) GFileInputStream * function(GFile* file, GAsyncResult* res, GError** error)  readFinish;
	extern(C) GFileOutputStream * function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error)  appendTo;
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  appendToAsync;
	extern(C) GFileOutputStream * function(GFile* file, GAsyncResult* res, GError** error)  appendToFinish;
	extern(C) GFileOutputStream * function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error)  create;
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  createAsync;
	extern(C) GFileOutputStream * function(GFile* file, GAsyncResult* res, GError** error)  createFinish;
	extern(C) GFileOutputStream * function(GFile* file, char* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error)  replace;
	extern(C) void function(GFile* file, char* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  replaceAsync;
	extern(C) GFileOutputStream * function(GFile* file, GAsyncResult* res, GError** error)  replaceFinish;
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** error)  deleteFile;
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  deleteFileAsync;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  deleteFileFinish;
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** error)  trash;
	extern(C) void function()  _TrashAsync;
	extern(C) void function()  _TrashFinish;
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** error)  makeDirectory;
	extern(C) void function()  _MakeDirectoryAsync;
	extern(C) void function()  _MakeDirectoryFinish;
	extern(C) int function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** error)  makeSymbolicLink;
	extern(C) void function()  _MakeSymbolicLinkAsync;
	extern(C) void function()  _MakeSymbolicLinkFinish;
	extern(C) int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** error)  copy;
	extern(C) void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData)  copyAsync;
	extern(C) int function(GFile* file, GAsyncResult* res, GError** error)  copyFinish;
	extern(C) int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** error)  move;
	extern(C) void function()  _MoveAsync;
	extern(C) void function()  _MoveFinish;
	extern(C) void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  mountMountable;
	extern(C) GFile * function(GFile* file, GAsyncResult* result, GError** error)  mountMountableFinish;
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  unmountMountable;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  unmountMountableFinish;
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  ejectMountable;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  ejectMountableFinish;
	extern(C) void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  mountEnclosingVolume;
	extern(C) int function(GFile* location, GAsyncResult* result, GError** error)  mountEnclosingVolumeFinish;
	extern(C) GFileMonitor * function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error)  monitorDir;
	extern(C) GFileMonitor * function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** error)  monitorFile;
	extern(C) GFileIOStream * function(GFile* file, GCancellable* cancellable, GError** error)  openReadwrite;
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  openReadwriteAsync;
	extern(C) GFileIOStream * function(GFile* file, GAsyncResult* res, GError** error)  openReadwriteFinish;
	extern(C) GFileIOStream * function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** error)  createReadwrite;
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  createReadwriteAsync;
	extern(C) GFileIOStream * function(GFile* file, GAsyncResult* res, GError** error)  createReadwriteFinish;
	extern(C) GFileIOStream * function(GFile* file, char* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** error)  replaceReadwrite;
	extern(C) void function(GFile* file, char* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  replaceReadwriteAsync;
	extern(C) GFileIOStream * function(GFile* file, GAsyncResult* res, GError** error)  replaceReadwriteFinish;
	extern(C) void function(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  startMountable;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  startMountableFinish;
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  stopMountable;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  stopMountableFinish;
	int supportsThreadContexts;
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  unmountMountableWithOperation;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  unmountMountableWithOperationFinish;
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  ejectMountableWithOperation;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  ejectMountableWithOperationFinish;
	extern(C) void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  pollMountable;
	extern(C) int function(GFile* file, GAsyncResult* result, GError** error)  pollMountableFinish;
}


/**
 * Information about a specific attribute.
 * char *name;
 * the name of the attribute.
 * GFileAttributeType type;
 * the GFileAttributeType type of the attribute.
 * GFileAttributeInfoFlags flags;
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
 * GFileAttributeInfo *infos;
 * an array of GFileAttributeInfos.
 * int n_infos;
 * the number of values in the array.
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
 * Completes filenames based on files that exist within the file system.
 */
public struct GFilenameCompleter{}


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
 * GTypeInterface g_iface;
 * The parent interface.
 * get_user_data ()
 * Gets the user data passed to the callback.
 * get_source_object ()
 * Gets the source object that issued the asynchronous operation.
 * is_tagged ()
 * Checks if a result is tagged with a particular source.
 */
public struct GAsyncResultIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) void* function(GAsyncResult* res)  getUserData;
	extern(C) GObject * function(GAsyncResult* res)  getSourceObject;
	extern(C) int function(GAsyncResult* res, void* sourceTag)  isTagged;
}


/**
 * Main Gtk struct.
 * The opaque object representing a synchronous or asynchronous task
 * and its result.
 */
public struct GTask{}


/**
 * Main Gtk struct.
 * Opaque class for defining and scheduling IO jobs.
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
 * Since 2.24
 */
public struct GConverter{}


/**
 * Provides an interface for converting data from one type
 * to another type. The conversion can be stateful
 * and may fail at any place.
 * GTypeInterface g_iface;
 * The parent interface.
 * convert ()
 * Converts data.
 * reset ()
 * Reverts the internal state of the converter to its initial state.
 * Since 2.24
 */
public struct GConverterIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GConverterResult function(GConverter* converter, void* inbuf, gsize inbufSize, void* outbuf, gsize outbufSize, GConverterFlags flags, gsize* bytesRead, gsize* bytesWritten, GError** error)  convert;
	extern(C) void function(GConverter* converter)  reset;
}


/**
 * Main Gtk struct.
 * Conversions between character sets.
 */
public struct GCharsetConverter{}


/**
 * Main Gtk struct.
 * Zlib decompression
 */
public struct GZlibCompressor{}


/**
 * Main Gtk struct.
 * Zlib decompression
 */
public struct GZlibDecompressor{}


/**
 * Main Gtk struct.
 * Seek object for streaming operations.
 */
public struct GSeekable{}


/**
 * Provides an interface for implementing seekable functionality on I/O Streams.
 * GTypeInterface g_iface;
 * The parent interface.
 * tell ()
 * Tells the current location within a stream.
 * can_seek ()
 * Checks if seeking is supported by the stream.
 * seek ()
 * Seeks to a location within a stream.
 * can_truncate ()
 * Checks if truncation is supported by the stream.
 * truncate_fn ()
 * Truncates a stream.
 */
public struct GSeekableIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) long function(GSeekable* seekable)  tell;
	extern(C) int function(GSeekable* seekable)  canSeek;
	extern(C) int function(GSeekable* seekable, long offset, GSeekType type, GCancellable* cancellable, GError** error)  seek;
	extern(C) int function(GSeekable* seekable)  canTruncate;
	extern(C) int function(GSeekable* seekable, long offset, GCancellable* cancellable, GError** error)  truncateFn;
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
 * Base class for read-write streams.
 */
public struct GIOStream{}


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
 * A subclass of GIOStream for opened files. This adds
 * a few file-specific operations and seeking and truncating.
 * GFileIOStream implements GSeekable.
 */
public struct GFileIOStream{}


/**
 * Main Gtk struct.
 * An interface for file descriptor based io objects.
 */
public struct GFileDescriptorBased{}


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
 * An implementation of GFilterInputStream that allows data
 * conversion.
 */
public struct GConverterInputStream{}


/**
 * Main Gtk struct.
 * An implementation of GFilterOutputStream that allows data
 * conversion.
 */
public struct GConverterOutputStream{}


/**
 * Main Gtk struct.
 * An interface for a GInputStream that can be polled for readability.
 * Since 2.28
 */
public struct GPollableInputStream{}


/**
 * The interface for pollable input streams.
 * The default implementation of can_poll always returns TRUE.
 * The default implementation of read_nonblocking calls
 * g_pollable_input_stream_is_readable(), and then calls
 * g_input_stream_read() if it returns TRUE. This means you only need
 * to override it if it is possible that your is_readable
 * implementation may return TRUE when the stream is not actually
 * readable.
 * GTypeInterface g_iface;
 * The parent interface.
 * can_poll ()
 * Checks if the GPollableInputStream instance is actually pollable
 * is_readable ()
 * Checks if the stream is readable
 * create_source ()
 * Creates a GSource to poll the stream
 * read_nonblocking ()
 * Does a non-blocking read or returns
 * G_IO_ERROR_WOULD_BLOCK
 * Since 2.28
 */
public struct GPollableInputStreamInterface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) int function(GPollableInputStream* stream) canPoll;
	extern(C) int function(GPollableInputStream* stream) isReadable;
	extern(C) GSource * function(GPollableInputStream* stream, GCancellable* cancellable) createSource;
	extern(C) gssize function(GPollableInputStream* stream, void* buffer, gsize count, GError** error) readNonblocking;
}


/**
 * Main Gtk struct.
 * An interface for a GOutputStream that can be polled for readability.
 * Since 2.28
 */
public struct GPollableOutputStream{}


/**
 * The interface for pollable output streams.
 * The default implementation of can_poll always returns TRUE.
 * The default implementation of write_nonblocking calls
 * g_pollable_output_stream_is_writable(), and then calls
 * g_output_stream_write() if it returns TRUE. This means you only
 * need to override it if it is possible that your is_writable
 * implementation may return TRUE when the stream is not actually
 * writable.
 * GTypeInterface g_iface;
 * The parent interface.
 * can_poll ()
 * Checks if the GPollableOutputStream instance is actually pollable
 * is_writable ()
 * Checks if the stream is writable
 * create_source ()
 * Creates a GSource to poll the stream
 * write_nonblocking ()
 * Does a non-blocking write or returns
 * G_IO_ERROR_WOULD_BLOCK
 * Since 2.28
 */
public struct GPollableOutputStreamInterface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) int function(GPollableOutputStream* stream) canPoll;
	extern(C) int function(GPollableOutputStream* stream) isWritable;
	extern(C) GSource * function(GPollableOutputStream* stream, GCancellable* cancellable) createSource;
	extern(C) gssize function(GPollableOutputStream* stream, void* buffer, gsize count, GError** error) writeNonblocking;
}


/**
 * Main Gtk struct.
 * Information about an installed application and methods to launch
 * it (with file arguments).
 */
public struct GAppInfo{}


/**
 * Application Information interface, for operating system portability.
 * GTypeInterface g_iface;
 * The parent interface.
 * dup ()
 * Copies a GAppInfo.
 * equal ()
 * Checks two GAppInfos for equality.
 * get_id ()
 * Gets a string identifier for a GAppInfo.
 * get_name ()
 * Gets the name of the application for a GAppInfo.
 * get_description ()
 * Gets a short description for the application described by the GAppInfo.
 * get_executable ()
 * Gets the executable name for the GAppInfo.
 * get_icon ()
 * Gets the GIcon for the GAppInfo.
 * launch ()
 * Launches an application specified by the GAppInfo.
 * supports_uris ()
 * Indicates whether the application specified supports launching URIs.
 * supports_files ()
 * Indicates whether the application specified accepts filename arguments.
 * launch_uris ()
 * Launches an application with a list of URIs.
 * should_show ()
 * Returns whether an application should be shown (e.g. when getting a list of installed applications).
 * FreeDesktop.Org Startup Notification Specification.
 * set_as_default_for_type ()
 * Sets an application as default for a given content type.
 * set_as_default_for_extension ()
 * Sets an application as default for a given file extension.
 * add_supports_type ()
 * Adds to the GAppInfo information about supported file types.
 * can_remove_supports_type ()
 * Checks for support for removing supported file types from a GAppInfo.
 * remove_supports_type ()
 * Removes a supported application type from a GAppInfo.
 * can_delete ()
 * Checks if a GAppInfo can be deleted. Since 2.20
 * do_delete ()
 * Deletes a GAppInfo. Since 2.20
 * get_commandline ()
 * Gets the commandline for the GAppInfo. Since 2.20
 * get_display_name ()
 * Gets the display name for the GAppInfo. Since 2.24
 * set_as_last_used_for_type ()
 * Sets the application as the last used. See g_app_info_set_as_last_used_for_type().
 * get_supported_types ()
 */
public struct GAppInfoIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GAppInfo * function(GAppInfo* appinfo)  dup;
	extern(C) int function(GAppInfo* appinfo1, GAppInfo* appinfo2)  equal;
	extern(C) char * function(GAppInfo* appinfo)  getId;
	extern(C) char * function(GAppInfo* appinfo)  getName;
	extern(C) char * function(GAppInfo* appinfo)  getDescription;
	extern(C) char * function(GAppInfo* appinfo)  getExecutable;
	extern(C) GIcon * function(GAppInfo* appinfo)  getIcon;
	extern(C) int function(GAppInfo* appinfo, GList* files, GAppLaunchContext* launchContext, GError** error)  launch;
	extern(C) int function(GAppInfo* appinfo)  supportsUris;
	extern(C) int function(GAppInfo* appinfo)  supportsFiles;
	extern(C) int function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* launchContext, GError** error)  launchUris;
	extern(C) int function(GAppInfo* appinfo)  shouldShow;
	/+* For changing associations +/
	extern(C) int function(GAppInfo* appinfo, char* contentType, GError** error)  setAsDefaultForType;
	extern(C) int function(GAppInfo* appinfo, char* extension, GError** error)  setAsDefaultForExtension;
	extern(C) int function(GAppInfo* appinfo, char* contentType, GError** error)  addSupportsType;
	extern(C) int function(GAppInfo* appinfo)  canRemoveSupportsType;
	extern(C) int function(GAppInfo* appinfo, char* contentType, GError** error)  removeSupportsType;
	extern(C) int function(GAppInfo* appinfo)  canDelete;
	extern(C) int function(GAppInfo* appinfo)  doDelete;
	extern(C) char * function(GAppInfo* appinfo)  getCommandline;
	extern(C) char * function(GAppInfo* appinfo)  getDisplayName;
	extern(C) int function(GAppInfo* appinfo, char* contentType, GError** error)  setAsLastUsedForType;
	extern(C) char ** function(GAppInfo* appinfo)  getSupportedTypes;
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
 * GTypeInterface g_iface;
 * The parent interface.
 * changed ()
 * Changed signal that is emitted when the volume's state has changed.
 * removed ()
 * The removed signal that is emitted when the GVolume have been removed. If the recipient is holding references to the object they should release them so the object can be finalized.
 * get_name ()
 * Gets a string containing the name of the GVolume.
 * get_icon ()
 * Gets a GIcon for the GVolume.
 * get_uuid ()
 * Gets the UUID for the GVolume. The reference is typically based on the file system UUID for the mount in question and should be considered an opaque string. Returns NULL if there is no UUID available.
 * get_drive ()
 * Gets a GDrive the volume is located on. Returns NULL if the GVolume is not associated with a GDrive.
 * get_mount ()
 * Gets a GMount representing the mounted volume. Returns NULL if the GVolume is not mounted.
 * can_mount ()
 * Returns TRUE if the GVolume can be mounted.
 * can_eject ()
 * Checks if a GVolume can be ejected.
 * mount_fn ()
 * Mounts a given GVolume.
 * GVolume implementations must emit the "aborted"
 * signal before completing a mount operation that is aborted while
 * awaiting input from the user through a GMountOperation instance.
 * mount_finish ()
 * Finishes a mount operation.
 * eject ()
 * Ejects a given GVolume.
 * eject_finish ()
 * Finishes an eject operation.
 * get_identifier ()
 * Returns the identifier of the given kind, or NULL if
 * the GVolume doesn't have one.
 * enumerate_identifiers ()
 * Returns an array strings listing the kinds
 * of identifiers which the GVolume has.
 * should_automount ()
 * Returns TRUE if the GVolume should be automatically mounted.
 * get_activation_root ()
 * Returns the activation root for the GVolume if it is known in advance or NULL if
 * it is not known.
 * eject_with_operation ()
 * Starts ejecting a GVolume using a GMountOperation. Since 2.22.
 * eject_with_operation_finish ()
 * Finishes an eject operation using a GMountOperation. Since 2.22.
 * get_sort_key ()
 * Gets a key used for sorting GVolume instance or NULL if no such key exists. Since 2.32.
 * get_symbolic_icon ()
 * Gets a symbolic GIcon for the GVolume. Since 2.34.
 */
public struct GVolumeIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void function(GVolume* volume)  changed;
	extern(C) void function(GVolume* volume)  removed;
	/+* Virtual Table +/
	extern(C) char * function(GVolume* volume)  getName;
	extern(C) GIcon * function(GVolume* volume)  getIcon;
	extern(C) char * function(GVolume* volume)  getUuid;
	extern(C) GDrive * function(GVolume* volume)  getDrive;
	extern(C) GMount * function(GVolume* volume)  getMount;
	extern(C) int function(GVolume* volume)  canMount;
	extern(C) int function(GVolume* volume)  canEject;
	extern(C) void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  mountFn;
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** error)  mountFinish;
	extern(C) void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  eject;
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** error)  ejectFinish;
	extern(C) char * function(GVolume* volume, char* kind)  getIdentifier;
	extern(C) char ** function(GVolume* volume)  enumerateIdentifiers;
	extern(C) int function(GVolume* volume)  shouldAutomount;
	extern(C) GFile * function(GVolume* volume)  getActivationRoot;
	extern(C) void function(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  ejectWithOperation;
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** error)  ejectWithOperationFinish;
	extern(C) char * function(GVolume* volume)  getSortKey;
	extern(C) GIcon * function(GVolume* volume)  getSymbolicIcon;
}


/**
 * Main Gtk struct.
 * A handle to an object implementing the GMountIface interface.
 */
public struct GMount{}


/**
 * Interface for implementing operations for mounts.
 * GTypeInterface g_iface;
 * The parent interface.
 * changed ()
 * Changed signal that is emitted when the mount's state has changed.
 * unmounted ()
 * The unmounted signal that is emitted when the GMount have been unmounted. If the recipient is holding references to the object they should release them so the object can be finalized.
 * get_root ()
 * Gets a GFile to the root directory of the GMount.
 * get_name ()
 * Gets a string containing the name of the GMount.
 * get_icon ()
 * Gets a GIcon for the GMount.
 * get_uuid ()
 * Gets the UUID for the GMount. The reference is typically based on the file system UUID for the mount in question and should be considered an opaque string. Returns NULL if there is no UUID available.
 * get_volume ()
 * Gets a GVolume the mount is located on. Returns NULL if the GMount is not associated with a GVolume.
 * get_drive ()
 * Gets a GDrive the volume of the mount is located on. Returns NULL if the GMount is not associated with a GDrive or a GVolume. This is convenience method for getting the GVolume and using that to get the GDrive.
 * can_unmount ()
 * Checks if a GMount can be unmounted.
 * can_eject ()
 * Checks if a GMount can be ejected.
 * unmount ()
 * Starts unmounting a GMount.
 * unmount_finish ()
 * Finishes an unmounting operation.
 * eject ()
 * Starts ejecting a GMount.
 * eject_finish ()
 * Finishes an eject operation.
 * remount ()
 * Starts remounting a GMount.
 * remount_finish ()
 * Finishes a remounting operation.
 * guess_content_type ()
 * Starts guessing the type of the content of a GMount.
 * See g_mount_guess_content_type() for more information on content
 * type guessing. This operation was added in 2.18.
 * guess_content_type_finish ()
 * Finishes a content type guessing operation. Added in 2.18.
 * guess_content_type_sync ()
 * Synchronous variant of guess_content_type. Added in 2.18
 * pre_unmount ()
 * The ::pre-unmount signal that is emitted when the GMount will soon be emitted. If the recipient is somehow holding the mount open by keeping an open file on it it should close the file.
 * unmount_with_operation ()
 * Starts unmounting a GMount using a GMountOperation. Since 2.22.
 * unmount_with_operation_finish ()
 * Finishes an unmounting operation using a GMountOperation. Since 2.22.
 * eject_with_operation ()
 * Starts ejecting a GMount using a GMountOperation. Since 2.22.
 * eject_with_operation_finish ()
 * Finishes an eject operation using a GMountOperation. Since 2.22.
 * get_default_location ()
 * Gets a GFile indication a start location that can be use as the entry point for this mount. Since 2.24.
 * get_sort_key ()
 * Gets a key used for sorting GMount instance or NULL if no such key exists. Since 2.32.
 * get_symbolic_icon ()
 * Gets a symbolic GIcon for the GMount. Since 2.34.
 */
public struct GMountIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void function(GMount* mount)  changed;
	extern(C) void function(GMount* mount)  unmounted;
	/+* Virtual Table +/
	extern(C) GFile * function(GMount* mount)  getRoot;
	extern(C) char * function(GMount* mount)  getName;
	extern(C) GIcon * function(GMount* mount)  getIcon;
	extern(C) char * function(GMount* mount)  getUuid;
	extern(C) GVolume * function(GMount* mount)  getVolume;
	extern(C) GDrive * function(GMount* mount)  getDrive;
	extern(C) int function(GMount* mount)  canUnmount;
	extern(C) int function(GMount* mount)  canEject;
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  unmount;
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** error)  unmountFinish;
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  eject;
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** error)  ejectFinish;
	extern(C) void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  remount;
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** error)  remountFinish;
	extern(C) void function(GMount* mount, int forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  guessContentType;
	extern(C) char ** function(GMount* mount, GAsyncResult* result, GError** error)  guessContentTypeFinish;
	extern(C) char ** function(GMount* mount, int forceRescan, GCancellable* cancellable, GError** error)  guessContentTypeSync;
	/+* Signal, not VFunc +/
	extern(C) void function(GMount* mount)  preUnmount;
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  unmountWithOperation;
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** error)  unmountWithOperationFinish;
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  ejectWithOperation;
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** error)  ejectWithOperationFinish;
	extern(C) GFile * function(GMount* mount)  getDefaultLocation;
	extern(C) char * function(GMount* mount)  getSortKey;
	extern(C) GIcon * function(GMount* mount)  getSymbolicIcon;
}


/**
 * Main Gtk struct.
 * Opaque drive object.
 */
public struct GDrive{}


/**
 * Interface for creating GDrive implementations.
 * GTypeInterface g_iface;
 * The parent interface.
 * changed ()
 * Signal emitted when the drive is changed.
 * disconnected ()
 * The removed signal that is emitted when the GDrive have been disconnected. If the recipient is holding references to the object they should release them so the object can be finalized.
 * eject_button ()
 * Signal emitted when the physical eject button (if any) of a drive have been pressed.
 * get_name ()
 * Returns the name for the given GDrive.
 * get_icon ()
 * Returns a GIcon for the given GDrive.
 * has_volumes ()
 * Returns TRUE if the GDrive has mountable volumes.
 * get_volumes ()
 * Returns a list GList of GVolume for the GDrive.
 * is_media_removable ()
 * Returns TRUE if the GDrive supports removal and insertion of media.
 * has_media ()
 * Returns TRUE if the GDrive has media inserted.
 * is_media_check_automatic ()
 * Returns TRUE if the GDrive is capabable of automatically detecting media changes.
 * can_eject ()
 * Returns TRUE if the GDrive can eject media.
 * can_poll_for_media ()
 * Returns TRUE if the GDrive is capable of manually polling for media change.
 * eject ()
 * Ejects a GDrive.
 * eject_finish ()
 * Finishes an eject operation.
 * poll_for_media ()
 * Poll for media insertion/removal on a GDrive.
 * poll_for_media_finish ()
 * Finishes a media poll operation.
 * get_identifier ()
 * Returns the identifier of the given kind, or NULL if
 * the GDrive doesn't have one.
 * enumerate_identifiers ()
 * Returns an array strings listing the kinds
 * of identifiers which the GDrive has.
 * get_start_stop_type ()
 * Gets a GDriveStartStopType with details about starting/stopping the drive. Since 2.22.
 * can_start ()
 * Returns TRUE if a GDrive can be started. Since 2.22.
 * can_start_degraded ()
 * Returns TRUE if a GDrive can be started degraded. Since 2.22.
 * start ()
 * Starts a GDrive. Since 2.22.
 * start_finish ()
 * Finishes a start operation. Since 2.22.
 * can_stop ()
 * Returns TRUE if a GDrive can be stopped. Since 2.22.
 * stop ()
 * Stops a GDrive. Since 2.22.
 * stop_finish ()
 * Finishes a stop operation. Since 2.22.
 * stop_button ()
 * Signal emitted when the physical stop button (if any) of a drive have been pressed. Since 2.22.
 * eject_with_operation ()
 * Starts ejecting a GDrive using a GMountOperation. Since 2.22.
 * eject_with_operation_finish ()
 * Finishes an eject operation using a GMountOperation. Since 2.22.
 * get_sort_key ()
 * Gets a key used for sorting GDrive instances or NULL if no such key exists. Since 2.32.
 * get_symbolic_icon ()
 * Returns a symbolic GIcon for the given GDrive. Since 2.34.
 */
public struct GDriveIface
{
	GTypeInterface gIface;
	/+* signals +/
	extern(C) void function(GDrive* drive)  changed;
	extern(C) void function(GDrive* drive)  disconnected;
	extern(C) void function(GDrive* drive)  ejectButton;
	/+* Virtual Table +/
	extern(C) char * function(GDrive* drive)  getName;
	extern(C) GIcon * function(GDrive* drive)  getIcon;
	extern(C) int function(GDrive* drive)  hasVolumes;
	extern(C) GList * function(GDrive* drive)  getVolumes;
	extern(C) int function(GDrive* drive)  isMediaRemovable;
	extern(C) int function(GDrive* drive)  hasMedia;
	extern(C) int function(GDrive* drive)  isMediaCheckAutomatic;
	extern(C) int function(GDrive* drive)  canEject;
	extern(C) int function(GDrive* drive)  canPollForMedia;
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  eject;
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** error)  ejectFinish;
	extern(C) void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  pollForMedia;
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** error)  pollForMediaFinish;
	extern(C) char * function(GDrive* drive, char* kind)  getIdentifier;
	extern(C) char ** function(GDrive* drive)  enumerateIdentifiers;
	extern(C) GDriveStartStopType function(GDrive* drive)  getStartStopType;
	extern(C) int function(GDrive* drive)  canStart;
	extern(C) int function(GDrive* drive)  canStartDegraded;
	extern(C) void function(GDrive* drive, GDriveStartFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  start;
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** error)  startFinish;
	extern(C) int function(GDrive* drive)  canStop;
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  stop;
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** error)  stopFinish;
	/+* signal, not VFunc +/
	extern(C) void function(GDrive* drive)  stopButton;
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  ejectWithOperation;
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** error)  ejectWithOperationFinish;
	extern(C) char * function(GDrive* drive)  getSortKey;
	extern(C) GIcon * function(GDrive* drive)  getSymbolicIcon;
}


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
 * GTypeInterface g_iface;
 * The parent interface.
 * hash ()
 * A hash for a given GIcon.
 * equal ()
 * Checks if two GIcons are equal.
 * to_tokens ()
 * Serializes a GIcon into tokens. The tokens must not
 * contain any whitespace. Don't implement if the GIcon can't be
 * serialized (Since 2.20).
 * from_tokens ()
 * Constructs a GIcon from tokens. Set the GError if
 * the tokens are malformed. Don't implement if the GIcon can't be
 * serialized (Since 2.20).
 */
public struct GIconIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) uint function(GIcon* icon)  hash;
	extern(C) int function(GIcon* icon1, GIcon* icon2)  equal;
	extern(C) int function(GIcon* icon, GPtrArray* tokens, int* outVersion)  toTokens;
	extern(C) GIcon * function(char** tokens, int numTokens, int versio, GError** error)  fromTokens;
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
 * GTypeInterface g_iface;
 * The parent interface.
 * load ()
 * Loads an icon.
 * load_async ()
 * Loads an icon asynchronously.
 * load_finish ()
 * Finishes an asynchronous icon load.
 */
public struct GLoadableIconIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GInputStream * function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** error)  load;
	extern(C) void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  loadAsync;
	extern(C) GInputStream * function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** error)  loadFinish;
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
 * Interface for initializable objects.
 * Since 2.22
 */
public struct GInitable{}


/**
 * Provides an interface for initializing object such that initialization
 * may fail.
 * GTypeInterface g_iface;
 * The parent interface.
 * init ()
 * Initializes the object.
 * Since 2.22
 */
public struct GInitableIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) int function(GInitable* initable, GCancellable* cancellable, GError** error)  init;
}


/**
 * Main Gtk struct.
 * Interface for asynchronously initializable objects.
 * Since 2.22
 */
public struct GAsyncInitable{}


/**
 * Provides an interface for asynchronous initializing object such that
 * initialization may fail.
 * GTypeInterface g_iface;
 * The parent interface.
 * init_async ()
 * Starts initialization of the object.
 * init_finish ()
 * Finishes initialization of the object.
 * Since 2.22
 */
public struct GAsyncInitableIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) void function(GAsyncInitable* initable, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  initAsync;
	extern(C) int function(GAsyncInitable* initable, GAsyncResult* res, GError** error)  initFinish;
}


/**
 * Main Gtk struct.
 * A lowlevel network socket object.
 * Since 2.22
 */
public struct GSocket{}


/**
 * Structure used for scatter/gather data input.
 * You generally pass in an array of GInputVectors
 * and the operation will store the read data starting in the
 * first buffer, switching to the next as needed.
 * gpointer buffer;
 * Pointer to a buffer where data will be written.
 * gsize size;
 * the available size in buffer.
 * Since 2.22
 */
public struct GInputVector
{
	void* buffer;
	gsize size;
}


/**
 * Structure used for scatter/gather data output.
 * You generally pass in an array of GOutputVectors
 * and the operation will use all the buffers as if they were
 * one buffer.
 * gconstpointer buffer;
 * Pointer to a buffer of data to read.
 * gsize size;
 * the size of buffer.
 * Since 2.22
 */
public struct GOutputVector
{
	void* buffer;
	gsize size;
}


/**
 * Main Gtk struct.
 * An IPv4 or IPv6 internet address.
 */
public struct GInetAddress{}


/**
 * Main Gtk struct.
 * A combination of an IPv4 or IPv6 base address and a length,
 * representing a range of IP addresses.
 * Since 2.32
 */
public struct GInetAddressMask
{
	GObject parentInstance;
}


/**
 * Main Gtk struct.
 * A socket endpoint address, corresponding to struct sockaddr
 * or one of its subtypes.
 */
public struct GSocketAddress{}


/**
 * Main Gtk struct.
 * An IPv4 or IPv6 socket address, corresponding to a struct
 * sockaddr_in or struct sockaddr_in6.
 */
public struct GInetSocketAddress{}


/**
 * Main Gtk struct.
 * A UNIX-domain (local) socket address, corresponding to a
 * struct sockaddr_un.
 */
public struct GUnixSocketAddress{}


/**
 * Main Gtk struct.
 * Base class for socket-type specific control messages that can be sent and
 * received over GSocket.
 */
public struct GSocketControlMessage{}


/**
 * Main Gtk struct.
 */
public struct GUnixFDList{}


/**
 * Main Gtk struct.
 */
public struct GUnixFDMessage{}


/**
 * Main Gtk struct.
 * The GCredentials structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GCredentials{}


/**
 * Main Gtk struct.
 * The GUnixCredentialsMessage structure contains only private data
 * and should only be accessed using the provided API.
 * Since 2.26
 */
public struct GUnixCredentialsMessage{}


/**
 * Class structure for GUnixCredentialsMessage.
 * Since 2.26
 */
public struct GUnixCredentialsMessageClass
{
	GSocketControlMessageClass parentClass;
}


/**
 * Main Gtk struct.
 * Interface that handles proxy connection and payload.
 * Since 2.26
 */
public struct GProxy{}


/**
 * Provides an interface for handling proxy connection and payload.
 * GTypeInterface g_iface;
 * The parent interface.
 * connect ()
 * Connect to proxy server and wrap (if required) the connection
 * to handle payload.
 * connect_async ()
 * Same as connect() but asynchronous.
 * connect_finish ()
 * Returns the result of connect_async()
 * supports_hostname ()
 * Returns whether the proxy supports hostname lookups.
 * Since 2.26
 */
public struct GProxyInterface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GIOStream * function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GError** error)  connect;
	extern(C) void function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  connectAsync;
	extern(C) GIOStream * function(GProxy* proxy, GAsyncResult* result, GError** error)  connectFinish;
	extern(C) int function(GProxy* proxy)  supportsHostname;
}


/**
 * Main Gtk struct.
 * A GInetSocketAddress representing a connection via a proxy server
 * Since 2.26
 */
public struct GProxyAddress{}


public struct GProxyAddressClass
{
	GInetSocketAddressClass parentClass;
}


/**
 * Main Gtk struct.
 * A helper class for network clients to make connections.
 * Since 2.22
 */
public struct GSocketClient{}


/**
 * Main Gtk struct.
 * A socket connection GIOStream object for connection-oriented sockets.
 * Since 2.22
 */
public struct GSocketConnection{}


/**
 * Main Gtk struct.
 */
public struct GUnixConnection{}


/**
 * Main Gtk struct.
 * A GSocketConnection for TCP/IP connections.
 * Since 2.22
 */
public struct GTcpConnection{}


/**
 * Main Gtk struct.
 * A helper class for network servers to listen for and accept connections.
 * Since 2.22
 */
public struct GSocketListener{}


/**
 * Main Gtk struct.
 * A helper class for handling accepting incomming connections in the
 * glib mainloop.
 * Since 2.22
 */
public struct GSocketService{}


/**
 * Main Gtk struct.
 * A helper class for handling accepting incoming connections in the
 * glib mainloop and handling them in a thread.
 * Since 2.22
 */
public struct GThreadedSocketService{}


/**
 * Main Gtk struct.
 * GNetworkMonitor monitors the status of network connections and
 * indicates when a possibly-user-visible change has occurred.
 * Since 2.32
 */
public struct GNetworkMonitor{}


public struct GNetworkMonitorInterface
{
	GTypeInterface gIface;
	extern(C) void function(GNetworkMonitor* monitor, int available) networkChanged;
	extern(C) int function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GError** error) canReach;
	extern(C) void function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) canReachAsync;
	extern(C) int function(GNetworkMonitor* monitor, GAsyncResult* result, GError** error) canReachFinish;
}


/**
 * Main Gtk struct.
 * Abstract base class for TLS certificate types.
 * Since 2.28
 */
public struct GTlsCertificate{}


/**
 * Main Gtk struct.
 * Abstract base class for the backend-specific GTlsClientConnection
 * and GTlsServerConnection types.
 * Since 2.28
 */
public struct GTlsConnection{}


/**
 * Main Gtk struct.
 * Abstract base class for the backend-specific client connection
 * type.
 * Since 2.28
 */
public struct GTlsClientConnection{}


public struct GTlsClientConnectionInterface
{
	GTypeInterface gIface;
}


/**
 * Main Gtk struct.
 * TLS server-side connection. This is the server-side implementation
 * of a GTlsConnection.
 * Since 2.28
 */
public struct GTlsServerConnection{}


public struct GTlsServerConnectionInterface
{
	GTypeInterface gIface;
}


/**
 * Main Gtk struct.
 * TLS (Transport Layer Security, aka SSL) backend. This is an
 * internal type used to coordinate the different classes implemented
 * by a TLS backend.
 * Since 2.28
 */
public struct GTlsBackend{}


/**
 * Provides an interface for describing TLS-related types.
 * GTypeInterface g_iface;
 * The parent interface.
 * supports_tls ()
 * returns whether the backend supports TLS.
 * get_certificate_type ()
 * returns the GTlsCertificate implementation type
 * get_client_connection_type ()
 * returns the GTlsClientConnection implementation type
 * get_server_connection_type ()
 * returns the GTlsServerConnection implementation type
 * get_file_database_type ()
 * returns the GTlsFileDatabase implementation type.
 * get_default_database ()
 * returns a default GTlsDatabase instance.
 * Since 2.28
 */
public struct GTlsBackendInterface
{
	GTypeInterface gIface;
	/+* methods +/
	extern(C) int function(GTlsBackend* backend) supportsTls;
	extern(C) GType function() getCertificateType;
	extern(C) GType function() getClientConnectionType;
	extern(C) GType function() getServerConnectionType;
	extern(C) GType function() getFileDatabaseType;
	extern(C) GTlsDatabase * function(GTlsBackend* backend) getDefaultDatabase;
}


/**
 * Main Gtk struct.
 * Abstract base class for the backend-specific database types.
 * Since 2.30
 */
public struct GTlsDatabase{}


/**
 * Main Gtk struct.
 * Implemented by a GTlsDatabase which allows you to load certificates
 * from a file.
 * Since 2.30
 */
public struct GTlsFileDatabase{}


/**
 * Provides an interface for GTlsFileDatabase implementations.
 * GTypeInterface g_iface;
 * The parent interface.
 */
public struct GTlsFileDatabaseInterface
{
	GTypeInterface gIface;
}


/**
 * Main Gtk struct.
 * An object representing interaction that the TLS connection and database
 * might have with the user.
 * Since 2.30
 */
public struct GTlsInteraction{}


/**
 * Main Gtk struct.
 * An abstract interface representing a password used in TLS. Often used in
 * user interaction such as unlocking a key storage token.
 * Since 2.30
 */
public struct GTlsPassword{}


public struct GTlsPasswordClass
{
	GObjectClass parentClass;
	/+* methods +/
	extern(C) char * function(GTlsPassword* password, gsize* length) getValue;
	extern(C) void function(GTlsPassword* password, char* value, gssize length, GDestroyNotify destroy) setValue;
	extern(C) char* function(GTlsPassword* password) getDefaultWarning;
}


/**
 * Main Gtk struct.
 * The object that handles DNS resolution. Use g_resolver_get_default()
 * to get the default resolver.
 */
public struct GResolver{}


/**
 * Main Gtk struct.
 * A helper class to enumerate proxies base on URI.
 * Since 2.26
 */
public struct GProxyResolver{}


public struct GProxyResolverInterface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) int function(GProxyResolver* resolver)  isSupported;
	extern(C) char ** function(GProxyResolver* resolver, char* uri, GCancellable* cancellable, GError** error)  lookup;
	extern(C) void function(GProxyResolver* resolver, char* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData)  lookupAsync;
	extern(C) char ** function(GProxyResolver* resolver, GAsyncResult* result, GError** error)  lookupFinish;
}


/**
 * Main Gtk struct.
 * A GProxyResolver implementation for using a fixed set of proxies.
 */
public struct GSimpleProxyResolver{}


/**
 * Main Gtk struct.
 * Interface for objects that contain or generate GSocketAddresses.
 */
public struct GSocketConnectable{}


/**
 * Provides an interface for returning a GSocketAddressEnumerator
 * and GProxyAddressEnumerator
 * GTypeInterface g_iface;
 * The parent interface.
 * enumerate ()
 * Creates a GSocketAddressEnumerator
 * proxy_enumerate ()
 * Creates a GProxyAddressEnumerator
 */
public struct GSocketConnectableIface
{
	GTypeInterface gIface;
	/+* Virtual Table +/
	extern(C) GSocketAddressEnumerator * function(GSocketConnectable* connectable)  enumerate;
	extern(C) GSocketAddressEnumerator * function(GSocketConnectable* connectable)  proxyEnumerate;
}


/**
 * Enumerator type for objects that contain or generate
 * GSocketAddresses.
 */
public struct GSocketAddressEnumerator{}


/**
 * A subclass of GSocketAddressEnumerator that takes another address
 * enumerator and wraps its results in GProxyAddresses as
 * directed by the default GProxyResolver.
 * Property Details
 * The "connectable" property
 */
public struct GProxyAddressEnumerator{}


/**
 * Main Gtk struct.
 * A GSocketConnectable for resolving a hostname and connecting to
 * that host.
 */
public struct GNetworkAddress{}


/**
 * Main Gtk struct.
 * A GSocketConnectable for resolving a SRV record and connecting to
 * that service.
 */
public struct GNetworkService{}


/**
 * Main Gtk struct.
 * A single target host/port that a network service is running on.
 */
public struct GSrvTarget{}


/**
 * Main Gtk struct.
 * Information about an annotation.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *key;
 * The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
 * gchar *value;
 * The value of the annotation.
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusAnnotationInfo
{
	int refCount;
	char *key;
	char *value;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about an argument for a method or a signal.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *name;
 * Name of the argument, e.g. unix_user_id.
 * gchar *signature;
 * D-Bus signature of the argument (a single complete type).
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusArgInfo
{
	int refCount;
	char *name;
	char *signature;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about a method on an D-Bus interface.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *name;
 * The name of the D-Bus method, e.g. RequestName.
 * GDBusArgInfo **in_args;
 * A pointer to a NULL-terminated array of pointers to GDBusArgInfo structures or NULL if there are no in arguments. [array zero-terminated=1]
 * GDBusArgInfo **out_args;
 * A pointer to a NULL-terminated array of pointers to GDBusArgInfo structures or NULL if there are no out arguments. [array zero-terminated=1]
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusMethodInfo
{
	int refCount;
	char *name;
	GDBusArgInfo **inArgs;
	GDBusArgInfo **outArgs;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about a signal on a D-Bus interface.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *name;
 * The name of the D-Bus signal, e.g. "NameOwnerChanged".
 * GDBusArgInfo **args;
 * A pointer to a NULL-terminated array of pointers to GDBusArgInfo structures or NULL if there are no arguments. [array zero-terminated=1]
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusSignalInfo
{
	int refCount;
	char *name;
	GDBusArgInfo **args;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about a D-Bus property on a D-Bus interface.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *name;
 * The name of the D-Bus property, e.g. "SupportedFilesystems".
 * gchar *signature;
 * The D-Bus signature of the property (a single complete type).
 * GDBusPropertyInfoFlags flags;
 * Access control flags for the property.
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusPropertyInfo
{
	int refCount;
	char *name;
	char *signature;
	GDBusPropertyInfoFlags flags;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about a D-Bus interface.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *name;
 * The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
 * GDBusMethodInfo **methods;
 * A pointer to a NULL-terminated array of pointers to GDBusMethodInfo structures or NULL if there are no methods. [array zero-terminated=1]
 * GDBusSignalInfo **signals;
 * A pointer to a NULL-terminated array of pointers to GDBusSignalInfo structures or NULL if there are no signals. [array zero-terminated=1]
 * GDBusPropertyInfo **properties;
 * A pointer to a NULL-terminated array of pointers to GDBusPropertyInfo structures or NULL if there are no properties. [array zero-terminated=1]
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusInterfaceInfo
{
	int refCount;
	char *name;
	GDBusMethodInfo **methods;
	GDBusSignalInfo **signals;
	GDBusPropertyInfo **properties;
	GDBusAnnotationInfo **annotations;
}


/**
 * Information about nodes in a remote object hierarchy.
 * volatile gint ref_count;
 * The reference count or -1 if statically allocated.
 * gchar *path;
 * The path of the node or NULL if omitted. Note that this may be a relative path. See the D-Bus specification for more details.
 * GDBusInterfaceInfo **interfaces;
 * A pointer to a NULL-terminated array of pointers to GDBusInterfaceInfo structures or NULL if there are no interfaces. [array zero-terminated=1]
 * GDBusNodeInfo **nodes;
 * A pointer to a NULL-terminated array of pointers to GDBusNodeInfo structures or NULL if there are no nodes. [array zero-terminated=1]
 * GDBusAnnotationInfo **annotations;
 * A pointer to a NULL-terminated array of pointers to GDBusAnnotationInfo structures or NULL if there are no annotations. [array zero-terminated=1]
 * Since 2.26
 */
public struct GDBusNodeInfo
{
	int refCount;
	char *path;
	GDBusInterfaceInfo **interfaces;
	GDBusNodeInfo **nodes;
	GDBusAnnotationInfo **annotations;
}


/**
 * Struct used in g_dbus_error_register_error_domain().
 * gint error_code;
 * An error code.
 * const gchar *dbus_error_name;
 * The D-Bus error name to associate with error_code.
 * Since 2.26
 */
public struct GDBusErrorEntry
{
	int errorCode;
	char *dbusErrorName;
}


/**
 * Main Gtk struct.
 * The GDBusMessage structure contains only private data and should
 * only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusMessage{}


/**
 * Main Gtk struct.
 * The GDBusConnection structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusConnection{}


/**
 * Virtual table for handling properties and method calls for a D-Bus
 * interface.
 * If you want to handle getting/setting D-Bus properties asynchronously, simply
 * register an object with the org.freedesktop.DBus.Properties
 * D-Bus interface using g_dbus_connection_register_object().
 * GDBusInterfaceMethodCallFunc method_call;
 * Function for handling incoming method calls.
 * GDBusInterfaceGetPropertyFunc get_property;
 * Function for getting a property.
 * GDBusInterfaceSetPropertyFunc set_property;
 * Function for setting a property.
 * Since 2.26
 */
public struct GDBusInterfaceVTable
{
	GDBusInterfaceMethodCallFunc methodCall;
	GDBusInterfaceGetPropertyFunc getProperty;
	GDBusInterfaceSetPropertyFunc setProperty;
}


/**
 * Virtual table for handling subtrees registered with g_dbus_connection_register_subtree().
 * GDBusSubtreeEnumerateFunc enumerate;
 * Function for enumerating child nodes.
 * GDBusSubtreeIntrospectFunc introspect;
 * Function for introspecting a child node.
 * GDBusSubtreeDispatchFunc dispatch;
 * Function for dispatching a remote call on a child node.
 * Since 2.26
 */
public struct GDBusSubtreeVTable
{
	GDBusSubtreeEnumerateFunc enumerate;
	GDBusSubtreeIntrospectFunc introspect;
	GDBusSubtreeDispatchFunc dispatch;
}


/**
 * Main Gtk struct.
 * The GDBusMethodInvocation structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusMethodInvocation{}


/**
 * Main Gtk struct.
 * The GDBusServer structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusServer{}


/**
 * Main Gtk struct.
 * The GDBusAuthObserver structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusAuthObserver{}


/**
 * Main Gtk struct.
 * Base type for D-Bus interfaces.
 * Since 2.30
 */
public struct GDBusInterface{}


/**
 * Base type for D-Bus interfaces.
 * GTypeInterface parent_iface;
 * The parent interface.
 * get_info ()
 * Returns a GDBusInterfaceInfo. See g_dbus_interface_get_info().
 * get_object ()
 * Gets the enclosing GDBusObject. See g_dbus_interface_get_object().
 * set_object ()
 * Sets the enclosing GDBusObject. See g_dbus_interface_set_object().
 * dup_object ()
 * Gets a reference to the enclosing GDBusObject. See g_dbus_interface_dup_object(). Added in 2.32.
 * Since 2.30
 */
public struct GDBusInterfaceIface
{
	GTypeInterface parentIface;
	/+* Virtual Functions +/
	extern(C) GDBusInterfaceInfo * function(GDBusInterface* iface) getInfo;
	extern(C) GDBusObject * function(GDBusInterface* iface) getObject;
	extern(C) void function(GDBusInterface* iface, GDBusObject* object) setObject;
	extern(C) GDBusObject * function(GDBusInterface* iface) dupObject;
}


/**
 * Main Gtk struct.
 * The GDBusInterfaceSkeleton structure contains private data and should
 * only be accessed using the provided API.
 * Since 2.30
 */
public struct GDBusInterfaceSkeleton{}


/**
 * Class structure for GDBusInterfaceSkeleton.
 * GObjectClass parent_class;
 * The parent class.
 * get_info ()
 * Returns a GDBusInterfaceInfo. See g_dbus_interface_skeleton_get_info() for details.
 * get_vtable ()
 * Returns a GDBusInterfaceVTable. See g_dbus_interface_skeleton_get_vtable() for details.
 * get_properties ()
 * Returns a GVariant with all properties. See g_dbus_interface_skeleton_get_properties().
 * flush ()
 * Emits outstanding changes, if any. See g_dbus_interface_skeleton_flush().
 * g_authorize_method ()
 * Signal class handler for the "g-authorize-method" signal.
 * Since 2.30
 */
public struct GDBusInterfaceSkeletonClass
{
	GObjectClass parentClass;
	/+* Virtual Functions +/
	extern(C) GDBusInterfaceInfo * function(GDBusInterfaceSkeleton* iface) getInfo;
	extern(C) GDBusInterfaceVTable * function(GDBusInterfaceSkeleton* iface) getVtable;
	extern(C) GVariant * function(GDBusInterfaceSkeleton* iface) getProperties;
	extern(C) void function(GDBusInterfaceSkeleton* iface) flush;
	/+* Signals +/
	extern(C) int function(GDBusInterfaceSkeleton* iface, GDBusMethodInvocation* invocation) gAuthorizeMethod;
}


/**
 * Main Gtk struct.
 * The GDBusProxy structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.26
 */
public struct GDBusProxy{}


/**
 * Class structure for GDBusProxy.
 * g_properties_changed ()
 * Signal class handler for the "g-properties-changed" signal.
 * g_signal ()
 * Signal class handler for the "g-signal" signal.
 * Since 2.26
 */
public struct GDBusProxyClass
{
	/+* Signals +/
	extern(C) void function(GDBusProxy* proxy, GVariant* changedProperties, char** invalidatedProperties) gPropertiesChanged;
	extern(C) void function(GDBusProxy* proxy, char* senderName, char* signalName, GVariant* parameters) gSignal;
}


/**
 * Main Gtk struct.
 */
public struct GDBusObject{}


/**
 * Base object type for D-Bus objects.
 * GTypeInterface parent_iface;
 * The parent interface.
 * get_object_path ()
 * Returns the object path. See g_dbus_object_get_object_path().
 * get_interfaces ()
 * Returns all interfaces. See g_dbus_object_get_interfaces().
 * get_interface ()
 * Returns an interface by name. See g_dbus_object_get_interface().
 * interface_added ()
 * Signal handler for the "interface-added" signal.
 * interface_removed ()
 * Signal handler for the "interface-removed" signal.
 * Since 2.30
 */
public struct GDBusObjectIface
{
	GTypeInterface parentIface;
	/+* Virtual Functions +/
	extern(C) char * function(GDBusObject* object) getObjectPath;
	extern(C) GList * function(GDBusObject* object) getInterfaces;
	extern(C) GDBusInterface * function(GDBusObject* object, char* interfaceName) getInterface;
	/+* Signals +/
	extern(C) void function(GDBusObject* object, GDBusInterface* iface) interfaceAdded;
	extern(C) void function(GDBusObject* object, GDBusInterface* iface) interfaceRemoved;
}


/**
 * Main Gtk struct.
 * The GDBusObjectSkeleton structure contains private data and should only be
 * accessed using the provided API.
 * Since 2.30
 */
public struct GDBusObjectSkeleton{}


/**
 * Class structure for GDBusObjectSkeleton.
 * GObjectClass parent_class;
 * The parent class.
 * authorize_method ()
 * Signal class handler for the "authorize-method" signal.
 * Since 2.30
 */
public struct GDBusObjectSkeletonClass
{
	GObjectClass parentClass;
	/+* Signals +/
	extern(C) int function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* iface, GDBusMethodInvocation* invocation) authorizeMethod;
}


/**
 * Main Gtk struct.
 * The GDBusObjectProxy structure contains private data and should
 * only be accessed using the provided API.
 * Since 2.30
 */
public struct GDBusObjectProxy{}


/**
 * Class structure for GDBusObjectProxy.
 * GObjectClass parent_class;
 * The parent class.
 * Since 2.30
 */
public struct GDBusObjectProxyClass
{
	GObjectClass parentClass;
}


/**
 * Main Gtk struct.
 */
public struct GDBusObjectManager{}


/**
 * Base type for D-Bus object managers.
 * GTypeInterface parent_iface;
 * The parent interface.
 * get_object_path ()
 * Virtual function for g_dbus_object_manager_get_object_path().
 * get_objects ()
 * Virtual function for g_dbus_object_manager_get_objects().
 * get_object ()
 * Virtual function for g_dbus_object_manager_get_object().
 * get_interface ()
 * Virtual function for g_dbus_object_manager_get_interface().
 * object_added ()
 * Signal handler for the "object-added" signal.
 * object_removed ()
 * Signal handler for the "object-removed" signal.
 * interface_added ()
 * Signal handler for the "interface-added" signal.
 * interface_removed ()
 * Signal handler for the "interface-removed" signal.
 * Since 2.30
 */
public struct GDBusObjectManagerIface
{
	GTypeInterface parentIface;
	/+* Virtual Functions +/
	extern(C) char * function(GDBusObjectManager* manager) getObjectPath;
	extern(C) GList * function(GDBusObjectManager* manager) getObjects;
	extern(C) GDBusObject * function(GDBusObjectManager* manager, char* objectPath) getObject;
	extern(C) GDBusInterface * function(GDBusObjectManager* manager, char* objectPath, char* interfaceName) getInterface;
	/+* Signals +/
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object) objectAdded;
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object) objectRemoved;
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* iface) interfaceAdded;
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* iface) interfaceRemoved;
}


/**
 * Main Gtk struct.
 * The GDBusObjectManagerServer structure contains private data and should
 * only be accessed using the provided API.
 * Since 2.30
 */
public struct GDBusObjectManagerServer{}


/**
 * Class structure for GDBusObjectManagerServer.
 * GObjectClass parent_class;
 * The parent class.
 * Since 2.30
 */
public struct GDBusObjectManagerServerClass
{
	GObjectClass parentClass;
}


/**
 * Main Gtk struct.
 * The GDBusObjectManagerClient structure contains private data and should
 * only be accessed using the provided API.
 * Since 2.30
 */
public struct GDBusObjectManagerClient{}


/**
 * Class structure for GDBusObjectManagerClient.
 * GObjectClass parent_class;
 * The parent class.
 * interface_proxy_signal ()
 * Signal class handler for the "interface-proxy-signal" signal.
 * interface_proxy_properties_changed ()
 * Signal class handler for the "interface-proxy-properties-changed" signal.
 * Since 2.30
 */
public struct GDBusObjectManagerClientClass
{
	GObjectClass parentClass;
	/+* signals +/
	extern(C) void function(GDBusObjectManagerClient* manager, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, char* senderName, char* signalName, GVariant* parameters) interfaceProxySignal;
	extern(C) void function(GDBusObjectManagerClient* manager, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, GVariant* changedProperties, char** invalidatedProperties) interfaceProxyPropertiesChanged;
}


/**
 * Main Gtk struct.
 */
public struct GSettings{}


/**
 * Main Gtk struct.
 * An implementation of a settings storage repository.
 */
public struct GSettingsBackend{}


public struct GSettingsBackendClass
{
	GObjectClass parentClass;
	extern(C) GVariant * function(GSettingsBackend* backend, char* key, GVariantType* expectedType, int defaultValue) read;
	extern(C) int function(GSettingsBackend* backend, char* key) getWritable;
	extern(C) int function(GSettingsBackend* backend, char* key, GVariant* value, void* originTag) write;
	extern(C) int function(GSettingsBackend* backend, GTree* tree, void* originTag) writeTree;
	extern(C) void function(GSettingsBackend* backend, char* key, void* originTag) reset;
	extern(C) void function(GSettingsBackend* backend, char* name) subscribe;
	extern(C) void function(GSettingsBackend* backend, char* name) unsubscribe;
	extern(C) void function(GSettingsBackend* backend) sync;
	extern(C) GPermission * function(GSettingsBackend* backend, char* path) getPermission;
	void* padding[24];
}


/**
 * This is an opaque structure type. You may not access it directly.
 * Since 2.32
 */
public struct GSettingsSchemaSource{}


/**
 * Main Gtk struct.
 * This is an opaque structure type. You may not access it directly.
 * Since 2.32
 */
public struct GSettingsSchema{}


/**
 * Main Gtk struct.
 * A resource bundle.
 * Since 2.32
 */
public struct GResource{}


/**
 * Main Gtk struct.
 * GPermission is an opaque data structure and can only be accessed
 * using the following functions.
 */
public struct GPermission{}


/**
 * Main Gtk struct.
 * GSimplePermission is an opaque data structure. There are no methods
 * except for those defined by GPermission.
 */
public struct GSimplePermission{}


/**
 * Main Gtk struct.
 * Since 2.28
 */
public struct GApplication{}


/**
 * Virtual function table for GApplication.
 * startup ()
 * invoked on the primary instance immediately after registration
 * activate ()
 * invoked on the primary instance when an activation occurs
 * open ()
 * invoked on the primary instance when there are files to open
 * command_line ()
 * invoked on the primary instance when a command-line is
 * not handled locally
 * local_command_line ()
 * invoked (locally) when the process has been invoked
 * via commandline execution (as opposed to, say, D-Bus activation - which
 * is not currently supported by GApplication). The virtual function has
 * the chance to inspect (and possibly replace) the list of command line
 * arguments. See g_application_run() for more information.
 * before_emit ()
 * invoked on the primary instance before 'activate', 'open',
 * 'command-line' or any action invocation, gets the 'platform data' from
 * the calling instance
 * after_emit ()
 * invoked on the primary instance after 'activate', 'open',
 * 'command-line' or any action invocation, gets the 'platform data' from
 * the calling instance
 * add_platform_data ()
 * invoked (locally) to add 'platform data' to be sent to
 * the primary instance when activating, opening or invoking actions
 * quit_mainloop ()
 * Used to be invoked on the primary instance when the use
 * count of the application drops to zero (and after any inactivity
 * timeout, if requested). Not used anymore since 2.32
 * run_mainloop ()
 * Used to be invoked on the primary instance from
 * g_application_run() if the use-count is non-zero. Since 2.32,
 * GApplication is iterating the main context directly and is not
 * using run_mainloop anymore
 * shutdown ()
 * invoked only on the registered primary instance immediately
 * after the main loop terminates
 * dbus_register ()
 * invoked locally during registration, if the application is
 * using its D-Bus backend. You can use this to export extra objects on the
 * bus, that need to exist before the application tries to own the bus name.
 * The function is passed the GDBusConnection to to session bus, and the
 * object path that GApplication will use to export is D-Bus API.
 * If this function returns TRUE, registration will proceed; otherwise
 * registration will abort. Since: 2.34
 * dbus_unregister ()
 * invoked locally during unregistration, if the application
 * is using its D-Bus backend. Use this to undo anything done by the
 * dbus_register vfunc. Since: 2.34
 * Since 2.28
 */
public struct GApplicationClass
{
	/+* signals +/
	extern(C) void function(GApplication* application)  startup;
	extern(C) void function(GApplication* application)  activate;
	extern(C) void function(GApplication* application, GFile** files, int nFiles, char* hint)  open;
	extern(C) int function(GApplication* application, GApplicationCommandLine* commandLine)  commandLine;
	/+* vfuncs +/
	/+**
	 * GApplicationClass::localCommandLine:
	 * @application: a #GApplication
	 * @arguments: (inout) (array zero-terminated=1): array of command line arguments
	 * @exitStatus: (out): exit status to fill after processing the command line.
	 *
	 * This virtual funct is always invoked inn the local instance. It
	 * gets passed a pointer to a %NULL-terminated copy of @argv and is
	 * expected to remove arguments that it handled (shifting up remaining
	 * arguments).
	 *
	 * The last argument to localCommandLine() is a pointer to the @status
	 * variable which can used to set the exit status that is returned from
	 * run().
	 *
	 * See run() for more details on #GApplication startup.
	 *
	 * Returns: %TRUE if the commandline has been completely handled
	+/
	extern(C) int function(GApplication* application, char*** arguments, int* exitStatus)  localCommandLine;
	extern(C) void function(GApplication* application, GVariant* platformData)  beforeEmit;
	extern(C) void function(GApplication* application, GVariant* platformData)  afterEmit;
	extern(C) void function(GApplication* application, GVariantBuilder* builder)  addPlatformData;
	extern(C) void function(GApplication* application)  quitMainloop;
	extern(C) void function(GApplication* application)  runMainloop;
	extern(C) void function(GApplication* application)  shutdown;
	extern(C) int function(GApplication* application, GDBusConnection* connection, char* objectPath, GError** error)  dbusRegister;
	extern(C) void function(GApplication* application, GDBusConnection* connection, char* objectPath)  dbusUnregister;
}


/**
 * Main Gtk struct.
 */
public struct GApplicationCommandLine{}


/**
 * The GApplicationCommandLineClass structure
 * contains private data only
 * Since 2.28
 */
public struct GApplicationCommandLineClass{}


/**
 * Main Gtk struct.
 */
public struct GActionGroup{}


/**
 * The virtual function table for GActionGroup.
 * GTypeInterface g_iface;
 * has_action ()
 * the virtual function pointer for g_action_group_has_action()
 * list_actions ()
 * the virtual function pointer for g_action_group_list_actions()
 * get_action_enabled ()
 * the virtual function pointer for g_action_group_get_action_enabled()
 * get_action_parameter_type ()
 * the virtual function pointer for g_action_group_get_action_parameter_type()
 * get_action_state_type ()
 * the virtual function pointer for g_action_group_get_action_state_type()
 * get_action_state_hint ()
 * the virtual function pointer for g_action_group_get_action_state_hint()
 * get_action_state ()
 * the virtual function pointer for g_action_group_get_action_state()
 * change_action_state ()
 * the virtual function pointer for g_action_group_change_action_state()
 * activate_action ()
 * the virtual function pointer for g_action_group_activate_action()
 * action_added ()
 * the class closure for the "action-added" signal
 * action_removed ()
 * the class closure for the "action-removed" signal
 * action_enabled_changed ()
 * the class closure for the "action-enabled-changed" signal
 * action_state_changed ()
 * the class closure for the "action-enabled-changed" signal
 * query_action ()
 * the virtual function pointer for g_action_group_query_action()
 * Since 2.28
 */
public struct GActionGroupInterface
{
	GTypeInterface gIface;
	/+* virtual functions +/
	extern(C) int function(GActionGroup* actionGroup, char* actionName)  hasAction;
	extern(C) char ** function(GActionGroup* actionGroup)  listActions;
	extern(C) int function(GActionGroup* actionGroup, char* actionName)  getActionEnabled;
	extern(C) GVariantType * function(GActionGroup* actionGroup, char* actionName)  getActionParameterType;
	extern(C) GVariantType * function(GActionGroup* actionGroup, char* actionName)  getActionStateType;
	extern(C) GVariant * function(GActionGroup* actionGroup, char* actionName)  getActionStateHint;
	extern(C) GVariant * function(GActionGroup* actionGroup, char* actionName)  getActionState;
	extern(C) void function(GActionGroup* actionGroup, char* actionName, GVariant* value)  changeActionState;
	extern(C) void function(GActionGroup* actionGroup, char* actionName, GVariant* parameter)  activateAction;
	/+* signals +/
	extern(C) void function(GActionGroup* actionGroup, char* actionName)  actionAdded;
	extern(C) void function(GActionGroup* actionGroup, char* actionName)  actionRemoved;
	extern(C) void function(GActionGroup* actionGroup, char* actionName, int enabled)  actionEnabledChanged;
	extern(C) void function(GActionGroup* actionGroup, char* actionName, GVariant* state)  actionStateChanged;
	/+* more virtual functions +/
	extern(C) int function(GActionGroup* actionGroup, char* actionName, int* enabled, GVariantType** parameterType, GVariantType** stateType, GVariant** stateHint, GVariant** state)  queryAction;
}


/**
 * Main Gtk struct.
 */
public struct GActionMap{}


/**
 * The virtual function table for GActionMap.
 * GTypeInterface g_iface;
 * lookup_action ()
 * the virtual function pointer for g_action_map_lookup_action()
 * add_action ()
 * the virtual function pointer for g_action_map_add_action()
 * remove_action ()
 * the virtual function pointer for g_action_map_remove_action()
 * Since 2.32
 */
public struct GActionMapInterface
{
	GTypeInterface gIface;
	extern(C) GAction * function(GActionMap* actionMap, char* actionName)  lookupAction;
	extern(C) void function(GActionMap* actionMap, GAction* action)  addAction;
	extern(C) void function(GActionMap* actionMap, char* actionName)  removeAction;
}


/**
 * This struct defines a single action. It is for use with
 * g_action_map_add_action_entries().
 * The order of the items in the structure are intended to reflect
 * frequency of use. It is permissible to use an incomplete initialiser
 * in order to leave some of the later values as NULL. All values
 * after name are optional. Additional optional fields may be added in
 * the future.
 * See g_action_map_add_action_entries() for an example.
 * const gchar *name;
 * the name of the action
 * activate ()
 * the callback to connect to the "activate" signal of the
 * action
 * const gchar *parameter_type;
 * the type of the parameter that must be passed to the
 * activate function for this action, given as a single
 * GVariant type string (or NULL for no parameter)
 * const gchar *state;
 * the initial state for this action, given in GVariant text
 * format. The state is parsed with no extra type information,
 * so type tags must be added to the string if they are
 * necessary.
 * change_state ()
 * the callback to connect to the "change-state" signal
 * of the action
 */
public struct GActionEntry
{
	char *name;
	extern(C) void function(GSimpleAction* action, GVariant* parameter, void* userData)  activate;
	char *parameterType;
	char *state;
	extern(C) void function(GSimpleAction* action, GVariant* value, void* userData)  changeState;
}


/**
 * Main Gtk struct.
 * The GSimpleActionGroup structure contains private data and should only be accessed using the provided API.
 * Since 2.28
 */
public struct GSimpleActionGroup{}


/**
 * Main Gtk struct.
 */
public struct GAction{}


/**
 * The virtual function table for GAction.
 * GTypeInterface g_iface;
 * get_name ()
 * the virtual function pointer for g_action_get_name()
 * get_parameter_type ()
 * the virtual function pointer for g_action_get_parameter_type()
 * get_state_type ()
 * the virtual function pointer for g_action_get_state_type()
 * get_state_hint ()
 * the virtual function pointer for g_action_get_state_hint()
 * get_enabled ()
 * the virtual function pointer for g_action_get_enabled()
 * get_state ()
 * the virtual function pointer for g_action_get_state()
 * change_state ()
 * the virtual function pointer for g_action_change_state()
 * activate ()
 * the virtual function pointer for g_action_activate(). Note that GAction does not have an
 * 'activate' signal but that implementations of it may have one.
 * Since 2.28
 */
public struct GActionInterface
{
	GTypeInterface gIface;
	/+* virtual functions +/
	extern(C) char * function(GAction* action)  getName;
	extern(C) GVariantType * function(GAction* action)  getParameterType;
	extern(C) GVariantType * function(GAction* action)  getStateType;
	extern(C) GVariant * function(GAction* action)  getStateHint;
	extern(C) int function(GAction* action)  getEnabled;
	extern(C) GVariant * function(GAction* action)  getState;
	extern(C) void function(GAction* action, GVariant* value)  changeState;
	extern(C) void function(GAction* action, GVariant* parameter)  activate;
}


/**
 * Main Gtk struct.
 */
public struct GSimpleAction{}


/**
 * Main Gtk struct.
 */
public struct GRemoteActionGroup{}


/**
 * The virtual function table for GRemoteActionGroup.
 * GTypeInterface g_iface;
 * activate_action_full ()
 * the virtual function pointer for g_remote_action_group_activate_action_full()
 * change_action_state_full ()
 * the virtual function pointer for g_remote_action_group_change_action_state_full()
 * Since 2.32
 */
public struct GRemoteActionGroupInterface
{
	GTypeInterface gIface;
	extern(C) void function(GRemoteActionGroup* remote, char* actionName, GVariant* parameter, GVariant* platformData)  activateActionFull;
	extern(C) void function(GRemoteActionGroup* remote, char* actionName, GVariant* value, GVariant* platformData)  changeActionStateFull;
}


/**
 * Main Gtk struct.
 */
public struct GDBusActionGroup{}


/**
 * Main Gtk struct.
 * GMenuModel is an opaque structure type. You must access it using the
 * functions below.
 * Since 2.32
 */
public struct GMenuModel{}


/**
 * GMenuAttributeIter is an opaque structure type. You must access it
 * using the functions below.
 * Since 2.32
 */
public struct GMenuAttributeIter{}


/**
 * GMenuLinkIter is an opaque structure type. You must access it using
 * the functions below.
 * Since 2.32
 */
public struct GMenuLinkIter{}


/**
 * Main Gtk struct.
 * GMenu is an opaque structure type. You must access it using the
 * functions below.
 * Since 2.32
 */
public struct GMenu{}


/**
 * GMenuItem is an opaque structure type. You must access it using the
 * functions below.
 * Since 2.32
 */
public struct GMenuItem{}


/**
 * Main Gtk struct.
 */
public struct GDBusMenuModel{}


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
 * Represents a scope for loading IO modules. A scope can be used for blocking
 * duplicate modules, or blocking a module you don't want to load.
 * The scope can be used with g_io_modules_load_all_in_directory_with_scope()
 * or g_io_modules_scan_all_in_directory_with_scope().
 * Since 2.30
 */
public struct GIOModuleScope{}


/**
 * Main Gtk struct.
 */
public struct GIOExtension{}


public struct GIOExtensionPoint{}


/**
 * Main Gtk struct.
 * The GTestDBus structure contains only private data and
 * should only be accessed using the provided API.
 * Since 2.34
 */
public struct GTestDBus{}


/*
 * When doing file operations that may take a while, such as moving
 * a file or copying a file, a progress callback is used to pass how
 * far along that operation is to the application.
 * current_num_bytes :
 * the current number of bytes in the operation.
 * total_num_bytes :
 * the total number of bytes in the operation.
 * user_data :
 * user data passed to the callback.
 */
// void (*GFileProgressCallback) (goffset current_num_bytes,  goffset total_num_bytes,  gpointer user_data);
public alias extern(C) void function(long currentNumBytes, long totalNumBytes, void* userData) GFileProgressCallback;

/*
 * When loading the partial contents of a file with g_file_load_partial_contents_async(),
 * it may become necessary to determine if any more data from the file should be loaded.
 * A GFileReadMoreCallback function facilitates this by returning TRUE if more data
 * should be read, or FALSE otherwise.
 * file_contents :
 * the data as currently read.
 * file_size :
 * the size of the data currently read.
 * callback_data :
 * data passed to the callback.
 * Returns :
 * TRUE if more data should be read back. FALSE otherwise.
 */
// gboolean (*GFileReadMoreCallback) (const char *file_contents,  goffset file_size,  gpointer callback_data);
public alias extern(C) int function(char* fileContents, long fileSize, void* callbackData) GFileReadMoreCallback;

/*
 * This is the function type of the callback used for the GSource
 * returned by g_cancellable_source_new().
 * cancellable :
 * the GCancellable
 * user_data :
 * data passed in by the user.
 * Returns :
 * it should return FALSE if the source should be removed.
 * Since 2.28
 */
// gboolean (*GCancellableSourceFunc) (GCancellable *cancellable,  gpointer user_data);
public alias extern(C) int function(GCancellable* cancellable, void* userData) GCancellableSourceFunc;

/*
 * Type definition for a function that will be called back when an asynchronous
 * operation within GIO has been completed.
 * source_object :
 * the object the asynchronous operation was started with.
 * res :
 * a GAsyncResult.
 * user_data :
 * user data passed to the callback.
 */
// void (*GAsyncReadyCallback) (GObject *source_object,  GAsyncResult *res,  gpointer user_data);
public alias extern(C) void function(GObject* sourceObject, GAsyncResult* res, void* userData) GAsyncReadyCallback;

/*
 * The prototype for a task function to be run in a thread via
 * g_task_run_in_thread() or g_task_run_in_thread_sync().
 * If the return-on-cancel flag is set on task, and cancellable gets
 * cancelled, then the GTask will be completed immediately (as though
 * g_task_return_error_if_cancelled() had been called), without
 * waiting for the task function to complete. However, the task
 * function will continue running in its thread in the background. The
 * function therefore needs to be careful about how it uses
 * externally-visible state in this case. See
 * g_task_set_return_on_cancel() for more details.
 * Other than in that case, task will be completed when the
 * GTaskThreadFunc returns, not when it calls
 * a g_task_return_ function.
 * task :
 * the GTask
 * source_object :
 * task's source object. [type GObject]
 * task_data :
 * task's task data
 * cancellable :
 * task's GCancellable, or NULL
 * Since 2.36
 */
// void (*GTaskThreadFunc) (GTask *task,  gpointer source_object,  gpointer task_data,  GCancellable *cancellable);
public alias extern(C) void function(GTask* task, void* sourceObject, void* taskData, GCancellable* cancellable) GTaskThreadFunc;

/*
 * I/O Job function.
 * Long-running jobs should periodically check the cancellable
 * to see if they have been cancelled.
 * job :
 * a GIOSchedulerJob.
 * cancellable :
 * optional GCancellable object, NULL to ignore.
 * user_data :
 * the data to pass to callback function
 * Returns :
 * TRUE if this function should be called again to
 * complete the job, FALSE if the job is complete (or cancelled)
 */
// gboolean (*GIOSchedulerJobFunc) (GIOSchedulerJob *job,  GCancellable *cancellable,  gpointer user_data);
public alias extern(C) int function(GIOSchedulerJob* job, GCancellable* cancellable, void* userData) GIOSchedulerJobFunc;

/*
 * Simple thread function that runs an asynchronous operation and
 * checks for cancellation.
 * res :
 * a GSimpleAsyncResult.
 * object :
 * a GObject.
 * cancellable :
 * optional GCancellable object, NULL to ignore.
 */
// void (*GSimpleAsyncThreadFunc) (GSimpleAsyncResult *res,  GObject *object,  GCancellable *cancellable);
public alias extern(C) void function(GSimpleAsyncResult* res, GObject* object, GCancellable* cancellable) GSimpleAsyncThreadFunc;

/*
 * Changes the size of the memory block pointed to by data to
 * size bytes.
 * The function should have the same semantics as realloc().
 * data :
 * memory block to reallocate
 * size :
 * size to reallocate data to
 * Returns :
 * a pointer to the reallocated memory
 */
// gpointer (*GReallocFunc) (gpointer data,  gsize size);
public alias extern(C) void* function(void* data, gsize size) GReallocFunc;

/*
 * This is the function type of the callback used for the GSource
 * returned by g_pollable_input_stream_create_source() and
 * g_pollable_output_stream_create_source().
 * pollable_stream :
 * the GPollableInputStream or GPollableOutputStream
 * user_data :
 * data passed in by the user.
 * Returns :
 * it should return FALSE if the source should be removed.
 * Since 2.28
 */
// gboolean (*GPollableSourceFunc) (GObject *pollable_stream,  gpointer user_data);
public alias extern(C) int function(GObject* pollableStream, void* userData) GPollableSourceFunc;

/*
 * During invocation, g_desktop_app_info_launch_uris_as_manager() may
 * create one or more child processes. This callback is invoked once
 * for each, providing the process ID.
 * appinfo :
 * a GDesktopAppInfo
 * pid :
 * Process identifier
 * user_data :
 * User data
 */
// void (*GDesktopAppLaunchCallback) (GDesktopAppInfo *appinfo,  GPid pid,  gpointer user_data);
public alias extern(C) void function(GDesktopAppInfo* appinfo, GPid pid, void* userData) GDesktopAppLaunchCallback;

/*
 * This is the function type of the callback used for the GSource
 * returned by g_socket_create_source().
 * socket :
 * the GSocket
 * condition :
 * the current condition at the source fired.
 * user_data :
 * data passed in by the user.
 * Returns :
 * it should return FALSE if the source should be removed.
 * Since 2.22
 */
// gboolean (*GSocketSourceFunc) (GSocket *socket,  GIOCondition condition,  gpointer user_data);
public alias extern(C) int function(GSocket* socket, GIOCondition condition, void* userData) GSocketSourceFunc;

/*
 * Signature for callback function used in g_dbus_connection_signal_subscribe().
 * connection :
 * A GDBusConnection.
 * sender_name :
 * The unique bus name of the sender of the signal.
 * object_path :
 * The object path that the signal was emitted on.
 * interface_name :
 * The name of the interface.
 * signal_name :
 * The name of the signal.
 * parameters :
 * A GVariant tuple with parameters for the signal.
 * user_data :
 * User data passed when subscribing to the signal.
 * Since 2.26
 */
// void (*GDBusSignalCallback) (GDBusConnection *connection,  const gchar *sender_name,  const gchar *object_path,  const gchar *interface_name,  const gchar *signal_name,  GVariant *parameters,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* senderName, char* objectPath, char* interfaceName, char* signalName, GVariant* parameters, void* userData) GDBusSignalCallback;

/*
 * Signature for function used in g_dbus_connection_add_filter().
 * A filter function is passed a GDBusMessage and expected to return
 * a GDBusMessage too. Passive filter functions that don't modify the
 * message can simply return the message object:
 * $(DDOC_COMMENT example)
 * Filter functions that wants to drop a message can simply return NULL:
 * $(DDOC_COMMENT example)
 * Finally, a filter function may modify a message by copying it:
 * $(DDOC_COMMENT example)
 * If the returned GDBusMessage is different from message and cannot
 * be sent on connection (it could use features, such as file
 * descriptors, not compatible with connection), then a warning is
 * logged to standard error. Applications can
 * check this ahead of time using g_dbus_message_to_blob() passing a
 * GDBusCapabilityFlags value obtained from connection.
 * connection :
 * A GDBusConnection. [transfer none]
 * message :
 * A locked GDBusMessage that the filter function takes ownership of. [transfer full]
 * incoming :
 * TRUE if it is a message received from the other peer, FALSE if it is
 * a message to be sent to the other peer.
 * user_data :
 * User data passed when adding the filter.
 * Returns :
 * A GDBusMessage that will be freed with
 * g_object_unref() or NULL to drop the message. Passive filter
 * functions can simply return the passed message object. [transfer full][allow-none]
 * Since 2.26
 */
// GDBusMessage * (*GDBusMessageFilterFunction) (GDBusConnection *connection,  GDBusMessage *message,  gboolean incoming,  gpointer user_data);
public alias extern(C) GDBusMessage * function(GDBusConnection* connection, GDBusMessage* message, int incoming, void* userData) GDBusMessageFilterFunction;

/*
 * The type of the method_call function in GDBusInterfaceVTable.
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that the method was invoked on.
 * interface_name :
 * The D-Bus interface name the method was invoked on.
 * method_name :
 * The name of the method that was invoked.
 * parameters :
 * A GVariant tuple with parameters.
 * invocation :
 * A GDBusMethodInvocation object that can be used to return a value or error.
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_object().
 * Since 2.26
 */
// void (*GDBusInterfaceMethodCallFunc) (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  const gchar *interface_name,  const gchar *method_name,  GVariant *parameters,  GDBusMethodInvocation *invocation,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* sender, char* objectPath, char* interfaceName, char* methodName, GVariant* parameters, GDBusMethodInvocation* invocation, void* userData) GDBusInterfaceMethodCallFunc;

/*
 * The type of the get_property function in GDBusInterfaceVTable.
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that the method was invoked on.
 * interface_name :
 * The D-Bus interface name for the property.
 * property_name :
 * The name of the property to get the value of.
 * error :
 * Return location for error.
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_object().
 * Returns :
 * A GVariant with the value for property_name or NULL if
 * error is set. If the returned GVariant is floating, it is
 * consumed - otherwise its reference count is decreased by one.
 * Since 2.26
 */
// GVariant * (*GDBusInterfaceGetPropertyFunc) (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  const gchar *interface_name,  const gchar *property_name,  GError **error,  gpointer user_data);
public alias extern(C) GVariant * function(GDBusConnection* connection, char* sender, char* objectPath, char* interfaceName, char* propertyName, GError** error, void* userData) GDBusInterfaceGetPropertyFunc;

/*
 * The type of the set_property function in GDBusInterfaceVTable.
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that the method was invoked on.
 * interface_name :
 * The D-Bus interface name for the property.
 * property_name :
 * The name of the property to get the value of.
 * value :
 * The value to set the property to.
 * error :
 * Return location for error.
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_object().
 * Returns :
 * TRUE if the property was set to value, FALSE if error is set.
 * Since 2.26
 */
// gboolean (*GDBusInterfaceSetPropertyFunc) (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  const gchar *interface_name,  const gchar *property_name,  GVariant *value,  GError **error,  gpointer user_data);
public alias extern(C) int function(GDBusConnection* connection, char* sender, char* objectPath, char* interfaceName, char* propertyName, GVariant* value, GError** error, void* userData) GDBusInterfaceSetPropertyFunc;

/*
 * The type of the enumerate function in GDBusSubtreeVTable.
 * This function is called when generating introspection data and also
 * when preparing to dispatch incoming messages in the event that the
 * G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES flag is not
 * specified (ie: to verify that the object path is valid).
 * Hierarchies are not supported; the items that you return should not
 * contain the '/' character.
 * The return value will be freed with g_strfreev().
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that was registered with g_dbus_connection_register_subtree().
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_subtree().
 * Returns :
 * A newly allocated array of strings for node names that are children of object_path.
 * Since 2.26
 */
// gchar ** (*GDBusSubtreeEnumerateFunc) (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  gpointer user_data);
public alias extern(C) char ** function(GDBusConnection* connection, char* sender, char* objectPath, void* userData) GDBusSubtreeEnumerateFunc;

/*
 * The type of the introspect function in GDBusSubtreeVTable.
 * Subtrees are flat. node, if non-NULL, is always exactly one
 * segment of the object path (ie: it never contains a slash).
 * This function should return NULL to indicate that there is no object
 * at this node.
 * If this function returns non-NULL, the return value is expected to
 * be a NULL-terminated array of pointers to GDBusInterfaceInfo
 * structures describing the interfaces implemented by node. This
 * array will have g_dbus_interface_info_unref() called on each item
 * before being freed with g_free().
 * The difference between returning NULL and an array containing zero
 * items is that the standard DBus interfaces will returned to the
 * remote introspector in the empty array case, but not in the NULL
 * case.
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that was registered with g_dbus_connection_register_subtree().
 * node :
 * A node that is a child of object_path (relative to object_path) or NULL for the root of the subtree.
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_subtree().
 * Returns :
 * A NULL-terminated array of pointers to GDBusInterfaceInfo, or NULL.
 * Since 2.26
 */
// GDBusInterfaceInfo ** (*GDBusSubtreeIntrospectFunc) (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  const gchar *node,  gpointer user_data);
public alias extern(C) GDBusInterfaceInfo ** function(GDBusConnection* connection, char* sender, char* objectPath, char* node, void* userData) GDBusSubtreeIntrospectFunc;

/*
 * The type of the dispatch function in GDBusSubtreeVTable.
 * Subtrees are flat. node, if non-NULL, is always exactly one
 * segment of the object path (ie: it never contains a slash).
 * connection :
 * A GDBusConnection.
 * sender :
 * The unique bus name of the remote caller.
 * object_path :
 * The object path that was registered with g_dbus_connection_register_subtree().
 * interface_name :
 * The D-Bus interface name that the method call or property access is for.
 * node :
 * A node that is a child of object_path (relative to object_path) or NULL for the root of the subtree.
 * out_user_data :
 * Return location for user data to pass to functions in the returned GDBusInterfaceVTable (never NULL).
 * user_data :
 * The user_data gpointer passed to g_dbus_connection_register_subtree().
 * Returns :
 * A GDBusInterfaceVTable or NULL if you don't want to handle the methods.
 * Since 2.26
 */
// const GDBusInterfaceVTable * (*GDBusSubtreeDispatchFunc)  (GDBusConnection *connection,  const gchar *sender,  const gchar *object_path,  const gchar *interface_name,  const gchar *node,  gpointer *out_user_data,  gpointer user_data);
public alias extern(C) GDBusInterfaceVTable * function(GDBusConnection* connection, char* sender, char* objectPath, char* interfaceName, char* node, gpointer* outUserData, void* userData) GDBusSubtreeDispatchFunc;

/*
 * Invoked when a connection to a message bus has been obtained.
 * connection :
 * The GDBusConnection to a message bus.
 * name :
 * The name that is requested to be owned.
 * user_data :
 * User data passed to g_bus_own_name().
 * Since 2.26
 */
// void (*GBusAcquiredCallback) (GDBusConnection *connection,  const gchar *name,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* name, void* userData) GBusAcquiredCallback;

/*
 * Invoked when the name is acquired.
 * connection :
 * The GDBusConnection on which to acquired the name.
 * name :
 * The name being owned.
 * user_data :
 * User data passed to g_bus_own_name() or g_bus_own_name_on_connection().
 * Since 2.26
 */
// void (*GBusNameAcquiredCallback) (GDBusConnection *connection,  const gchar *name,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* name, void* userData) GBusNameAcquiredCallback;

/*
 * Invoked when the name is lost or connection has been closed.
 * connection :
 * The GDBusConnection on which to acquire the name or NULL if
 * the connection was disconnected.
 * name :
 * The name being owned.
 * user_data :
 * User data passed to g_bus_own_name() or g_bus_own_name_on_connection().
 * Since 2.26
 */
// void (*GBusNameLostCallback) (GDBusConnection *connection,  const gchar *name,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* name, void* userData) GBusNameLostCallback;

/*
 * Invoked when the name being watched is known to have to have a owner.
 * connection :
 * The GDBusConnection the name is being watched on.
 * name :
 * The name being watched.
 * name_owner :
 * Unique name of the owner of the name being watched.
 * user_data :
 * User data passed to g_bus_watch_name().
 * Since 2.26
 */
// void (*GBusNameAppearedCallback) (GDBusConnection *connection,  const gchar *name,  const gchar *name_owner,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* name, char* nameOwner, void* userData) GBusNameAppearedCallback;

/*
 * Invoked when the name being watched is known not to have to have a owner.
 * This is also invoked when the GDBusConection on which the watch was
 * established has been closed. In that case, connection will be
 * NULL.
 * connection :
 * The GDBusConnection the name is being watched on, or
 * NULL.
 * name :
 * The name being watched.
 * user_data :
 * User data passed to g_bus_watch_name().
 * Since 2.26
 */
// void (*GBusNameVanishedCallback) (GDBusConnection *connection,  const gchar *name,  gpointer user_data);
public alias extern(C) void function(GDBusConnection* connection, char* name, void* userData) GBusNameVanishedCallback;

/*
 * Function signature for a function used to determine the GType to
 * use for an interface proxy (if interface_name is not NULL) or
 * object proxy (if interface_name is NULL).
 * This function is called in the
 * thread-default main loop
 * that manager was constructed in.
 * manager :
 * A GDBusObjectManagerClient.
 * object_path :
 * The object path of the remote object.
 * interface_name :
 * The interface name of the remote object or NULL if a GDBusObjectProxy GType is requested. [allow-none]
 * user_data :
 * User data.
 * Returns :
 * A GType to use for the remote object. The returned type
 * must be a GDBusProxy- or GDBusObjectProxy-derived
 * type.
 * Since 2.30
 */
// GType (*GDBusProxyTypeFunc) (GDBusObjectManagerClient *manager,  const gchar *object_path,  const gchar *interface_name,  gpointer user_data);
public alias extern(C) GType function(GDBusObjectManagerClient* manager, char* objectPath, char* interfaceName, void* userData) GDBusProxyTypeFunc;

/*
 * The type of the function that is used to convert from a value stored
 * in a GSettings to a value that is useful to the application.
 * If the value is successfully mapped, the result should be stored at
 * result and TRUE returned. If mapping fails (for example, if value
 * is not in the right format) then FALSE should be returned.
 * If value is NULL then it means that the mapping function is being
 * given a "last chance" to successfully return a valid value. TRUE
 * must be returned in this case.
 * value :
 * the GVariant to map, or NULL
 * result :
 * the result of the mapping. [out]
 * user_data :
 * the user data that was passed to
 * g_settings_get_mapped(). [closure]
 * Returns :
 * TRUE if the conversion succeeded, FALSE in case of an error
 */
// gboolean (*GSettingsGetMapping) (GVariant *value,  gpointer *result,  gpointer user_data);
public alias extern(C) int function(GVariant* value, gpointer* result, void* userData) GSettingsGetMapping;

/*
 * The type for the function that is used to convert an object property
 * value to a GVariant for storing it in GSettings.
 * value :
 * a GValue containing the property value to map
 * expected_type :
 * the GVariantType to create
 * user_data :
 * user data that was specified when the binding was created
 * Returns :
 * a new GVariant holding the data from value,
 * or NULL in case of an error
 */
// GVariant * (*GSettingsBindSetMapping) (const GValue *value,  const GVariantType *expected_type,  gpointer user_data);
public alias extern(C) GVariant * function(GValue* value, GVariantType* expectedType, void* userData) GSettingsBindSetMapping;

/*
 * The type for the function that is used to convert from GSettings to
 * an object property. The value is already initialized to hold values
 * of the appropriate type.
 * value :
 * return location for the property value
 * variant :
 * the GVariant
 * user_data :
 * user data that was specified when the binding was created
 * Returns :
 * TRUE if the conversion succeeded, FALSE in case of an error
 */
// gboolean (*GSettingsBindGetMapping) (GValue *value,  GVariant *variant,  gpointer user_data);
public alias extern(C) int function(GValue* value, GVariant* variant, void* userData) GSettingsBindGetMapping;
