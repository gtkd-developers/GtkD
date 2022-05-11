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


module gio.c.types;

public import glib.c.types;
public import gobject.c.types;


/**
 * Flags used when creating a #GAppInfo.
 */
public enum GAppInfoCreateFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * Application opens in a terminal window.
	 */
	NEEDS_TERMINAL = 1,
	/**
	 * Application supports URI arguments.
	 */
	SUPPORTS_URIS = 2,
	/**
	 * Application supports startup notification. Since 2.26
	 */
	SUPPORTS_STARTUP_NOTIFICATION = 4,
}
alias GAppInfoCreateFlags AppInfoCreateFlags;

/**
 * Flags used to define the behaviour of a #GApplication.
 *
 * Since: 2.28
 */
public enum GApplicationFlags
{
	/**
	 * Default
	 */
	FLAGS_NONE = 0,
	/**
	 * Run as a service. In this mode, registration
	 * fails if the service is already running, and the application
	 * will initially wait up to 10 seconds for an initial activation
	 * message to arrive.
	 */
	IS_SERVICE = 1,
	/**
	 * Don't try to become the primary instance.
	 */
	IS_LAUNCHER = 2,
	/**
	 * This application handles opening files (in
	 * the primary instance). Note that this flag only affects the default
	 * implementation of local_command_line(), and has no effect if
	 * %G_APPLICATION_HANDLES_COMMAND_LINE is given.
	 * See g_application_run() for details.
	 */
	HANDLES_OPEN = 4,
	/**
	 * This application handles command line
	 * arguments (in the primary instance). Note that this flag only affect
	 * the default implementation of local_command_line().
	 * See g_application_run() for details.
	 */
	HANDLES_COMMAND_LINE = 8,
	/**
	 * Send the environment of the
	 * launching process to the primary instance. Set this flag if your
	 * application is expected to behave differently depending on certain
	 * environment variables. For instance, an editor might be expected
	 * to use the `GIT_COMMITTER_NAME` environment variable
	 * when editing a git commit message. The environment is available
	 * to the #GApplication::command-line signal handler, via
	 * g_application_command_line_getenv().
	 */
	SEND_ENVIRONMENT = 16,
	/**
	 * Make no attempts to do any of the typical
	 * single-instance application negotiation, even if the application
	 * ID is given.  The application neither attempts to become the
	 * owner of the application ID nor does it check if an existing
	 * owner already exists.  Everything occurs in the local process.
	 * Since: 2.30.
	 */
	NON_UNIQUE = 32,
	/**
	 * Allow users to override the
	 * application ID from the command line with `--gapplication-app-id`.
	 * Since: 2.48
	 */
	CAN_OVERRIDE_APP_ID = 64,
	/**
	 * Allow another instance to take over
	 * the bus name. Since: 2.60
	 */
	ALLOW_REPLACEMENT = 128,
	/**
	 * Take over from another instance. This flag is
	 * usually set by passing `--gapplication-replace` on the commandline.
	 * Since: 2.60
	 */
	REPLACE = 256,
}
alias GApplicationFlags ApplicationFlags;

/**
 * #GAskPasswordFlags are used to request specific information from the
 * user, or to notify the user of their choices in an authentication
 * situation.
 */
public enum GAskPasswordFlags
{
	/**
	 * operation requires a password.
	 */
	NEED_PASSWORD = 1,
	/**
	 * operation requires a username.
	 */
	NEED_USERNAME = 2,
	/**
	 * operation requires a domain.
	 */
	NEED_DOMAIN = 4,
	/**
	 * operation supports saving settings.
	 */
	SAVING_SUPPORTED = 8,
	/**
	 * operation supports anonymous users.
	 */
	ANONYMOUS_SUPPORTED = 16,
	/**
	 * operation takes TCRYPT parameters (Since: 2.58)
	 */
	TCRYPT = 32,
}
alias GAskPasswordFlags AskPasswordFlags;

/**
 * Flags used in g_bus_own_name().
 *
 * Since: 2.26
 */
public enum GBusNameOwnerFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Allow another message bus connection to claim the name.
	 */
	ALLOW_REPLACEMENT = 1,
	/**
	 * If another message bus connection owns the name and have
	 * specified %G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT, then take the name from the other connection.
	 */
	REPLACE = 2,
	/**
	 * If another message bus connection owns the name, immediately
	 * return an error from g_bus_own_name() rather than entering the waiting queue for that name. (Since 2.54)
	 */
	DO_NOT_QUEUE = 4,
}
alias GBusNameOwnerFlags BusNameOwnerFlags;

/**
 * Flags used in g_bus_watch_name().
 *
 * Since: 2.26
 */
public enum GBusNameWatcherFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * If no-one owns the name when
	 * beginning to watch the name, ask the bus to launch an owner for the
	 * name.
	 */
	AUTO_START = 1,
}
alias GBusNameWatcherFlags BusNameWatcherFlags;

/**
 * An enumeration for well-known message buses.
 *
 * Since: 2.26
 */
public enum GBusType
{
	/**
	 * An alias for the message bus that activated the process, if any.
	 */
	STARTER = -1,
	/**
	 * Not a message bus.
	 */
	NONE = 0,
	/**
	 * The system-wide message bus.
	 */
	SYSTEM = 1,
	/**
	 * The login session message bus.
	 */
	SESSION = 2,
}
alias GBusType BusType;

/**
 * Flags used when calling a g_converter_convert().
 *
 * Since: 2.24
 */
public enum GConverterFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * At end of input data
	 */
	INPUT_AT_END = 1,
	/**
	 * Flush data
	 */
	FLUSH = 2,
}
alias GConverterFlags ConverterFlags;

/**
 * Results returned from g_converter_convert().
 *
 * Since: 2.24
 */
public enum GConverterResult
{
	/**
	 * There was an error during conversion.
	 */
	ERROR = 0,
	/**
	 * Some data was consumed or produced
	 */
	CONVERTED = 1,
	/**
	 * The conversion is finished
	 */
	FINISHED = 2,
	/**
	 * Flushing is finished
	 */
	FLUSHED = 3,
}
alias GConverterResult ConverterResult;

/**
 * Enumeration describing different kinds of native credential types.
 *
 * Since: 2.26
 */
public enum GCredentialsType
{
	/**
	 * Indicates an invalid native credential type.
	 */
	INVALID = 0,
	/**
	 * The native credentials type is a `struct ucred`.
	 */
	LINUX_UCRED = 1,
	/**
	 * The native credentials type is a `struct cmsgcred`.
	 */
	FREEBSD_CMSGCRED = 2,
	/**
	 * The native credentials type is a `struct sockpeercred`. Added in 2.30.
	 */
	OPENBSD_SOCKPEERCRED = 3,
	/**
	 * The native credentials type is a `ucred_t`. Added in 2.40.
	 */
	SOLARIS_UCRED = 4,
	/**
	 * The native credentials type is a `struct unpcbid`. Added in 2.42.
	 */
	NETBSD_UNPCBID = 5,
	/**
	 * The native credentials type is a `struct xucred`. Added in 2.66.
	 */
	APPLE_XUCRED = 6,
	/**
	 * The native credentials type is a PID `DWORD`. Added in 2.72.
	 */
	WIN32_PID = 7,
}
alias GCredentialsType CredentialsType;

/**
 * Flags used in g_dbus_connection_call() and similar APIs.
 *
 * Since: 2.26
 */
public enum GDBusCallFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * The bus must not launch
	 * an owner for the destination name in response to this method
	 * invocation.
	 */
	NO_AUTO_START = 1,
	/**
	 * the caller is prepared to
	 * wait for interactive authorization. Since 2.46.
	 */
	ALLOW_INTERACTIVE_AUTHORIZATION = 2,
}
alias GDBusCallFlags DBusCallFlags;

/**
 * Capabilities negotiated with the remote peer.
 *
 * Since: 2.26
 */
public enum GDBusCapabilityFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * The connection
	 * supports exchanging UNIX file descriptors with the remote peer.
	 */
	UNIX_FD_PASSING = 1,
}
alias GDBusCapabilityFlags DBusCapabilityFlags;

/**
 * Flags used when creating a new #GDBusConnection.
 *
 * Since: 2.26
 */
public enum GDBusConnectionFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Perform authentication against server.
	 */
	AUTHENTICATION_CLIENT = 1,
	/**
	 * Perform authentication against client.
	 */
	AUTHENTICATION_SERVER = 2,
	/**
	 * When
	 * authenticating as a server, allow the anonymous authentication
	 * method.
	 */
	AUTHENTICATION_ALLOW_ANONYMOUS = 4,
	/**
	 * Pass this flag if connecting to a peer that is a
	 * message bus. This means that the Hello() method will be invoked as part of the connection setup.
	 */
	MESSAGE_BUS_CONNECTION = 8,
	/**
	 * If set, processing of D-Bus messages is
	 * delayed until g_dbus_connection_start_message_processing() is called.
	 */
	DELAY_MESSAGE_PROCESSING = 16,
	/**
	 * When authenticating
	 * as a server, require the UID of the peer to be the same as the UID of the server. (Since: 2.68)
	 */
	AUTHENTICATION_REQUIRE_SAME_USER = 32,
}
alias GDBusConnectionFlags DBusConnectionFlags;

/**
 * Error codes for the %G_DBUS_ERROR error domain.
 *
 * Since: 2.26
 */
public enum GDBusError
{
	/**
	 * A generic error; "something went wrong" - see the error message for
	 * more.
	 */
	FAILED = 0,
	/**
	 * There was not enough memory to complete an operation.
	 */
	NO_MEMORY = 1,
	/**
	 * The bus doesn't know how to launch a service to supply the bus name
	 * you wanted.
	 */
	SERVICE_UNKNOWN = 2,
	/**
	 * The bus name you referenced doesn't exist (i.e. no application owns
	 * it).
	 */
	NAME_HAS_NO_OWNER = 3,
	/**
	 * No reply to a message expecting one, usually means a timeout occurred.
	 */
	NO_REPLY = 4,
	/**
	 * Something went wrong reading or writing to a socket, for example.
	 */
	IO_ERROR = 5,
	/**
	 * A D-Bus bus address was malformed.
	 */
	BAD_ADDRESS = 6,
	/**
	 * Requested operation isn't supported (like ENOSYS on UNIX).
	 */
	NOT_SUPPORTED = 7,
	/**
	 * Some limited resource is exhausted.
	 */
	LIMITS_EXCEEDED = 8,
	/**
	 * Security restrictions don't allow doing what you're trying to do.
	 */
	ACCESS_DENIED = 9,
	/**
	 * Authentication didn't work.
	 */
	AUTH_FAILED = 10,
	/**
	 * Unable to connect to server (probably caused by ECONNREFUSED on a
	 * socket).
	 */
	NO_SERVER = 11,
	/**
	 * Certain timeout errors, possibly ETIMEDOUT on a socket.  Note that
	 * %G_DBUS_ERROR_NO_REPLY is used for message reply timeouts. Warning:
	 * this is confusingly-named given that %G_DBUS_ERROR_TIMED_OUT also
	 * exists. We can't fix it for compatibility reasons so just be
	 * careful.
	 */
	TIMEOUT = 12,
	/**
	 * No network access (probably ENETUNREACH on a socket).
	 */
	NO_NETWORK = 13,
	/**
	 * Can't bind a socket since its address is in use (i.e. EADDRINUSE).
	 */
	ADDRESS_IN_USE = 14,
	/**
	 * The connection is disconnected and you're trying to use it.
	 */
	DISCONNECTED = 15,
	/**
	 * Invalid arguments passed to a method call.
	 */
	INVALID_ARGS = 16,
	/**
	 * Missing file.
	 */
	FILE_NOT_FOUND = 17,
	/**
	 * Existing file and the operation you're using does not silently overwrite.
	 */
	FILE_EXISTS = 18,
	/**
	 * Method name you invoked isn't known by the object you invoked it on.
	 */
	UNKNOWN_METHOD = 19,
	/**
	 * Certain timeout errors, e.g. while starting a service. Warning: this is
	 * confusingly-named given that %G_DBUS_ERROR_TIMEOUT also exists. We
	 * can't fix it for compatibility reasons so just be careful.
	 */
	TIMED_OUT = 20,
	/**
	 * Tried to remove or modify a match rule that didn't exist.
	 */
	MATCH_RULE_NOT_FOUND = 21,
	/**
	 * The match rule isn't syntactically valid.
	 */
	MATCH_RULE_INVALID = 22,
	/**
	 * While starting a new process, the exec() call failed.
	 */
	SPAWN_EXEC_FAILED = 23,
	/**
	 * While starting a new process, the fork() call failed.
	 */
	SPAWN_FORK_FAILED = 24,
	/**
	 * While starting a new process, the child exited with a status code.
	 */
	SPAWN_CHILD_EXITED = 25,
	/**
	 * While starting a new process, the child exited on a signal.
	 */
	SPAWN_CHILD_SIGNALED = 26,
	/**
	 * While starting a new process, something went wrong.
	 */
	SPAWN_FAILED = 27,
	/**
	 * We failed to setup the environment correctly.
	 */
	SPAWN_SETUP_FAILED = 28,
	/**
	 * We failed to setup the config parser correctly.
	 */
	SPAWN_CONFIG_INVALID = 29,
	/**
	 * Bus name was not valid.
	 */
	SPAWN_SERVICE_INVALID = 30,
	/**
	 * Service file not found in system-services directory.
	 */
	SPAWN_SERVICE_NOT_FOUND = 31,
	/**
	 * Permissions are incorrect on the setuid helper.
	 */
	SPAWN_PERMISSIONS_INVALID = 32,
	/**
	 * Service file invalid (Name, User or Exec missing).
	 */
	SPAWN_FILE_INVALID = 33,
	/**
	 * Tried to get a UNIX process ID and it wasn't available.
	 */
	SPAWN_NO_MEMORY = 34,
	/**
	 * Tried to get a UNIX process ID and it wasn't available.
	 */
	UNIX_PROCESS_ID_UNKNOWN = 35,
	/**
	 * A type signature is not valid.
	 */
	INVALID_SIGNATURE = 36,
	/**
	 * A file contains invalid syntax or is otherwise broken.
	 */
	INVALID_FILE_CONTENT = 37,
	/**
	 * Asked for SELinux security context and it wasn't available.
	 */
	SELINUX_SECURITY_CONTEXT_UNKNOWN = 38,
	/**
	 * Asked for ADT audit data and it wasn't available.
	 */
	ADT_AUDIT_DATA_UNKNOWN = 39,
	/**
	 * There's already an object with the requested object path.
	 */
	OBJECT_PATH_IN_USE = 40,
	/**
	 * Object you invoked a method on isn't known. Since 2.42
	 */
	UNKNOWN_OBJECT = 41,
	/**
	 * Interface you invoked a method on isn't known by the object. Since 2.42
	 */
	UNKNOWN_INTERFACE = 42,
	/**
	 * Property you tried to access isn't known by the object. Since 2.42
	 */
	UNKNOWN_PROPERTY = 43,
	/**
	 * Property you tried to set is read-only. Since 2.42
	 */
	PROPERTY_READ_ONLY = 44,
}
alias GDBusError DBusError;

/**
 * Flags describing the behavior of a #GDBusInterfaceSkeleton instance.
 *
 * Since: 2.30
 */
public enum GDBusInterfaceSkeletonFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Each method invocation is handled in
	 * a thread dedicated to the invocation. This means that the method implementation can use blocking IO
	 * without blocking any other part of the process. It also means that the method implementation must
	 * use locking to access data structures used by other threads.
	 */
	HANDLE_METHOD_INVOCATIONS_IN_THREAD = 1,
}
alias GDBusInterfaceSkeletonFlags DBusInterfaceSkeletonFlags;

/**
 * Enumeration used to describe the byte order of a D-Bus message.
 *
 * Since: 2.26
 */
public enum GDBusMessageByteOrder
{
	/**
	 * The byte order is big endian.
	 */
	BIG_ENDIAN = 66,
	/**
	 * The byte order is little endian.
	 */
	LITTLE_ENDIAN = 108,
}
alias GDBusMessageByteOrder DBusMessageByteOrder;

/**
 * Message flags used in #GDBusMessage.
 *
 * Since: 2.26
 */
public enum GDBusMessageFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * A reply is not expected.
	 */
	NO_REPLY_EXPECTED = 1,
	/**
	 * The bus must not launch an
	 * owner for the destination name in response to this message.
	 */
	NO_AUTO_START = 2,
	/**
	 * If set on a method
	 * call, this flag means that the caller is prepared to wait for interactive
	 * authorization. Since 2.46.
	 */
	ALLOW_INTERACTIVE_AUTHORIZATION = 4,
}
alias GDBusMessageFlags DBusMessageFlags;

/**
 * Header fields used in #GDBusMessage.
 *
 * Since: 2.26
 */
public enum GDBusMessageHeaderField
{
	/**
	 * Not a valid header field.
	 */
	INVALID = 0,
	/**
	 * The object path.
	 */
	PATH = 1,
	/**
	 * The interface name.
	 */
	INTERFACE = 2,
	/**
	 * The method or signal name.
	 */
	MEMBER = 3,
	/**
	 * The name of the error that occurred.
	 */
	ERROR_NAME = 4,
	/**
	 * The serial number the message is a reply to.
	 */
	REPLY_SERIAL = 5,
	/**
	 * The name the message is intended for.
	 */
	DESTINATION = 6,
	/**
	 * Unique name of the sender of the message (filled in by the bus).
	 */
	SENDER = 7,
	/**
	 * The signature of the message body.
	 */
	SIGNATURE = 8,
	/**
	 * The number of UNIX file descriptors that accompany the message.
	 */
	NUM_UNIX_FDS = 9,
}
alias GDBusMessageHeaderField DBusMessageHeaderField;

/**
 * Message types used in #GDBusMessage.
 *
 * Since: 2.26
 */
public enum GDBusMessageType
{
	/**
	 * Message is of invalid type.
	 */
	INVALID = 0,
	/**
	 * Method call.
	 */
	METHOD_CALL = 1,
	/**
	 * Method reply.
	 */
	METHOD_RETURN = 2,
	/**
	 * Error reply.
	 */
	ERROR = 3,
	/**
	 * Signal emission.
	 */
	SIGNAL = 4,
}
alias GDBusMessageType DBusMessageType;

/**
 * Flags used when constructing a #GDBusObjectManagerClient.
 *
 * Since: 2.30
 */
public enum GDBusObjectManagerClientFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * If not set and the
	 * manager is for a well-known name, then request the bus to launch
	 * an owner for the name if no-one owns the name. This flag can only
	 * be used in managers for well-known names.
	 */
	DO_NOT_AUTO_START = 1,
}
alias GDBusObjectManagerClientFlags DBusObjectManagerClientFlags;

/**
 * Flags describing the access control of a D-Bus property.
 *
 * Since: 2.26
 */
public enum GDBusPropertyInfoFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Property is readable.
	 */
	READABLE = 1,
	/**
	 * Property is writable.
	 */
	WRITABLE = 2,
}
alias GDBusPropertyInfoFlags DBusPropertyInfoFlags;

/**
 * Flags used when constructing an instance of a #GDBusProxy derived class.
 *
 * Since: 2.26
 */
public enum GDBusProxyFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Don't load properties.
	 */
	DO_NOT_LOAD_PROPERTIES = 1,
	/**
	 * Don't connect to signals on the remote object.
	 */
	DO_NOT_CONNECT_SIGNALS = 2,
	/**
	 * If the proxy is for a well-known name,
	 * do not ask the bus to launch an owner during proxy initialization or a method call.
	 * This flag is only meaningful in proxies for well-known names.
	 */
	DO_NOT_AUTO_START = 4,
	/**
	 * If set, the property value for any __invalidated property__ will be (asynchronously) retrieved upon receiving the [`PropertiesChanged`](http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-properties) D-Bus signal and the property will not cause emission of the #GDBusProxy::g-properties-changed signal. When the value is received the #GDBusProxy::g-properties-changed signal is emitted for the property along with the retrieved value. Since 2.32.
	 */
	GET_INVALIDATED_PROPERTIES = 8,
	/**
	 * If the proxy is for a well-known name,
	 * do not ask the bus to launch an owner during proxy initialization, but allow it to be
	 * autostarted by a method call. This flag is only meaningful in proxies for well-known names,
	 * and only if %G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START is not also specified.
	 */
	DO_NOT_AUTO_START_AT_CONSTRUCTION = 16,
	/**
	 * Don't actually send the AddMatch D-Bus
	 * call for this signal subscription. This gives you more control
	 * over which match rules you add (but you must add them manually). (Since: 2.72)
	 */
	NO_MATCH_RULE = 32,
}
alias GDBusProxyFlags DBusProxyFlags;

/**
 * Flags used when sending #GDBusMessages on a #GDBusConnection.
 *
 * Since: 2.26
 */
public enum GDBusSendMessageFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Do not automatically
	 * assign a serial number from the #GDBusConnection object when
	 * sending a message.
	 */
	PRESERVE_SERIAL = 1,
}
alias GDBusSendMessageFlags DBusSendMessageFlags;

/**
 * Flags used when creating a #GDBusServer.
 *
 * Since: 2.26
 */
public enum GDBusServerFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * All #GDBusServer::new-connection
	 * signals will run in separated dedicated threads (see signal for
	 * details).
	 */
	RUN_IN_THREAD = 1,
	/**
	 * Allow the anonymous
	 * authentication method.
	 */
	AUTHENTICATION_ALLOW_ANONYMOUS = 2,
	/**
	 * Require the UID of the
	 * peer to be the same as the UID of the server when authenticating. (Since: 2.68)
	 */
	AUTHENTICATION_REQUIRE_SAME_USER = 4,
}
alias GDBusServerFlags DBusServerFlags;

/**
 * Flags used when subscribing to signals via g_dbus_connection_signal_subscribe().
 *
 * Since: 2.26
 */
public enum GDBusSignalFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Don't actually send the AddMatch
	 * D-Bus call for this signal subscription.  This gives you more control
	 * over which match rules you add (but you must add them manually).
	 */
	NO_MATCH_RULE = 1,
	/**
	 * Match first arguments that
	 * contain a bus or interface name with the given namespace.
	 */
	MATCH_ARG0_NAMESPACE = 2,
	/**
	 * Match first arguments that
	 * contain an object path that is either equivalent to the given path,
	 * or one of the paths is a subpath of the other.
	 */
	MATCH_ARG0_PATH = 4,
}
alias GDBusSignalFlags DBusSignalFlags;

/**
 * Flags passed to g_dbus_connection_register_subtree().
 *
 * Since: 2.26
 */
public enum GDBusSubtreeFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Method calls to objects not in the enumerated range
	 * will still be dispatched. This is useful if you want
	 * to dynamically spawn objects in the subtree.
	 */
	DISPATCH_TO_UNENUMERATED_NODES = 1,
}
alias GDBusSubtreeFlags DBusSubtreeFlags;

/**
 * #GDataStreamByteOrder is used to ensure proper endianness of streaming data sources
 * across various machine architectures.
 */
public enum GDataStreamByteOrder
{
	/**
	 * Selects Big Endian byte order.
	 */
	BIG_ENDIAN = 0,
	/**
	 * Selects Little Endian byte order.
	 */
	LITTLE_ENDIAN = 1,
	/**
	 * Selects endianness based on host machine's architecture.
	 */
	HOST_ENDIAN = 2,
}
alias GDataStreamByteOrder DataStreamByteOrder;

/**
 * #GDataStreamNewlineType is used when checking for or setting the line endings for a given file.
 */
public enum GDataStreamNewlineType
{
	/**
	 * Selects "LF" line endings, common on most modern UNIX platforms.
	 */
	LF = 0,
	/**
	 * Selects "CR" line endings.
	 */
	CR = 1,
	/**
	 * Selects "CR, LF" line ending, common on Microsoft Windows.
	 */
	CR_LF = 2,
	/**
	 * Automatically try to handle any line ending type.
	 */
	ANY = 3,
}
alias GDataStreamNewlineType DataStreamNewlineType;

/**
 * Flags used when starting a drive.
 *
 * Since: 2.22
 */
public enum GDriveStartFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
}
alias GDriveStartFlags DriveStartFlags;

/**
 * Enumeration describing how a drive can be started/stopped.
 *
 * Since: 2.22
 */
public enum GDriveStartStopType
{
	/**
	 * Unknown or drive doesn't support
	 * start/stop.
	 */
	UNKNOWN = 0,
	/**
	 * The stop method will physically
	 * shut down the drive and e.g. power down the port the drive is
	 * attached to.
	 */
	SHUTDOWN = 1,
	/**
	 * The start/stop methods are used
	 * for connecting/disconnect to the drive over the network.
	 */
	NETWORK = 2,
	/**
	 * The start/stop methods will
	 * assemble/disassemble a virtual drive from several physical
	 * drives.
	 */
	MULTIDISK = 3,
	/**
	 * The start/stop methods will
	 * unlock/lock the disk (for example using the ATA <quote>SECURITY
	 * UNLOCK DEVICE</quote> command)
	 */
	PASSWORD = 4,
}
alias GDriveStartStopType DriveStartStopType;

/**
 * GEmblemOrigin is used to add information about the origin of the emblem
 * to #GEmblem.
 *
 * Since: 2.18
 */
public enum GEmblemOrigin
{
	/**
	 * Emblem of unknown origin
	 */
	UNKNOWN = 0,
	/**
	 * Emblem adds device-specific information
	 */
	DEVICE = 1,
	/**
	 * Emblem depicts live metadata, such as "readonly"
	 */
	LIVEMETADATA = 2,
	/**
	 * Emblem comes from a user-defined tag, e.g. set by nautilus (in the future)
	 */
	TAG = 3,
}
alias GEmblemOrigin EmblemOrigin;

/**
 * Flags specifying the behaviour of an attribute.
 */
public enum GFileAttributeInfoFlags
{
	/**
	 * no flags set.
	 */
	NONE = 0,
	/**
	 * copy the attribute values when the file is copied.
	 */
	COPY_WITH_FILE = 1,
	/**
	 * copy the attribute values when the file is moved.
	 */
	COPY_WHEN_MOVED = 2,
}
alias GFileAttributeInfoFlags FileAttributeInfoFlags;

/**
 * Used by g_file_set_attributes_from_info() when setting file attributes.
 */
public enum GFileAttributeStatus
{
	/**
	 * Attribute value is unset (empty).
	 */
	UNSET = 0,
	/**
	 * Attribute value is set.
	 */
	SET = 1,
	/**
	 * Indicates an error in setting the value.
	 */
	ERROR_SETTING = 2,
}
alias GFileAttributeStatus FileAttributeStatus;

/**
 * The data types for file attributes.
 */
public enum GFileAttributeType
{
	/**
	 * indicates an invalid or uninitialized type.
	 */
	INVALID = 0,
	/**
	 * a null terminated UTF8 string.
	 */
	STRING = 1,
	/**
	 * a zero terminated string of non-zero bytes.
	 */
	BYTE_STRING = 2,
	/**
	 * a boolean value.
	 */
	BOOLEAN = 3,
	/**
	 * an unsigned 4-byte/32-bit integer.
	 */
	UINT32 = 4,
	/**
	 * a signed 4-byte/32-bit integer.
	 */
	INT32 = 5,
	/**
	 * an unsigned 8-byte/64-bit integer.
	 */
	UINT64 = 6,
	/**
	 * a signed 8-byte/64-bit integer.
	 */
	INT64 = 7,
	/**
	 * a #GObject.
	 */
	OBJECT = 8,
	/**
	 * a %NULL terminated char **. Since 2.22
	 */
	STRINGV = 9,
}
alias GFileAttributeType FileAttributeType;

/**
 * Flags used when copying or moving files.
 */
public enum GFileCopyFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Overwrite any existing files
	 */
	OVERWRITE = 1,
	/**
	 * Make a backup of any existing files.
	 */
	BACKUP = 2,
	/**
	 * Don't follow symlinks.
	 */
	NOFOLLOW_SYMLINKS = 4,
	/**
	 * Copy all file metadata instead of just default set used for copy (see #GFileInfo).
	 */
	ALL_METADATA = 8,
	/**
	 * Don't use copy and delete fallback if native move not supported.
	 */
	NO_FALLBACK_FOR_MOVE = 16,
	/**
	 * Leaves target file with default perms, instead of setting the source file perms.
	 */
	TARGET_DEFAULT_PERMS = 32,
}
alias GFileCopyFlags FileCopyFlags;

/**
 * Flags used when an operation may create a file.
 */
public enum GFileCreateFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Create a file that can only be
	 * accessed by the current user.
	 */
	PRIVATE = 1,
	/**
	 * Replace the destination
	 * as if it didn't exist before. Don't try to keep any old
	 * permissions, replace instead of following links. This
	 * is generally useful if you're doing a "copy over"
	 * rather than a "save new version of" replace operation.
	 * You can think of it as "unlink destination" before
	 * writing to it, although the implementation may not
	 * be exactly like that. This flag can only be used with
	 * g_file_replace() and its variants, including g_file_replace_contents().
	 * Since 2.20
	 */
	REPLACE_DESTINATION = 2,
}
alias GFileCreateFlags FileCreateFlags;

/**
 * Flags that can be used with g_file_measure_disk_usage().
 *
 * Since: 2.38
 */
public enum GFileMeasureFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Report any error encountered
	 * while traversing the directory tree.  Normally errors are only
	 * reported for the toplevel file.
	 */
	REPORT_ANY_ERROR = 2,
	/**
	 * Tally usage based on apparent file
	 * sizes.  Normally, the block-size is used, if available, as this is a
	 * more accurate representation of disk space used.
	 * Compare with `du --apparent-size`.
	 */
	APPARENT_SIZE = 4,
	/**
	 * Do not cross mount point boundaries.
	 * Compare with `du -x`.
	 */
	NO_XDEV = 8,
}
alias GFileMeasureFlags FileMeasureFlags;

/**
 * Specifies what type of event a monitor event is.
 */
public enum GFileMonitorEvent
{
	/**
	 * a file changed.
	 */
	CHANGED = 0,
	/**
	 * a hint that this was probably the last change in a set of changes.
	 */
	CHANGES_DONE_HINT = 1,
	/**
	 * a file was deleted.
	 */
	DELETED = 2,
	/**
	 * a file was created.
	 */
	CREATED = 3,
	/**
	 * a file attribute was changed.
	 */
	ATTRIBUTE_CHANGED = 4,
	/**
	 * the file location will soon be unmounted.
	 */
	PRE_UNMOUNT = 5,
	/**
	 * the file location was unmounted.
	 */
	UNMOUNTED = 6,
	/**
	 * the file was moved -- only sent if the
	 * (deprecated) %G_FILE_MONITOR_SEND_MOVED flag is set
	 */
	MOVED = 7,
	/**
	 * the file was renamed within the
	 * current directory -- only sent if the %G_FILE_MONITOR_WATCH_MOVES
	 * flag is set.  Since: 2.46.
	 */
	RENAMED = 8,
	/**
	 * the file was moved into the
	 * monitored directory from another location -- only sent if the
	 * %G_FILE_MONITOR_WATCH_MOVES flag is set.  Since: 2.46.
	 */
	MOVED_IN = 9,
	/**
	 * the file was moved out of the
	 * monitored directory to another location -- only sent if the
	 * %G_FILE_MONITOR_WATCH_MOVES flag is set.  Since: 2.46
	 */
	MOVED_OUT = 10,
}
alias GFileMonitorEvent FileMonitorEvent;

/**
 * Flags used to set what a #GFileMonitor will watch for.
 */
public enum GFileMonitorFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Watch for mount events.
	 */
	WATCH_MOUNTS = 1,
	/**
	 * Pair DELETED and CREATED events caused
	 * by file renames (moves) and send a single G_FILE_MONITOR_EVENT_MOVED
	 * event instead (NB: not supported on all backends; the default
	 * behaviour -without specifying this flag- is to send single DELETED
	 * and CREATED events).  Deprecated since 2.46: use
	 * %G_FILE_MONITOR_WATCH_MOVES instead.
	 */
	SEND_MOVED = 2,
	/**
	 * Watch for changes to the file made
	 * via another hard link. Since 2.36.
	 */
	WATCH_HARD_LINKS = 4,
	/**
	 * Watch for rename operations on a
	 * monitored directory.  This causes %G_FILE_MONITOR_EVENT_RENAMED,
	 * %G_FILE_MONITOR_EVENT_MOVED_IN and %G_FILE_MONITOR_EVENT_MOVED_OUT
	 * events to be emitted when possible.  Since: 2.46.
	 */
	WATCH_MOVES = 8,
}
alias GFileMonitorFlags FileMonitorFlags;

/**
 * Flags used when querying a #GFileInfo.
 */
public enum GFileQueryInfoFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Don't follow symlinks.
	 */
	NOFOLLOW_SYMLINKS = 1,
}
alias GFileQueryInfoFlags FileQueryInfoFlags;

/**
 * Indicates the file's on-disk type.
 *
 * On Windows systems a file will never have %G_FILE_TYPE_SYMBOLIC_LINK type;
 * use #GFileInfo and %G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK to determine
 * whether a file is a symlink or not. This is due to the fact that NTFS does
 * not have a single filesystem object type for symbolic links - it has
 * files that symlink to files, and directories that symlink to directories.
 * #GFileType enumeration cannot precisely represent this important distinction,
 * which is why all Windows symlinks will continue to be reported as
 * %G_FILE_TYPE_REGULAR or %G_FILE_TYPE_DIRECTORY.
 */
public enum GFileType
{
	/**
	 * File's type is unknown.
	 */
	UNKNOWN = 0,
	/**
	 * File handle represents a regular file.
	 */
	REGULAR = 1,
	/**
	 * File handle represents a directory.
	 */
	DIRECTORY = 2,
	/**
	 * File handle represents a symbolic link
	 * (Unix systems).
	 */
	SYMBOLIC_LINK = 3,
	/**
	 * File is a "special" file, such as a socket, fifo,
	 * block device, or character device.
	 */
	SPECIAL = 4,
	/**
	 * File is a shortcut (Windows systems).
	 */
	SHORTCUT = 5,
	/**
	 * File is a mountable location.
	 */
	MOUNTABLE = 6,
}
alias GFileType FileType;

/**
 * Indicates a hint from the file system whether files should be
 * previewed in a file manager. Returned as the value of the key
 * %G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW.
 */
public enum GFilesystemPreviewType
{
	/**
	 * Only preview files if user has explicitly requested it.
	 */
	IF_ALWAYS = 0,
	/**
	 * Preview files if user has requested preview of "local" files.
	 */
	IF_LOCAL = 1,
	/**
	 * Never preview files.
	 */
	NEVER = 2,
}
alias GFilesystemPreviewType FilesystemPreviewType;

/**
 * Error codes returned by GIO functions.
 *
 * Note that this domain may be extended in future GLib releases. In
 * general, new error codes either only apply to new APIs, or else
 * replace %G_IO_ERROR_FAILED in cases that were not explicitly
 * distinguished before. You should therefore avoid writing code like
 * |[<!-- language="C" -->
 * if (g_error_matches (error, G_IO_ERROR, G_IO_ERROR_FAILED))
 * {
 * // Assume that this is EPRINTERONFIRE
 * ...
 * }
 * ]|
 * but should instead treat all unrecognized error codes the same as
 * %G_IO_ERROR_FAILED.
 *
 * See also #GPollableReturn for a cheaper way of returning
 * %G_IO_ERROR_WOULD_BLOCK to callers without allocating a #GError.
 */
public enum GIOErrorEnum
{
	/**
	 * Generic error condition for when an operation fails
	 * and no more specific #GIOErrorEnum value is defined.
	 */
	FAILED = 0,
	/**
	 * File not found.
	 */
	NOT_FOUND = 1,
	/**
	 * File already exists.
	 */
	EXISTS = 2,
	/**
	 * File is a directory.
	 */
	IS_DIRECTORY = 3,
	/**
	 * File is not a directory.
	 */
	NOT_DIRECTORY = 4,
	/**
	 * File is a directory that isn't empty.
	 */
	NOT_EMPTY = 5,
	/**
	 * File is not a regular file.
	 */
	NOT_REGULAR_FILE = 6,
	/**
	 * File is not a symbolic link.
	 */
	NOT_SYMBOLIC_LINK = 7,
	/**
	 * File cannot be mounted.
	 */
	NOT_MOUNTABLE_FILE = 8,
	/**
	 * Filename is too many characters.
	 */
	FILENAME_TOO_LONG = 9,
	/**
	 * Filename is invalid or contains invalid characters.
	 */
	INVALID_FILENAME = 10,
	/**
	 * File contains too many symbolic links.
	 */
	TOO_MANY_LINKS = 11,
	/**
	 * No space left on drive.
	 */
	NO_SPACE = 12,
	/**
	 * Invalid argument.
	 */
	INVALID_ARGUMENT = 13,
	/**
	 * Permission denied.
	 */
	PERMISSION_DENIED = 14,
	/**
	 * Operation (or one of its parameters) not supported
	 */
	NOT_SUPPORTED = 15,
	/**
	 * File isn't mounted.
	 */
	NOT_MOUNTED = 16,
	/**
	 * File is already mounted.
	 */
	ALREADY_MOUNTED = 17,
	/**
	 * File was closed.
	 */
	CLOSED = 18,
	/**
	 * Operation was cancelled. See #GCancellable.
	 */
	CANCELLED = 19,
	/**
	 * Operations are still pending.
	 */
	PENDING = 20,
	/**
	 * File is read only.
	 */
	READ_ONLY = 21,
	/**
	 * Backup couldn't be created.
	 */
	CANT_CREATE_BACKUP = 22,
	/**
	 * File's Entity Tag was incorrect.
	 */
	WRONG_ETAG = 23,
	/**
	 * Operation timed out.
	 */
	TIMED_OUT = 24,
	/**
	 * Operation would be recursive.
	 */
	WOULD_RECURSE = 25,
	/**
	 * File is busy.
	 */
	BUSY = 26,
	/**
	 * Operation would block.
	 */
	WOULD_BLOCK = 27,
	/**
	 * Host couldn't be found (remote operations).
	 */
	HOST_NOT_FOUND = 28,
	/**
	 * Operation would merge files.
	 */
	WOULD_MERGE = 29,
	/**
	 * Operation failed and a helper program has
	 * already interacted with the user. Do not display any error dialog.
	 */
	FAILED_HANDLED = 30,
	/**
	 * The current process has too many files
	 * open and can't open any more. Duplicate descriptors do count toward
	 * this limit. Since 2.20
	 */
	TOO_MANY_OPEN_FILES = 31,
	/**
	 * The object has not been initialized. Since 2.22
	 */
	NOT_INITIALIZED = 32,
	/**
	 * The requested address is already in use. Since 2.22
	 */
	ADDRESS_IN_USE = 33,
	/**
	 * Need more input to finish operation. Since 2.24
	 */
	PARTIAL_INPUT = 34,
	/**
	 * The input data was invalid. Since 2.24
	 */
	INVALID_DATA = 35,
	/**
	 * A remote object generated an error that
	 * doesn't correspond to a locally registered #GError error
	 * domain. Use g_dbus_error_get_remote_error() to extract the D-Bus
	 * error name and g_dbus_error_strip_remote_error() to fix up the
	 * message so it matches what was received on the wire. Since 2.26.
	 */
	DBUS_ERROR = 36,
	/**
	 * Host unreachable. Since 2.26
	 */
	HOST_UNREACHABLE = 37,
	/**
	 * Network unreachable. Since 2.26
	 */
	NETWORK_UNREACHABLE = 38,
	/**
	 * Connection refused. Since 2.26
	 */
	CONNECTION_REFUSED = 39,
	/**
	 * Connection to proxy server failed. Since 2.26
	 */
	PROXY_FAILED = 40,
	/**
	 * Proxy authentication failed. Since 2.26
	 */
	PROXY_AUTH_FAILED = 41,
	/**
	 * Proxy server needs authentication. Since 2.26
	 */
	PROXY_NEED_AUTH = 42,
	/**
	 * Proxy connection is not allowed by ruleset.
	 * Since 2.26
	 */
	PROXY_NOT_ALLOWED = 43,
	/**
	 * Broken pipe. Since 2.36
	 */
	BROKEN_PIPE = 44,
	/**
	 * Connection closed by peer. Note that this
	 * is the same code as %G_IO_ERROR_BROKEN_PIPE; before 2.44 some
	 * "connection closed" errors returned %G_IO_ERROR_BROKEN_PIPE, but others
	 * returned %G_IO_ERROR_FAILED. Now they should all return the same
	 * value, which has this more logical name. Since 2.44.
	 */
	CONNECTION_CLOSED = 44,
	/**
	 * Transport endpoint is not connected. Since 2.44
	 */
	NOT_CONNECTED = 45,
	/**
	 * Message too large. Since 2.48.
	 */
	MESSAGE_TOO_LARGE = 46,
}
alias GIOErrorEnum IOErrorEnum;

/**
 * Flags for use with g_io_module_scope_new().
 *
 * Since: 2.30
 */
public enum GIOModuleScopeFlags
{
	/**
	 * No module scan flags
	 */
	NONE = 0,
	/**
	 * When using this scope to load or
	 * scan modules, automatically block a modules which has the same base
	 * basename as previously loaded module.
	 */
	BLOCK_DUPLICATES = 1,
}
alias GIOModuleScopeFlags IOModuleScopeFlags;

/**
 * GIOStreamSpliceFlags determine how streams should be spliced.
 *
 * Since: 2.28
 */
public enum GIOStreamSpliceFlags
{
	/**
	 * Do not close either stream.
	 */
	NONE = 0,
	/**
	 * Close the first stream after
	 * the splice.
	 */
	CLOSE_STREAM1 = 1,
	/**
	 * Close the second stream after
	 * the splice.
	 */
	CLOSE_STREAM2 = 2,
	/**
	 * Wait for both splice operations to finish
	 * before calling the callback.
	 */
	WAIT_FOR_BOTH = 4,
}
alias GIOStreamSpliceFlags IOStreamSpliceFlags;

/**
 * Memory availability warning levels.
 *
 * Note that because new values might be added, it is recommended that applications check
 * #GMemoryMonitorWarningLevel as ranges, for example:
 * |[<!-- language="C" -->
 * if (warning_level > G_MEMORY_MONITOR_WARNING_LEVEL_LOW)
 * drop_caches ();
 * ]|
 *
 * Since: 2.64
 */
public enum GMemoryMonitorWarningLevel
{
	/**
	 * Memory on the device is low, processes
	 * should free up unneeded resources (for example, in-memory caches) so they can
	 * be used elsewhere.
	 */
	LOW = 50,
	/**
	 * Same as @G_MEMORY_MONITOR_WARNING_LEVEL_LOW
	 * but the device has even less free memory, so processes should try harder to free
	 * up unneeded resources. If your process does not need to stay running, it is a
	 * good time for it to quit.
	 */
	MEDIUM = 100,
	/**
	 * The system will soon start terminating
	 * processes to reclaim memory, including background processes.
	 */
	CRITICAL = 255,
}
alias GMemoryMonitorWarningLevel MemoryMonitorWarningLevel;

/**
 * Flags used when mounting a mount.
 */
public enum GMountMountFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
}
alias GMountMountFlags MountMountFlags;

/**
 * #GMountOperationResult is returned as a result when a request for
 * information is send by the mounting operation.
 */
public enum GMountOperationResult
{
	/**
	 * The request was fulfilled and the
	 * user specified data is now available
	 */
	HANDLED = 0,
	/**
	 * The user requested the mount operation
	 * to be aborted
	 */
	ABORTED = 1,
	/**
	 * The request was unhandled (i.e. not
	 * implemented)
	 */
	UNHANDLED = 2,
}
alias GMountOperationResult MountOperationResult;

/**
 * Flags used when an unmounting a mount.
 */
public enum GMountUnmountFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * Unmount even if there are outstanding
	 * file operations on the mount.
	 */
	FORCE = 1,
}
alias GMountUnmountFlags MountUnmountFlags;

/**
 * The host's network connectivity state, as reported by #GNetworkMonitor.
 *
 * Since: 2.44
 */
public enum GNetworkConnectivity
{
	/**
	 * The host is not configured with a
	 * route to the Internet; it may or may not be connected to a local
	 * network.
	 */
	LOCAL = 1,
	/**
	 * The host is connected to a network, but
	 * does not appear to be able to reach the full Internet, perhaps
	 * due to upstream network problems.
	 */
	LIMITED = 2,
	/**
	 * The host is behind a captive portal and
	 * cannot reach the full Internet.
	 */
	PORTAL = 3,
	/**
	 * The host is connected to a network, and
	 * appears to be able to reach the full Internet.
	 */
	FULL = 4,
}
alias GNetworkConnectivity NetworkConnectivity;

/**
 * Priority levels for #GNotifications.
 *
 * Since: 2.42
 */
public enum GNotificationPriority
{
	/**
	 * the default priority, to be used for the
	 * majority of notifications (for example email messages, software updates,
	 * completed download/sync operations)
	 */
	NORMAL = 0,
	/**
	 * for notifications that do not require
	 * immediate attention - typically used for contextual background
	 * information, such as contact birthdays or local weather
	 */
	LOW = 1,
	/**
	 * for events that require more attention,
	 * usually because responses are time-sensitive (for example chat and SMS
	 * messages or alarms)
	 */
	HIGH = 2,
	/**
	 * for urgent notifications, or notifications
	 * that require a response in a short space of time (for example phone calls
	 * or emergency warnings)
	 */
	URGENT = 3,
}
alias GNotificationPriority NotificationPriority;

/**
 * GOutputStreamSpliceFlags determine how streams should be spliced.
 */
public enum GOutputStreamSpliceFlags
{
	/**
	 * Do not close either stream.
	 */
	NONE = 0,
	/**
	 * Close the source stream after
	 * the splice.
	 */
	CLOSE_SOURCE = 1,
	/**
	 * Close the target stream after
	 * the splice.
	 */
	CLOSE_TARGET = 2,
}
alias GOutputStreamSpliceFlags OutputStreamSpliceFlags;

/**
 * #GPasswordSave is used to indicate the lifespan of a saved password.
 *
 * #Gvfs stores passwords in the Gnome keyring when this flag allows it
 * to, and later retrieves it again from there.
 */
public enum GPasswordSave
{
	/**
	 * never save a password.
	 */
	NEVER = 0,
	/**
	 * save a password for the session.
	 */
	FOR_SESSION = 1,
	/**
	 * save a password permanently.
	 */
	PERMANENTLY = 2,
}
alias GPasswordSave PasswordSave;

/**
 * Return value for various IO operations that signal errors via the
 * return value and not necessarily via a #GError.
 *
 * This enum exists to be able to return errors to callers without having to
 * allocate a #GError. Allocating #GErrors can be quite expensive for
 * regularly happening errors like %G_IO_ERROR_WOULD_BLOCK.
 *
 * In case of %G_POLLABLE_RETURN_FAILED a #GError should be set for the
 * operation to give details about the error that happened.
 *
 * Since: 2.60
 */
public enum GPollableReturn
{
	/**
	 * Generic error condition for when an operation fails.
	 */
	FAILED = 0,
	/**
	 * The operation was successfully finished.
	 */
	OK = 1,
	/**
	 * The operation would block.
	 */
	WOULD_BLOCK = -27,
}
alias GPollableReturn PollableReturn;

/**
 * An error code used with %G_RESOLVER_ERROR in a #GError returned
 * from a #GResolver routine.
 *
 * Since: 2.22
 */
public enum GResolverError
{
	/**
	 * the requested name/address/service was not
	 * found
	 */
	NOT_FOUND = 0,
	/**
	 * the requested information could not
	 * be looked up due to a network error or similar problem
	 */
	TEMPORARY_FAILURE = 1,
	/**
	 * unknown error
	 */
	INTERNAL = 2,
}
alias GResolverError ResolverError;

/**
 * Flags to modify lookup behavior.
 *
 * Since: 2.60
 */
public enum GResolverNameLookupFlags
{
	/**
	 * default behavior (same as g_resolver_lookup_by_name())
	 */
	DEFAULT = 0,
	/**
	 * only resolve ipv4 addresses
	 */
	IPV4_ONLY = 1,
	/**
	 * only resolve ipv6 addresses
	 */
	IPV6_ONLY = 2,
}
alias GResolverNameLookupFlags ResolverNameLookupFlags;

/**
 * The type of record that g_resolver_lookup_records() or
 * g_resolver_lookup_records_async() should retrieve. The records are returned
 * as lists of #GVariant tuples. Each record type has different values in
 * the variant tuples returned.
 *
 * %G_RESOLVER_RECORD_SRV records are returned as variants with the signature
 * `(qqqs)`, containing a `guint16` with the priority, a `guint16` with the
 * weight, a `guint16` with the port, and a string of the hostname.
 *
 * %G_RESOLVER_RECORD_MX records are returned as variants with the signature
 * `(qs)`, representing a `guint16` with the preference, and a string containing
 * the mail exchanger hostname.
 *
 * %G_RESOLVER_RECORD_TXT records are returned as variants with the signature
 * `(as)`, representing an array of the strings in the text record. Note: Most TXT
 * records only contain a single string, but
 * [RFC 1035](https://tools.ietf.org/html/rfc1035#section-3.3.14) does allow a
 * record to contain multiple strings. The RFC which defines the interpretation
 * of a specific TXT record will likely require concatenation of multiple
 * strings if they are present, as with
 * [RFC 7208](https://tools.ietf.org/html/rfc7208#section-3.3).
 *
 * %G_RESOLVER_RECORD_SOA records are returned as variants with the signature
 * `(ssuuuuu)`, representing a string containing the primary name server, a
 * string containing the administrator, the serial as a `guint32`, the refresh
 * interval as a `guint32`, the retry interval as a `guint32`, the expire timeout
 * as a `guint32`, and the TTL as a `guint32`.
 *
 * %G_RESOLVER_RECORD_NS records are returned as variants with the signature
 * `(s)`, representing a string of the hostname of the name server.
 *
 * Since: 2.34
 */
public enum GResolverRecordType
{
	/**
	 * look up DNS SRV records for a domain
	 */
	SRV = 1,
	/**
	 * look up DNS MX records for a domain
	 */
	MX = 2,
	/**
	 * look up DNS TXT records for a name
	 */
	TXT = 3,
	/**
	 * look up DNS SOA records for a zone
	 */
	SOA = 4,
	/**
	 * look up DNS NS records for a domain
	 */
	NS = 5,
}
alias GResolverRecordType ResolverRecordType;

/**
 * An error code used with %G_RESOURCE_ERROR in a #GError returned
 * from a #GResource routine.
 *
 * Since: 2.32
 */
public enum GResourceError
{
	/**
	 * no file was found at the requested path
	 */
	NOT_FOUND = 0,
	/**
	 * unknown error
	 */
	INTERNAL = 1,
}
alias GResourceError ResourceError;

/**
 * GResourceFlags give information about a particular file inside a resource
 * bundle.
 *
 * Since: 2.32
 */
public enum GResourceFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
	/**
	 * The file is compressed.
	 */
	COMPRESSED = 1,
}
alias GResourceFlags ResourceFlags;

/**
 * GResourceLookupFlags determine how resource path lookups are handled.
 *
 * Since: 2.32
 */
public enum GResourceLookupFlags
{
	/**
	 * No flags set.
	 */
	NONE = 0,
}
alias GResourceLookupFlags ResourceLookupFlags;

/**
 * Flags used when creating a binding. These flags determine in which
 * direction the binding works. The default is to synchronize in both
 * directions.
 */
public enum GSettingsBindFlags
{
	/**
	 * Equivalent to `G_SETTINGS_BIND_GET|G_SETTINGS_BIND_SET`
	 */
	DEFAULT = 0,
	/**
	 * Update the #GObject property when the setting changes.
	 * It is an error to use this flag if the property is not writable.
	 */
	GET = 1,
	/**
	 * Update the setting when the #GObject property changes.
	 * It is an error to use this flag if the property is not readable.
	 */
	SET = 2,
	/**
	 * Do not try to bind a "sensitivity" property to the writability of the setting
	 */
	NO_SENSITIVITY = 4,
	/**
	 * When set in addition to %G_SETTINGS_BIND_GET, set the #GObject property
	 * value initially from the setting, but do not listen for changes of the setting
	 */
	GET_NO_CHANGES = 8,
	/**
	 * When passed to g_settings_bind(), uses a pair of mapping functions that invert
	 * the boolean value when mapping between the setting and the property.  The setting and property must both
	 * be booleans.  You cannot pass this flag to g_settings_bind_with_mapping().
	 */
	INVERT_BOOLEAN = 16,
}
alias GSettingsBindFlags SettingsBindFlags;

/**
 * Describes an event occurring on a #GSocketClient. See the
 * #GSocketClient::event signal for more details.
 *
 * Additional values may be added to this type in the future.
 *
 * Since: 2.32
 */
public enum GSocketClientEvent
{
	/**
	 * The client is doing a DNS lookup.
	 */
	RESOLVING = 0,
	/**
	 * The client has completed a DNS lookup.
	 */
	RESOLVED = 1,
	/**
	 * The client is connecting to a remote
	 * host (either a proxy or the destination server).
	 */
	CONNECTING = 2,
	/**
	 * The client has connected to a remote
	 * host.
	 */
	CONNECTED = 3,
	/**
	 * The client is negotiating
	 * with a proxy to connect to the destination server.
	 */
	PROXY_NEGOTIATING = 4,
	/**
	 * The client has negotiated
	 * with the proxy server.
	 */
	PROXY_NEGOTIATED = 5,
	/**
	 * The client is performing a
	 * TLS handshake.
	 */
	TLS_HANDSHAKING = 6,
	/**
	 * The client has performed a
	 * TLS handshake.
	 */
	TLS_HANDSHAKED = 7,
	/**
	 * The client is done with a particular
	 * #GSocketConnectable.
	 */
	COMPLETE = 8,
}
alias GSocketClientEvent SocketClientEvent;

/**
 * The protocol family of a #GSocketAddress. (These values are
 * identical to the system defines %AF_INET, %AF_INET6 and %AF_UNIX,
 * if available.)
 *
 * Since: 2.22
 */
public enum GSocketFamily
{
	/**
	 * no address family
	 */
	INVALID = 0,
	/**
	 * the UNIX domain family
	 */
	UNIX = 1,
	/**
	 * the IPv4 family
	 */
	IPV4 = 2,
	/**
	 * the IPv6 family
	 */
	IPV6 = 10,
}
alias GSocketFamily SocketFamily;

/**
 * Describes an event occurring on a #GSocketListener. See the
 * #GSocketListener::event signal for more details.
 *
 * Additional values may be added to this type in the future.
 *
 * Since: 2.46
 */
public enum GSocketListenerEvent
{
	/**
	 * The listener is about to bind a socket.
	 */
	BINDING = 0,
	/**
	 * The listener has bound a socket.
	 */
	BOUND = 1,
	/**
	 * The listener is about to start
	 * listening on this socket.
	 */
	LISTENING = 2,
	/**
	 * The listener is now listening on
	 * this socket.
	 */
	LISTENED = 3,
}
alias GSocketListenerEvent SocketListenerEvent;

/**
 * Flags used in g_socket_receive_message() and g_socket_send_message().
 * The flags listed in the enum are some commonly available flags, but the
 * values used for them are the same as on the platform, and any other flags
 * are passed in/out as is. So to use a platform specific flag, just include
 * the right system header and pass in the flag.
 *
 * Since: 2.22
 */
public enum GSocketMsgFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * Request to send/receive out of band data.
	 */
	OOB = 1,
	/**
	 * Read data from the socket without removing it from
	 * the queue.
	 */
	PEEK = 2,
	/**
	 * Don't use a gateway to send out the packet,
	 * only send to hosts on directly connected networks.
	 */
	DONTROUTE = 4,
}
alias GSocketMsgFlags SocketMsgFlags;

/**
 * A protocol identifier is specified when creating a #GSocket, which is a
 * family/type specific identifier, where 0 means the default protocol for
 * the particular family/type.
 *
 * This enum contains a set of commonly available and used protocols. You
 * can also pass any other identifiers handled by the platform in order to
 * use protocols not listed here.
 *
 * Since: 2.22
 */
public enum GSocketProtocol
{
	/**
	 * The protocol type is unknown
	 */
	UNKNOWN = -1,
	/**
	 * The default protocol for the family/type
	 */
	DEFAULT = 0,
	/**
	 * TCP over IP
	 */
	TCP = 6,
	/**
	 * UDP over IP
	 */
	UDP = 17,
	/**
	 * SCTP over IP
	 */
	SCTP = 132,
}
alias GSocketProtocol SocketProtocol;

/**
 * Flags used when creating a #GSocket. Some protocols may not implement
 * all the socket types.
 *
 * Since: 2.22
 */
public enum GSocketType
{
	/**
	 * Type unknown or wrong
	 */
	INVALID = 0,
	/**
	 * Reliable connection-based byte streams (e.g. TCP).
	 */
	STREAM = 1,
	/**
	 * Connectionless, unreliable datagram passing.
	 * (e.g. UDP)
	 */
	DATAGRAM = 2,
	/**
	 * Reliable connection-based passing of datagrams
	 * of fixed maximum length (e.g. SCTP).
	 */
	SEQPACKET = 3,
}
alias GSocketType SocketType;

/**
 * Flags to define the behaviour of a #GSubprocess.
 *
 * Note that the default for stdin is to redirect from `/dev/null`.  For
 * stdout and stderr the default are for them to inherit the
 * corresponding descriptor from the calling process.
 *
 * Note that it is a programmer error to mix 'incompatible' flags.  For
 * example, you may not request both %G_SUBPROCESS_FLAGS_STDOUT_PIPE and
 * %G_SUBPROCESS_FLAGS_STDOUT_SILENCE.
 *
 * Since: 2.40
 */
public enum GSubprocessFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
	/**
	 * create a pipe for the stdin of the
	 * spawned process that can be accessed with
	 * g_subprocess_get_stdin_pipe().
	 */
	STDIN_PIPE = 1,
	/**
	 * stdin is inherited from the
	 * calling process.
	 */
	STDIN_INHERIT = 2,
	/**
	 * create a pipe for the stdout of the
	 * spawned process that can be accessed with
	 * g_subprocess_get_stdout_pipe().
	 */
	STDOUT_PIPE = 4,
	/**
	 * silence the stdout of the spawned
	 * process (ie: redirect to `/dev/null`).
	 */
	STDOUT_SILENCE = 8,
	/**
	 * create a pipe for the stderr of the
	 * spawned process that can be accessed with
	 * g_subprocess_get_stderr_pipe().
	 */
	STDERR_PIPE = 16,
	/**
	 * silence the stderr of the spawned
	 * process (ie: redirect to `/dev/null`).
	 */
	STDERR_SILENCE = 32,
	/**
	 * merge the stderr of the spawned
	 * process with whatever the stdout happens to be.  This is a good way
	 * of directing both streams to a common log file, for example.
	 */
	STDERR_MERGE = 64,
	/**
	 * spawned processes will inherit the
	 * file descriptors of their parent, unless those descriptors have
	 * been explicitly marked as close-on-exec.  This flag has no effect
	 * over the "standard" file descriptors (stdin, stdout, stderr).
	 */
	INHERIT_FDS = 128,
	/**
	 * if path searching is
	 * needed when spawning the subprocess, use the `PATH` in the launcher
	 * environment. (Since: 2.72)
	 */
	SEARCH_PATH_FROM_ENVP = 256,
}
alias GSubprocessFlags SubprocessFlags;

/**
 * Flags to define future #GTestDBus behaviour.
 *
 * Since: 2.34
 */
public enum GTestDBusFlags
{
	/**
	 * No flags.
	 */
	NONE = 0,
}
alias GTestDBusFlags TestDBusFlags;

/**
 * The client authentication mode for a #GTlsServerConnection.
 *
 * Since: 2.28
 */
public enum GTlsAuthenticationMode
{
	/**
	 * client authentication not required
	 */
	NONE = 0,
	/**
	 * client authentication is requested
	 */
	REQUESTED = 1,
	/**
	 * client authentication is required
	 */
	REQUIRED = 2,
}
alias GTlsAuthenticationMode TlsAuthenticationMode;

/**
 * A set of flags describing TLS certification validation. This can be
 * used to describe why a particular certificate was rejected (for
 * example, in #GTlsConnection::accept-certificate).
 *
 * GLib guarantees that if certificate verification fails, at least one
 * flag will be set, but it does not guarantee that all possible flags
 * will be set. Accordingly, you may not safely decide to ignore any
 * particular type of error. For example, it would be incorrect to mask
 * %G_TLS_CERTIFICATE_EXPIRED if you want to allow expired certificates,
 * because this could potentially be the only error flag set even if
 * other problems exist with the certificate.
 *
 * Since: 2.28
 */
public enum GTlsCertificateFlags
{
	/**
	 * The signing certificate authority is
	 * not known.
	 */
	UNKNOWN_CA = 1,
	/**
	 * The certificate does not match the
	 * expected identity of the site that it was retrieved from.
	 */
	BAD_IDENTITY = 2,
	/**
	 * The certificate's activation time
	 * is still in the future
	 */
	NOT_ACTIVATED = 4,
	/**
	 * The certificate has expired
	 */
	EXPIRED = 8,
	/**
	 * The certificate has been revoked
	 * according to the #GTlsConnection's certificate revocation list.
	 */
	REVOKED = 16,
	/**
	 * The certificate's algorithm is
	 * considered insecure.
	 */
	INSECURE = 32,
	/**
	 * Some other error occurred validating
	 * the certificate
	 */
	GENERIC_ERROR = 64,
	/**
	 * the combination of all of the above
	 * flags
	 */
	VALIDATE_ALL = 127,
}
alias GTlsCertificateFlags TlsCertificateFlags;

/**
 * Flags for g_tls_interaction_request_certificate(),
 * g_tls_interaction_request_certificate_async(), and
 * g_tls_interaction_invoke_request_certificate().
 *
 * Since: 2.40
 */
public enum GTlsCertificateRequestFlags
{
	/**
	 * No flags
	 */
	NONE = 0,
}
alias GTlsCertificateRequestFlags TlsCertificateRequestFlags;

/**
 * An error code used with %G_TLS_CHANNEL_BINDING_ERROR in a #GError to
 * indicate a TLS channel binding retrieval error.
 *
 * Since: 2.66
 */
public enum GTlsChannelBindingError
{
	/**
	 * Either entire binding
	 * retrieval facility or specific binding type is not implemented in the
	 * TLS backend.
	 */
	NOT_IMPLEMENTED = 0,
	/**
	 * The handshake is not yet
	 * complete on the connection which is a strong requirement for any existing
	 * binding type.
	 */
	INVALID_STATE = 1,
	/**
	 * Handshake is complete but
	 * binding data is not available. That normally indicates the TLS
	 * implementation failed to provide the binding data. For example, some
	 * implementations do not provide a peer certificate for resumed connections.
	 */
	NOT_AVAILABLE = 2,
	/**
	 * Binding type is not supported
	 * on the current connection. This error could be triggered when requesting
	 * `tls-server-end-point` binding data for a certificate which has no hash
	 * function or uses multiple hash functions.
	 */
	NOT_SUPPORTED = 3,
	/**
	 * Any other backend error
	 * preventing binding data retrieval.
	 */
	GENERAL_ERROR = 4,
}
alias GTlsChannelBindingError TlsChannelBindingError;

/**
 * The type of TLS channel binding data to retrieve from #GTlsConnection
 * or #GDtlsConnection, as documented by RFC 5929. The
 * [`tls-unique-for-telnet`](https://tools.ietf.org/html/rfc5929#section-5)
 * binding type is not currently implemented.
 *
 * Since: 2.66
 */
public enum GTlsChannelBindingType
{
	/**
	 * [`tls-unique`](https://tools.ietf.org/html/rfc5929#section-3) binding
	 * type
	 */
	UNIQUE = 0,
	/**
	 * [`tls-server-end-point`](https://tools.ietf.org/html/rfc5929#section-4)
	 * binding type
	 */
	SERVER_END_POINT = 1,
}
alias GTlsChannelBindingType TlsChannelBindingType;

/**
 * Flags for g_tls_database_lookup_certificate_for_handle(),
 * g_tls_database_lookup_certificate_issuer(),
 * and g_tls_database_lookup_certificates_issued_by().
 *
 * Since: 2.30
 */
public enum GTlsDatabaseLookupFlags
{
	/**
	 * No lookup flags
	 */
	NONE = 0,
	/**
	 * Restrict lookup to certificates that have
	 * a private key.
	 */
	KEYPAIR = 1,
}
alias GTlsDatabaseLookupFlags TlsDatabaseLookupFlags;

/**
 * Flags for g_tls_database_verify_chain().
 *
 * Since: 2.30
 */
public enum GTlsDatabaseVerifyFlags
{
	/**
	 * No verification flags
	 */
	NONE = 0,
}
alias GTlsDatabaseVerifyFlags TlsDatabaseVerifyFlags;

/**
 * An error code used with %G_TLS_ERROR in a #GError returned from a
 * TLS-related routine.
 *
 * Since: 2.28
 */
public enum GTlsError
{
	/**
	 * No TLS provider is available
	 */
	UNAVAILABLE = 0,
	/**
	 * Miscellaneous TLS error
	 */
	MISC = 1,
	/**
	 * The certificate presented could not
	 * be parsed or failed validation.
	 */
	BAD_CERTIFICATE = 2,
	/**
	 * The TLS handshake failed because the
	 * peer does not seem to be a TLS server.
	 */
	NOT_TLS = 3,
	/**
	 * The TLS handshake failed because the
	 * peer's certificate was not acceptable.
	 */
	HANDSHAKE = 4,
	/**
	 * The TLS handshake failed because
	 * the server requested a client-side certificate, but none was
	 * provided. See g_tls_connection_set_certificate().
	 */
	CERTIFICATE_REQUIRED = 5,
	/**
	 * The TLS connection was closed without proper
	 * notice, which may indicate an attack. See
	 * g_tls_connection_set_require_close_notify().
	 */
	EOF = 6,
	/**
	 * The TLS handshake failed
	 * because the client sent the fallback SCSV, indicating a protocol
	 * downgrade attack. Since: 2.60
	 */
	INAPPROPRIATE_FALLBACK = 7,
	/**
	 * The certificate failed
	 * to load because a password was incorrect. Since: 2.72
	 */
	BAD_CERTIFICATE_PASSWORD = 8,
}
alias GTlsError TlsError;

/**
 * #GTlsInteractionResult is returned by various functions in #GTlsInteraction
 * when finishing an interaction request.
 *
 * Since: 2.30
 */
public enum GTlsInteractionResult
{
	/**
	 * The interaction was unhandled (i.e. not
	 * implemented).
	 */
	UNHANDLED = 0,
	/**
	 * The interaction completed, and resulting data
	 * is available.
	 */
	HANDLED = 1,
	/**
	 * The interaction has failed, or was cancelled.
	 * and the operation should be aborted.
	 */
	FAILED = 2,
}
alias GTlsInteractionResult TlsInteractionResult;

/**
 * Various flags for the password.
 *
 * Since: 2.30
 */
public enum GTlsPasswordFlags
{
	/**
	 * No flags
	 */
	NONE = 0,
	/**
	 * The password was wrong, and the user should retry.
	 */
	RETRY = 2,
	/**
	 * Hint to the user that the password has been
	 * wrong many times, and the user may not have many chances left.
	 */
	MANY_TRIES = 4,
	/**
	 * Hint to the user that this is the last try to get
	 * this password right.
	 */
	FINAL_TRY = 8,
	/**
	 * For PKCS #11, the user PIN is required.
	 * Since: 2.70.
	 */
	PKCS11_USER = 16,
	/**
	 * For PKCS #11, the security officer
	 * PIN is required. Since: 2.70.
	 */
	PKCS11_SECURITY_OFFICER = 32,
	/**
	 * For PKCS #11, the context-specific
	 * PIN is required. Since: 2.70.
	 */
	PKCS11_CONTEXT_SPECIFIC = 64,
}
alias GTlsPasswordFlags TlsPasswordFlags;

/**
 * The TLS or DTLS protocol version used by a #GTlsConnection or
 * #GDtlsConnection. The integer values of these versions are sequential
 * to ensure newer known protocol versions compare greater than older
 * known versions. Any known DTLS protocol version will compare greater
 * than any SSL or TLS protocol version. The protocol version may be
 * %G_TLS_PROTOCOL_VERSION_UNKNOWN if the TLS backend supports a newer
 * protocol version that GLib does not yet know about. This means that
 * it's possible for an unknown DTLS protocol version to compare less
 * than the TLS protocol versions.
 *
 * Since: 2.70
 */
public enum GTlsProtocolVersion
{
	/**
	 * No protocol version or unknown protocol version
	 */
	UNKNOWN = 0,
	/**
	 * SSL 3.0, which is insecure and should not be used
	 */
	SSL_3_0 = 1,
	/**
	 * TLS 1.0, which is insecure and should not be used
	 */
	TLS_1_0 = 2,
	/**
	 * TLS 1.1, which is insecure and should not be used
	 */
	TLS_1_1 = 3,
	/**
	 * TLS 1.2, defined by [RFC 5246](https://datatracker.ietf.org/doc/html/rfc5246)
	 */
	TLS_1_2 = 4,
	/**
	 * TLS 1.3, defined by [RFC 8446](https://datatracker.ietf.org/doc/html/rfc8446)
	 */
	TLS_1_3 = 5,
	/**
	 * DTLS 1.0, which is insecure and should not be used
	 */
	DTLS_1_0 = 201,
	/**
	 * DTLS 1.2, defined by [RFC 6347](https://datatracker.ietf.org/doc/html/rfc6347)
	 */
	DTLS_1_2 = 202,
}
alias GTlsProtocolVersion TlsProtocolVersion;

/**
 * When to allow rehandshaking. See
 * g_tls_connection_set_rehandshake_mode().
 *
 * Deprecated: Changing the rehandshake mode is no longer
 * required for compatibility. Also, rehandshaking has been removed
 * from the TLS protocol in TLS 1.3.
 *
 * Since: 2.28
 */
public enum GTlsRehandshakeMode
{
	/**
	 * Never allow rehandshaking
	 */
	NEVER = 0,
	/**
	 * Allow safe rehandshaking only
	 */
	SAFELY = 1,
	/**
	 * Allow unsafe rehandshaking
	 */
	UNSAFELY = 2,
}
alias GTlsRehandshakeMode TlsRehandshakeMode;

/**
 * The type of name used by a #GUnixSocketAddress.
 * %G_UNIX_SOCKET_ADDRESS_PATH indicates a traditional unix domain
 * socket bound to a filesystem path. %G_UNIX_SOCKET_ADDRESS_ANONYMOUS
 * indicates a socket not bound to any name (eg, a client-side socket,
 * or a socket created with socketpair()).
 *
 * For abstract sockets, there are two incompatible ways of naming
 * them; the man pages suggest using the entire `struct sockaddr_un`
 * as the name, padding the unused parts of the %sun_path field with
 * zeroes; this corresponds to %G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED.
 * However, many programs instead just use a portion of %sun_path, and
 * pass an appropriate smaller length to bind() or connect(). This is
 * %G_UNIX_SOCKET_ADDRESS_ABSTRACT.
 *
 * Since: 2.26
 */
public enum GUnixSocketAddressType
{
	/**
	 * invalid
	 */
	INVALID = 0,
	/**
	 * anonymous
	 */
	ANONYMOUS = 1,
	/**
	 * a filesystem path
	 */
	PATH = 2,
	/**
	 * an abstract name
	 */
	ABSTRACT = 3,
	/**
	 * an abstract name, 0-padded
	 * to the full length of a unix socket name
	 */
	ABSTRACT_PADDED = 4,
}
alias GUnixSocketAddressType UnixSocketAddressType;

/**
 * Used to select the type of data format to use for #GZlibDecompressor
 * and #GZlibCompressor.
 *
 * Since: 2.24
 */
public enum GZlibCompressorFormat
{
	/**
	 * deflate compression with zlib header
	 */
	ZLIB = 0,
	/**
	 * gzip file format
	 */
	GZIP = 1,
	/**
	 * deflate compression with no header
	 */
	RAW = 2,
}
alias GZlibCompressorFormat ZlibCompressorFormat;

struct GAction;

/**
 * This struct defines a single action.  It is for use with
 * g_action_map_add_action_entries().
 *
 * The order of the items in the structure are intended to reflect
 * frequency of use.  It is permissible to use an incomplete initialiser
 * in order to leave some of the later values as %NULL.  All values
 * after @name are optional.  Additional optional fields may be added in
 * the future.
 *
 * See g_action_map_add_action_entries() for an example.
 */
struct GActionEntry
{
	/**
	 * the name of the action
	 */
	const(char)* name;
	/** */
	extern(C) void function(GSimpleAction* action, GVariant* parameter, void* userData) activate;
	/**
	 * the type of the parameter that must be passed to the
	 * activate function for this action, given as a single
	 * GVariant type string (or %NULL for no parameter)
	 */
	const(char)* parameterType;
	/**
	 * the initial state for this action, given in
	 * [GVariant text format][gvariant-text].  The state is parsed
	 * with no extra type information, so type tags must be added to
	 * the string if they are necessary.  Stateless actions should
	 * give %NULL here.
	 */
	const(char)* state;
	/** */
	extern(C) void function(GSimpleAction* action, GVariant* value, void* userData) changeState;
	size_t[3] padding;
}

struct GActionGroup;

/**
 * The virtual function table for #GActionGroup.
 *
 * Since: 2.28
 */
struct GActionGroupInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to check for
	 * Returns: whether the named action exists
	 */
	extern(C) int function(GActionGroup* actionGroup, const(char)* actionName) hasAction;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 * Returns: a %NULL-terminated array of the names of the
	 *     actions in the group
	 */
	extern(C) char** function(GActionGroup* actionGroup) listActions;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to query
	 * Returns: whether or not the action is currently enabled
	 */
	extern(C) int function(GActionGroup* actionGroup, const(char)* actionName) getActionEnabled;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to query
	 * Returns: the parameter type
	 */
	extern(C) GVariantType* function(GActionGroup* actionGroup, const(char)* actionName) getActionParameterType;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to query
	 * Returns: the state type, if the action is stateful
	 */
	extern(C) GVariantType* function(GActionGroup* actionGroup, const(char)* actionName) getActionStateType;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to query
	 * Returns: the state range hint
	 */
	extern(C) GVariant* function(GActionGroup* actionGroup, const(char)* actionName) getActionStateHint;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of the action to query
	 * Returns: the current state of the action
	 */
	extern(C) GVariant* function(GActionGroup* actionGroup, const(char)* actionName) getActionState;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* value) changeActionState;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* parameter) activateAction;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName) actionAdded;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName) actionRemoved;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName, int enabled) actionEnabledChanged;
	/** */
	extern(C) void function(GActionGroup* actionGroup, const(char)* actionName, GVariant* state) actionStateChanged;
	/**
	 *
	 * Params:
	 *     actionGroup = a #GActionGroup
	 *     actionName = the name of an action in the group
	 *     enabled = if the action is presently enabled
	 *     parameterType = the parameter type, or %NULL if none needed
	 *     stateType = the state type, or %NULL if stateless
	 *     stateHint = the state hint, or %NULL if none
	 *     state = the current state, or %NULL if stateless
	 * Returns: %TRUE if the action exists, else %FALSE
	 */
	extern(C) int function(GActionGroup* actionGroup, const(char)* actionName, int* enabled, GVariantType** parameterType, GVariantType** stateType, GVariant** stateHint, GVariant** state) queryAction;
}

/**
 * The virtual function table for #GAction.
 *
 * Since: 2.28
 */
struct GActionInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: the name of the action
	 */
	extern(C) const(char)* function(GAction* action) getName;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: the parameter type
	 */
	extern(C) GVariantType* function(GAction* action) getParameterType;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: the state type, if the action is stateful
	 */
	extern(C) GVariantType* function(GAction* action) getStateType;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: the state range hint
	 */
	extern(C) GVariant* function(GAction* action) getStateHint;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: whether the action is enabled
	 */
	extern(C) int function(GAction* action) getEnabled;
	/**
	 *
	 * Params:
	 *     action = a #GAction
	 * Returns: the current state of the action
	 */
	extern(C) GVariant* function(GAction* action) getState;
	/** */
	extern(C) void function(GAction* action, GVariant* value) changeState;
	/** */
	extern(C) void function(GAction* action, GVariant* parameter) activate;
}

struct GActionMap;

/**
 * The virtual function table for #GActionMap.
 *
 * Since: 2.32
 */
struct GActionMapInterface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     actionMap = a #GActionMap
	 *     actionName = the name of an action
	 * Returns: a #GAction, or %NULL
	 */
	extern(C) GAction* function(GActionMap* actionMap, const(char)* actionName) lookupAction;
	/** */
	extern(C) void function(GActionMap* actionMap, GAction* action) addAction;
	/** */
	extern(C) void function(GActionMap* actionMap, const(char)* actionName) removeAction;
}

struct GAppInfo;

/**
 * Application Information interface, for operating system portability.
 */
struct GAppInfoIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: a duplicate of @appinfo.
	 */
	extern(C) GAppInfo* function(GAppInfo* appinfo) dup;
	/**
	 *
	 * Params:
	 *     appinfo1 = the first #GAppInfo.
	 *     appinfo2 = the second #GAppInfo.
	 * Returns: %TRUE if @appinfo1 is equal to @appinfo2. %FALSE otherwise.
	 */
	extern(C) int function(GAppInfo* appinfo1, GAppInfo* appinfo2) equal;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: a string containing the application's ID.
	 */
	extern(C) const(char)* function(GAppInfo* appinfo) getId;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: the name of the application for @appinfo.
	 */
	extern(C) const(char)* function(GAppInfo* appinfo) getName;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: a string containing a description of the
	 *     application @appinfo, or %NULL if none.
	 */
	extern(C) const(char)* function(GAppInfo* appinfo) getDescription;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 * Returns: a string containing the @appinfo's application
	 *     binaries name
	 */
	extern(C) char* function(GAppInfo* appinfo) getExecutable;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: the default #GIcon for @appinfo or %NULL
	 *     if there is no default icon.
	 */
	extern(C) GIcon* function(GAppInfo* appinfo) getIcon;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 *     files = a #GList of #GFile objects
	 *     context = a #GAppLaunchContext or %NULL
	 * Returns: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, GList* files, GAppLaunchContext* context, GError** err) launch;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: %TRUE if the @appinfo supports URIs.
	 */
	extern(C) int function(GAppInfo* appinfo) supportsUris;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: %TRUE if the @appinfo supports files.
	 */
	extern(C) int function(GAppInfo* appinfo) supportsFiles;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 *     uris = a #GList containing URIs to launch.
	 *     context = a #GAppLaunchContext or %NULL
	 * Returns: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GError** err) launchUris;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: %TRUE if the @appinfo should be shown, %FALSE otherwise.
	 */
	extern(C) int function(GAppInfo* appinfo) shouldShow;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 *     contentType = the content type.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, const(char)* contentType, GError** err) setAsDefaultForType;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 *     extension = a string containing the file extension
	 *         (without the dot).
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, char* extension, GError** err) setAsDefaultForExtension;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 *     contentType = a string.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, const(char)* contentType, GError** err) addSupportsType;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: %TRUE if it is possible to remove supported
	 *     content types from a given @appinfo, %FALSE if not.
	 */
	extern(C) int function(GAppInfo* appinfo) canRemoveSupportsType;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 *     contentType = a string.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, const(char)* contentType, GError** err) removeSupportsType;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 * Returns: %TRUE if @appinfo can be deleted
	 */
	extern(C) int function(GAppInfo* appinfo) canDelete;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 * Returns: %TRUE if @appinfo has been deleted
	 */
	extern(C) int function(GAppInfo* appinfo) doDelete;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 * Returns: a string containing the @appinfo's commandline,
	 *     or %NULL if this information is not available
	 */
	extern(C) char* function(GAppInfo* appinfo) getCommandline;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 * Returns: the display name of the application for @appinfo, or the name if
	 *     no display name is available.
	 */
	extern(C) const(char)* function(GAppInfo* appinfo) getDisplayName;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo.
	 *     contentType = the content type.
	 * Returns: %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, const(char)* contentType, GError** err) setAsLastUsedForType;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo that can handle files
	 * Returns: a list of content types.
	 */
	extern(C) char** function(GAppInfo* appinfo) getSupportedTypes;
	/** */
	extern(C) void function(GAppInfo* appinfo, GList* uris, GAppLaunchContext* context, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) launchUrisAsync;
	/**
	 *
	 * Params:
	 *     appinfo = a #GAppInfo
	 *     result = a #GAsyncResult
	 * Returns: %TRUE on successful launch, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAppInfo* appinfo, GAsyncResult* result, GError** err) launchUrisFinish;
}

struct GAppInfoMonitor;

struct GAppLaunchContext
{
	GObject parentInstance;
	GAppLaunchContextPrivate* priv;
}

struct GAppLaunchContextClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     context = a #GAppLaunchContext
	 *     info = a #GAppInfo
	 *     files = a #GList of #GFile objects
	 * Returns: a display string for the display.
	 */
	extern(C) char* function(GAppLaunchContext* context, GAppInfo* info, GList* files) getDisplay;
	/**
	 *
	 * Params:
	 *     context = a #GAppLaunchContext
	 *     info = a #GAppInfo
	 *     files = a #GList of of #GFile objects
	 * Returns: a startup notification ID for the application, or %NULL if
	 *     not supported.
	 */
	extern(C) char* function(GAppLaunchContext* context, GAppInfo* info, GList* files) getStartupNotifyId;
	/** */
	extern(C) void function(GAppLaunchContext* context, const(char)* startupNotifyId) launchFailed;
	/** */
	extern(C) void function(GAppLaunchContext* context, GAppInfo* info, GVariant* platformData) launched;
	/** */
	extern(C) void function(GAppLaunchContext* context, GAppInfo* info, GVariant* platformData) launchStarted;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
}

struct GAppLaunchContextPrivate;

struct GApplication
{
	GObject parentInstance;
	GApplicationPrivate* priv;
}

/**
 * Virtual function table for #GApplication.
 *
 * Since: 2.28
 */
struct GApplicationClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GApplication* application) startup;
	/** */
	extern(C) void function(GApplication* application) activate;
	/** */
	extern(C) void function(GApplication* application, GFile** files, int nFiles, const(char)* hint) open;
	/** */
	extern(C) int function(GApplication* application, GApplicationCommandLine* commandLine) commandLine;
	/**
	 *
	 * Params:
	 *     application = a #GApplication
	 *     arguments = array of command line arguments
	 *     exitStatus = exit status to fill after processing the command line.
	 * Returns: %TRUE if the commandline has been completely handled
	 */
	extern(C) int function(GApplication* application, char*** arguments, int* exitStatus) localCommandLine;
	/** */
	extern(C) void function(GApplication* application, GVariant* platformData) beforeEmit;
	/** */
	extern(C) void function(GApplication* application, GVariant* platformData) afterEmit;
	/** */
	extern(C) void function(GApplication* application, GVariantBuilder* builder) addPlatformData;
	/** */
	extern(C) void function(GApplication* application) quitMainloop;
	/** */
	extern(C) void function(GApplication* application) runMainloop;
	/** */
	extern(C) void function(GApplication* application) shutdown;
	/** */
	extern(C) int function(GApplication* application, GDBusConnection* connection, const(char)* objectPath, GError** err) dbusRegister;
	/** */
	extern(C) void function(GApplication* application, GDBusConnection* connection, const(char)* objectPath) dbusUnregister;
	/** */
	extern(C) int function(GApplication* application, GVariantDict* options) handleLocalOptions;
	/** */
	extern(C) int function(GApplication* application) nameLost;
	void*[7] padding;
}

struct GApplicationCommandLine
{
	GObject parentInstance;
	GApplicationCommandLinePrivate* priv;
}

/**
 * The #GApplicationCommandLineClass-struct
 * contains private data only.
 *
 * Since: 2.28
 */
struct GApplicationCommandLineClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GApplicationCommandLine* cmdline, const(char)* message) printLiteral;
	/** */
	extern(C) void function(GApplicationCommandLine* cmdline, const(char)* message) printerrLiteral;
	/**
	 *
	 * Params:
	 *     cmdline = a #GApplicationCommandLine
	 * Returns: a #GInputStream for stdin
	 */
	extern(C) GInputStream* function(GApplicationCommandLine* cmdline) getStdin;
	void*[11] padding;
}

struct GApplicationCommandLinePrivate;

struct GApplicationPrivate;

struct GAsyncInitable;

/**
 * Provides an interface for asynchronous initializing object such that
 * initialization may fail.
 *
 * Since: 2.22
 */
struct GAsyncInitableIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GAsyncInitable* initable, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) initAsync;
	/**
	 *
	 * Params:
	 *     initable = a #GAsyncInitable.
	 *     res = a #GAsyncResult.
	 * Returns: %TRUE if successful. If an error has occurred, this function
	 *     will return %FALSE and set @error appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GAsyncInitable* initable, GAsyncResult* res, GError** err) initFinish;
}

struct GAsyncResult;

/**
 * Interface definition for #GAsyncResult.
 */
struct GAsyncResultIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     res = a #GAsyncResult.
	 * Returns: the user data for @res.
	 */
	extern(C) void* function(GAsyncResult* res) getUserData;
	/**
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 * Returns: a new reference to the source
	 *     object for the @res, or %NULL if there is none.
	 */
	extern(C) GObject* function(GAsyncResult* res) getSourceObject;
	/**
	 *
	 * Params:
	 *     res = a #GAsyncResult
	 *     sourceTag = an application-defined tag
	 * Returns: %TRUE if @res has the indicated @source_tag, %FALSE if
	 *     not.
	 */
	extern(C) int function(GAsyncResult* res, void* sourceTag) isTagged;
}

struct GBufferedInputStream
{
	GFilterInputStream parentInstance;
	GBufferedInputStreamPrivate* priv;
}

struct GBufferedInputStreamClass
{
	GFilterInputStreamClass parentClass;
	/**
	 *
	 * Params:
	 *     stream = a #GBufferedInputStream
	 *     count = the number of bytes that will be read from the stream
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 * Returns: the number of bytes read into @stream's buffer, up to @count,
	 *     or -1 on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GBufferedInputStream* stream, ptrdiff_t count, GCancellable* cancellable, GError** err) fill;
	/** */
	extern(C) void function(GBufferedInputStream* stream, ptrdiff_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) fillAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GBufferedInputStream
	 *     result = a #GAsyncResult
	 * Returns: a #gssize of the read stream, or `-1` on an error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GBufferedInputStream* stream, GAsyncResult* result, GError** err) fillFinish;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GBufferedInputStreamPrivate;

struct GBufferedOutputStream
{
	GFilterOutputStream parentInstance;
	GBufferedOutputStreamPrivate* priv;
}

struct GBufferedOutputStreamClass
{
	GFilterOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
}

struct GBufferedOutputStreamPrivate;

struct GBytesIcon;

struct GCancellable
{
	GObject parentInstance;
	GCancellablePrivate* priv;
}

struct GCancellableClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GCancellable* cancellable) cancelled;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GCancellablePrivate;

struct GCharsetConverter;

struct GCharsetConverterClass
{
	GObjectClass parentClass;
}

struct GConverter;

/**
 * Provides an interface for converting data from one type
 * to another type. The conversion can be stateful
 * and may fail at any place.
 *
 * Since: 2.24
 */
struct GConverterIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     converter = a #GConverter.
	 *     inbuf = the buffer
	 *         containing the data to convert.
	 *     inbufSize = the number of bytes in @inbuf
	 *     outbuf = a buffer to write
	 *         converted data in.
	 *     outbufSize = the number of bytes in @outbuf, must be at least one
	 *     flags = a #GConverterFlags controlling the conversion details
	 *     bytesRead = will be set to the number of bytes read from @inbuf on success
	 *     bytesWritten = will be set to the number of bytes written to @outbuf on success
	 * Returns: a #GConverterResult, %G_CONVERTER_ERROR on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GConverterResult function(GConverter* converter, void* inbuf, size_t inbufSize, void* outbuf, size_t outbufSize, GConverterFlags flags, size_t* bytesRead, size_t* bytesWritten, GError** err) convert;
	/** */
	extern(C) void function(GConverter* converter) reset;
}

struct GConverterInputStream
{
	GFilterInputStream parentInstance;
	GConverterInputStreamPrivate* priv;
}

struct GConverterInputStreamClass
{
	GFilterInputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GConverterInputStreamPrivate;

struct GConverterOutputStream
{
	GFilterOutputStream parentInstance;
	GConverterOutputStreamPrivate* priv;
}

struct GConverterOutputStreamClass
{
	GFilterOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GConverterOutputStreamPrivate;

struct GCredentials;

/**
 * Class structure for #GCredentials.
 *
 * Since: 2.26
 */
struct GCredentialsClass;

struct GDBusActionGroup;

struct GDBusAnnotationInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The name of the annotation, e.g. "org.freedesktop.DBus.Deprecated".
	 */
	char* key;
	/**
	 * The value of the annotation.
	 */
	char* value;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusArgInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * Name of the argument, e.g. @unix_user_id.
	 */
	char* name;
	/**
	 * D-Bus signature of the argument (a single complete type).
	 */
	char* signature;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusAuthObserver;

struct GDBusConnection;

/**
 * Struct used in g_dbus_error_register_error_domain().
 *
 * Since: 2.26
 */
struct GDBusErrorEntry
{
	/**
	 * An error code.
	 */
	int errorCode;
	/**
	 * The D-Bus error name to associate with @error_code.
	 */
	const(char)* dbusErrorName;
}

struct GDBusInterface;

/**
 * Base type for D-Bus interfaces.
 *
 * Since: 2.30
 */
struct GDBusInterfaceIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parentIface;
	/**
	 *
	 * Params:
	 *     interface_ = An exported D-Bus interface.
	 * Returns: A #GDBusInterfaceInfo. Do not free.
	 */
	extern(C) GDBusInterfaceInfo* function(GDBusInterface* interface_) getInfo;
	/**
	 *
	 * Params:
	 *     interface_ = An exported D-Bus interface
	 * Returns: A #GDBusObject or %NULL. The returned
	 *     reference belongs to @interface_ and should not be freed.
	 */
	extern(C) GDBusObject* function(GDBusInterface* interface_) getObject;
	/** */
	extern(C) void function(GDBusInterface* interface_, GDBusObject* object) setObject;
	/**
	 *
	 * Params:
	 *     interface_ = An exported D-Bus interface.
	 * Returns: A #GDBusObject or %NULL. The returned
	 *     reference should be freed with g_object_unref().
	 */
	extern(C) GDBusObject* function(GDBusInterface* interface_) dupObject;
}

struct GDBusInterfaceInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The name of the D-Bus interface, e.g. "org.freedesktop.DBus.Properties".
	 */
	char* name;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusMethodInfo structures or %NULL if there are no methods.
	 */
	GDBusMethodInfo** methods;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusSignalInfo structures or %NULL if there are no signals.
	 */
	GDBusSignalInfo** signals;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusPropertyInfo structures or %NULL if there are no properties.
	 */
	GDBusPropertyInfo** properties;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusInterfaceSkeleton
{
	GObject parentInstance;
	GDBusInterfaceSkeletonPrivate* priv;
}

/**
 * Class structure for #GDBusInterfaceSkeleton.
 *
 * Since: 2.30
 */
struct GDBusInterfaceSkeletonClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     interface_ = A #GDBusInterfaceSkeleton.
	 * Returns: A #GDBusInterfaceInfo (never %NULL). Do not free.
	 */
	extern(C) GDBusInterfaceInfo* function(GDBusInterfaceSkeleton* interface_) getInfo;
	/**
	 *
	 * Params:
	 *     interface_ = A #GDBusInterfaceSkeleton.
	 * Returns: A #GDBusInterfaceVTable (never %NULL).
	 */
	extern(C) GDBusInterfaceVTable* function(GDBusInterfaceSkeleton* interface_) getVtable;
	/**
	 *
	 * Params:
	 *     interface_ = A #GDBusInterfaceSkeleton.
	 * Returns: A #GVariant of type
	 *     ['a{sv}'][G-VARIANT-TYPE-VARDICT:CAPS].
	 *     Free with g_variant_unref().
	 */
	extern(C) GVariant* function(GDBusInterfaceSkeleton* interface_) getProperties;
	/** */
	extern(C) void function(GDBusInterfaceSkeleton* interface_) flush;
	void*[8] vfuncPadding;
	/** */
	extern(C) int function(GDBusInterfaceSkeleton* interface_, GDBusMethodInvocation* invocation) gAuthorizeMethod;
	void*[8] signalPadding;
}

struct GDBusInterfaceSkeletonPrivate;

/**
 * Virtual table for handling properties and method calls for a D-Bus
 * interface.
 *
 * Since 2.38, if you want to handle getting/setting D-Bus properties
 * asynchronously, give %NULL as your get_property() or set_property()
 * function. The D-Bus call will be directed to your @method_call function,
 * with the provided @interface_name set to "org.freedesktop.DBus.Properties".
 *
 * Ownership of the #GDBusMethodInvocation object passed to the
 * method_call() function is transferred to your handler; you must
 * call one of the methods of #GDBusMethodInvocation to return a reply
 * (possibly empty), or an error. These functions also take ownership
 * of the passed-in invocation object, so unless the invocation
 * object has otherwise been referenced, it will be then be freed.
 * Calling one of these functions may be done within your
 * method_call() implementation but it also can be done at a later
 * point to handle the method asynchronously.
 *
 * The usual checks on the validity of the calls is performed. For
 * `Get` calls, an error is automatically returned if the property does
 * not exist or the permissions do not allow access. The same checks are
 * performed for `Set` calls, and the provided value is also checked for
 * being the correct type.
 *
 * For both `Get` and `Set` calls, the #GDBusMethodInvocation
 * passed to the @method_call handler can be queried with
 * g_dbus_method_invocation_get_property_info() to get a pointer
 * to the #GDBusPropertyInfo of the property.
 *
 * If you have readable properties specified in your interface info,
 * you must ensure that you either provide a non-%NULL @get_property()
 * function or provide implementations of both the `Get` and `GetAll`
 * methods on org.freedesktop.DBus.Properties interface in your @method_call
 * function. Note that the required return type of the `Get` call is
 * `(v)`, not the type of the property. `GetAll` expects a return value
 * of type `a{sv}`.
 *
 * If you have writable properties specified in your interface info,
 * you must ensure that you either provide a non-%NULL @set_property()
 * function or provide an implementation of the `Set` call. If implementing
 * the call, you must return the value of type %G_VARIANT_TYPE_UNIT.
 *
 * Since: 2.26
 */
struct GDBusInterfaceVTable
{
	/**
	 * Function for handling incoming method calls.
	 */
	GDBusInterfaceMethodCallFunc methodCall;
	/**
	 * Function for getting a property.
	 */
	GDBusInterfaceGetPropertyFunc getProperty;
	/**
	 * Function for setting a property.
	 */
	GDBusInterfaceSetPropertyFunc setProperty;
	void*[8] padding;
}

struct GDBusMenuModel;

struct GDBusMessage;

struct GDBusMethodInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The name of the D-Bus method, e.g. @RequestName.
	 */
	char* name;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusArgInfo structures or %NULL if there are no in arguments.
	 */
	GDBusArgInfo** inArgs;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusArgInfo structures or %NULL if there are no out arguments.
	 */
	GDBusArgInfo** outArgs;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusMethodInvocation;

struct GDBusNodeInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The path of the node or %NULL if omitted. Note that this may be a relative path. See the D-Bus specification for more details.
	 */
	char* path;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusInterfaceInfo structures or %NULL if there are no interfaces.
	 */
	GDBusInterfaceInfo** interfaces;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusNodeInfo structures or %NULL if there are no nodes.
	 */
	GDBusNodeInfo** nodes;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusObject;

/**
 * Base object type for D-Bus objects.
 *
 * Since: 2.30
 */
struct GDBusObjectIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parentIface;
	/**
	 *
	 * Params:
	 *     object = A #GDBusObject.
	 * Returns: A string owned by @object. Do not free.
	 */
	extern(C) const(char)* function(GDBusObject* object) getObjectPath;
	/**
	 *
	 * Params:
	 *     object = A #GDBusObject.
	 * Returns: A list of #GDBusInterface instances.
	 *     The returned list must be freed by g_list_free() after each element has been freed
	 *     with g_object_unref().
	 */
	extern(C) GList* function(GDBusObject* object) getInterfaces;
	/**
	 *
	 * Params:
	 *     object = A #GDBusObject.
	 *     interfaceName = A D-Bus interface name.
	 * Returns: %NULL if not found, otherwise a
	 *     #GDBusInterface that must be freed with g_object_unref().
	 */
	extern(C) GDBusInterface* function(GDBusObject* object, const(char)* interfaceName) getInterface;
	/** */
	extern(C) void function(GDBusObject* object, GDBusInterface* interface_) interfaceAdded;
	/** */
	extern(C) void function(GDBusObject* object, GDBusInterface* interface_) interfaceRemoved;
}

struct GDBusObjectManager;

struct GDBusObjectManagerClient
{
	GObject parentInstance;
	GDBusObjectManagerClientPrivate* priv;
}

/**
 * Class structure for #GDBusObjectManagerClient.
 *
 * Since: 2.30
 */
struct GDBusObjectManagerClientClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) void function(GDBusObjectManagerClient* manager, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, const(char)* senderName, const(char)* signalName, GVariant* parameters) interfaceProxySignal;
	/** */
	extern(C) void function(GDBusObjectManagerClient* manager, GDBusObjectProxy* objectProxy, GDBusProxy* interfaceProxy, GVariant* changedProperties, const(char)* invalidatedProperties) interfaceProxyPropertiesChanged;
	void*[8] padding;
}

struct GDBusObjectManagerClientPrivate;

/**
 * Base type for D-Bus object managers.
 *
 * Since: 2.30
 */
struct GDBusObjectManagerIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parentIface;
	/**
	 *
	 * Params:
	 *     manager = A #GDBusObjectManager.
	 * Returns: A string owned by @manager. Do not free.
	 */
	extern(C) const(char)* function(GDBusObjectManager* manager) getObjectPath;
	/**
	 *
	 * Params:
	 *     manager = A #GDBusObjectManager.
	 * Returns: A list of
	 *     #GDBusObject objects. The returned list should be freed with
	 *     g_list_free() after each element has been freed with
	 *     g_object_unref().
	 */
	extern(C) GList* function(GDBusObjectManager* manager) getObjects;
	/**
	 *
	 * Params:
	 *     manager = A #GDBusObjectManager.
	 *     objectPath = Object path to look up.
	 * Returns: A #GDBusObject or %NULL. Free with
	 *     g_object_unref().
	 */
	extern(C) GDBusObject* function(GDBusObjectManager* manager, const(char)* objectPath) getObject;
	/**
	 *
	 * Params:
	 *     manager = A #GDBusObjectManager.
	 *     objectPath = Object path to look up.
	 *     interfaceName = D-Bus interface name to look up.
	 * Returns: A #GDBusInterface instance or %NULL. Free
	 *     with g_object_unref().
	 */
	extern(C) GDBusInterface* function(GDBusObjectManager* manager, const(char)* objectPath, const(char)* interfaceName) getInterface;
	/** */
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object) objectAdded;
	/** */
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object) objectRemoved;
	/** */
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* interface_) interfaceAdded;
	/** */
	extern(C) void function(GDBusObjectManager* manager, GDBusObject* object, GDBusInterface* interface_) interfaceRemoved;
}

struct GDBusObjectManagerServer
{
	GObject parentInstance;
	GDBusObjectManagerServerPrivate* priv;
}

/**
 * Class structure for #GDBusObjectManagerServer.
 *
 * Since: 2.30
 */
struct GDBusObjectManagerServerClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	void*[8] padding;
}

struct GDBusObjectManagerServerPrivate;

struct GDBusObjectProxy
{
	GObject parentInstance;
	GDBusObjectProxyPrivate* priv;
}

/**
 * Class structure for #GDBusObjectProxy.
 *
 * Since: 2.30
 */
struct GDBusObjectProxyClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	void*[8] padding;
}

struct GDBusObjectProxyPrivate;

struct GDBusObjectSkeleton
{
	GObject parentInstance;
	GDBusObjectSkeletonPrivate* priv;
}

/**
 * Class structure for #GDBusObjectSkeleton.
 *
 * Since: 2.30
 */
struct GDBusObjectSkeletonClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) int function(GDBusObjectSkeleton* object, GDBusInterfaceSkeleton* interface_, GDBusMethodInvocation* invocation) authorizeMethod;
	void*[8] padding;
}

struct GDBusObjectSkeletonPrivate;

struct GDBusPropertyInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The name of the D-Bus property, e.g. "SupportedFilesystems".
	 */
	char* name;
	/**
	 * The D-Bus signature of the property (a single complete type).
	 */
	char* signature;
	/**
	 * Access control flags for the property.
	 */
	GDBusPropertyInfoFlags flags;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

struct GDBusProxy
{
	GObject parentInstance;
	GDBusProxyPrivate* priv;
}

/**
 * Class structure for #GDBusProxy.
 *
 * Since: 2.26
 */
struct GDBusProxyClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GDBusProxy* proxy, GVariant* changedProperties, const(char)* invalidatedProperties) gPropertiesChanged;
	/** */
	extern(C) void function(GDBusProxy* proxy, const(char)* senderName, const(char)* signalName, GVariant* parameters) gSignal;
	void*[32] padding;
}

struct GDBusProxyPrivate;

struct GDBusServer;

struct GDBusSignalInfo
{
	/**
	 * The reference count or -1 if statically allocated.
	 */
	int refCount;
	/**
	 * The name of the D-Bus signal, e.g. "NameOwnerChanged".
	 */
	char* name;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusArgInfo structures or %NULL if there are no arguments.
	 */
	GDBusArgInfo** args;
	/**
	 * A pointer to a %NULL-terminated array of pointers to #GDBusAnnotationInfo structures or %NULL if there are no annotations.
	 */
	GDBusAnnotationInfo** annotations;
}

/**
 * Virtual table for handling subtrees registered with g_dbus_connection_register_subtree().
 *
 * Since: 2.26
 */
struct GDBusSubtreeVTable
{
	/**
	 * Function for enumerating child nodes.
	 */
	GDBusSubtreeEnumerateFunc enumerate;
	/**
	 * Function for introspecting a child node.
	 */
	GDBusSubtreeIntrospectFunc introspect;
	/**
	 * Function for dispatching a remote call on a child node.
	 */
	GDBusSubtreeDispatchFunc dispatch;
	void*[8] padding;
}

struct GDataInputStream
{
	GBufferedInputStream parentInstance;
	GDataInputStreamPrivate* priv;
}

struct GDataInputStreamClass
{
	GBufferedInputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GDataInputStreamPrivate;

struct GDataOutputStream
{
	GFilterOutputStream parentInstance;
	GDataOutputStreamPrivate* priv;
}

struct GDataOutputStreamClass
{
	GFilterOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GDataOutputStreamPrivate;

struct GDatagramBased;

/**
 * Provides an interface for socket-like objects which have datagram semantics,
 * following the Berkeley sockets API. The interface methods are thin wrappers
 * around the corresponding virtual methods, and no pre-processing of inputs is
 * implemented — so implementations of this API must handle all functionality
 * documented in the interface methods.
 *
 * Since: 2.48
 */
struct GDatagramBasedInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     datagramBased = a #GDatagramBased
	 *     messages = an array of #GInputMessage structs
	 *     numMessages = the number of elements in @messages
	 *     flags = an int containing #GSocketMsgFlags flags for the overall operation
	 *     timeout = the maximum time (in microseconds) to wait, 0 to not block, or -1
	 *         to block indefinitely
	 *     cancellable = a %GCancellable
	 * Returns: number of messages received, or -1 on error. Note that the number
	 *     of messages received may be smaller than @num_messages if @timeout is
	 *     zero or positive, if the peer closed the connection, or if @num_messages
	 *     was larger than `UIO_MAXIOV` (1024), in which case the caller may re-try
	 *     to receive the remaining messages.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDatagramBased* datagramBased, GInputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err) receiveMessages;
	/**
	 *
	 * Params:
	 *     datagramBased = a #GDatagramBased
	 *     messages = an array of #GOutputMessage structs
	 *     numMessages = the number of elements in @messages
	 *     flags = an int containing #GSocketMsgFlags flags
	 *     timeout = the maximum time (in microseconds) to wait, 0 to not block, or -1
	 *         to block indefinitely
	 *     cancellable = a %GCancellable
	 * Returns: number of messages sent, or -1 on error. Note that the number of
	 *     messages sent may be smaller than @num_messages if @timeout is zero
	 *     or positive, or if @num_messages was larger than `UIO_MAXIOV` (1024), in
	 *     which case the caller may re-try to send the remaining messages.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDatagramBased* datagramBased, GOutputMessage* messages, uint numMessages, int flags, long timeout, GCancellable* cancellable, GError** err) sendMessages;
	/**
	 *
	 * Params:
	 *     datagramBased = a #GDatagramBased
	 *     condition = a #GIOCondition mask to monitor
	 *     cancellable = a #GCancellable
	 * Returns: a newly allocated #GSource
	 */
	extern(C) GSource* function(GDatagramBased* datagramBased, GIOCondition condition, GCancellable* cancellable) createSource;
	/**
	 *
	 * Params:
	 *     datagramBased = a #GDatagramBased
	 *     condition = a #GIOCondition mask to check
	 * Returns: the #GIOCondition mask of the current state
	 */
	extern(C) GIOCondition function(GDatagramBased* datagramBased, GIOCondition condition) conditionCheck;
	/**
	 *
	 * Params:
	 *     datagramBased = a #GDatagramBased
	 *     condition = a #GIOCondition mask to wait for
	 *     timeout = the maximum time (in microseconds) to wait, 0 to not block, or -1
	 *         to block indefinitely
	 *     cancellable = a #GCancellable
	 * Returns: %TRUE if the condition was met, %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDatagramBased* datagramBased, GIOCondition condition, long timeout, GCancellable* cancellable, GError** err) conditionWait;
}

struct GDebugController;

struct GDebugControllerDBus
{
	GObject parentInstance;
}

/**
 * The virtual function table for #GDebugControllerDBus.
 *
 * Since: 2.72
 */
struct GDebugControllerDBusClass
{
	/**
	 * The parent class.
	 */
	GObjectClass parentClass;
	/** */
	extern(C) int function(GDebugControllerDBus* controller, GDBusMethodInvocation* invocation) authorize;
	void*[12] padding;
}

/**
 * The virtual function table for #GDebugController.
 *
 * Since: 2.72
 */
struct GDebugControllerInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
}

struct GDesktopAppInfo;

struct GDesktopAppInfoClass
{
	GObjectClass parentClass;
}

struct GDesktopAppInfoLookup;

/**
 * Interface that is used by backends to associate default
 * handlers with URI schemes.
 */
struct GDesktopAppInfoLookupIface
{
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     lookup = a #GDesktopAppInfoLookup
	 *     uriScheme = a string containing a URI scheme.
	 * Returns: #GAppInfo for given @uri_scheme or
	 *     %NULL on error.
	 */
	extern(C) GAppInfo* function(GDesktopAppInfoLookup* lookup, const(char)* uriScheme) getDefaultForUriScheme;
}

struct GDrive;

/**
 * Interface for creating #GDrive implementations.
 */
struct GDriveIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GDrive* drive) changed;
	/** */
	extern(C) void function(GDrive* drive) disconnected;
	/** */
	extern(C) void function(GDrive* drive) ejectButton;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: a string containing @drive's name. The returned
	 *     string should be freed when no longer needed.
	 */
	extern(C) char* function(GDrive* drive) getName;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: #GIcon for the @drive.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GIcon* function(GDrive* drive) getIcon;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive contains volumes, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) hasVolumes;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: #GList containing any #GVolume objects on the given @drive.
	 */
	extern(C) GList* function(GDrive* drive) getVolumes;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if @drive supports removable media, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) isMediaRemovable;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if @drive has media, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) hasMedia;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive is capable of automatically detecting
	 *     media changes, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) isMediaCheckAutomatic;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive can be ejected, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) canEject;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive can be polled for media changes,
	 *     %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) canPollForMedia;
	/** */
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) eject;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the drive has been ejected successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** err) ejectFinish;
	/** */
	extern(C) void function(GDrive* drive, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) pollForMedia;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the drive has been poll_for_mediaed successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** err) pollForMediaFinish;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive
	 *     kind = the kind of identifier to return
	 * Returns: a newly allocated string containing the
	 *     requested identifier, or %NULL if the #GDrive
	 *     doesn't have this kind of identifier.
	 */
	extern(C) char* function(GDrive* drive, const(char)* kind) getIdentifier;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive
	 * Returns: a %NULL-terminated
	 *     array of strings containing kinds of identifiers. Use g_strfreev()
	 *     to free.
	 */
	extern(C) char** function(GDrive* drive) enumerateIdentifiers;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: A value from the #GDriveStartStopType enumeration.
	 */
	extern(C) GDriveStartStopType function(GDrive* drive) getStartStopType;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive can be started, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) canStart;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive can be started degraded, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) canStartDegraded;
	/** */
	extern(C) void function(GDrive* drive, GDriveStartFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) start;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the drive has been started successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** err) startFinish;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if the @drive can be stopped, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) canStop;
	/** */
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) stop;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the drive has been stopped successfully,
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** err) stopFinish;
	/** */
	extern(C) void function(GDrive* drive) stopButton;
	/** */
	extern(C) void function(GDrive* drive, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) ejectWithOperation;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the drive was successfully ejected. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDrive* drive, GAsyncResult* result, GError** err) ejectWithOperationFinish;
	/**
	 *
	 * Params:
	 *     drive = A #GDrive.
	 * Returns: Sorting key for @drive or %NULL if no such key is available.
	 */
	extern(C) const(char)* function(GDrive* drive) getSortKey;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: symbolic #GIcon for the @drive.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GIcon* function(GDrive* drive) getSymbolicIcon;
	/**
	 *
	 * Params:
	 *     drive = a #GDrive.
	 * Returns: %TRUE if @drive and/or its media is considered removable, %FALSE otherwise.
	 */
	extern(C) int function(GDrive* drive) isRemovable;
}

struct GDtlsClientConnection;

/**
 * vtable for a #GDtlsClientConnection implementation.
 *
 * Since: 2.48
 */
struct GDtlsClientConnectionInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
}

struct GDtlsConnection;

/**
 * Virtual method table for a #GDtlsConnection implementation.
 *
 * Since: 2.48
 */
struct GDtlsConnectionInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) int function(GDtlsConnection* connection, GTlsCertificate* peerCert, GTlsCertificateFlags errors) acceptCertificate;
	/**
	 *
	 * Params:
	 *     conn = a #GDtlsConnection
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: success or failure
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDtlsConnection* conn, GCancellable* cancellable, GError** err) handshake;
	/** */
	extern(C) void function(GDtlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) handshakeAsync;
	/**
	 *
	 * Params:
	 *     conn = a #GDtlsConnection
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDtlsConnection* conn, GAsyncResult* result, GError** err) handshakeFinish;
	/**
	 *
	 * Params:
	 *     conn = a #GDtlsConnection
	 *     shutdownRead = %TRUE to stop reception of incoming datagrams
	 *     shutdownWrite = %TRUE to stop sending outgoing datagrams
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE on success, %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, GCancellable* cancellable, GError** err) shutdown;
	/** */
	extern(C) void function(GDtlsConnection* conn, int shutdownRead, int shutdownWrite, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) shutdownAsync;
	/**
	 *
	 * Params:
	 *     conn = a #GDtlsConnection
	 *     result = a #GAsyncResult
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GDtlsConnection* conn, GAsyncResult* result, GError** err) shutdownFinish;
	/** */
	extern(C) void function(GDtlsConnection* conn, char** protocols) setAdvertisedProtocols;
	/**
	 *
	 * Params:
	 *     conn = a #GDtlsConnection
	 * Returns: the negotiated protocol, or %NULL
	 */
	extern(C) const(char)* function(GDtlsConnection* conn) getNegotiatedProtocol;
	/** */
	extern(C) int function(GDtlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err) getBindingData;
}

struct GDtlsServerConnection;

/**
 * vtable for a #GDtlsServerConnection implementation.
 *
 * Since: 2.48
 */
struct GDtlsServerConnectionInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
}

struct GEmblem;

struct GEmblemClass;

struct GEmblemedIcon
{
	GObject parentInstance;
	GEmblemedIconPrivate* priv;
}

struct GEmblemedIconClass
{
	GObjectClass parentClass;
}

struct GEmblemedIconPrivate;

struct GFile;

/**
 * Information about a specific attribute.
 */
struct GFileAttributeInfo
{
	/**
	 * the name of the attribute.
	 */
	char* name;
	/**
	 * the #GFileAttributeType type of the attribute.
	 */
	GFileAttributeType type;
	/**
	 * a set of #GFileAttributeInfoFlags.
	 */
	GFileAttributeInfoFlags flags;
}

struct GFileAttributeInfoList
{
	/**
	 * an array of #GFileAttributeInfos.
	 */
	GFileAttributeInfo* infos;
	/**
	 * the number of values in the array.
	 */
	int nInfos;
}

struct GFileAttributeMatcher;

struct GFileDescriptorBased;

/**
 * An interface for file descriptor based io objects.
 */
struct GFileDescriptorBasedIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     fdBased = a #GFileDescriptorBased.
	 * Returns: The file descriptor
	 */
	extern(C) int function(GFileDescriptorBased* fdBased) getFd;
}

struct GFileEnumerator
{
	GObject parentInstance;
	GFileEnumeratorPrivate* priv;
}

struct GFileEnumeratorClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     enumerator = a #GFileEnumerator.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: A #GFileInfo or %NULL on error
	 *     or end of enumerator.  Free the returned object with
	 *     g_object_unref() when no longer needed.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err) nextFile;
	/** */
	extern(C) int function(GFileEnumerator* enumerator, GCancellable* cancellable, GError** err) closeFn;
	/** */
	extern(C) void function(GFileEnumerator* enumerator, int numFiles, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) nextFilesAsync;
	/**
	 *
	 * Params:
	 *     enumerator = a #GFileEnumerator.
	 *     result = a #GAsyncResult.
	 * Returns: a #GList of #GFileInfos. You must free the list with
	 *     g_list_free() and unref the infos with g_object_unref() when you're
	 *     done with them.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GFileEnumerator* enumerator, GAsyncResult* result, GError** err) nextFilesFinish;
	/** */
	extern(C) void function(GFileEnumerator* enumerator, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) closeAsync;
	/**
	 *
	 * Params:
	 *     enumerator = a #GFileEnumerator.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the close operation has finished successfully.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFileEnumerator* enumerator, GAsyncResult* result, GError** err) closeFinish;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
}

struct GFileEnumeratorPrivate;

struct GFileIOStream
{
	GIOStream parentInstance;
	GFileIOStreamPrivate* priv;
}

struct GFileIOStreamClass
{
	GIOStreamClass parentClass;
	/** */
	extern(C) long function(GFileIOStream* stream) tell;
	/** */
	extern(C) int function(GFileIOStream* stream) canSeek;
	/** */
	extern(C) int function(GFileIOStream* stream, long offset, GSeekType type, GCancellable* cancellable, GError** err) seek;
	/** */
	extern(C) int function(GFileIOStream* stream) canTruncate;
	/** */
	extern(C) int function(GFileIOStream* stream, long size, GCancellable* cancellable, GError** err) truncateFn;
	/**
	 *
	 * Params:
	 *     stream = a #GFileIOStream.
	 *     attributes = a file attribute query string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: a #GFileInfo for the @stream, or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileIOStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) queryInfo;
	/** */
	extern(C) void function(GFileIOStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) queryInfoAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GFileIOStream.
	 *     result = a #GAsyncResult.
	 * Returns: A #GFileInfo for the finished query.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileIOStream* stream, GAsyncResult* result, GError** err) queryInfoFinish;
	/**
	 *
	 * Params:
	 *     stream = a #GFileIOStream.
	 * Returns: the entity tag for the stream.
	 */
	extern(C) char* function(GFileIOStream* stream) getEtag;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GFileIOStreamPrivate;

struct GFileIcon;

struct GFileIconClass;

/**
 * An interface for writing VFS file handles.
 */
struct GFileIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: a new #GFile that is a duplicate
	 *     of the given #GFile.
	 */
	extern(C) GFile* function(GFile* file) dup;
	/**
	 *
	 * Params:
	 *     file = #gconstpointer to a #GFile
	 * Returns: 0 if @file is not a valid #GFile, otherwise an
	 *     integer that can be used as hash value for the #GFile.
	 *     This function is intended for easily hashing a #GFile to
	 *     add to a #GHashTable or similar data structure.
	 */
	extern(C) uint function(GFile* file) hash;
	/**
	 *
	 * Params:
	 *     file1 = the first #GFile
	 *     file2 = the second #GFile
	 * Returns: %TRUE if @file1 and @file2 are equal.
	 */
	extern(C) int function(GFile* file1, GFile* file2) equal;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: %TRUE if @file is native
	 */
	extern(C) int function(GFile* file) isNative;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     uriScheme = a string containing a URI scheme
	 * Returns: %TRUE if #GFile's backend supports the
	 *     given URI scheme, %FALSE if URI scheme is %NULL,
	 *     not supported, or #GFile is invalid.
	 */
	extern(C) int function(GFile* file, const(char)* uriScheme) hasUriScheme;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: a string containing the URI scheme for the given
	 *     #GFile or %NULL if the #GFile was constructed with an invalid URI. The
	 *     returned string should be freed with g_free() when no longer needed.
	 */
	extern(C) char* function(GFile* file) getUriScheme;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: string containing the #GFile's
	 *     base name, or %NULL if given #GFile is invalid. The returned string
	 *     should be freed with g_free() when no longer needed.
	 */
	extern(C) char* function(GFile* file) getBasename;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: string containing the #GFile's path,
	 *     or %NULL if no such path exists. The returned string should be freed
	 *     with g_free() when no longer needed.
	 */
	extern(C) char* function(GFile* file) getPath;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: a string containing the #GFile's URI. If the #GFile was constructed
	 *     with an invalid URI, an invalid URI is returned.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	extern(C) char* function(GFile* file) getUri;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: a string containing the #GFile's parse name.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	extern(C) char* function(GFile* file) getParseName;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 * Returns: a #GFile structure to the
	 *     parent of the given #GFile or %NULL if there is no parent. Free
	 *     the returned object with g_object_unref().
	 */
	extern(C) GFile* function(GFile* file) getParent;
	/**
	 *
	 * Params:
	 *     prefix = input #GFile
	 *     file = input #GFile
	 * Returns: %TRUE if the @file's parent, grandparent, etc is @prefix,
	 *     %FALSE otherwise.
	 */
	extern(C) int function(GFile* prefix, GFile* file) prefixMatches;
	/**
	 *
	 * Params:
	 *     parent = input #GFile
	 *     descendant = input #GFile
	 * Returns: string with the relative path from
	 *     @descendant to @parent, or %NULL if @descendant doesn't have @parent as
	 *     prefix. The returned string should be freed with g_free() when
	 *     no longer needed.
	 */
	extern(C) char* function(GFile* parent, GFile* descendant) getRelativePath;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     relativePath = a given relative path string
	 * Returns: a #GFile for the resolved path.
	 */
	extern(C) GFile* function(GFile* file, char* relativePath) resolveRelativePath;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     displayName = string to a possible child
	 * Returns: a #GFile to the specified child, or
	 *     %NULL if the display name couldn't be converted.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFile* function(GFile* file, const(char)* displayName, GError** err) getChildForDisplayName;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: A #GFileEnumerator if successful,
	 *     %NULL on error. Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileEnumerator* function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) enumerateChildren;
	/** */
	extern(C) void function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) enumerateChildrenAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileEnumerator or %NULL
	 *     if an error occurred.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileEnumerator* function(GFile* file, GAsyncResult* res, GError** err) enumerateChildrenFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     attributes = an attribute query string
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileInfo for the given @file, or %NULL
	 *     on error. Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) queryInfo;
	/** */
	extern(C) void function(GFile* file, const(char)* attributes, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) queryInfoAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: #GFileInfo for given @file
	 *     or %NULL on error. Free the returned object with
	 *     g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFile* file, GAsyncResult* res, GError** err) queryInfoFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     attributes = an attribute query string
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileInfo or %NULL if there was an error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFile* file, const(char)* attributes, GCancellable* cancellable, GError** err) queryFilesystemInfo;
	/** */
	extern(C) void function(GFile* file, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) queryFilesystemInfoAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: #GFileInfo for given @file
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFile* file, GAsyncResult* res, GError** err) queryFilesystemInfoFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GMount where the @file is located
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GMount* function(GFile* file, GCancellable* cancellable, GError** err) findEnclosingMount;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) findEnclosingMountAsync;
	/**
	 *
	 * Params:
	 *     file = a #GFile
	 *     res = a #GAsyncResult
	 * Returns: #GMount for given @file or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GMount* function(GFile* file, GAsyncResult* res, GError** err) findEnclosingMountFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     displayName = a string
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFile specifying what @file was renamed to,
	 *     or %NULL if there was an error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFile* function(GFile* file, const(char)* displayName, GCancellable* cancellable, GError** err) setDisplayName;
	/** */
	extern(C) void function(GFile* file, const(char)* displayName, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) setDisplayNameAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFile or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFile* function(GFile* file, GAsyncResult* res, GError** err) setDisplayNameFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileAttributeInfoList describing the settable attributes.
	 *     When you are done with it, release it with
	 *     g_file_attribute_info_list_unref()
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** err) querySettableAttributes;
	/** */
	extern(C) void function() QuerySettableAttributesAsync;
	/** */
	extern(C) void function() QuerySettableAttributesFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileAttributeInfoList describing the writable namespaces.
	 *     When you are done with it, release it with
	 *     g_file_attribute_info_list_unref()
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileAttributeInfoList* function(GFile* file, GCancellable* cancellable, GError** err) queryWritableNamespaces;
	/** */
	extern(C) void function() QueryWritableNamespacesAsync;
	/** */
	extern(C) void function() QueryWritableNamespacesFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     attribute = a string containing the attribute's name
	 *     type = The type of the attribute
	 *     valueP = a pointer to the value (or the pointer
	 *         itself if the type is a pointer type)
	 *     flags = a set of #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %TRUE if the attribute was set, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, const(char)* attribute, GFileAttributeType type, void* valueP, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) setAttribute;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     info = a #GFileInfo
	 *     flags = #GFileQueryInfoFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %FALSE if there was any error, %TRUE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) setAttributesFromInfo;
	/** */
	extern(C) void function(GFile* file, GFileInfo* info, GFileQueryInfoFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) setAttributesAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 *     info = a #GFileInfo
	 * Returns: %TRUE if the attributes were set correctly, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GFileInfo** info, GError** err) setAttributesFinish;
	/**
	 *
	 * Params:
	 *     file = #GFile to read
	 *     cancellable = a #GCancellable
	 * Returns: #GFileInputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInputStream* function(GFile* file, GCancellable* cancellable, GError** err) readFn;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) readAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileInputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInputStream* function(GFile* file, GAsyncResult* res, GError** err) readFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileOutputStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) appendTo;
	/** */
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) appendToAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = #GAsyncResult
	 * Returns: a valid #GFileOutputStream
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) appendToFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileOutputStream for the newly created
	 *     file, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) create;
	/** */
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) createAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileOutputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) createFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     etag = an optional [entity tag][gfile-etag]
	 *         for the current #GFile, or #NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileOutputStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err) replace;
	/** */
	extern(C) void function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) replaceAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileOutputStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileOutputStream* function(GFile* file, GAsyncResult* res, GError** err) replaceFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %TRUE if the file was deleted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** err) deleteFile;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) deleteFileAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the file was deleted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) deleteFileFinish;
	/**
	 *
	 * Params:
	 *     file = #GFile to send to trash
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %TRUE on successful trash, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** err) trash;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) trashAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE on successful trash, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) trashFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %TRUE on successful creation, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GCancellable* cancellable, GError** err) makeDirectory;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) makeDirectoryAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE on successful directory creation, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) makeDirectoryFinish;
	/**
	 *
	 * Params:
	 *     file = a #GFile with the name of the symlink to create
	 *     symlinkValue = a string with the path for the target
	 *         of the new symlink
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: %TRUE on the creation of a new symlink, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, char* symlinkValue, GCancellable* cancellable, GError** err) makeSymbolicLink;
	/** */
	extern(C) void function() MakeSymbolicLinkAsync;
	/** */
	extern(C) void function() MakeSymbolicLinkFinish;
	/**
	 *
	 * Params:
	 *     source = input #GFile
	 *     destination = destination #GFile
	 *     flags = set of #GFileCopyFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     progressCallback = function to callback with
	 *         progress information, or %NULL if progress information is not needed
	 *     progressCallbackData = user data to pass to @progress_callback
	 * Returns: %TRUE on success, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err) copy;
	/** */
	extern(C) void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData) copyAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a %TRUE on success, %FALSE on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* res, GError** err) copyFinish;
	/**
	 *
	 * Params:
	 *     source = #GFile pointing to the source location
	 *     destination = #GFile pointing to the destination location
	 *     flags = set of #GFileCopyFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 *     progressCallback = #GFileProgressCallback
	 *         function for updates
	 *     progressCallbackData = gpointer to user data for
	 *         the callback function
	 * Returns: %TRUE on successful move, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* source, GFile* destination, GFileCopyFlags flags, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GError** err) move;
	/** */
	extern(C) void function(GFile* source, GFile* destination, GFileCopyFlags flags, int ioPriority, GCancellable* cancellable, GFileProgressCallback progressCallback, void* progressCallbackData, GAsyncReadyCallback callback, void* userData) moveAsync;
	/**
	 *
	 * Params:
	 *     file = input source #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE on successful file move, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) moveFinish;
	/** */
	extern(C) void function(GFile* file, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) mountMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: a #GFile or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFile* function(GFile* file, GAsyncResult* result, GError** err) mountMountableFinish;
	/** */
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) unmountMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) unmountMountableFinish;
	/** */
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) ejectMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the @file was ejected successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) ejectMountableFinish;
	/** */
	extern(C) void function(GFile* location, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) mountEnclosingVolume;
	/**
	 *
	 * Params:
	 *     location = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if successful. If an error has occurred,
	 *     this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* location, GAsyncResult* result, GError** err) mountEnclosingVolumeFinish;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     flags = a set of #GFileMonitorFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileMonitor for the given @file,
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err) monitorDir;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     flags = a set of #GFileMonitorFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileMonitor for the given @file,
	 *     or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileMonitor* function(GFile* file, GFileMonitorFlags flags, GCancellable* cancellable, GError** err) monitorFile;
	/**
	 *
	 * Params:
	 *     file = #GFile to open
	 *     cancellable = a #GCancellable
	 * Returns: #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, GCancellable* cancellable, GError** err) openReadwrite;
	/** */
	extern(C) void function(GFile* file, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) openReadwriteAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) openReadwriteFinish;
	/**
	 *
	 * Params:
	 *     file = a #GFile
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileIOStream for the newly created
	 *     file, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, GFileCreateFlags flags, GCancellable* cancellable, GError** err) createReadwrite;
	/** */
	extern(C) void function(GFile* file, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) createReadwriteAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) createReadwriteFinish;
	/**
	 *
	 * Params:
	 *     file = a #GFile
	 *     etag = an optional [entity tag][gfile-etag]
	 *         for the current #GFile, or #NULL to ignore
	 *     makeBackup = %TRUE if a backup should be created
	 *     flags = a set of #GFileCreateFlags
	 *     cancellable = optional #GCancellable object,
	 *         %NULL to ignore
	 * Returns: a #GFileIOStream or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, GCancellable* cancellable, GError** err) replaceReadwrite;
	/** */
	extern(C) void function(GFile* file, const(char)* etag, int makeBackup, GFileCreateFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) replaceReadwriteAsync;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     res = a #GAsyncResult
	 * Returns: a #GFileIOStream, or %NULL on error.
	 *     Free the returned object with g_object_unref().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileIOStream* function(GFile* file, GAsyncResult* res, GError** err) replaceReadwriteFinish;
	/** */
	extern(C) void function(GFile* file, GDriveStartFlags flags, GMountOperation* startOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) startMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation finished successfully. %FALSE
	 *     otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) startMountableFinish;
	/** */
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) stopMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) stopMountableFinish;
	/**
	 * a boolean that indicates whether the #GFile implementation supports thread-default contexts. Since 2.22.
	 */
	bool supportsThreadContexts;
	/** */
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) unmountMountableWithOperation;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation finished successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) unmountMountableWithOperationFinish;
	/** */
	extern(C) void function(GFile* file, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) ejectMountableWithOperation;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the @file was ejected successfully.
	 *     %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) ejectMountableWithOperationFinish;
	/** */
	extern(C) void function(GFile* file, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) pollMountable;
	/**
	 *
	 * Params:
	 *     file = input #GFile
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the operation finished successfully. %FALSE
	 *     otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, GError** err) pollMountableFinish;
	/**
	 *
	 * Params:
	 *     file = a #GFile
	 *     flags = #GFileMeasureFlags
	 *     cancellable = optional #GCancellable
	 *     progressCallback = a #GFileMeasureProgressCallback
	 *     progressData = user_data for @progress_callback
	 *     diskUsage = the number of bytes of disk space used
	 *     numDirs = the number of directories encountered
	 *     numFiles = the number of non-directories encountered
	 * Returns: %TRUE if successful, with the out parameters set.
	 *     %FALSE otherwise, with @error set.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GFileMeasureFlags flags, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err) measureDiskUsage;
	/** */
	extern(C) void function(GFile* file, GFileMeasureFlags flags, int ioPriority, GCancellable* cancellable, GFileMeasureProgressCallback progressCallback, void* progressData, GAsyncReadyCallback callback, void* userData) measureDiskUsageAsync;
	/**
	 *
	 * Params:
	 *     file = a #GFile
	 *     result = the #GAsyncResult passed to your #GAsyncReadyCallback
	 *     diskUsage = the number of bytes of disk space used
	 *     numDirs = the number of directories encountered
	 *     numFiles = the number of non-directories encountered
	 * Returns: %TRUE if successful, with the out parameters set.
	 *     %FALSE otherwise, with @error set.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GFile* file, GAsyncResult* result, ulong* diskUsage, ulong* numDirs, ulong* numFiles, GError** err) measureDiskUsageFinish;
}

struct GFileInfo;

struct GFileInfoClass;

struct GFileInputStream
{
	GInputStream parentInstance;
	GFileInputStreamPrivate* priv;
}

struct GFileInputStreamClass
{
	GInputStreamClass parentClass;
	/** */
	extern(C) long function(GFileInputStream* stream) tell;
	/** */
	extern(C) int function(GFileInputStream* stream) canSeek;
	/** */
	extern(C) int function(GFileInputStream* stream, long offset, GSeekType type, GCancellable* cancellable, GError** err) seek;
	/**
	 *
	 * Params:
	 *     stream = a #GFileInputStream.
	 *     attributes = a file attribute query string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: a #GFileInfo, or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileInputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) queryInfo;
	/** */
	extern(C) void function(GFileInputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) queryInfoAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GFileInputStream.
	 *     result = a #GAsyncResult.
	 * Returns: #GFileInfo.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileInputStream* stream, GAsyncResult* result, GError** err) queryInfoFinish;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GFileInputStreamPrivate;

struct GFileMonitor
{
	GObject parentInstance;
	GFileMonitorPrivate* priv;
}

struct GFileMonitorClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GFileMonitor* monitor, GFile* file, GFile* otherFile, GFileMonitorEvent eventType) changed;
	/**
	 *
	 * Params:
	 *     monitor = a #GFileMonitor.
	 * Returns: always %TRUE
	 */
	extern(C) int function(GFileMonitor* monitor) cancel;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GFileMonitorPrivate;

struct GFileOutputStream
{
	GOutputStream parentInstance;
	GFileOutputStreamPrivate* priv;
}

struct GFileOutputStreamClass
{
	GOutputStreamClass parentClass;
	/** */
	extern(C) long function(GFileOutputStream* stream) tell;
	/** */
	extern(C) int function(GFileOutputStream* stream) canSeek;
	/** */
	extern(C) int function(GFileOutputStream* stream, long offset, GSeekType type, GCancellable* cancellable, GError** err) seek;
	/** */
	extern(C) int function(GFileOutputStream* stream) canTruncate;
	/** */
	extern(C) int function(GFileOutputStream* stream, long size, GCancellable* cancellable, GError** err) truncateFn;
	/**
	 *
	 * Params:
	 *     stream = a #GFileOutputStream.
	 *     attributes = a file attribute query string.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: a #GFileInfo for the @stream, or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileOutputStream* stream, const(char)* attributes, GCancellable* cancellable, GError** err) queryInfo;
	/** */
	extern(C) void function(GFileOutputStream* stream, const(char)* attributes, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) queryInfoAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GFileOutputStream.
	 *     result = a #GAsyncResult.
	 * Returns: A #GFileInfo for the finished query.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GFileInfo* function(GFileOutputStream* stream, GAsyncResult* result, GError** err) queryInfoFinish;
	/**
	 *
	 * Params:
	 *     stream = a #GFileOutputStream.
	 * Returns: the entity tag for the stream.
	 */
	extern(C) char* function(GFileOutputStream* stream) getEtag;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GFileOutputStreamPrivate;

struct GFilenameCompleter;

struct GFilenameCompleterClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GFilenameCompleter* filenameCompleter) gotCompletionData;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
}

struct GFilterInputStream
{
	GInputStream parentInstance;
	GInputStream* baseStream;
}

struct GFilterInputStreamClass
{
	GInputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
}

struct GFilterOutputStream
{
	GOutputStream parentInstance;
	GOutputStream* baseStream;
}

struct GFilterOutputStreamClass
{
	GOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
}

struct GIOExtension;

struct GIOExtensionPoint;

struct GIOModule;

struct GIOModuleClass;

struct GIOModuleScope;

struct GIOSchedulerJob;

struct GIOStream
{
	GObject parentInstance;
	GIOStreamPrivate* priv;
}

struct GIOStreamAdapter;

struct GIOStreamClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     stream = a #GIOStream
	 * Returns: a #GInputStream, owned by the #GIOStream.
	 *     Do not free.
	 */
	extern(C) GInputStream* function(GIOStream* stream) getInputStream;
	/**
	 *
	 * Params:
	 *     stream = a #GIOStream
	 * Returns: a #GOutputStream, owned by the #GIOStream.
	 *     Do not free.
	 */
	extern(C) GOutputStream* function(GIOStream* stream) getOutputStream;
	/** */
	extern(C) int function(GIOStream* stream, GCancellable* cancellable, GError** err) closeFn;
	/** */
	extern(C) void function(GIOStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) closeAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GIOStream
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if stream was successfully closed, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GIOStream* stream, GAsyncResult* result, GError** err) closeFinish;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
	/** */
	extern(C) void function() GReserved8;
	/** */
	extern(C) void function() GReserved9;
	/** */
	extern(C) void function() GReserved10;
}

struct GIOStreamPrivate;

struct GIcon;

/**
 * GIconIface is used to implement GIcon types for various
 * different systems. See #GThemedIcon and #GLoadableIcon for
 * examples of how to implement this interface.
 */
struct GIconIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     icon = #gconstpointer to an icon object.
	 * Returns: a #guint containing a hash for the @icon, suitable for
	 *     use in a #GHashTable or similar data structure.
	 */
	extern(C) uint function(GIcon* icon) hash;
	/**
	 *
	 * Params:
	 *     icon1 = pointer to the first #GIcon.
	 *     icon2 = pointer to the second #GIcon.
	 * Returns: %TRUE if @icon1 is equal to @icon2. %FALSE otherwise.
	 */
	extern(C) int function(GIcon* icon1, GIcon* icon2) equal;
	/**
	 *
	 * Params:
	 *     icon = a #GIcon.
	 * Returns: An allocated NUL-terminated UTF8 string or
	 *     %NULL if @icon can't be serialized. Use g_free() to free.
	 */
	extern(C) int function(GIcon* icon, GPtrArray* tokens, int* outVersion) toTokens;
	/** */
	extern(C) GIcon* function(char** tokens, int numTokens, int version_, GError** err) fromTokens;
	/**
	 *
	 * Params:
	 *     icon = a #GIcon
	 * Returns: a #GVariant, or %NULL when serialization fails. The #GVariant will not be floating.
	 */
	extern(C) GVariant* function(GIcon* icon) serialize;
}

struct GInetAddress
{
	GObject parentInstance;
	GInetAddressPrivate* priv;
}

struct GInetAddressClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     address = a #GInetAddress
	 * Returns: a representation of @address as a string, which should be
	 *     freed after use.
	 */
	extern(C) char* function(GInetAddress* address) toString;
	/**
	 *
	 * Params:
	 *     address = a #GInetAddress
	 * Returns: a pointer to an internal array of the bytes in @address,
	 *     which should not be modified, stored, or freed. The size of this
	 *     array can be gotten with g_inet_address_get_native_size().
	 */
	extern(C) ubyte* function(GInetAddress* address) toBytes;
}

struct GInetAddressMask
{
	GObject parentInstance;
	GInetAddressMaskPrivate* priv;
}

struct GInetAddressMaskClass
{
	GObjectClass parentClass;
}

struct GInetAddressMaskPrivate;

struct GInetAddressPrivate;

struct GInetSocketAddress
{
	GSocketAddress parentInstance;
	GInetSocketAddressPrivate* priv;
}

struct GInetSocketAddressClass
{
	GSocketAddressClass parentClass;
}

struct GInetSocketAddressPrivate;

struct GInitable;

/**
 * Provides an interface for initializing object such that initialization
 * may fail.
 *
 * Since: 2.22
 */
struct GInitableIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     initable = a #GInitable.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: %TRUE if successful. If an error has occurred, this function will
	 *     return %FALSE and set @error appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GInitable* initable, GCancellable* cancellable, GError** err) init;
}

/**
 * Structure used for scatter/gather data input when receiving multiple
 * messages or packets in one go. You generally pass in an array of empty
 * #GInputVectors and the operation will use all the buffers as if they
 * were one buffer, and will set @bytes_received to the total number of bytes
 * received across all #GInputVectors.
 *
 * This structure closely mirrors `struct mmsghdr` and `struct msghdr` from
 * the POSIX sockets API (see `man 2 recvmmsg`).
 *
 * If @address is non-%NULL then it is set to the source address the message
 * was received from, and the caller must free it afterwards.
 *
 * If @control_messages is non-%NULL then it is set to an array of control
 * messages received with the message (if any), and the caller must free it
 * afterwards. @num_control_messages is set to the number of elements in
 * this array, which may be zero.
 *
 * Flags relevant to this message will be returned in @flags. For example,
 * `MSG_EOR` or `MSG_TRUNC`.
 *
 * Since: 2.48
 */
struct GInputMessage
{
	/**
	 * return location
	 * for a #GSocketAddress, or %NULL
	 */
	GSocketAddress** address;
	/**
	 * pointer to an
	 * array of input vectors
	 */
	GInputVector* vectors;
	/**
	 * the number of input vectors pointed to by @vectors
	 */
	uint numVectors;
	/**
	 * will be set to the number of bytes that have been
	 * received
	 */
	size_t bytesReceived;
	/**
	 * collection of #GSocketMsgFlags for the received message,
	 * outputted by the call
	 */
	int flags;
	/**
	 * return location for a
	 * caller-allocated array of #GSocketControlMessages, or %NULL
	 */
	GSocketControlMessage*** controlMessages;
	/**
	 * return location for the number of
	 * elements in @control_messages
	 */
	uint* numControlMessages;
}

struct GInputStream
{
	GObject parentInstance;
	GInputStreamPrivate* priv;
}

struct GInputStreamClass
{
	GObjectClass parentClass;
	/** */
	extern(C) ptrdiff_t function(GInputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) readFn;
	/**
	 *
	 * Params:
	 *     stream = a #GInputStream.
	 *     count = the number of bytes that will be skipped from the stream
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: Number of bytes skipped, or -1 on error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GInputStream* stream, size_t count, GCancellable* cancellable, GError** err) skip;
	/** */
	extern(C) int function(GInputStream* stream, GCancellable* cancellable, GError** err) closeFn;
	/** */
	extern(C) void function(GInputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) readAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GInputStream.
	 *     result = a #GAsyncResult.
	 * Returns: number of bytes read in, or -1 on error, or 0 on end of file.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GInputStream* stream, GAsyncResult* result, GError** err) readFinish;
	/** */
	extern(C) void function(GInputStream* stream, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) skipAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GInputStream.
	 *     result = a #GAsyncResult.
	 * Returns: the size of the bytes skipped, or `-1` on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GInputStream* stream, GAsyncResult* result, GError** err) skipFinish;
	/** */
	extern(C) void function(GInputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) closeAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GInputStream.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the stream was closed successfully.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GInputStream* stream, GAsyncResult* result, GError** err) closeFinish;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GInputStreamPrivate;

/**
 * Structure used for scatter/gather data input.
 * You generally pass in an array of #GInputVectors
 * and the operation will store the read data starting in the
 * first buffer, switching to the next as needed.
 *
 * Since: 2.22
 */
struct GInputVector
{
	/**
	 * Pointer to a buffer where data will be written.
	 */
	void* buffer;
	/**
	 * the available size in @buffer.
	 */
	size_t size;
}

struct GListModel;

/**
 * The virtual function table for #GListModel.
 *
 * Since: 2.44
 */
struct GListModelInterface
{
	/**
	 * parent #GTypeInterface
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     list = a #GListModel
	 * Returns: the #GType of the items contained in @list.
	 */
	extern(C) GType function(GListModel* list) getItemType;
	/**
	 *
	 * Params:
	 *     list = a #GListModel
	 * Returns: the number of items in @list.
	 */
	extern(C) uint function(GListModel* list) getNItems;
	/**
	 *
	 * Params:
	 *     list = a #GListModel
	 *     position = the position of the item to fetch
	 * Returns: the object at @position.
	 */
	extern(C) void* function(GListModel* list, uint position) getItem;
}

struct GListStore;

struct GListStoreClass
{
	GObjectClass parentClass;
}

struct GLoadableIcon;

/**
 * Interface for icons that can be loaded as a stream.
 */
struct GLoadableIconIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     icon = a #GLoadableIcon.
	 *     size = an integer.
	 *     type = a location to store the type of the loaded
	 *         icon, %NULL to ignore.
	 *     cancellable = optional #GCancellable object, %NULL to
	 *         ignore.
	 * Returns: a #GInputStream to read the icon from.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GInputStream* function(GLoadableIcon* icon, int size, char** type, GCancellable* cancellable, GError** err) load;
	/** */
	extern(C) void function(GLoadableIcon* icon, int size, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) loadAsync;
	/**
	 *
	 * Params:
	 *     icon = a #GLoadableIcon.
	 *     res = a #GAsyncResult.
	 *     type = a location to store the type of the loaded
	 *         icon, %NULL to ignore.
	 * Returns: a #GInputStream to read the icon from.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GInputStream* function(GLoadableIcon* icon, GAsyncResult* res, char** type, GError** err) loadFinish;
}

struct GMemoryInputStream
{
	GInputStream parentInstance;
	GMemoryInputStreamPrivate* priv;
}

struct GMemoryInputStreamClass
{
	GInputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GMemoryInputStreamPrivate;

struct GMemoryMonitor;

/**
 * The virtual function table for #GMemoryMonitor.
 *
 * Since: 2.64
 */
struct GMemoryMonitorInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GMemoryMonitor* monitor, GMemoryMonitorWarningLevel level) lowMemoryWarning;
}

struct GMemoryOutputStream
{
	GOutputStream parentInstance;
	GMemoryOutputStreamPrivate* priv;
}

struct GMemoryOutputStreamClass
{
	GOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GMemoryOutputStreamPrivate;

struct GMenu;

struct GMenuAttributeIter
{
	GObject parentInstance;
	GMenuAttributeIterPrivate* priv;
}

struct GMenuAttributeIterClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     iter = a #GMenuAttributeIter
	 *     outName = the type of the attribute
	 *     value = the attribute value
	 * Returns: %TRUE on success, or %FALSE if there is no additional
	 *     attribute
	 */
	extern(C) int function(GMenuAttributeIter* iter, char** outName, GVariant** value) getNext;
}

struct GMenuAttributeIterPrivate;

struct GMenuItem;

struct GMenuLinkIter
{
	GObject parentInstance;
	GMenuLinkIterPrivate* priv;
}

struct GMenuLinkIterClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     iter = a #GMenuLinkIter
	 *     outLink = the name of the link
	 *     value = the linked #GMenuModel
	 * Returns: %TRUE on success, or %FALSE if there is no additional link
	 */
	extern(C) int function(GMenuLinkIter* iter, char** outLink, GMenuModel** value) getNext;
}

struct GMenuLinkIterPrivate;

struct GMenuModel
{
	GObject parentInstance;
	GMenuModelPrivate* priv;
}

struct GMenuModelClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 * Returns: %TRUE if the model is mutable (ie: "items-changed" may be
	 *     emitted).
	 */
	extern(C) int function(GMenuModel* model) isMutable;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 * Returns: the number of items
	 */
	extern(C) int function(GMenuModel* model) getNItems;
	/** */
	extern(C) void function(GMenuModel* model, int itemIndex, GHashTable** attributes) getItemAttributes;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *     itemIndex = the index of the item
	 * Returns: a new #GMenuAttributeIter
	 */
	extern(C) GMenuAttributeIter* function(GMenuModel* model, int itemIndex) iterateItemAttributes;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *     itemIndex = the index of the item
	 *     attribute = the attribute to query
	 *     expectedType = the expected type of the attribute, or
	 *         %NULL
	 * Returns: the value of the attribute
	 */
	extern(C) GVariant* function(GMenuModel* model, int itemIndex, const(char)* attribute, GVariantType* expectedType) getItemAttributeValue;
	/** */
	extern(C) void function(GMenuModel* model, int itemIndex, GHashTable** links) getItemLinks;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *     itemIndex = the index of the item
	 * Returns: a new #GMenuLinkIter
	 */
	extern(C) GMenuLinkIter* function(GMenuModel* model, int itemIndex) iterateItemLinks;
	/**
	 *
	 * Params:
	 *     model = a #GMenuModel
	 *     itemIndex = the index of the item
	 *     link = the link to query
	 * Returns: the linked #GMenuModel, or %NULL
	 */
	extern(C) GMenuModel* function(GMenuModel* model, int itemIndex, const(char)* link) getItemLink;
}

struct GMenuModelPrivate;

struct GMount;

/**
 * Interface for implementing operations for mounts.
 */
struct GMountIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GMount* mount) changed;
	/** */
	extern(C) void function(GMount* mount) unmounted;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GFile.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GFile* function(GMount* mount) getRoot;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: the name for the given @mount.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	extern(C) char* function(GMount* mount) getName;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GIcon* function(GMount* mount) getIcon;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: the UUID for @mount or %NULL if no UUID
	 *     can be computed.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	extern(C) char* function(GMount* mount) getUuid;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GVolume or %NULL if @mount is not
	 *     associated with a volume.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GVolume* function(GMount* mount) getVolume;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GDrive or %NULL if @mount is not
	 *     associated with a volume or a drive.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GDrive* function(GMount* mount) getDrive;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: %TRUE if the @mount can be unmounted.
	 */
	extern(C) int function(GMount* mount) canUnmount;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: %TRUE if the @mount can be ejected.
	 */
	extern(C) int function(GMount* mount) canEject;
	/** */
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) unmount;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the mount was successfully unmounted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** err) unmountFinish;
	/** */
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) eject;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the mount was successfully ejected. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** err) ejectFinish;
	/** */
	extern(C) void function(GMount* mount, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) remount;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the mount was successfully remounted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** err) remountFinish;
	/** */
	extern(C) void function(GMount* mount, int forceRescan, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) guessContentType;
	/**
	 *
	 * Params:
	 *     mount = a #GMount
	 *     result = a #GAsyncResult
	 * Returns: a %NULL-terminated array of content types or %NULL on error.
	 *     Caller should free this array with g_strfreev() when done with it.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char** function(GMount* mount, GAsyncResult* result, GError** err) guessContentTypeFinish;
	/**
	 *
	 * Params:
	 *     mount = a #GMount
	 *     forceRescan = Whether to force a rescan of the content.
	 *         Otherwise a cached result will be used if available
	 *     cancellable = optional #GCancellable object, %NULL to ignore
	 * Returns: a %NULL-terminated array of content types or %NULL on error.
	 *     Caller should free this array with g_strfreev() when done with it.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char** function(GMount* mount, int forceRescan, GCancellable* cancellable, GError** err) guessContentTypeSync;
	/** */
	extern(C) void function(GMount* mount) preUnmount;
	/** */
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) unmountWithOperation;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the mount was successfully unmounted. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** err) unmountWithOperationFinish;
	/** */
	extern(C) void function(GMount* mount, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) ejectWithOperation;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if the mount was successfully ejected. %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GMount* mount, GAsyncResult* result, GError** err) ejectWithOperationFinish;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GFile.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GFile* function(GMount* mount) getDefaultLocation;
	/**
	 *
	 * Params:
	 *     mount = A #GMount.
	 * Returns: Sorting key for @mount or %NULL if no such key is available.
	 */
	extern(C) const(char)* function(GMount* mount) getSortKey;
	/**
	 *
	 * Params:
	 *     mount = a #GMount.
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with
	 *     g_object_unref() when no longer needed.
	 */
	extern(C) GIcon* function(GMount* mount) getSymbolicIcon;
}

struct GMountOperation
{
	GObject parentInstance;
	GMountOperationPrivate* priv;
}

struct GMountOperationClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GMountOperation* op, const(char)* message, const(char)* defaultUser, const(char)* defaultDomain, GAskPasswordFlags flags) askPassword;
	/** */
	extern(C) void function(GMountOperation* op, const(char)* message, char** choices) askQuestion;
	/** */
	extern(C) void function(GMountOperation* op, GMountOperationResult result) reply;
	/** */
	extern(C) void function(GMountOperation* op) aborted;
	/** */
	extern(C) void function(GMountOperation* op, const(char)* message, GArray* processes, char** choices) showProcesses;
	/** */
	extern(C) void function(GMountOperation* op, const(char)* message, long timeLeft, long bytesLeft) showUnmountProgress;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
	/** */
	extern(C) void function() GReserved8;
	/** */
	extern(C) void function() GReserved9;
}

struct GMountOperationPrivate;

struct GNativeSocketAddress
{
	GSocketAddress parentInstance;
	GNativeSocketAddressPrivate* priv;
}

struct GNativeSocketAddressClass
{
	GSocketAddressClass parentClass;
}

struct GNativeSocketAddressPrivate;

struct GNativeVolumeMonitor
{
	GVolumeMonitor parentInstance;
}

struct GNativeVolumeMonitorClass
{
	GVolumeMonitorClass parentClass;
	/** */
	extern(C) GMount* function(const(char)* mountPath, GCancellable* cancellable) getMountForMountPath;
}

struct GNetworkAddress
{
	GObject parentInstance;
	GNetworkAddressPrivate* priv;
}

struct GNetworkAddressClass
{
	GObjectClass parentClass;
}

struct GNetworkAddressPrivate;

struct GNetworkMonitor;

/**
 * The virtual function table for #GNetworkMonitor.
 *
 * Since: 2.32
 */
struct GNetworkMonitorInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GNetworkMonitor* monitor, int networkAvailable) networkChanged;
	/**
	 *
	 * Params:
	 *     monitor = a #GNetworkMonitor
	 *     connectable = a #GSocketConnectable
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE if @connectable is reachable, %FALSE if not.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GError** err) canReach;
	/** */
	extern(C) void function(GNetworkMonitor* monitor, GSocketConnectable* connectable, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) canReachAsync;
	/**
	 *
	 * Params:
	 *     monitor = a #GNetworkMonitor
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if network is reachable, %FALSE if not.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GNetworkMonitor* monitor, GAsyncResult* result, GError** err) canReachFinish;
}

struct GNetworkService
{
	GObject parentInstance;
	GNetworkServicePrivate* priv;
}

struct GNetworkServiceClass
{
	GObjectClass parentClass;
}

struct GNetworkServicePrivate;

struct GNotification;

/**
 * Structure used for scatter/gather data output when sending multiple
 * messages or packets in one go. You generally pass in an array of
 * #GOutputVectors and the operation will use all the buffers as if they
 * were one buffer.
 *
 * If @address is %NULL then the message is sent to the default receiver
 * (as previously set by g_socket_connect()).
 *
 * Since: 2.44
 */
struct GOutputMessage
{
	/**
	 * a #GSocketAddress, or %NULL
	 */
	GSocketAddress* address;
	/**
	 * pointer to an array of output vectors
	 */
	GOutputVector* vectors;
	/**
	 * the number of output vectors pointed to by @vectors.
	 */
	uint numVectors;
	/**
	 * initialize to 0. Will be set to the number of bytes
	 * that have been sent
	 */
	uint bytesSent;
	/**
	 * a pointer
	 * to an array of #GSocketControlMessages, or %NULL.
	 */
	GSocketControlMessage** controlMessages;
	/**
	 * number of elements in @control_messages.
	 */
	uint numControlMessages;
}

struct GOutputStream
{
	GObject parentInstance;
	GOutputStreamPrivate* priv;
}

struct GOutputStreamClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     buffer = the buffer containing the data to write.
	 *     count = the number of bytes to write
	 *     cancellable = optional cancellable object
	 * Returns: Number of bytes written, or -1 on error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GOutputStream* stream, void* buffer, size_t count, GCancellable* cancellable, GError** err) writeFn;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     source = a #GInputStream.
	 *     flags = a set of #GOutputStreamSpliceFlags.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: a #gssize containing the size of the data spliced, or
	 *     -1 if an error occurred. Note that if the number of bytes
	 *     spliced is greater than %G_MAXSSIZE, then that will be
	 *     returned, and there is no way to determine the actual number
	 *     of bytes spliced.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, GCancellable* cancellable, GError** err) splice;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     cancellable = optional cancellable object
	 * Returns: %TRUE on success, %FALSE on error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GOutputStream* stream, GCancellable* cancellable, GError** err) flush;
	/** */
	extern(C) int function(GOutputStream* stream, GCancellable* cancellable, GError** err) closeFn;
	/** */
	extern(C) void function(GOutputStream* stream, void* buffer, size_t count, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) writeAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     result = a #GAsyncResult.
	 * Returns: a #gssize containing the number of bytes written to the stream.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GOutputStream* stream, GAsyncResult* result, GError** err) writeFinish;
	/** */
	extern(C) void function(GOutputStream* stream, GInputStream* source, GOutputStreamSpliceFlags flags, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) spliceAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     result = a #GAsyncResult.
	 * Returns: a #gssize of the number of bytes spliced. Note that if the
	 *     number of bytes spliced is greater than %G_MAXSSIZE, then that
	 *     will be returned, and there is no way to determine the actual
	 *     number of bytes spliced.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GOutputStream* stream, GAsyncResult* result, GError** err) spliceFinish;
	/** */
	extern(C) void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) flushAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     result = a GAsyncResult.
	 * Returns: %TRUE if flush operation succeeded, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GOutputStream* stream, GAsyncResult* result, GError** err) flushFinish;
	/** */
	extern(C) void function(GOutputStream* stream, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) closeAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE if stream was successfully closed, %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GOutputStream* stream, GAsyncResult* result, GError** err) closeFinish;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     nVectors = the number of vectors to write
	 *     bytesWritten = location to store the number of bytes that were
	 *         written to the stream
	 *     cancellable = optional cancellable object
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GCancellable* cancellable, GError** err) writevFn;
	/** */
	extern(C) void function(GOutputStream* stream, GOutputVector* vectors, size_t nVectors, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) writevAsync;
	/**
	 *
	 * Params:
	 *     stream = a #GOutputStream.
	 *     result = a #GAsyncResult.
	 *     bytesWritten = location to store the number of bytes that were written to the stream
	 * Returns: %TRUE on success, %FALSE if there was an error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GOutputStream* stream, GAsyncResult* result, size_t* bytesWritten, GError** err) writevFinish;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
	/** */
	extern(C) void function() GReserved8;
}

struct GOutputStreamPrivate;

/**
 * Structure used for scatter/gather data output.
 * You generally pass in an array of #GOutputVectors
 * and the operation will use all the buffers as if they were
 * one buffer.
 *
 * Since: 2.22
 */
struct GOutputVector
{
	/**
	 * Pointer to a buffer of data to read.
	 */
	void* buffer;
	/**
	 * the size of @buffer.
	 */
	size_t size;
}

struct GPermission
{
	GObject parentInstance;
	GPermissionPrivate* priv;
}

struct GPermissionClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     permission = a #GPermission instance
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE if the permission was successfully acquired
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GPermission* permission, GCancellable* cancellable, GError** err) acquire;
	/** */
	extern(C) void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) acquireAsync;
	/**
	 *
	 * Params:
	 *     permission = a #GPermission instance
	 *     result = the #GAsyncResult given to the #GAsyncReadyCallback
	 * Returns: %TRUE if the permission was successfully acquired
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GPermission* permission, GAsyncResult* result, GError** err) acquireFinish;
	/**
	 *
	 * Params:
	 *     permission = a #GPermission instance
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: %TRUE if the permission was successfully released
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GPermission* permission, GCancellable* cancellable, GError** err) release;
	/** */
	extern(C) void function(GPermission* permission, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) releaseAsync;
	/**
	 *
	 * Params:
	 *     permission = a #GPermission instance
	 *     result = the #GAsyncResult given to the #GAsyncReadyCallback
	 * Returns: %TRUE if the permission was successfully released
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GPermission* permission, GAsyncResult* result, GError** err) releaseFinish;
	void*[16] reserved;
}

struct GPermissionPrivate;

struct GPollableInputStream;

/**
 * The interface for pollable input streams.
 *
 * The default implementation of @can_poll always returns %TRUE.
 *
 * The default implementation of @read_nonblocking calls
 * g_pollable_input_stream_is_readable(), and then calls
 * g_input_stream_read() if it returns %TRUE. This means you only need
 * to override it if it is possible that your @is_readable
 * implementation may return %TRUE when the stream is not actually
 * readable.
 *
 * Since: 2.28
 */
struct GPollableInputStreamInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableInputStream.
	 * Returns: %TRUE if @stream is pollable, %FALSE if not.
	 */
	extern(C) int function(GPollableInputStream* stream) canPoll;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableInputStream.
	 * Returns: %TRUE if @stream is readable, %FALSE if not. If an error
	 *     has occurred on @stream, this will result in
	 *     g_pollable_input_stream_is_readable() returning %TRUE, and the
	 *     next attempt to read will return the error.
	 */
	extern(C) int function(GPollableInputStream* stream) isReadable;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableInputStream.
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a new #GSource
	 */
	extern(C) GSource* function(GPollableInputStream* stream, GCancellable* cancellable) createSource;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableInputStream
	 *     buffer = a
	 *         buffer to read data into (which should be at least @count bytes long).
	 *     count = the number of bytes you want to read
	 * Returns: the number of bytes read, or -1 on error (including
	 *     %G_IO_ERROR_WOULD_BLOCK).
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GPollableInputStream* stream, void* buffer, size_t count, GError** err) readNonblocking;
}

struct GPollableOutputStream;

/**
 * The interface for pollable output streams.
 *
 * The default implementation of @can_poll always returns %TRUE.
 *
 * The default implementation of @write_nonblocking calls
 * g_pollable_output_stream_is_writable(), and then calls
 * g_output_stream_write() if it returns %TRUE. This means you only
 * need to override it if it is possible that your @is_writable
 * implementation may return %TRUE when the stream is not actually
 * writable.
 *
 * The default implementation of @writev_nonblocking calls
 * g_pollable_output_stream_write_nonblocking() for each vector, and converts
 * its return value and error (if set) to a #GPollableReturn. You should
 * override this where possible to avoid having to allocate a #GError to return
 * %G_IO_ERROR_WOULD_BLOCK.
 *
 * Since: 2.28
 */
struct GPollableOutputStreamInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableOutputStream.
	 * Returns: %TRUE if @stream is pollable, %FALSE if not.
	 */
	extern(C) int function(GPollableOutputStream* stream) canPoll;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableOutputStream.
	 * Returns: %TRUE if @stream is writable, %FALSE if not. If an error
	 *     has occurred on @stream, this will result in
	 *     g_pollable_output_stream_is_writable() returning %TRUE, and the
	 *     next attempt to write will return the error.
	 */
	extern(C) int function(GPollableOutputStream* stream) isWritable;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableOutputStream.
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a new #GSource
	 */
	extern(C) GSource* function(GPollableOutputStream* stream, GCancellable* cancellable) createSource;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableOutputStream
	 *     buffer = a buffer to write
	 *         data from
	 *     count = the number of bytes you want to write
	 * Returns: the number of bytes written, or -1 on error (including
	 *     %G_IO_ERROR_WOULD_BLOCK).
	 *
	 * Throws: GException on failure.
	 */
	extern(C) ptrdiff_t function(GPollableOutputStream* stream, void* buffer, size_t count, GError** err) writeNonblocking;
	/**
	 *
	 * Params:
	 *     stream = a #GPollableOutputStream
	 *     vectors = the buffer containing the #GOutputVectors to write.
	 *     nVectors = the number of vectors to write
	 *     bytesWritten = location to store the number of bytes that were
	 *         written to the stream
	 * Returns: %@G_POLLABLE_RETURN_OK on success, %G_POLLABLE_RETURN_WOULD_BLOCK
	 *     if the stream is not currently writable (and @error is *not* set), or
	 *     %G_POLLABLE_RETURN_FAILED if there was an error in which case @error will
	 *     be set.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GPollableReturn function(GPollableOutputStream* stream, GOutputVector* vectors, size_t nVectors, size_t* bytesWritten, GError** err) writevNonblocking;
}

struct GPowerProfileMonitor;

/**
 * The virtual function table for #GPowerProfileMonitor.
 *
 * Since: 2.70
 */
struct GPowerProfileMonitorInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
}

struct GPropertyAction;

struct GProxy;

struct GProxyAddress
{
	GInetSocketAddress parentInstance;
	GProxyAddressPrivate* priv;
}

/**
 * Class structure for #GProxyAddress.
 *
 * Since: 2.26
 */
struct GProxyAddressClass
{
	GInetSocketAddressClass parentClass;
}

struct GProxyAddressEnumerator
{
	GSocketAddressEnumerator parentInstance;
	GProxyAddressEnumeratorPrivate* priv;
}

/**
 * Class structure for #GProxyAddressEnumerator.
 */
struct GProxyAddressEnumeratorClass
{
	GSocketAddressEnumeratorClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
}

struct GProxyAddressEnumeratorPrivate;

struct GProxyAddressPrivate;

/**
 * Provides an interface for handling proxy connection and payload.
 *
 * Since: 2.26
 */
struct GProxyInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     proxy = a #GProxy
	 *     connection = a #GIOStream
	 *     proxyAddress = a #GProxyAddress
	 *     cancellable = a #GCancellable
	 * Returns: a #GIOStream that will replace @connection. This might
	 *     be the same as @connection, in which case a reference
	 *     will be added.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GIOStream* function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GError** err) connect;
	/** */
	extern(C) void function(GProxy* proxy, GIOStream* connection, GProxyAddress* proxyAddress, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) connectAsync;
	/**
	 *
	 * Params:
	 *     proxy = a #GProxy
	 *     result = a #GAsyncResult
	 * Returns: a #GIOStream.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GIOStream* function(GProxy* proxy, GAsyncResult* result, GError** err) connectFinish;
	/**
	 *
	 * Params:
	 *     proxy = a #GProxy
	 * Returns: %TRUE if hostname resolution is supported.
	 */
	extern(C) int function(GProxy* proxy) supportsHostname;
}

struct GProxyResolver;

/**
 * The virtual function table for #GProxyResolver.
 */
struct GProxyResolverInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     resolver = a #GProxyResolver
	 * Returns: %TRUE if @resolver is supported.
	 */
	extern(C) int function(GProxyResolver* resolver) isSupported;
	/**
	 *
	 * Params:
	 *     resolver = a #GProxyResolver
	 *     uri = a URI representing the destination to connect to
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: A
	 *     NULL-terminated array of proxy URIs. Must be freed
	 *     with g_strfreev().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char** function(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GError** err) lookup;
	/** */
	extern(C) void function(GProxyResolver* resolver, const(char)* uri, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GProxyResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: A
	 *     NULL-terminated array of proxy URIs. Must be freed
	 *     with g_strfreev().
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char** function(GProxyResolver* resolver, GAsyncResult* result, GError** err) lookupFinish;
}

struct GRemoteActionGroup;

/**
 * The virtual function table for #GRemoteActionGroup.
 *
 * Since: 2.32
 */
struct GRemoteActionGroupInterface
{
	GTypeInterface gIface;
	/** */
	extern(C) void function(GRemoteActionGroup* remote, const(char)* actionName, GVariant* parameter, GVariant* platformData) activateActionFull;
	/** */
	extern(C) void function(GRemoteActionGroup* remote, const(char)* actionName, GVariant* value, GVariant* platformData) changeActionStateFull;
}

struct GResolver
{
	GObject parentInstance;
	GResolverPrivate* priv;
}

struct GResolverClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GResolver* resolver) reload;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     hostname = the hostname to look up
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a non-empty #GList
	 *     of #GInetAddress, or %NULL on error. You
	 *     must unref each of the addresses and free the list when you are
	 *     done with it. (You can use g_resolver_free_addresses() to do this.)
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GError** err) lookupByName;
	/** */
	extern(C) void function(GResolver* resolver, const(char)* hostname, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupByNameAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: a #GList
	 *     of #GInetAddress, or %NULL on error. See g_resolver_lookup_by_name()
	 *     for more details.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, GAsyncResult* result, GError** err) lookupByNameFinish;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     address = the address to reverse-resolve
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded
	 *     form), or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char* function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GError** err) lookupByAddress;
	/** */
	extern(C) void function(GResolver* resolver, GInetAddress* address, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupByAddressAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: a hostname (either ASCII-only, or in ASCII-encoded
	 *     form), or %NULL on error.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) char* function(GResolver* resolver, GAsyncResult* result, GError** err) lookupByAddressFinish;
	/** */
	extern(C) GList* function(GResolver* resolver, const(char)* rrname, GCancellable* cancellable, GError** err) lookupService;
	/** */
	extern(C) void function(GResolver* resolver, const(char)* rrname, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupServiceAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: a non-empty #GList of
	 *     #GSrvTarget, or %NULL on error. See g_resolver_lookup_service() for more
	 *     details.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, GAsyncResult* result, GError** err) lookupServiceFinish;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     rrname = the DNS name to look up the record for
	 *     recordType = the type of DNS record to look up
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a non-empty #GList of
	 *     #GVariant, or %NULL on error. You must free each of the records and the list
	 *     when you are done with it. (You can use g_list_free_full() with
	 *     g_variant_unref() to do this.)
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GError** err) lookupRecords;
	/** */
	extern(C) void function(GResolver* resolver, const(char)* rrname, GResolverRecordType recordType, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupRecordsAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: a non-empty #GList of
	 *     #GVariant, or %NULL on error. You must free each of the records and the list
	 *     when you are done with it. (You can use g_list_free_full() with
	 *     g_variant_unref() to do this.)
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, GAsyncResult* result, GError** err) lookupRecordsFinish;
	/** */
	extern(C) void function(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupByNameWithFlagsAsync;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     result = the result passed to your #GAsyncReadyCallback
	 * Returns: a #GList
	 *     of #GInetAddress, or %NULL on error. See g_resolver_lookup_by_name()
	 *     for more details.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, GAsyncResult* result, GError** err) lookupByNameWithFlagsFinish;
	/**
	 *
	 * Params:
	 *     resolver = a #GResolver
	 *     hostname = the hostname to look up
	 *     flags = extra #GResolverNameLookupFlags for the lookup
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a non-empty #GList
	 *     of #GInetAddress, or %NULL on error. You
	 *     must unref each of the addresses and free the list when you are
	 *     done with it. (You can use g_resolver_free_addresses() to do this.)
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GResolver* resolver, const(char)* hostname, GResolverNameLookupFlags flags, GCancellable* cancellable, GError** err) lookupByNameWithFlags;
}

struct GResolverPrivate;

struct GResource;

struct GSeekable;

/**
 * Provides an interface for implementing seekable functionality on I/O Streams.
 */
struct GSeekableIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     seekable = a #GSeekable.
	 * Returns: the (positive or zero) offset from the beginning of the
	 *     buffer, zero if the target is not seekable.
	 */
	extern(C) long function(GSeekable* seekable) tell;
	/**
	 *
	 * Params:
	 *     seekable = a #GSeekable.
	 * Returns: %TRUE if @seekable can be seeked. %FALSE otherwise.
	 */
	extern(C) int function(GSeekable* seekable) canSeek;
	/**
	 *
	 * Params:
	 *     seekable = a #GSeekable.
	 *     offset = a #goffset.
	 *     type = a #GSeekType.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: %TRUE if successful. If an error
	 *     has occurred, this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GSeekable* seekable, long offset, GSeekType type, GCancellable* cancellable, GError** err) seek;
	/**
	 *
	 * Params:
	 *     seekable = a #GSeekable.
	 * Returns: %TRUE if the stream can be truncated, %FALSE otherwise.
	 */
	extern(C) int function(GSeekable* seekable) canTruncate;
	/**
	 *
	 * Params:
	 *     seekable = a #GSeekable.
	 *     offset = new length for @seekable, in bytes.
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: %TRUE if successful. If an error
	 *     has occurred, this function will return %FALSE and set @error
	 *     appropriately if present.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GSeekable* seekable, long offset, GCancellable* cancellable, GError** err) truncateFn;
}

struct GSettings
{
	GObject parentInstance;
	GSettingsPrivate* priv;
}

struct GSettingsBackend
{
	GObject parentInstance;
	GSettingsBackendPrivate* priv;
}

/**
 * Class structure for #GSettingsBackend.
 */
struct GSettingsBackendClass
{
	GObjectClass parentClass;
	/** */
	extern(C) GVariant* function(GSettingsBackend* backend, const(char)* key, GVariantType* expectedType, int defaultValue) read;
	/** */
	extern(C) int function(GSettingsBackend* backend, const(char)* key) getWritable;
	/** */
	extern(C) int function(GSettingsBackend* backend, const(char)* key, GVariant* value, void* originTag) write;
	/** */
	extern(C) int function(GSettingsBackend* backend, GTree* tree, void* originTag) writeTree;
	/** */
	extern(C) void function(GSettingsBackend* backend, const(char)* key, void* originTag) reset;
	/** */
	extern(C) void function(GSettingsBackend* backend, const(char)* name) subscribe;
	/** */
	extern(C) void function(GSettingsBackend* backend, const(char)* name) unsubscribe;
	/** */
	extern(C) void function(GSettingsBackend* backend) sync;
	/** */
	extern(C) GPermission* function(GSettingsBackend* backend, const(char)* path) getPermission;
	/** */
	extern(C) GVariant* function(GSettingsBackend* backend, const(char)* key, GVariantType* expectedType) readUserValue;
	void*[23] padding;
}

struct GSettingsBackendPrivate;

struct GSettingsClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GSettings* settings, const(char)* key) writableChanged;
	/** */
	extern(C) void function(GSettings* settings, const(char)* key) changed;
	/** */
	extern(C) int function(GSettings* settings, GQuark key) writableChangeEvent;
	/** */
	extern(C) int function(GSettings* settings, GQuark* keys, int nKeys) changeEvent;
	void*[20] padding;
}

struct GSettingsPrivate;

struct GSettingsSchema;

struct GSettingsSchemaKey;

struct GSettingsSchemaSource;

struct GSimpleAction;

struct GSimpleActionGroup
{
	GObject parentInstance;
	GSimpleActionGroupPrivate* priv;
}

struct GSimpleActionGroupClass
{
	GObjectClass parentClass;
	void*[12] padding;
}

struct GSimpleActionGroupPrivate;

struct GSimpleAsyncResult;

struct GSimpleAsyncResultClass;

struct GSimpleIOStream;

struct GSimplePermission;

struct GSimpleProxyResolver
{
	GObject parentInstance;
	GSimpleProxyResolverPrivate* priv;
}

struct GSimpleProxyResolverClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GSimpleProxyResolverPrivate;

struct GSocket
{
	GObject parentInstance;
	GSocketPrivate* priv;
}

struct GSocketAddress
{
	GObject parentInstance;
}

struct GSocketAddressClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     address = a #GSocketAddress
	 * Returns: the socket family type of @address
	 */
	extern(C) GSocketFamily function(GSocketAddress* address) getFamily;
	/**
	 *
	 * Params:
	 *     address = a #GSocketAddress
	 * Returns: the size of the native struct sockaddr that
	 *     @address represents
	 */
	extern(C) ptrdiff_t function(GSocketAddress* address) getNativeSize;
	/**
	 *
	 * Params:
	 *     address = a #GSocketAddress
	 *     dest = a pointer to a memory location that will contain the native
	 *         struct sockaddr
	 *     destlen = the size of @dest. Must be at least as large as
	 *         g_socket_address_get_native_size()
	 * Returns: %TRUE if @dest was filled in, %FALSE on error
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GSocketAddress* address, void* dest, size_t destlen, GError** err) toNative;
}

struct GSocketAddressEnumerator
{
	GObject parentInstance;
}

/**
 * Class structure for #GSocketAddressEnumerator.
 */
struct GSocketAddressEnumeratorClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     enumerator = a #GSocketAddressEnumerator
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 * Returns: a #GSocketAddress (owned by the caller), or %NULL on
	 *     error (in which case *@error will be set) or if there are no
	 *     more addresses.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GSocketAddress* function(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GError** err) next;
	/** */
	extern(C) void function(GSocketAddressEnumerator* enumerator, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) nextAsync;
	/**
	 *
	 * Params:
	 *     enumerator = a #GSocketAddressEnumerator
	 *     result = a #GAsyncResult
	 * Returns: a #GSocketAddress (owned by the caller), or %NULL on
	 *     error (in which case *@error will be set) or if there are no
	 *     more addresses.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GSocketAddress* function(GSocketAddressEnumerator* enumerator, GAsyncResult* result, GError** err) nextFinish;
}

struct GSocketClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
	/** */
	extern(C) void function() GReserved7;
	/** */
	extern(C) void function() GReserved8;
	/** */
	extern(C) void function() GReserved9;
	/** */
	extern(C) void function() GReserved10;
}

struct GSocketClient
{
	GObject parentInstance;
	GSocketClientPrivate* priv;
}

struct GSocketClientClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GSocketClient* client, GSocketClientEvent event, GSocketConnectable* connectable, GIOStream* connection) event;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
}

struct GSocketClientPrivate;

struct GSocketConnectable;

/**
 * Provides an interface for returning a #GSocketAddressEnumerator
 * and #GProxyAddressEnumerator
 */
struct GSocketConnectableIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable
	 * Returns: a new #GSocketAddressEnumerator.
	 */
	extern(C) GSocketAddressEnumerator* function(GSocketConnectable* connectable) enumerate;
	/**
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable
	 * Returns: a new #GSocketAddressEnumerator.
	 */
	extern(C) GSocketAddressEnumerator* function(GSocketConnectable* connectable) proxyEnumerate;
	/**
	 *
	 * Params:
	 *     connectable = a #GSocketConnectable
	 * Returns: the formatted string
	 */
	extern(C) char* function(GSocketConnectable* connectable) toString;
}

struct GSocketConnection
{
	GIOStream parentInstance;
	GSocketConnectionPrivate* priv;
}

struct GSocketConnectionClass
{
	GIOStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
}

struct GSocketConnectionPrivate;

struct GSocketControlMessage
{
	GObject parentInstance;
	GSocketControlMessagePrivate* priv;
}

/**
 * Class structure for #GSocketControlMessage.
 */
struct GSocketControlMessageClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     message = a #GSocketControlMessage
	 * Returns: The number of bytes required.
	 */
	extern(C) size_t function(GSocketControlMessage* message) getSize;
	/**
	 *
	 * Params:
	 *     message = a #GSocketControlMessage
	 * Returns: an integer describing the level
	 */
	extern(C) int function(GSocketControlMessage* message) getLevel;
	/** */
	extern(C) int function(GSocketControlMessage* message) getType;
	/** */
	extern(C) void function(GSocketControlMessage* message, void* data) serialize;
	/** */
	extern(C) GSocketControlMessage* function(int level, int type, size_t size, void* data) deserialize;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GSocketControlMessagePrivate;

struct GSocketListener
{
	GObject parentInstance;
	GSocketListenerPrivate* priv;
}

/**
 * Class structure for #GSocketListener.
 */
struct GSocketListenerClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GSocketListener* listener) changed;
	/** */
	extern(C) void function(GSocketListener* listener, GSocketListenerEvent event, GSocket* socket) event;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
}

struct GSocketListenerPrivate;

struct GSocketPrivate;

struct GSocketService
{
	GSocketListener parentInstance;
	GSocketServicePrivate* priv;
}

/**
 * Class structure for #GSocketService.
 */
struct GSocketServiceClass
{
	GSocketListenerClass parentClass;
	/** */
	extern(C) int function(GSocketService* service, GSocketConnection* connection, GObject* sourceObject) incoming;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
}

struct GSocketServicePrivate;

struct GSrvTarget;

struct GStaticResource
{
	ubyte* data;
	size_t dataLen;
	GResource* resource;
	GStaticResource* next;
	void* padding;
}

struct GSubprocess;

struct GSubprocessLauncher;

struct GTask;

struct GTaskClass;

struct GTcpConnection
{
	GSocketConnection parentInstance;
	GTcpConnectionPrivate* priv;
}

struct GTcpConnectionClass
{
	GSocketConnectionClass parentClass;
}

struct GTcpConnectionPrivate;

struct GTcpWrapperConnection
{
	GTcpConnection parentInstance;
	GTcpWrapperConnectionPrivate* priv;
}

struct GTcpWrapperConnectionClass
{
	GTcpConnectionClass parentClass;
}

struct GTcpWrapperConnectionPrivate;

struct GTestDBus;

struct GThemedIcon;

struct GThemedIconClass;

struct GThreadedSocketService
{
	GSocketService parentInstance;
	GThreadedSocketServicePrivate* priv;
}

struct GThreadedSocketServiceClass
{
	GSocketServiceClass parentClass;
	/** */
	extern(C) int function(GThreadedSocketService* service, GSocketConnection* connection, GObject* sourceObject) run;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GThreadedSocketServicePrivate;

struct GTlsBackend;

/**
 * Provides an interface for describing TLS-related types.
 *
 * Since: 2.28
 */
struct GTlsBackendInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/**
	 *
	 * Params:
	 *     backend = the #GTlsBackend
	 * Returns: whether or not TLS is supported
	 */
	extern(C) int function(GTlsBackend* backend) supportsTls;
	/** */
	extern(C) GType function() getCertificateType;
	/** */
	extern(C) GType function() getClientConnectionType;
	/** */
	extern(C) GType function() getServerConnectionType;
	/** */
	extern(C) GType function() getFileDatabaseType;
	/**
	 *
	 * Params:
	 *     backend = the #GTlsBackend
	 * Returns: the default database, which should be
	 *     unreffed when done.
	 */
	extern(C) GTlsDatabase* function(GTlsBackend* backend) getDefaultDatabase;
	/**
	 *
	 * Params:
	 *     backend = the #GTlsBackend
	 * Returns: whether DTLS is supported
	 */
	extern(C) int function(GTlsBackend* backend) supportsDtls;
	/** */
	extern(C) GType function() getDtlsClientConnectionType;
	/** */
	extern(C) GType function() getDtlsServerConnectionType;
}

struct GTlsCertificate
{
	GObject parentInstance;
	GTlsCertificatePrivate* priv;
}

struct GTlsCertificateClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     cert = a #GTlsCertificate
	 *     identity = the expected peer identity
	 *     trustedCa = the certificate of a trusted authority
	 * Returns: the appropriate #GTlsCertificateFlags
	 */
	extern(C) GTlsCertificateFlags function(GTlsCertificate* cert, GSocketConnectable* identity, GTlsCertificate* trustedCa) verify;
	void*[8] padding;
}

struct GTlsCertificatePrivate;

struct GTlsClientConnection;

/**
 * vtable for a #GTlsClientConnection implementation.
 *
 * Since: 2.26
 */
struct GTlsClientConnectionInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GTlsClientConnection* conn, GTlsClientConnection* source) copySessionState;
}

struct GTlsConnection
{
	GIOStream parentInstance;
	GTlsConnectionPrivate* priv;
}

/**
 * The class structure for the #GTlsConnection type.
 *
 * Since: 2.28
 */
struct GTlsConnectionClass
{
	/**
	 * The parent class.
	 */
	GIOStreamClass parentClass;
	/** */
	extern(C) int function(GTlsConnection* connection, GTlsCertificate* peerCert, GTlsCertificateFlags errors) acceptCertificate;
	/**
	 *
	 * Params:
	 *     conn = a #GTlsConnection
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: success or failure
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GTlsConnection* conn, GCancellable* cancellable, GError** err) handshake;
	/** */
	extern(C) void function(GTlsConnection* conn, int ioPriority, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) handshakeAsync;
	/**
	 *
	 * Params:
	 *     conn = a #GTlsConnection
	 *     result = a #GAsyncResult.
	 * Returns: %TRUE on success, %FALSE on failure, in which
	 *     case @error will be set.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GTlsConnection* conn, GAsyncResult* result, GError** err) handshakeFinish;
	/** */
	extern(C) int function(GTlsConnection* conn, GTlsChannelBindingType type, GByteArray* data, GError** err) getBindingData;
	/**
	 *
	 * Params:
	 *     conn = a #GTlsConnection
	 * Returns: the negotiated protocol, or %NULL
	 */
	extern(C) const(char)* function(GTlsConnection* conn) getNegotiatedProtocol;
	void*[6] padding;
}

struct GTlsConnectionPrivate;

struct GTlsDatabase
{
	GObject parentInstance;
	GTlsDatabasePrivate* priv;
}

/**
 * The class for #GTlsDatabase. Derived classes should implement the various
 * virtual methods. _async and _finish methods have a default
 * implementation that runs the corresponding sync method in a thread.
 *
 * Since: 2.30
 */
struct GTlsDatabaseClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     chain = a #GTlsCertificate chain
	 *     purpose = the purpose that this certificate chain will be used for.
	 *     identity = the expected peer identity
	 *     interaction = used to interact with the user if necessary
	 *     flags = additional verify flags
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: the appropriate #GTlsCertificateFlags which represents the
	 *     result of verification.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificateFlags function(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GError** err) verifyChain;
	/** */
	extern(C) void function(GTlsDatabase* self, GTlsCertificate* chain, const(char)* purpose, GSocketConnectable* identity, GTlsInteraction* interaction, GTlsDatabaseVerifyFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) verifyChainAsync;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     result = a #GAsyncResult.
	 * Returns: the appropriate #GTlsCertificateFlags which represents the
	 *     result of verification.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificateFlags function(GTlsDatabase* self, GAsyncResult* result, GError** err) verifyChainFinish;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     certificate = certificate for which to create a handle.
	 * Returns: a newly allocated string containing the
	 *     handle.
	 */
	extern(C) char* function(GTlsDatabase* self, GTlsCertificate* certificate) createCertificateHandle;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     handle = a certificate handle
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup.
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a newly allocated
	 *     #GTlsCertificate, or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificate* function(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) lookupCertificateForHandle;
	/** */
	extern(C) void function(GTlsDatabase* self, const(char)* handle, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupCertificateForHandleAsync;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     result = a #GAsyncResult.
	 * Returns: a newly allocated #GTlsCertificate object.
	 *     Use g_object_unref() to release the certificate.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** err) lookupCertificateForHandleFinish;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     certificate = a #GTlsCertificate
	 *     interaction = used to interact with the user if necessary
	 *     flags = flags which affect the lookup operation
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a newly allocated issuer #GTlsCertificate,
	 *     or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificate* function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) lookupCertificateIssuer;
	/** */
	extern(C) void function(GTlsDatabase* self, GTlsCertificate* certificate, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupCertificateIssuerAsync;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     result = a #GAsyncResult.
	 * Returns: a newly allocated issuer #GTlsCertificate,
	 *     or %NULL. Use g_object_unref() to release the certificate.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsCertificate* function(GTlsDatabase* self, GAsyncResult* result, GError** err) lookupCertificateIssuerFinish;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     issuerRawDn = a #GByteArray which holds the DER encoded issuer DN.
	 *     interaction = used to interact with the user if necessary
	 *     flags = Flags which affect the lookup operation.
	 *     cancellable = a #GCancellable, or %NULL
	 * Returns: a newly allocated list of #GTlsCertificate
	 *     objects. Use g_object_unref() on each certificate, and g_list_free() on the release the list.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GError** err) lookupCertificatesIssuedBy;
	/** */
	extern(C) void function(GTlsDatabase* self, GByteArray* issuerRawDn, GTlsInteraction* interaction, GTlsDatabaseLookupFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) lookupCertificatesIssuedByAsync;
	/**
	 *
	 * Params:
	 *     self = a #GTlsDatabase
	 *     result = a #GAsyncResult.
	 * Returns: a newly allocated list of #GTlsCertificate
	 *     objects. Use g_object_unref() on each certificate, and g_list_free() on the release the list.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GList* function(GTlsDatabase* self, GAsyncResult* result, GError** err) lookupCertificatesIssuedByFinish;
	void*[16] padding;
}

struct GTlsDatabasePrivate;

struct GTlsFileDatabase;

/**
 * Provides an interface for #GTlsFileDatabase implementations.
 */
struct GTlsFileDatabaseInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	void*[8] padding;
}

struct GTlsInteraction
{
	GObject parentInstance;
	GTlsInteractionPrivate* priv;
}

/**
 * The class for #GTlsInteraction. Derived classes implement the various
 * virtual interaction methods to handle TLS interactions.
 *
 * Derived classes can choose to implement whichever interactions methods they'd
 * like to support by overriding those virtual methods in their class
 * initialization function. If a derived class implements an async method,
 * it must also implement the corresponding finish method.
 *
 * The synchronous interaction methods should implement to display modal dialogs,
 * and the asynchronous methods to display modeless dialogs.
 *
 * If the user cancels an interaction, then the result should be
 * %G_TLS_INTERACTION_FAILED and the error should be set with a domain of
 * %G_IO_ERROR and code of %G_IO_ERROR_CANCELLED.
 *
 * Since: 2.30
 */
struct GTlsInteractionClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     interaction = a #GTlsInteraction object
	 *     password = a #GTlsPassword object
	 *     cancellable = an optional #GCancellable cancellation object
	 * Returns: The status of the ask password interaction.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsInteractionResult function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GError** err) askPassword;
	/** */
	extern(C) void function(GTlsInteraction* interaction, GTlsPassword* password, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) askPasswordAsync;
	/**
	 *
	 * Params:
	 *     interaction = a #GTlsInteraction object
	 *     result = the result passed to the callback
	 * Returns: The status of the ask password interaction.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsInteractionResult function(GTlsInteraction* interaction, GAsyncResult* result, GError** err) askPasswordFinish;
	/**
	 *
	 * Params:
	 *     interaction = a #GTlsInteraction object
	 *     connection = a #GTlsConnection object
	 *     flags = flags providing more information about the request
	 *     cancellable = an optional #GCancellable cancellation object
	 * Returns: The status of the request certificate interaction.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsInteractionResult function(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GError** err) requestCertificate;
	/** */
	extern(C) void function(GTlsInteraction* interaction, GTlsConnection* connection, GTlsCertificateRequestFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) requestCertificateAsync;
	/**
	 *
	 * Params:
	 *     interaction = a #GTlsInteraction object
	 *     result = the result passed to the callback
	 * Returns: The status of the request certificate interaction.
	 *
	 * Throws: GException on failure.
	 */
	extern(C) GTlsInteractionResult function(GTlsInteraction* interaction, GAsyncResult* result, GError** err) requestCertificateFinish;
	void*[21] padding;
}

struct GTlsInteractionPrivate;

struct GTlsPassword
{
	GObject parentInstance;
	GTlsPasswordPrivate* priv;
}

/**
 * Class structure for #GTlsPassword.
 */
struct GTlsPasswordClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     password = a #GTlsPassword object
	 * Returns: The password value (owned by the password object).
	 */
	extern(C) char* function(GTlsPassword* password, size_t* length) getValue;
	/** */
	extern(C) void function(GTlsPassword* password, char* value, ptrdiff_t length, GDestroyNotify destroy) setValue;
	/** */
	extern(C) const(char)* function(GTlsPassword* password) getDefaultWarning;
	void*[4] padding;
}

struct GTlsPasswordPrivate;

struct GTlsServerConnection;

/**
 * vtable for a #GTlsServerConnection implementation.
 *
 * Since: 2.26
 */
struct GTlsServerConnectionInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
}

struct GUnixConnection
{
	GSocketConnection parentInstance;
	GUnixConnectionPrivate* priv;
}

struct GUnixConnectionClass
{
	GSocketConnectionClass parentClass;
}

struct GUnixConnectionPrivate;

struct GUnixCredentialsMessage
{
	GSocketControlMessage parentInstance;
	GUnixCredentialsMessagePrivate* priv;
}

/**
 * Class structure for #GUnixCredentialsMessage.
 *
 * Since: 2.26
 */
struct GUnixCredentialsMessageClass
{
	GSocketControlMessageClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
}

struct GUnixCredentialsMessagePrivate;

struct GUnixFDList
{
	GObject parentInstance;
	GUnixFDListPrivate* priv;
}

struct GUnixFDListClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GUnixFDListPrivate;

struct GUnixFDMessage
{
	GSocketControlMessage parentInstance;
	GUnixFDMessagePrivate* priv;
}

struct GUnixFDMessageClass
{
	GSocketControlMessageClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
}

struct GUnixFDMessagePrivate;

struct GUnixInputStream
{
	GInputStream parentInstance;
	GUnixInputStreamPrivate* priv;
}

struct GUnixInputStreamClass
{
	GInputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GUnixInputStreamPrivate;

/**
 * Defines a Unix mount entry (e.g. <filename>/media/cdrom</filename>).
 * This corresponds roughly to a mtab entry.
 */
struct GUnixMountEntry;

struct GUnixMountMonitor;

struct GUnixMountMonitorClass;

struct GUnixMountPoint;

struct GUnixOutputStream
{
	GOutputStream parentInstance;
	GUnixOutputStreamPrivate* priv;
}

struct GUnixOutputStreamClass
{
	GOutputStreamClass parentClass;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
}

struct GUnixOutputStreamPrivate;

struct GUnixSocketAddress
{
	GSocketAddress parentInstance;
	GUnixSocketAddressPrivate* priv;
}

struct GUnixSocketAddressClass
{
	GSocketAddressClass parentClass;
}

struct GUnixSocketAddressPrivate;

struct GVfs
{
	GObject parentInstance;
}

struct GVfsClass
{
	GObjectClass parentClass;
	/**
	 *
	 * Params:
	 *     vfs = a #GVfs.
	 * Returns: %TRUE if construction of the @vfs was successful
	 *     and it is now active.
	 */
	extern(C) int function(GVfs* vfs) isActive;
	/**
	 *
	 * Params:
	 *     vfs = a #GVfs.
	 *     path = a string containing a VFS path.
	 * Returns: a #GFile.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GFile* function(GVfs* vfs, const(char)* path) getFileForPath;
	/**
	 *
	 * Params:
	 *     vfs = a#GVfs.
	 *     uri = a string containing a URI
	 * Returns: a #GFile.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GFile* function(GVfs* vfs, const(char)* uri) getFileForUri;
	/**
	 *
	 * Params:
	 *     vfs = a #GVfs.
	 * Returns: a %NULL-terminated array of strings.
	 *     The returned array belongs to GIO and must
	 *     not be freed or modified.
	 */
	extern(C) char** function(GVfs* vfs) getSupportedUriSchemes;
	/**
	 *
	 * Params:
	 *     vfs = a #GVfs.
	 *     parseName = a string to be parsed by the VFS module.
	 * Returns: a #GFile for the given @parse_name.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GFile* function(GVfs* vfs, const(char)* parseName) parseName;
	/** */
	extern(C) void function(GVfs* vfs, const(char)* filename, ulong device, GFileAttributeMatcher* attributeMatcher, GFileInfo* info, GCancellable* cancellable, void** extraData, GDestroyNotify* freeExtraData) localFileAddInfo;
	/** */
	extern(C) void function(GVfs* vfs, GFileAttributeInfoList* list) addWritableNamespaces;
	/** */
	extern(C) int function(GVfs* vfs, const(char)* filename, GFileInfo* info, GFileQueryInfoFlags flags, GCancellable* cancellable, GError** err) localFileSetAttributes;
	/** */
	extern(C) void function(GVfs* vfs, const(char)* filename) localFileRemoved;
	/** */
	extern(C) void function(GVfs* vfs, const(char)* source, const(char)* dest) localFileMoved;
	/** */
	extern(C) GIcon* function(GVfs* vfs, GVariant* value) deserializeIcon;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
}

struct GVolume;

/**
 * Interface for implementing operations for mountable volumes.
 */
struct GVolumeIface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface gIface;
	/** */
	extern(C) void function(GVolume* volume) changed;
	/** */
	extern(C) void function(GVolume* volume) removed;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: the name for the given @volume. The returned string should
	 *     be freed with g_free() when no longer needed.
	 */
	extern(C) char* function(GVolume* volume) getName;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with g_object_unref()
	 *     when no longer needed.
	 */
	extern(C) GIcon* function(GVolume* volume) getIcon;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: the UUID for @volume or %NULL if no UUID
	 *     can be computed.
	 *     The returned string should be freed with g_free()
	 *     when no longer needed.
	 */
	extern(C) char* function(GVolume* volume) getUuid;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: a #GDrive or %NULL if @volume is not
	 *     associated with a drive. The returned object should be unreffed
	 *     with g_object_unref() when no longer needed.
	 */
	extern(C) GDrive* function(GVolume* volume) getDrive;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: a #GMount or %NULL if @volume isn't mounted.
	 *     The returned object should be unreffed with g_object_unref()
	 *     when no longer needed.
	 */
	extern(C) GMount* function(GVolume* volume) getMount;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: %TRUE if the @volume can be mounted. %FALSE otherwise
	 */
	extern(C) int function(GVolume* volume) canMount;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: %TRUE if the @volume can be ejected. %FALSE otherwise
	 */
	extern(C) int function(GVolume* volume) canEject;
	/** */
	extern(C) void function(GVolume* volume, GMountMountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) mountFn;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 *     result = a #GAsyncResult
	 * Returns: %TRUE, %FALSE if operation failed
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** err) mountFinish;
	/** */
	extern(C) void function(GVolume* volume, GMountUnmountFlags flags, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) eject;
	/**
	 *
	 * Params:
	 *     volume = pointer to a #GVolume
	 *     result = a #GAsyncResult
	 * Returns: %TRUE, %FALSE if operation failed
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** err) ejectFinish;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 *     kind = the kind of identifier to return
	 * Returns: a newly allocated string containing the
	 *     requested identifier, or %NULL if the #GVolume
	 *     doesn't have this kind of identifier
	 */
	extern(C) char* function(GVolume* volume, const(char)* kind) getIdentifier;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: a %NULL-terminated array
	 *     of strings containing kinds of identifiers. Use g_strfreev() to free.
	 */
	extern(C) char** function(GVolume* volume) enumerateIdentifiers;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: %TRUE if the volume should be automatically mounted
	 */
	extern(C) int function(GVolume* volume) shouldAutomount;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: the activation root of @volume
	 *     or %NULL. Use g_object_unref() to free.
	 */
	extern(C) GFile* function(GVolume* volume) getActivationRoot;
	/** */
	extern(C) void function(GVolume* volume, GMountUnmountFlags flags, GMountOperation* mountOperation, GCancellable* cancellable, GAsyncReadyCallback callback, void* userData) ejectWithOperation;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 *     result = a #GAsyncResult
	 * Returns: %TRUE if the volume was successfully ejected. %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	extern(C) int function(GVolume* volume, GAsyncResult* result, GError** err) ejectWithOperationFinish;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: Sorting key for @volume or %NULL if no such key is available
	 */
	extern(C) const(char)* function(GVolume* volume) getSortKey;
	/**
	 *
	 * Params:
	 *     volume = a #GVolume
	 * Returns: a #GIcon.
	 *     The returned object should be unreffed with g_object_unref()
	 *     when no longer needed.
	 */
	extern(C) GIcon* function(GVolume* volume) getSymbolicIcon;
}

struct GVolumeMonitor
{
	GObject parentInstance;
	void* priv;
}

struct GVolumeMonitorClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GVolume* volume) volumeAdded;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GVolume* volume) volumeRemoved;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GVolume* volume) volumeChanged;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GMount* mount) mountAdded;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GMount* mount) mountRemoved;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GMount* mount) mountPreUnmount;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GMount* mount) mountChanged;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GDrive* drive) driveConnected;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GDrive* drive) driveDisconnected;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GDrive* drive) driveChanged;
	/** */
	extern(C) int function() isSupported;
	/**
	 *
	 * Params:
	 *     volumeMonitor = a #GVolumeMonitor.
	 * Returns: a #GList of connected #GDrive objects.
	 */
	extern(C) GList* function(GVolumeMonitor* volumeMonitor) getConnectedDrives;
	/**
	 *
	 * Params:
	 *     volumeMonitor = a #GVolumeMonitor.
	 * Returns: a #GList of #GVolume objects.
	 */
	extern(C) GList* function(GVolumeMonitor* volumeMonitor) getVolumes;
	/**
	 *
	 * Params:
	 *     volumeMonitor = a #GVolumeMonitor.
	 * Returns: a #GList of #GMount objects.
	 */
	extern(C) GList* function(GVolumeMonitor* volumeMonitor) getMounts;
	/**
	 *
	 * Params:
	 *     volumeMonitor = a #GVolumeMonitor.
	 *     uuid = the UUID to look for
	 * Returns: a #GVolume or %NULL if no such volume is available.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GVolume* function(GVolumeMonitor* volumeMonitor, const(char)* uuid) getVolumeForUuid;
	/**
	 *
	 * Params:
	 *     volumeMonitor = a #GVolumeMonitor.
	 *     uuid = the UUID to look for
	 * Returns: a #GMount or %NULL if no such mount is available.
	 *     Free the returned object with g_object_unref().
	 */
	extern(C) GMount* function(GVolumeMonitor* volumeMonitor, const(char)* uuid) getMountForUuid;
	/** */
	extern(C) GVolume* function(GMount* mount, GVolumeMonitor* volumeMonitor) adoptOrphanMount;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GDrive* drive) driveEjectButton;
	/** */
	extern(C) void function(GVolumeMonitor* volumeMonitor, GDrive* drive) driveStopButton;
	/** */
	extern(C) void function() GReserved1;
	/** */
	extern(C) void function() GReserved2;
	/** */
	extern(C) void function() GReserved3;
	/** */
	extern(C) void function() GReserved4;
	/** */
	extern(C) void function() GReserved5;
	/** */
	extern(C) void function() GReserved6;
}

struct GZlibCompressor;

struct GZlibCompressorClass
{
	GObjectClass parentClass;
}

struct GZlibDecompressor;

struct GZlibDecompressorClass
{
	GObjectClass parentClass;
}

/**
 * Type definition for a function that will be called back when an asynchronous
 * operation within GIO has been completed. #GAsyncReadyCallback
 * callbacks from #GTask are guaranteed to be invoked in a later
 * iteration of the
 * [thread-default main context][g-main-context-push-thread-default]
 * where the #GTask was created. All other users of
 * #GAsyncReadyCallback must likewise call it asynchronously in a
 * later iteration of the main context.
 *
 * The asynchronous operation is guaranteed to have held a reference to
 * @source_object from the time when the `*_async()` function was called, until
 * after this callback returns.
 *
 * Params:
 *     sourceObject = the object the asynchronous operation was started with.
 *     res = a #GAsyncResult.
 *     userData = user data passed to the callback.
 */
public alias extern(C) void function(GObject* sourceObject, GAsyncResult* res, void* userData) GAsyncReadyCallback;

/**
 * Invoked when a connection to a message bus has been obtained.
 *
 * Params:
 *     connection = The #GDBusConnection to a message bus.
 *     name = The name that is requested to be owned.
 *     userData = User data passed to g_bus_own_name().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* name, void* userData) GBusAcquiredCallback;

/**
 * Invoked when the name is acquired.
 *
 * Params:
 *     connection = The #GDBusConnection on which to acquired the name.
 *     name = The name being owned.
 *     userData = User data passed to g_bus_own_name() or g_bus_own_name_on_connection().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* name, void* userData) GBusNameAcquiredCallback;

/**
 * Invoked when the name being watched is known to have to have an owner.
 *
 * Params:
 *     connection = The #GDBusConnection the name is being watched on.
 *     name = The name being watched.
 *     nameOwner = Unique name of the owner of the name being watched.
 *     userData = User data passed to g_bus_watch_name().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* name, const(char)* nameOwner, void* userData) GBusNameAppearedCallback;

/**
 * Invoked when the name is lost or @connection has been closed.
 *
 * Params:
 *     connection = The #GDBusConnection on which to acquire the name or %NULL if
 *         the connection was disconnected.
 *     name = The name being owned.
 *     userData = User data passed to g_bus_own_name() or g_bus_own_name_on_connection().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* name, void* userData) GBusNameLostCallback;

/**
 * Invoked when the name being watched is known not to have to have an owner.
 *
 * This is also invoked when the #GDBusConnection on which the watch was
 * established has been closed.  In that case, @connection will be
 * %NULL.
 *
 * Params:
 *     connection = The #GDBusConnection the name is being watched on, or
 *         %NULL.
 *     name = The name being watched.
 *     userData = User data passed to g_bus_watch_name().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* name, void* userData) GBusNameVanishedCallback;

/**
 * This is the function type of the callback used for the #GSource
 * returned by g_cancellable_source_new().
 *
 * Params:
 *     cancellable = the #GCancellable
 *     userData = data passed in by the user.
 *
 * Returns: it should return %FALSE if the source should be removed.
 *
 * Since: 2.28
 */
public alias extern(C) int function(GCancellable* cancellable, void* userData) GCancellableSourceFunc;

/**
 * The type of the @get_property function in #GDBusInterfaceVTable.
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that the method was invoked on.
 *     interfaceName = The D-Bus interface name for the property.
 *     propertyName = The name of the property to get the value of.
 *     error = Return location for error.
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_object().
 *
 * Returns: A #GVariant with the value for @property_name or %NULL if
 *     @error is set. If the returned #GVariant is floating, it is
 *     consumed - otherwise its reference count is decreased by one.
 *
 * Since: 2.26
 */
public alias extern(C) GVariant* function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, const(char)* interfaceName, const(char)* propertyName, GError** error, void* userData) GDBusInterfaceGetPropertyFunc;

/**
 * The type of the @method_call function in #GDBusInterfaceVTable.
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that the method was invoked on.
 *     interfaceName = The D-Bus interface name the method was invoked on.
 *     methodName = The name of the method that was invoked.
 *     parameters = A #GVariant tuple with parameters.
 *     invocation = A #GDBusMethodInvocation object that must be used to return a value or error.
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_object().
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, const(char)* interfaceName, const(char)* methodName, GVariant* parameters, GDBusMethodInvocation* invocation, void* userData) GDBusInterfaceMethodCallFunc;

/**
 * The type of the @set_property function in #GDBusInterfaceVTable.
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that the method was invoked on.
 *     interfaceName = The D-Bus interface name for the property.
 *     propertyName = The name of the property to get the value of.
 *     value = The value to set the property to.
 *     error = Return location for error.
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_object().
 *
 * Returns: %TRUE if the property was set to @value, %FALSE if @error is set.
 *
 * Since: 2.26
 */
public alias extern(C) int function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, const(char)* interfaceName, const(char)* propertyName, GVariant* value, GError** error, void* userData) GDBusInterfaceSetPropertyFunc;

/**
 * Signature for function used in g_dbus_connection_add_filter().
 *
 * A filter function is passed a #GDBusMessage and expected to return
 * a #GDBusMessage too. Passive filter functions that don't modify the
 * message can simply return the @message object:
 * |[
 * static GDBusMessage *
 * passive_filter (GDBusConnection *connection
 * GDBusMessage    *message,
 * gboolean         incoming,
 * gpointer         user_data)
 * {
 * // inspect @message
 * return message;
 * }
 * ]|
 * Filter functions that wants to drop a message can simply return %NULL:
 * |[
 * static GDBusMessage *
 * drop_filter (GDBusConnection *connection
 * GDBusMessage    *message,
 * gboolean         incoming,
 * gpointer         user_data)
 * {
 * if (should_drop_message)
 * {
 * g_object_unref (message);
 * message = NULL;
 * }
 * return message;
 * }
 * ]|
 * Finally, a filter function may modify a message by copying it:
 * |[
 * static GDBusMessage *
 * modifying_filter (GDBusConnection *connection
 * GDBusMessage    *message,
 * gboolean         incoming,
 * gpointer         user_data)
 * {
 * GDBusMessage *copy;
 * GError *error;
 *
 * error = NULL;
 * copy = g_dbus_message_copy (message, &error);
 * // handle @error being set
 * g_object_unref (message);
 *
 * // modify @copy
 *
 * return copy;
 * }
 * ]|
 * If the returned #GDBusMessage is different from @message and cannot
 * be sent on @connection (it could use features, such as file
 * descriptors, not compatible with @connection), then a warning is
 * logged to standard error. Applications can
 * check this ahead of time using g_dbus_message_to_blob() passing a
 * #GDBusCapabilityFlags value obtained from @connection.
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     message = A locked #GDBusMessage that the filter function takes ownership of.
 *     incoming = %TRUE if it is a message received from the other peer, %FALSE if it is
 *         a message to be sent to the other peer.
 *     userData = User data passed when adding the filter.
 *
 * Returns: A #GDBusMessage that will be freed with
 *     g_object_unref() or %NULL to drop the message. Passive filter
 *     functions can simply return the passed @message object.
 *
 * Since: 2.26
 */
public alias extern(C) GDBusMessage* function(GDBusConnection* connection, GDBusMessage* message, int incoming, void* userData) GDBusMessageFilterFunction;

/**
 * Function signature for a function used to determine the #GType to
 * use for an interface proxy (if @interface_name is not %NULL) or
 * object proxy (if @interface_name is %NULL).
 *
 * This function is called in the
 * [thread-default main loop][g-main-context-push-thread-default]
 * that @manager was constructed in.
 *
 * Params:
 *     manager = A #GDBusObjectManagerClient.
 *     objectPath = The object path of the remote object.
 *     interfaceName = The interface name of the remote object or %NULL if a #GDBusObjectProxy #GType is requested.
 *     userData = User data.
 *
 * Returns: A #GType to use for the remote object. The returned type
 *     must be a #GDBusProxy or #GDBusObjectProxy -derived
 *     type.
 *
 * Since: 2.30
 */
public alias extern(C) GType function(GDBusObjectManagerClient* manager, const(char)* objectPath, const(char)* interfaceName, void* userData) GDBusProxyTypeFunc;

/**
 * Signature for callback function used in g_dbus_connection_signal_subscribe().
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     senderName = The unique bus name of the sender of the signal,
 *         or %NULL on a peer-to-peer D-Bus connection.
 *     objectPath = The object path that the signal was emitted on.
 *     interfaceName = The name of the interface.
 *     signalName = The name of the signal.
 *     parameters = A #GVariant tuple with parameters for the signal.
 *     userData = User data passed when subscribing to the signal.
 *
 * Since: 2.26
 */
public alias extern(C) void function(GDBusConnection* connection, const(char)* senderName, const(char)* objectPath, const(char)* interfaceName, const(char)* signalName, GVariant* parameters, void* userData) GDBusSignalCallback;

/**
 * The type of the @dispatch function in #GDBusSubtreeVTable.
 *
 * Subtrees are flat.  @node, if non-%NULL, is always exactly one
 * segment of the object path (ie: it never contains a slash).
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that was registered with g_dbus_connection_register_subtree().
 *     interfaceName = The D-Bus interface name that the method call or property access is for.
 *     node = A node that is a child of @object_path (relative to @object_path) or %NULL for the root of the subtree.
 *     outUserData = Return location for user data to pass to functions in the returned #GDBusInterfaceVTable.
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_subtree().
 *
 * Returns: A #GDBusInterfaceVTable or %NULL if you don't want to handle the methods.
 *
 * Since: 2.26
 */
public alias extern(C) GDBusInterfaceVTable* function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, const(char)* interfaceName, const(char)* node, void** outUserData, void* userData) GDBusSubtreeDispatchFunc;

/**
 * The type of the @enumerate function in #GDBusSubtreeVTable.
 *
 * This function is called when generating introspection data and also
 * when preparing to dispatch incoming messages in the event that the
 * %G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES flag is not
 * specified (ie: to verify that the object path is valid).
 *
 * Hierarchies are not supported; the items that you return should not
 * contain the `/` character.
 *
 * The return value will be freed with g_strfreev().
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that was registered with g_dbus_connection_register_subtree().
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_subtree().
 *
 * Returns: A newly allocated array of strings for node names that are children of @object_path.
 *
 * Since: 2.26
 */
public alias extern(C) char** function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, void* userData) GDBusSubtreeEnumerateFunc;

/**
 * The type of the @introspect function in #GDBusSubtreeVTable.
 *
 * Subtrees are flat.  @node, if non-%NULL, is always exactly one
 * segment of the object path (ie: it never contains a slash).
 *
 * This function should return %NULL to indicate that there is no object
 * at this node.
 *
 * If this function returns non-%NULL, the return value is expected to
 * be a %NULL-terminated array of pointers to #GDBusInterfaceInfo
 * structures describing the interfaces implemented by @node.  This
 * array will have g_dbus_interface_info_unref() called on each item
 * before being freed with g_free().
 *
 * The difference between returning %NULL and an array containing zero
 * items is that the standard DBus interfaces will returned to the
 * remote introspector in the empty array case, but not in the %NULL
 * case.
 *
 * Params:
 *     connection = A #GDBusConnection.
 *     sender = The unique bus name of the remote caller.
 *     objectPath = The object path that was registered with g_dbus_connection_register_subtree().
 *     node = A node that is a child of @object_path (relative to @object_path) or %NULL for the root of the subtree.
 *     userData = The @user_data #gpointer passed to g_dbus_connection_register_subtree().
 *
 * Returns: A %NULL-terminated array of pointers to #GDBusInterfaceInfo, or %NULL.
 *
 * Since: 2.26
 */
public alias extern(C) GDBusInterfaceInfo** function(GDBusConnection* connection, const(char)* sender, const(char)* objectPath, const(char)* node, void* userData) GDBusSubtreeIntrospectFunc;

/**
 * This is the function type of the callback used for the #GSource
 * returned by g_datagram_based_create_source().
 *
 * Params:
 *     datagramBased = the #GDatagramBased
 *     condition = the current condition at the source fired
 *     userData = data passed in by the user
 *
 * Returns: %G_SOURCE_REMOVE if the source should be removed,
 *     %G_SOURCE_CONTINUE otherwise
 *
 * Since: 2.48
 */
public alias extern(C) int function(GDatagramBased* datagramBased, GIOCondition condition, void* userData) GDatagramBasedSourceFunc;

/**
 * During invocation, g_desktop_app_info_launch_uris_as_manager() may
 * create one or more child processes.  This callback is invoked once
 * for each, providing the process ID.
 *
 * Params:
 *     appinfo = a #GDesktopAppInfo
 *     pid = Process identifier
 *     userData = User data
 */
public alias extern(C) void function(GDesktopAppInfo* appinfo, GPid pid, void* userData) GDesktopAppLaunchCallback;

/**
 * This callback type is used by g_file_measure_disk_usage() to make
 * periodic progress reports when measuring the amount of disk spaced
 * used by a directory.
 *
 * These calls are made on a best-effort basis and not all types of
 * #GFile will support them.  At the minimum, however, one call will
 * always be made immediately.
 *
 * In the case that there is no support, @reporting will be set to
 * %FALSE (and the other values undefined) and no further calls will be
 * made.  Otherwise, the @reporting will be %TRUE and the other values
 * all-zeros during the first (immediate) call.  In this way, you can
 * know which type of progress UI to show without a delay.
 *
 * For g_file_measure_disk_usage() the callback is made directly.  For
 * g_file_measure_disk_usage_async() the callback is made via the
 * default main context of the calling thread (ie: the same way that the
 * final async result would be reported).
 *
 * @current_size is in the same units as requested by the operation (see
 * %G_FILE_MEASURE_APPARENT_SIZE).
 *
 * The frequency of the updates is implementation defined, but is
 * ideally about once every 200ms.
 *
 * The last progress callback may or may not be equal to the final
 * result.  Always check the async result to get the final value.
 *
 * Params:
 *     reporting = %TRUE if more reports will come
 *     currentSize = the current cumulative size measurement
 *     numDirs = the number of directories visited so far
 *     numFiles = the number of non-directory files encountered
 *     userData = the data passed to the original request for this callback
 *
 * Since: 2.38
 */
public alias extern(C) void function(int reporting, ulong currentSize, ulong numDirs, ulong numFiles, void* userData) GFileMeasureProgressCallback;

/**
 * When doing file operations that may take a while, such as moving
 * a file or copying a file, a progress callback is used to pass how
 * far along that operation is to the application.
 *
 * Params:
 *     currentNumBytes = the current number of bytes in the operation.
 *     totalNumBytes = the total number of bytes in the operation.
 *     userData = user data passed to the callback.
 */
public alias extern(C) void function(long currentNumBytes, long totalNumBytes, void* userData) GFileProgressCallback;

/**
 * When loading the partial contents of a file with g_file_load_partial_contents_async(),
 * it may become necessary to determine if any more data from the file should be loaded.
 * A #GFileReadMoreCallback function facilitates this by returning %TRUE if more data
 * should be read, or %FALSE otherwise.
 *
 * Params:
 *     fileContents = the data as currently read.
 *     fileSize = the size of the data currently read.
 *     callbackData = data passed to the callback.
 *
 * Returns: %TRUE if more data should be read back. %FALSE otherwise.
 */
public alias extern(C) int function(const(char)* fileContents, long fileSize, void* callbackData) GFileReadMoreCallback;

/**
 * I/O Job function.
 *
 * Long-running jobs should periodically check the @cancellable
 * to see if they have been cancelled.
 *
 * Params:
 *     job = a #GIOSchedulerJob.
 *     cancellable = optional #GCancellable object, %NULL to ignore.
 *     userData = the data to pass to callback function
 *
 * Returns: %TRUE if this function should be called again to
 *     complete the job, %FALSE if the job is complete (or cancelled)
 */
public alias extern(C) int function(GIOSchedulerJob* job, GCancellable* cancellable, void* userData) GIOSchedulerJobFunc;

/**
 * This is the function type of the callback used for the #GSource
 * returned by g_pollable_input_stream_create_source() and
 * g_pollable_output_stream_create_source().
 *
 * Params:
 *     pollableStream = the #GPollableInputStream or #GPollableOutputStream
 *     userData = data passed in by the user.
 *
 * Returns: it should return %FALSE if the source should be removed.
 *
 * Since: 2.28
 */
public alias extern(C) int function(GObject* pollableStream, void* userData) GPollableSourceFunc;

/**
 * Changes the size of the memory block pointed to by @data to
 * @size bytes.
 *
 * The function should have the same semantics as realloc().
 *
 * Params:
 *     data = memory block to reallocate
 *     size = size to reallocate @data to
 *
 * Returns: a pointer to the reallocated memory
 */
public alias extern(C) void* function(void* data, size_t size) GReallocFunc;

/**
 * The type for the function that is used to convert from #GSettings to
 * an object property. The @value is already initialized to hold values
 * of the appropriate type.
 *
 * Params:
 *     value = return location for the property value
 *     variant = the #GVariant
 *     userData = user data that was specified when the binding was created
 *
 * Returns: %TRUE if the conversion succeeded, %FALSE in case of an error
 */
public alias extern(C) int function(GValue* value, GVariant* variant, void* userData) GSettingsBindGetMapping;

/**
 * The type for the function that is used to convert an object property
 * value to a #GVariant for storing it in #GSettings.
 *
 * Params:
 *     value = a #GValue containing the property value to map
 *     expectedType = the #GVariantType to create
 *     userData = user data that was specified when the binding was created
 *
 * Returns: a new #GVariant holding the data from @value,
 *     or %NULL in case of an error
 */
public alias extern(C) GVariant* function(GValue* value, GVariantType* expectedType, void* userData) GSettingsBindSetMapping;

/**
 * The type of the function that is used to convert from a value stored
 * in a #GSettings to a value that is useful to the application.
 *
 * If the value is successfully mapped, the result should be stored at
 * @result and %TRUE returned.  If mapping fails (for example, if @value
 * is not in the right format) then %FALSE should be returned.
 *
 * If @value is %NULL then it means that the mapping function is being
 * given a "last chance" to successfully return a valid value.  %TRUE
 * must be returned in this case.
 *
 * Params:
 *     value = the #GVariant to map, or %NULL
 *     result = the result of the mapping
 *     userData = the user data that was passed to
 *         g_settings_get_mapped()
 *
 * Returns: %TRUE if the conversion succeeded, %FALSE in case of an error
 */
public alias extern(C) int function(GVariant* value, void** result, void* userData) GSettingsGetMapping;

/**
 * Simple thread function that runs an asynchronous operation and
 * checks for cancellation.
 *
 * Params:
 *     res = a #GSimpleAsyncResult.
 *     object = a #GObject.
 *     cancellable = optional #GCancellable object, %NULL to ignore.
 */
public alias extern(C) void function(GSimpleAsyncResult* res, GObject* object, GCancellable* cancellable) GSimpleAsyncThreadFunc;

/**
 * This is the function type of the callback used for the #GSource
 * returned by g_socket_create_source().
 *
 * Params:
 *     socket = the #GSocket
 *     condition = the current condition at the source fired.
 *     userData = data passed in by the user.
 *
 * Returns: it should return %FALSE if the source should be removed.
 *
 * Since: 2.22
 */
public alias extern(C) int function(GSocket* socket, GIOCondition condition, void* userData) GSocketSourceFunc;

/**
 * The prototype for a task function to be run in a thread via
 * g_task_run_in_thread() or g_task_run_in_thread_sync().
 *
 * If the return-on-cancel flag is set on @task, and @cancellable gets
 * cancelled, then the #GTask will be completed immediately (as though
 * g_task_return_error_if_cancelled() had been called), without
 * waiting for the task function to complete. However, the task
 * function will continue running in its thread in the background. The
 * function therefore needs to be careful about how it uses
 * externally-visible state in this case. See
 * g_task_set_return_on_cancel() for more details.
 *
 * Other than in that case, @task will be completed when the
 * #GTaskThreadFunc returns, not when it calls a
 * `g_task_return_` function.
 *
 * Params:
 *     task = the #GTask
 *     sourceObject = @task's source object
 *     taskData = @task's task data
 *     cancellable = @task's #GCancellable, or %NULL
 *
 * Since: 2.36
 */
public alias extern(C) void function(GTask* task, void* sourceObject, void* taskData, GCancellable* cancellable) GTaskThreadFunc;

/**
 * This function type is used by g_vfs_register_uri_scheme() to make it
 * possible for a client to associate an URI scheme to a different #GFile
 * implementation.
 *
 * The client should return a reference to the new file that has been
 * created for @uri, or %NULL to continue with the default implementation.
 *
 * Params:
 *     vfs = a #GVfs
 *     identifier = the identifier to look up a #GFile for. This can either
 *         be an URI or a parse name as returned by g_file_get_parse_name()
 *     userData = user data passed to the function
 *
 * Returns: a #GFile for @identifier.
 *
 * Since: 2.50
 */
public alias extern(C) GFile* function(GVfs* vfs, const(char)* identifier, void* userData) GVfsFileLookupFunc;

/**
 * The value returned by handlers of the signals generated by
 * the `gdbus-codegen` tool to indicate that a method call has been
 * handled by an implementation. It is equal to %TRUE, but using
 * this macro is sometimes more readable.
 *
 * In code that needs to be backwards-compatible with older GLib,
 * use %TRUE instead, often written like this:
 *
 * |[
 * g_dbus_method_invocation_return_error (invocation, ...);
 * return TRUE;    // handled
 * ]|
 */
enum DBUS_METHOD_INVOCATION_HANDLED = true;
alias G_DBUS_METHOD_INVOCATION_HANDLED = DBUS_METHOD_INVOCATION_HANDLED;

/**
 * The value returned by handlers of the signals generated by
 * the `gdbus-codegen` tool to indicate that a method call has not been
 * handled by an implementation. It is equal to %FALSE, but using
 * this macro is sometimes more readable.
 *
 * In code that needs to be backwards-compatible with older GLib,
 * use %FALSE instead.
 */
enum DBUS_METHOD_INVOCATION_UNHANDLED = false;
alias G_DBUS_METHOD_INVOCATION_UNHANDLED = DBUS_METHOD_INVOCATION_UNHANDLED;

/**
 * Extension point for debug control functionality.
 * See [Extending GIO][extending-gio].
 */
enum DEBUG_CONTROLLER_EXTENSION_POINT_NAME = "gio-debug-controller";
alias G_DEBUG_CONTROLLER_EXTENSION_POINT_NAME = DEBUG_CONTROLLER_EXTENSION_POINT_NAME;

/**
 * Extension point for default handler to URI association. See
 * [Extending GIO][extending-gio].
 *
 * Deprecated: The #GDesktopAppInfoLookup interface is deprecated and
 * unused by GIO.
 */
enum DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = "gio-desktop-app-info-lookup";
alias G_DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME;

/**
 * The string used to obtain a Unix device path with g_drive_get_identifier().
 */
enum DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = "unix-device";
alias G_DRIVE_IDENTIFIER_KIND_UNIX_DEVICE = DRIVE_IDENTIFIER_KIND_UNIX_DEVICE;

/**
 * A key in the "access" namespace for checking deletion privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to delete the file.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_DELETE = "access::can-delete";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_DELETE = FILE_ATTRIBUTE_ACCESS_CAN_DELETE;

/**
 * A key in the "access" namespace for getting execution privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to execute the file.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = "access::can-execute";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE;

/**
 * A key in the "access" namespace for getting read privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to read the file.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_READ = "access::can-read";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_READ = FILE_ATTRIBUTE_ACCESS_CAN_READ;

/**
 * A key in the "access" namespace for checking renaming privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to rename the file.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_RENAME = "access::can-rename";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_RENAME = FILE_ATTRIBUTE_ACCESS_CAN_RENAME;

/**
 * A key in the "access" namespace for checking trashing privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to move the file to
 * the trash.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_TRASH = "access::can-trash";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_TRASH = FILE_ATTRIBUTE_ACCESS_CAN_TRASH;

/**
 * A key in the "access" namespace for getting write privileges.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 *
 * This attribute will be %TRUE if the user is able to write to the file.
 */
enum FILE_ATTRIBUTE_ACCESS_CAN_WRITE = "access::can-write";
alias G_FILE_ATTRIBUTE_ACCESS_CAN_WRITE = FILE_ATTRIBUTE_ACCESS_CAN_WRITE;

/**
 * A key in the "dos" namespace for checking if the file's archive flag
 * is set.
 *
 * This attribute is %TRUE if the archive flag is set.
 *
 * This attribute is only available for DOS file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_DOS_IS_ARCHIVE = "dos::is-archive";
alias G_FILE_ATTRIBUTE_DOS_IS_ARCHIVE = FILE_ATTRIBUTE_DOS_IS_ARCHIVE;

/**
 * A key in the "dos" namespace for checking if the file is a NTFS mount point
 * (a volume mount or a junction point).
 *
 * This attribute is %TRUE if file is a reparse point of type
 * [IO_REPARSE_TAG_MOUNT_POINT](https://msdn.microsoft.com/en-us/library/dd541667.aspx).
 *
 * This attribute is only available for DOS file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT = "dos::is-mountpoint";
alias G_FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT = FILE_ATTRIBUTE_DOS_IS_MOUNTPOINT;

/**
 * A key in the "dos" namespace for checking if the file's backup flag
 * is set.
 *
 * This attribute is %TRUE if the backup flag is set.
 *
 * This attribute is only available for DOS file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_DOS_IS_SYSTEM = "dos::is-system";
alias G_FILE_ATTRIBUTE_DOS_IS_SYSTEM = FILE_ATTRIBUTE_DOS_IS_SYSTEM;

/**
 * A key in the "dos" namespace for getting the file NTFS reparse tag.
 *
 * This value is 0 for files that are not reparse points.
 *
 * See the [Reparse Tags](https://msdn.microsoft.com/en-us/library/dd541667.aspx)
 * page for possible reparse tag values.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG = "dos::reparse-point-tag";
alias G_FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG = FILE_ATTRIBUTE_DOS_REPARSE_POINT_TAG;

/**
 * A key in the "etag" namespace for getting the value of the file's
 * entity tag.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_ETAG_VALUE = "etag::value";
alias G_FILE_ATTRIBUTE_ETAG_VALUE = FILE_ATTRIBUTE_ETAG_VALUE;

/**
 * A key in the "filesystem" namespace for getting the number of bytes
 * of free space left on the file system.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_FREE = "filesystem::free";
alias G_FILE_ATTRIBUTE_FILESYSTEM_FREE = FILE_ATTRIBUTE_FILESYSTEM_FREE;

/**
 * A key in the "filesystem" namespace for checking if the file system
 * is read only.
 *
 * Is set to %TRUE if the file system is read only.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_READONLY = "filesystem::readonly";
alias G_FILE_ATTRIBUTE_FILESYSTEM_READONLY = FILE_ATTRIBUTE_FILESYSTEM_READONLY;

/**
 * A key in the "filesystem" namespace for checking if the file system
 * is remote.
 *
 * Is set to %TRUE if the file system is remote.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_REMOTE = "filesystem::remote";
alias G_FILE_ATTRIBUTE_FILESYSTEM_REMOTE = FILE_ATTRIBUTE_FILESYSTEM_REMOTE;

/**
 * A key in the "filesystem" namespace for getting the total size (in
 * bytes) of the file system, used in g_file_query_filesystem_info().
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_SIZE = "filesystem::size";
alias G_FILE_ATTRIBUTE_FILESYSTEM_SIZE = FILE_ATTRIBUTE_FILESYSTEM_SIZE;

/**
 * A key in the "filesystem" namespace for getting the file system's type.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_TYPE = "filesystem::type";
alias G_FILE_ATTRIBUTE_FILESYSTEM_TYPE = FILE_ATTRIBUTE_FILESYSTEM_TYPE;

/**
 * A key in the "filesystem" namespace for getting the number of bytes
 * used by data on the file system.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_USED = "filesystem::used";
alias G_FILE_ATTRIBUTE_FILESYSTEM_USED = FILE_ATTRIBUTE_FILESYSTEM_USED;

/**
 * A key in the "filesystem" namespace for hinting a file manager
 * application whether it should preview (e.g. thumbnail) files on the
 * file system.
 *
 * The value for this key contain a #GFilesystemPreviewType.
 */
enum FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = "filesystem::use-preview";
alias G_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW;

/**
 * A key in the "gvfs" namespace that gets the name of the current
 * GVFS backend in use.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_GVFS_BACKEND = "gvfs::backend";
alias G_FILE_ATTRIBUTE_GVFS_BACKEND = FILE_ATTRIBUTE_GVFS_BACKEND;

/**
 * A key in the "id" namespace for getting a file identifier.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 *
 * An example use would be during listing files, to avoid recursive
 * directory scanning.
 */
enum FILE_ATTRIBUTE_ID_FILE = "id::file";
alias G_FILE_ATTRIBUTE_ID_FILE = FILE_ATTRIBUTE_ID_FILE;

/**
 * A key in the "id" namespace for getting the file system identifier.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 *
 * An example use would be during drag and drop to see if the source
 * and target are on the same filesystem (default to move) or not (default
 * to copy).
 */
enum FILE_ATTRIBUTE_ID_FILESYSTEM = "id::filesystem";
alias G_FILE_ATTRIBUTE_ID_FILESYSTEM = FILE_ATTRIBUTE_ID_FILESYSTEM;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) can be ejected.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = "mountable::can-eject";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) is mountable.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = "mountable::can-mount";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) can be polled.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = "mountable::can-poll";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) can be started.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_START = "mountable::can-start";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START = FILE_ATTRIBUTE_MOUNTABLE_CAN_START;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) can be started degraded.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = "mountable::can-start-degraded";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) can be stopped.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = "mountable::can-stop";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE)  is unmountable.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = "mountable::can-unmount";
alias G_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT;

/**
 * A key in the "mountable" namespace for getting the HAL UDI for the mountable
 * file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = "mountable::hal-udi";
alias G_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI;

/**
 * A key in the "mountable" namespace for checking if a file (of
 * type G_FILE_TYPE_MOUNTABLE) is automatically polled for media.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = "mountable::is-media-check-automatic";
alias G_FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC;

/**
 * A key in the "mountable" namespace for getting the #GDriveStartStopType.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = "mountable::start-stop-type";
alias G_FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE;

/**
 * A key in the "mountable" namespace for getting the unix device.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = "mountable::unix-device";
alias G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE;

/**
 * A key in the "mountable" namespace for getting the unix device file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = "mountable::unix-device-file";
alias G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE;

/**
 * A key in the "owner" namespace for getting the file owner's group.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_OWNER_GROUP = "owner::group";
alias G_FILE_ATTRIBUTE_OWNER_GROUP = FILE_ATTRIBUTE_OWNER_GROUP;

/**
 * A key in the "owner" namespace for getting the user name of the
 * file's owner.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_OWNER_USER = "owner::user";
alias G_FILE_ATTRIBUTE_OWNER_USER = FILE_ATTRIBUTE_OWNER_USER;

/**
 * A key in the "owner" namespace for getting the real name of the
 * user that owns the file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_OWNER_USER_REAL = "owner::user-real";
alias G_FILE_ATTRIBUTE_OWNER_USER_REAL = FILE_ATTRIBUTE_OWNER_USER_REAL;

/**
 * A key in the "preview" namespace for getting a #GIcon that can be
 * used to get preview of the file.
 *
 * For example, it may be a low resolution thumbnail without metadata.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_OBJECT.
 *
 * The value for this key should contain a #GIcon.
 */
enum FILE_ATTRIBUTE_PREVIEW_ICON = "preview::icon";
alias G_FILE_ATTRIBUTE_PREVIEW_ICON = FILE_ATTRIBUTE_PREVIEW_ICON;

/**
 * A key in the "recent" namespace for getting time, when the metadata for the
 * file in `recent:///` was last changed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_INT64.
 */
enum FILE_ATTRIBUTE_RECENT_MODIFIED = "recent::modified";
alias G_FILE_ATTRIBUTE_RECENT_MODIFIED = FILE_ATTRIBUTE_RECENT_MODIFIED;

/**
 * A key in the "selinux" namespace for getting the file's SELinux
 * context.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 *
 * Note that this attribute is only available if GLib has been built
 * with SELinux support.
 */
enum FILE_ATTRIBUTE_SELINUX_CONTEXT = "selinux::context";
alias G_FILE_ATTRIBUTE_SELINUX_CONTEXT = FILE_ATTRIBUTE_SELINUX_CONTEXT;

/**
 * A key in the "standard" namespace for getting the amount of disk space
 * that is consumed by the file (in bytes).
 *
 * This will generally be larger than the file size (due to block size
 * overhead) but can occasionally be smaller (for example, for sparse files).
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = "standard::allocated-size";
alias G_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE;

/**
 * A key in the "standard" namespace for getting the content type of the file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 *
 * The value for this key should contain a valid content type.
 */
enum FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = "standard::content-type";
alias G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE;

/**
 * A key in the "standard" namespace for getting the copy name of the file.
 *
 * The copy name is an optional version of the name. If available it's always
 * in UTF8, and corresponds directly to the original filename (only transcoded to
 * UTF8). This is useful if you want to copy the file to another filesystem that
 * might have a different encoding. If the filename is not a valid string in the
 * encoding selected for the filesystem it is in then the copy name will not be set.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_COPY_NAME = "standard::copy-name";
alias G_FILE_ATTRIBUTE_STANDARD_COPY_NAME = FILE_ATTRIBUTE_STANDARD_COPY_NAME;

/**
 * A key in the "standard" namespace for getting the description of the file.
 *
 * The description is a utf8 string that describes the file, generally containing
 * the filename, but can also contain further information. Example descriptions
 * could be "filename (on hostname)" for a remote file or "filename (in trash)"
 * for a file in the trash. This is useful for instance as the window title
 * when displaying a directory or for a bookmarks menu.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_DESCRIPTION = "standard::description";
alias G_FILE_ATTRIBUTE_STANDARD_DESCRIPTION = FILE_ATTRIBUTE_STANDARD_DESCRIPTION;

/**
 * A key in the "standard" namespace for getting the display name of the file.
 *
 * A display name is guaranteed to be in UTF-8 and can thus be displayed in
 * the UI. It is guaranteed to be set on every file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = "standard::display-name";
alias G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME;

/**
 * A key in the "standard" namespace for edit name of the file.
 *
 * An edit name is similar to the display name, but it is meant to be
 * used when you want to rename the file in the UI. The display name
 * might contain information you don't want in the new filename (such as
 * "(invalid unicode)" if the filename was in an invalid encoding).
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_EDIT_NAME = "standard::edit-name";
alias G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME = FILE_ATTRIBUTE_STANDARD_EDIT_NAME;

/**
 * A key in the "standard" namespace for getting the fast content type.
 *
 * The fast content type isn't as reliable as the regular one, as it
 * only uses the filename to guess it, but it is faster to calculate than the
 * regular content type.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = "standard::fast-content-type";
alias G_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE;

/**
 * A key in the "standard" namespace for getting the icon for the file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_OBJECT.
 *
 * The value for this key should contain a #GIcon.
 */
enum FILE_ATTRIBUTE_STANDARD_ICON = "standard::icon";
alias G_FILE_ATTRIBUTE_STANDARD_ICON = FILE_ATTRIBUTE_STANDARD_ICON;

/**
 * A key in the "standard" namespace for checking if a file is a backup file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_STANDARD_IS_BACKUP = "standard::is-backup";
alias G_FILE_ATTRIBUTE_STANDARD_IS_BACKUP = FILE_ATTRIBUTE_STANDARD_IS_BACKUP;

/**
 * A key in the "standard" namespace for checking if a file is hidden.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = "standard::is-hidden";
alias G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = FILE_ATTRIBUTE_STANDARD_IS_HIDDEN;

/**
 * A key in the "standard" namespace for checking if the file is a symlink.
 * Typically the actual type is something else, if we followed the symlink
 * to get the type.
 *
 * On Windows NTFS mountpoints are considered to be symlinks as well.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = "standard::is-symlink";
alias G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = FILE_ATTRIBUTE_STANDARD_IS_SYMLINK;

/**
 * A key in the "standard" namespace for checking if a file is virtual.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = "standard::is-virtual";
alias G_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL;

/**
 * A key in the "standard" namespace for checking if a file is
 * volatile. This is meant for opaque, non-POSIX-like backends to
 * indicate that the URI is not persistent. Applications should look
 * at %G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET for the persistent URI.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = "standard::is-volatile";
alias G_FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = FILE_ATTRIBUTE_STANDARD_IS_VOLATILE;

/**
 * A key in the "standard" namespace for getting the name of the file.
 *
 * The name is the on-disk filename which may not be in any known encoding,
 * and can thus not be generally displayed as is. It is guaranteed to be set on
 * every file.
 *
 * Use %G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME if you need to display the
 * name in a user interface.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BYTE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_NAME = "standard::name";
alias G_FILE_ATTRIBUTE_STANDARD_NAME = FILE_ATTRIBUTE_STANDARD_NAME;

/**
 * A key in the "standard" namespace for getting the file's size (in bytes).
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_STANDARD_SIZE = "standard::size";
alias G_FILE_ATTRIBUTE_STANDARD_SIZE = FILE_ATTRIBUTE_STANDARD_SIZE;

/**
 * A key in the "standard" namespace for setting the sort order of a file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_INT32.
 *
 * An example use would be in file managers, which would use this key
 * to set the order files are displayed. Files with smaller sort order
 * should be sorted first, and files without sort order as if sort order
 * was zero.
 */
enum FILE_ATTRIBUTE_STANDARD_SORT_ORDER = "standard::sort-order";
alias G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER = FILE_ATTRIBUTE_STANDARD_SORT_ORDER;

/**
 * A key in the "standard" namespace for getting the symbolic icon for the file.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_OBJECT.
 *
 * The value for this key should contain a #GIcon.
 */
enum FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = "standard::symbolic-icon";
alias G_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON;

/**
 * A key in the "standard" namespace for getting the symlink target, if the file
 * is a symlink.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BYTE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = "standard::symlink-target";
alias G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET;

/**
 * A key in the "standard" namespace for getting the target URI for the file, in
 * the case of %G_FILE_TYPE_SHORTCUT or %G_FILE_TYPE_MOUNTABLE files.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_STANDARD_TARGET_URI = "standard::target-uri";
alias G_FILE_ATTRIBUTE_STANDARD_TARGET_URI = FILE_ATTRIBUTE_STANDARD_TARGET_URI;

/**
 * A key in the "standard" namespace for storing file types.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 *
 * The value for this key should contain a #GFileType.
 */
enum FILE_ATTRIBUTE_STANDARD_TYPE = "standard::type";
alias G_FILE_ATTRIBUTE_STANDARD_TYPE = FILE_ATTRIBUTE_STANDARD_TYPE;

/**
 * A key in the "thumbnail" namespace for checking if thumbnailing failed.
 *
 * This attribute is %TRUE if thumbnailing failed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_THUMBNAILING_FAILED = "thumbnail::failed";
alias G_FILE_ATTRIBUTE_THUMBNAILING_FAILED = FILE_ATTRIBUTE_THUMBNAILING_FAILED;

/**
 * A key in the "thumbnail" namespace for checking whether the thumbnail is outdated.
 *
 * This attribute is %TRUE if the thumbnail is up-to-date with the file it represents,
 * and %FALSE if the file has been modified since the thumbnail was generated.
 *
 * If %G_FILE_ATTRIBUTE_THUMBNAILING_FAILED is %TRUE and this attribute is %FALSE,
 * it indicates that thumbnailing may be attempted again and may succeed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = "thumbnail::is-valid";
alias G_FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = FILE_ATTRIBUTE_THUMBNAIL_IS_VALID;

/**
 * A key in the "thumbnail" namespace for getting the path to the thumbnail
 * image.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BYTE_STRING.
 */
enum FILE_ATTRIBUTE_THUMBNAIL_PATH = "thumbnail::path";
alias G_FILE_ATTRIBUTE_THUMBNAIL_PATH = FILE_ATTRIBUTE_THUMBNAIL_PATH;

/**
 * A key in the "time" namespace for getting the time the file was last
 * accessed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64, and
 * contains the time since the file was last accessed, in seconds since the
 * UNIX epoch.
 */
enum FILE_ATTRIBUTE_TIME_ACCESS = "time::access";
alias G_FILE_ATTRIBUTE_TIME_ACCESS = FILE_ATTRIBUTE_TIME_ACCESS;

/**
 * A key in the "time" namespace for getting the microseconds of the time
 * the file was last accessed.
 *
 * This should be used in conjunction with %G_FILE_ATTRIBUTE_TIME_ACCESS.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_TIME_ACCESS_USEC = "time::access-usec";
alias G_FILE_ATTRIBUTE_TIME_ACCESS_USEC = FILE_ATTRIBUTE_TIME_ACCESS_USEC;

/**
 * A key in the "time" namespace for getting the time the file was last
 * changed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64,
 * and contains the time since the file was last changed, in seconds since
 * the UNIX epoch.
 *
 * This corresponds to the traditional UNIX ctime.
 */
enum FILE_ATTRIBUTE_TIME_CHANGED = "time::changed";
alias G_FILE_ATTRIBUTE_TIME_CHANGED = FILE_ATTRIBUTE_TIME_CHANGED;

/**
 * A key in the "time" namespace for getting the microseconds of the time
 * the file was last changed.
 *
 * This should be used in conjunction with %G_FILE_ATTRIBUTE_TIME_CHANGED.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_TIME_CHANGED_USEC = "time::changed-usec";
alias G_FILE_ATTRIBUTE_TIME_CHANGED_USEC = FILE_ATTRIBUTE_TIME_CHANGED_USEC;

/**
 * A key in the "time" namespace for getting the time the file was created.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64,
 * and contains the time since the file was created, in seconds since the UNIX
 * epoch.
 *
 * This may correspond to Linux `stx_btime`, FreeBSD `st_birthtim`, NetBSD
 * `st_birthtime` or NTFS `ctime`.
 */
enum FILE_ATTRIBUTE_TIME_CREATED = "time::created";
alias G_FILE_ATTRIBUTE_TIME_CREATED = FILE_ATTRIBUTE_TIME_CREATED;

/**
 * A key in the "time" namespace for getting the microseconds of the time
 * the file was created.
 *
 * This should be used in conjunction with %G_FILE_ATTRIBUTE_TIME_CREATED.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_TIME_CREATED_USEC = "time::created-usec";
alias G_FILE_ATTRIBUTE_TIME_CREATED_USEC = FILE_ATTRIBUTE_TIME_CREATED_USEC;

/**
 * A key in the "time" namespace for getting the time the file was last
 * modified.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64, and
 * contains the time since the file was modified, in seconds since the UNIX
 * epoch.
 */
enum FILE_ATTRIBUTE_TIME_MODIFIED = "time::modified";
alias G_FILE_ATTRIBUTE_TIME_MODIFIED = FILE_ATTRIBUTE_TIME_MODIFIED;

/**
 * A key in the "time" namespace for getting the microseconds of the time
 * the file was last modified.
 *
 * This should be used in conjunction with %G_FILE_ATTRIBUTE_TIME_MODIFIED.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_TIME_MODIFIED_USEC = "time::modified-usec";
alias G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC = FILE_ATTRIBUTE_TIME_MODIFIED_USEC;

/**
 * A key in the "trash" namespace for getting the deletion date and time
 * of a file inside the `trash:///` folder.
 *
 * The format of the returned string is `YYYY-MM-DDThh:mm:ss`.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_STRING.
 */
enum FILE_ATTRIBUTE_TRASH_DELETION_DATE = "trash::deletion-date";
alias G_FILE_ATTRIBUTE_TRASH_DELETION_DATE = FILE_ATTRIBUTE_TRASH_DELETION_DATE;

/**
 * A key in the "trash" namespace for getting the number of (toplevel) items
 * that are present in the `trash:///` folder.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_TRASH_ITEM_COUNT = "trash::item-count";
alias G_FILE_ATTRIBUTE_TRASH_ITEM_COUNT = FILE_ATTRIBUTE_TRASH_ITEM_COUNT;

/**
 * A key in the "trash" namespace for getting the original path of a file
 * inside the `trash:///` folder before it was trashed.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BYTE_STRING.
 */
enum FILE_ATTRIBUTE_TRASH_ORIG_PATH = "trash::orig-path";
alias G_FILE_ATTRIBUTE_TRASH_ORIG_PATH = FILE_ATTRIBUTE_TRASH_ORIG_PATH;

/**
 * A key in the "unix" namespace for getting the number of blocks allocated
 * for the file.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_UNIX_BLOCKS = "unix::blocks";
alias G_FILE_ATTRIBUTE_UNIX_BLOCKS = FILE_ATTRIBUTE_UNIX_BLOCKS;

/**
 * A key in the "unix" namespace for getting the block size for the file
 * system.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = "unix::block-size";
alias G_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = FILE_ATTRIBUTE_UNIX_BLOCK_SIZE;

/**
 * A key in the "unix" namespace for getting the device id of the device the
 * file is located on (see stat() documentation).
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_DEVICE = "unix::device";
alias G_FILE_ATTRIBUTE_UNIX_DEVICE = FILE_ATTRIBUTE_UNIX_DEVICE;

/**
 * A key in the "unix" namespace for getting the group ID for the file.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_GID = "unix::gid";
alias G_FILE_ATTRIBUTE_UNIX_GID = FILE_ATTRIBUTE_UNIX_GID;

/**
 * A key in the "unix" namespace for getting the inode of the file.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT64.
 */
enum FILE_ATTRIBUTE_UNIX_INODE = "unix::inode";
alias G_FILE_ATTRIBUTE_UNIX_INODE = FILE_ATTRIBUTE_UNIX_INODE;

/**
 * A key in the "unix" namespace for checking if the file represents a
 * UNIX mount point.
 *
 * This attribute is %TRUE if the file is a UNIX mount point.
 *
 * Since 2.58, `/` is considered to be a mount point.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_BOOLEAN.
 */
enum FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = "unix::is-mountpoint";
alias G_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT;

/**
 * A key in the "unix" namespace for getting the mode of the file
 * (e.g. whether the file is a regular file, symlink, etc).
 *
 * See the documentation for `lstat()`: this attribute is equivalent to
 * the `st_mode` member of `struct stat`, and includes both the file type
 * and permissions.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_MODE = "unix::mode";
alias G_FILE_ATTRIBUTE_UNIX_MODE = FILE_ATTRIBUTE_UNIX_MODE;

/**
 * A key in the "unix" namespace for getting the number of hard links
 * for a file.
 *
 * See the documentation for `lstat()`.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_NLINK = "unix::nlink";
alias G_FILE_ATTRIBUTE_UNIX_NLINK = FILE_ATTRIBUTE_UNIX_NLINK;

/**
 * A key in the "unix" namespace for getting the device ID for the file
 * (if it is a special file).
 *
 * See the documentation for `lstat()`.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_RDEV = "unix::rdev";
alias G_FILE_ATTRIBUTE_UNIX_RDEV = FILE_ATTRIBUTE_UNIX_RDEV;

/**
 * A key in the "unix" namespace for getting the user ID for the file.
 *
 * This attribute is only available for UNIX file systems.
 *
 * Corresponding #GFileAttributeType is %G_FILE_ATTRIBUTE_TYPE_UINT32.
 */
enum FILE_ATTRIBUTE_UNIX_UID = "unix::uid";
alias G_FILE_ATTRIBUTE_UNIX_UID = FILE_ATTRIBUTE_UNIX_UID;

/**
 * Extension point for memory usage monitoring functionality.
 * See [Extending GIO][extending-gio].
 */
enum MEMORY_MONITOR_EXTENSION_POINT_NAME = "gio-memory-monitor";
alias G_MEMORY_MONITOR_EXTENSION_POINT_NAME = MEMORY_MONITOR_EXTENSION_POINT_NAME;

/**
 * The menu item attribute which holds the action name of the item.  Action
 * names are namespaced with an identifier for the action group in which the
 * action resides. For example, "win." for window-specific actions and "app."
 * for application-wide actions.
 *
 * See also g_menu_model_get_item_attribute() and g_menu_item_set_attribute().
 */
enum MENU_ATTRIBUTE_ACTION = "action";
alias G_MENU_ATTRIBUTE_ACTION = MENU_ATTRIBUTE_ACTION;

/**
 * The menu item attribute that holds the namespace for all action names in
 * menus that are linked from this item.
 */
enum MENU_ATTRIBUTE_ACTION_NAMESPACE = "action-namespace";
alias G_MENU_ATTRIBUTE_ACTION_NAMESPACE = MENU_ATTRIBUTE_ACTION_NAMESPACE;

/**
 * The menu item attribute which holds the icon of the item.
 *
 * The icon is stored in the format returned by g_icon_serialize().
 *
 * This attribute is intended only to represent 'noun' icons such as
 * favicons for a webpage, or application icons.  It should not be used
 * for 'verbs' (ie: stock icons).
 */
enum MENU_ATTRIBUTE_ICON = "icon";
alias G_MENU_ATTRIBUTE_ICON = MENU_ATTRIBUTE_ICON;

/**
 * The menu item attribute which holds the label of the item.
 */
enum MENU_ATTRIBUTE_LABEL = "label";
alias G_MENU_ATTRIBUTE_LABEL = MENU_ATTRIBUTE_LABEL;

/**
 * The menu item attribute which holds the target with which the item's action
 * will be activated.
 *
 * See also g_menu_item_set_action_and_target()
 */
enum MENU_ATTRIBUTE_TARGET = "target";
alias G_MENU_ATTRIBUTE_TARGET = MENU_ATTRIBUTE_TARGET;

/**
 * The name of the link that associates a menu item with a section.  The linked
 * menu will usually be shown in place of the menu item, using the item's label
 * as a header.
 *
 * See also g_menu_item_set_link().
 */
enum MENU_LINK_SECTION = "section";
alias G_MENU_LINK_SECTION = MENU_LINK_SECTION;

/**
 * The name of the link that associates a menu item with a submenu.
 *
 * See also g_menu_item_set_link().
 */
enum MENU_LINK_SUBMENU = "submenu";
alias G_MENU_LINK_SUBMENU = MENU_LINK_SUBMENU;

enum NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-native-volume-monitor";
alias G_NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME;

/**
 * Extension point for network status monitoring functionality.
 * See [Extending GIO][extending-gio].
 */
enum NETWORK_MONITOR_EXTENSION_POINT_NAME = "gio-network-monitor";
alias G_NETWORK_MONITOR_EXTENSION_POINT_NAME = NETWORK_MONITOR_EXTENSION_POINT_NAME;

/**
 * Extension point for power profile usage monitoring functionality.
 * See [Extending GIO][extending-gio].
 */
enum POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME = "gio-power-profile-monitor";
alias G_POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME = POWER_PROFILE_MONITOR_EXTENSION_POINT_NAME;

/**
 * Extension point for proxy functionality.
 * See [Extending GIO][extending-gio].
 */
enum PROXY_EXTENSION_POINT_NAME = "gio-proxy";
alias G_PROXY_EXTENSION_POINT_NAME = PROXY_EXTENSION_POINT_NAME;

/**
 * Extension point for proxy resolving functionality.
 * See [Extending GIO][extending-gio].
 */
enum PROXY_RESOLVER_EXTENSION_POINT_NAME = "gio-proxy-resolver";
alias G_PROXY_RESOLVER_EXTENSION_POINT_NAME = PROXY_RESOLVER_EXTENSION_POINT_NAME;

/**
 * Extension point for #GSettingsBackend functionality.
 */
enum SETTINGS_BACKEND_EXTENSION_POINT_NAME = "gsettings-backend";
alias G_SETTINGS_BACKEND_EXTENSION_POINT_NAME = SETTINGS_BACKEND_EXTENSION_POINT_NAME;

/**
 * Extension point for TLS functionality via #GTlsBackend.
 * See [Extending GIO][extending-gio].
 */
enum TLS_BACKEND_EXTENSION_POINT_NAME = "gio-tls-backend";
alias G_TLS_BACKEND_EXTENSION_POINT_NAME = TLS_BACKEND_EXTENSION_POINT_NAME;

/**
 * The purpose used to verify the client certificate in a TLS connection.
 * Used by TLS servers.
 */
enum TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = "1.3.6.1.5.5.7.3.2";
alias G_TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT;

/**
 * The purpose used to verify the server certificate in a TLS connection. This
 * is the most common purpose in use. Used by TLS clients.
 */
enum TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = "1.3.6.1.5.5.7.3.1";
alias G_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER;

/**
 * Extension point for #GVfs functionality.
 * See [Extending GIO][extending-gio].
 */
enum VFS_EXTENSION_POINT_NAME = "gio-vfs";
alias G_VFS_EXTENSION_POINT_NAME = VFS_EXTENSION_POINT_NAME;

/**
 * The string used to obtain the volume class with g_volume_get_identifier().
 *
 * Known volume classes include `device`, `network`, and `loop`. Other
 * classes may be added in the future.
 *
 * This is intended to be used by applications to classify #GVolume
 * instances into different sections - for example a file manager or
 * file chooser can use this information to show `network` volumes under
 * a "Network" heading and `device` volumes under a "Devices" heading.
 */
enum VOLUME_IDENTIFIER_KIND_CLASS = "class";
alias G_VOLUME_IDENTIFIER_KIND_CLASS = VOLUME_IDENTIFIER_KIND_CLASS;

/**
 * The string used to obtain a Hal UDI with g_volume_get_identifier().
 *
 * Deprecated: Do not use, HAL is deprecated.
 */
enum VOLUME_IDENTIFIER_KIND_HAL_UDI = "hal-udi";
alias G_VOLUME_IDENTIFIER_KIND_HAL_UDI = VOLUME_IDENTIFIER_KIND_HAL_UDI;

/**
 * The string used to obtain a filesystem label with g_volume_get_identifier().
 */
enum VOLUME_IDENTIFIER_KIND_LABEL = "label";
alias G_VOLUME_IDENTIFIER_KIND_LABEL = VOLUME_IDENTIFIER_KIND_LABEL;

/**
 * The string used to obtain a NFS mount with g_volume_get_identifier().
 */
enum VOLUME_IDENTIFIER_KIND_NFS_MOUNT = "nfs-mount";
alias G_VOLUME_IDENTIFIER_KIND_NFS_MOUNT = VOLUME_IDENTIFIER_KIND_NFS_MOUNT;

/**
 * The string used to obtain a Unix device path with g_volume_get_identifier().
 */
enum VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = "unix-device";
alias G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = VOLUME_IDENTIFIER_KIND_UNIX_DEVICE;

/**
 * The string used to obtain a UUID with g_volume_get_identifier().
 */
enum VOLUME_IDENTIFIER_KIND_UUID = "uuid";
alias G_VOLUME_IDENTIFIER_KIND_UUID = VOLUME_IDENTIFIER_KIND_UUID;

/**
 * Extension point for volume monitor functionality.
 * See [Extending GIO][extending-gio].
 */
enum VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-volume-monitor";
alias G_VOLUME_MONITOR_EXTENSION_POINT_NAME = VOLUME_MONITOR_EXTENSION_POINT_NAME;
