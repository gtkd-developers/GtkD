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


module gio.DBusMessage;

private import gio.UnixFDList;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.Variant;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * A type for representing D-Bus messages that can be sent or received
 * on a #GDBusConnection.
 *
 * Since: 2.26
 */
public class DBusMessage : ObjectG
{
	/** the main Gtk struct */
	protected GDBusMessage* gDBusMessage;

	/** Get the main Gtk struct */
	public GDBusMessage* getDBusMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gDBusMessage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GDBusMessage* gDBusMessage, bool ownedRef = false)
	{
		this.gDBusMessage = gDBusMessage;
		super(cast(GObject*)gDBusMessage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_dbus_message_get_type();
	}

	/**
	 * Creates a new empty #GDBusMessage.
	 *
	 * Returns: A #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = g_dbus_message_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Creates a new #GDBusMessage from the data stored at @blob. The byte
	 * order that the message was in can be retrieved using
	 * g_dbus_message_get_byte_order().
	 *
	 * If the @blob cannot be parsed, contains invalid fields, or contains invalid
	 * headers, %G_IO_ERROR_INVALID_ARGUMENT will be returned.
	 *
	 * Params:
	 *     blob = A blob representing a binary D-Bus message.
	 *     capabilities = A #GDBusCapabilityFlags describing what protocol features are supported.
	 *
	 * Returns: A new #GDBusMessage or %NULL if @error is set. Free with
	 *     g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(char[] blob, GDBusCapabilityFlags capabilities)
	{
		GError* err = null;

		auto __p = g_dbus_message_new_from_blob(blob.ptr, cast(size_t)blob.length, capabilities, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_blob");
		}

		this(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Creates a new #GDBusMessage for a method call.
	 *
	 * Params:
	 *     name = A valid D-Bus name or %NULL.
	 *     path = A valid object path.
	 *     interface_ = A valid D-Bus interface name or %NULL.
	 *     method = A valid method name.
	 *
	 * Returns: A #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, string path, string interface_, string method)
	{
		auto __p = g_dbus_message_new_method_call(Str.toStringz(name), Str.toStringz(path), Str.toStringz(interface_), Str.toStringz(method));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_method_call");
		}

		this(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Creates a new #GDBusMessage for a signal emission.
	 *
	 * Params:
	 *     path = A valid object path.
	 *     interface_ = A valid D-Bus interface name.
	 *     signal = A valid signal name.
	 *
	 * Returns: A #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string path, string interface_, string signal)
	{
		auto __p = g_dbus_message_new_signal(Str.toStringz(path), Str.toStringz(interface_), Str.toStringz(signal));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_signal");
		}

		this(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Utility function to calculate how many bytes are needed to
	 * completely deserialize the D-Bus message stored at @blob.
	 *
	 * Params:
	 *     blob = A blob representing a binary D-Bus message.
	 *
	 * Returns: Number of bytes needed or -1 if @error is set (e.g. if
	 *     @blob contains invalid data or not enough data is available to
	 *     determine the size).
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static ptrdiff_t bytesNeeded(char[] blob)
	{
		GError* err = null;

		auto __p = g_dbus_message_bytes_needed(blob.ptr, cast(size_t)blob.length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Copies @message. The copy is a deep copy and the returned
	 * #GDBusMessage is completely identical except that it is guaranteed
	 * to not be locked.
	 *
	 * This operation can fail if e.g. @message contains file descriptors
	 * and the per-process or system-wide open files limit is reached.
	 *
	 * Returns: A new #GDBusMessage or %NULL if @error is set.
	 *     Free with g_object_unref().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public DBusMessage copy()
	{
		GError* err = null;

		auto __p = g_dbus_message_copy(gDBusMessage, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Convenience to get the first item in the body of @message.
	 *
	 * Returns: The string item or %NULL if the first item in the body of
	 *     @message is not a string.
	 *
	 * Since: 2.26
	 */
	public string getArg0()
	{
		return Str.toString(g_dbus_message_get_arg0(gDBusMessage));
	}

	/**
	 * Gets the body of a message.
	 *
	 * Returns: A #GVariant or %NULL if the body is
	 *     empty. Do not free, it is owned by @message.
	 *
	 * Since: 2.26
	 */
	public Variant getBody()
	{
		auto __p = g_dbus_message_get_body(gDBusMessage);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Gets the byte order of @message.
	 *
	 * Returns: The byte order.
	 */
	public GDBusMessageByteOrder getByteOrder()
	{
		return g_dbus_message_get_byte_order(gDBusMessage);
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getDestination()
	{
		return Str.toString(g_dbus_message_get_destination(gDBusMessage));
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getErrorName()
	{
		return Str.toString(g_dbus_message_get_error_name(gDBusMessage));
	}

	/**
	 * Gets the flags for @message.
	 *
	 * Returns: Flags that are set (typically values from the #GDBusMessageFlags enumeration bitwise ORed together).
	 *
	 * Since: 2.26
	 */
	public GDBusMessageFlags getFlags()
	{
		return g_dbus_message_get_flags(gDBusMessage);
	}

	/**
	 * Gets a header field on @message.
	 *
	 * The caller is responsible for checking the type of the returned #GVariant
	 * matches what is expected.
	 *
	 * Params:
	 *     headerField = A 8-bit unsigned integer (typically a value from the #GDBusMessageHeaderField enumeration)
	 *
	 * Returns: A #GVariant with the value if the header was found, %NULL
	 *     otherwise. Do not free, it is owned by @message.
	 *
	 * Since: 2.26
	 */
	public Variant getHeader(GDBusMessageHeaderField headerField)
	{
		auto __p = g_dbus_message_get_header(gDBusMessage, headerField);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Gets an array of all header fields on @message that are set.
	 *
	 * Returns: An array of header fields
	 *     terminated by %G_DBUS_MESSAGE_HEADER_FIELD_INVALID.  Each element
	 *     is a #guchar. Free with g_free().
	 *
	 * Since: 2.26
	 */
	public char[] getHeaderFields()
	{
		auto __p = g_dbus_message_get_header_fields(gDBusMessage);

		return __p[0 .. getArrayLength(__p)];
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getInterface()
	{
		return Str.toString(g_dbus_message_get_interface(gDBusMessage));
	}

	/**
	 * Checks whether @message is locked. To monitor changes to this
	 * value, conncet to the #GObject::notify signal to listen for changes
	 * on the #GDBusMessage:locked property.
	 *
	 * Returns: %TRUE if @message is locked, %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public bool getLocked()
	{
		return g_dbus_message_get_locked(gDBusMessage) != 0;
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_MEMBER header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getMember()
	{
		return Str.toString(g_dbus_message_get_member(gDBusMessage));
	}

	/**
	 * Gets the type of @message.
	 *
	 * Returns: A 8-bit unsigned integer (typically a value from the #GDBusMessageType enumeration).
	 *
	 * Since: 2.26
	 */
	public GDBusMessageType getMessageType()
	{
		return g_dbus_message_get_message_type(gDBusMessage);
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public uint getNumUnixFds()
	{
		return g_dbus_message_get_num_unix_fds(gDBusMessage);
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_PATH header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getPath()
	{
		return Str.toString(g_dbus_message_get_path(gDBusMessage));
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public uint getReplySerial()
	{
		return g_dbus_message_get_reply_serial(gDBusMessage);
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_SENDER header field.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getSender()
	{
		return Str.toString(g_dbus_message_get_sender(gDBusMessage));
	}

	/**
	 * Gets the serial for @message.
	 *
	 * Returns: A #guint32.
	 *
	 * Since: 2.26
	 */
	public uint getSerial()
	{
		return g_dbus_message_get_serial(gDBusMessage);
	}

	/**
	 * Convenience getter for the %G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field.
	 *
	 * This will always be non-%NULL, but may be an empty string.
	 *
	 * Returns: The value.
	 *
	 * Since: 2.26
	 */
	public string getSignature()
	{
		return Str.toString(g_dbus_message_get_signature(gDBusMessage));
	}

	/**
	 * Gets the UNIX file descriptors associated with @message, if any.
	 *
	 * This method is only available on UNIX.
	 *
	 * The file descriptors normally correspond to %G_VARIANT_TYPE_HANDLE
	 * values in the body of the message. For example,
	 * if g_variant_get_handle() returns 5, that is intended to be a reference
	 * to the file descriptor that can be accessed by
	 * `g_unix_fd_list_get (list, 5, ...)`.
	 *
	 * Returns: A #GUnixFDList or %NULL if no file descriptors are
	 *     associated. Do not free, this object is owned by @message.
	 *
	 * Since: 2.26
	 */
	public UnixFDList getUnixFdList()
	{
		auto __p = g_dbus_message_get_unix_fd_list(gDBusMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixFDList)(cast(GUnixFDList*) __p);
	}

	/**
	 * If @message is locked, does nothing. Otherwise locks the message.
	 *
	 * Since: 2.26
	 */
	public void lock()
	{
		g_dbus_message_lock(gDBusMessage);
	}

	/**
	 * Creates a new #GDBusMessage that is an error reply to @method_call_message.
	 *
	 * Params:
	 *     errorName = A valid D-Bus error name.
	 *     errorMessage = The D-Bus error message.
	 *
	 * Returns: A #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 */
	public DBusMessage newMethodErrorLiteral(string errorName, string errorMessage)
	{
		auto __p = g_dbus_message_new_method_error_literal(gDBusMessage, Str.toStringz(errorName), Str.toStringz(errorMessage));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Like g_dbus_message_new_method_error() but intended for language bindings.
	 *
	 * Params:
	 *     errorName = A valid D-Bus error name.
	 *     errorMessageFormat = The D-Bus error message in a printf() format.
	 *     varArgs = Arguments for @error_message_format.
	 *
	 * Returns: A #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 */
	public DBusMessage newMethodErrorValist(string errorName, string errorMessageFormat, void* varArgs)
	{
		auto __p = g_dbus_message_new_method_error_valist(gDBusMessage, Str.toStringz(errorName), Str.toStringz(errorMessageFormat), varArgs);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Creates a new #GDBusMessage that is a reply to @method_call_message.
	 *
	 * Returns: #GDBusMessage. Free with g_object_unref().
	 *
	 * Since: 2.26
	 */
	public DBusMessage newMethodReply()
	{
		auto __p = g_dbus_message_new_method_reply(gDBusMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) __p, true);
	}

	/**
	 * Produces a human-readable multi-line description of @message.
	 *
	 * The contents of the description has no ABI guarantees, the contents
	 * and formatting is subject to change at any time. Typical output
	 * looks something like this:
	 * |[
	 * Flags:   none
	 * Version: 0
	 * Serial:  4
	 * Headers:
	 * path -> objectpath '/org/gtk/GDBus/TestObject'
	 * interface -> 'org.gtk.GDBus.TestInterface'
	 * member -> 'GimmeStdout'
	 * destination -> ':1.146'
	 * Body: ()
	 * UNIX File Descriptors:
	 * (none)
	 * ]|
	 * or
	 * |[
	 * Flags:   no-reply-expected
	 * Version: 0
	 * Serial:  477
	 * Headers:
	 * reply-serial -> uint32 4
	 * destination -> ':1.159'
	 * sender -> ':1.146'
	 * num-unix-fds -> uint32 1
	 * Body: ()
	 * UNIX File Descriptors:
	 * fd 12: dev=0:10,mode=020620,ino=5,uid=500,gid=5,rdev=136:2,size=0,atime=1273085037,mtime=1273085851,ctime=1272982635
	 * ]|
	 *
	 * Params:
	 *     indent = Indentation level.
	 *
	 * Returns: A string that should be freed with g_free().
	 *
	 * Since: 2.26
	 */
	public string print(uint indent)
	{
		auto retStr = g_dbus_message_print(gDBusMessage, indent);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Sets the body @message. As a side-effect the
	 * %G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field is set to the
	 * type string of @body (or cleared if @body is %NULL).
	 *
	 * If @body is floating, @message assumes ownership of @body.
	 *
	 * Params:
	 *     body_ = Either %NULL or a #GVariant that is a tuple.
	 *
	 * Since: 2.26
	 */
	public void setBody(Variant body_)
	{
		g_dbus_message_set_body(gDBusMessage, (body_ is null) ? null : body_.getVariantStruct());
	}

	/**
	 * Sets the byte order of @message.
	 *
	 * Params:
	 *     byteOrder = The byte order.
	 */
	public void setByteOrder(GDBusMessageByteOrder byteOrder)
	{
		g_dbus_message_set_byte_order(gDBusMessage, byteOrder);
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setDestination(string value)
	{
		g_dbus_message_set_destination(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setErrorName(string value)
	{
		g_dbus_message_set_error_name(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Sets the flags to set on @message.
	 *
	 * Params:
	 *     flags = Flags for @message that are set (typically values from the #GDBusMessageFlags
	 *         enumeration bitwise ORed together).
	 *
	 * Since: 2.26
	 */
	public void setFlags(GDBusMessageFlags flags)
	{
		g_dbus_message_set_flags(gDBusMessage, flags);
	}

	/**
	 * Sets a header field on @message.
	 *
	 * If @value is floating, @message assumes ownership of @value.
	 *
	 * Params:
	 *     headerField = A 8-bit unsigned integer (typically a value from the #GDBusMessageHeaderField enumeration)
	 *     value = A #GVariant to set the header field or %NULL to clear the header field.
	 *
	 * Since: 2.26
	 */
	public void setHeader(GDBusMessageHeaderField headerField, Variant value)
	{
		g_dbus_message_set_header(gDBusMessage, headerField, (value is null) ? null : value.getVariantStruct());
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setInterface(string value)
	{
		g_dbus_message_set_interface(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_MEMBER header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setMember(string value)
	{
		g_dbus_message_set_member(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Sets @message to be of @type.
	 *
	 * Params:
	 *     type = A 8-bit unsigned integer (typically a value from the #GDBusMessageType enumeration).
	 *
	 * Since: 2.26
	 */
	public void setMessageType(GDBusMessageType type)
	{
		g_dbus_message_set_message_type(gDBusMessage, type);
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setNumUnixFds(uint value)
	{
		g_dbus_message_set_num_unix_fds(gDBusMessage, value);
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_PATH header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setPath(string value)
	{
		g_dbus_message_set_path(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setReplySerial(uint value)
	{
		g_dbus_message_set_reply_serial(gDBusMessage, value);
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_SENDER header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setSender(string value)
	{
		g_dbus_message_set_sender(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Sets the serial for @message.
	 *
	 * Params:
	 *     serial = A #guint32.
	 *
	 * Since: 2.26
	 */
	public void setSerial(uint serial)
	{
		g_dbus_message_set_serial(gDBusMessage, serial);
	}

	/**
	 * Convenience setter for the %G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field.
	 *
	 * Params:
	 *     value = The value to set.
	 *
	 * Since: 2.26
	 */
	public void setSignature(string value)
	{
		g_dbus_message_set_signature(gDBusMessage, Str.toStringz(value));
	}

	/**
	 * Sets the UNIX file descriptors associated with @message. As a
	 * side-effect the %G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header
	 * field is set to the number of fds in @fd_list (or cleared if
	 * @fd_list is %NULL).
	 *
	 * This method is only available on UNIX.
	 *
	 * When designing D-Bus APIs that are intended to be interoperable,
	 * please note that non-GDBus implementations of D-Bus can usually only
	 * access file descriptors if they are referenced by a value of type
	 * %G_VARIANT_TYPE_HANDLE in the body of the message.
	 *
	 * Params:
	 *     fdList = A #GUnixFDList or %NULL.
	 *
	 * Since: 2.26
	 */
	public void setUnixFdList(UnixFDList fdList)
	{
		g_dbus_message_set_unix_fd_list(gDBusMessage, (fdList is null) ? null : fdList.getUnixFDListStruct());
	}

	/**
	 * Serializes @message to a blob. The byte order returned by
	 * g_dbus_message_get_byte_order() will be used.
	 *
	 * Params:
	 *     capabilities = A #GDBusCapabilityFlags describing what protocol features are supported.
	 *
	 * Returns: A pointer to a
	 *     valid binary D-Bus message of @out_size bytes generated by @message
	 *     or %NULL if @error is set. Free with g_free().
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public char[] toBlob(GDBusCapabilityFlags capabilities)
	{
		size_t outSize;
		GError* err = null;

		auto __p = g_dbus_message_to_blob(gDBusMessage, &outSize, capabilities, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p[0 .. outSize];
	}

	/**
	 * If @message is not of type %G_DBUS_MESSAGE_TYPE_ERROR does
	 * nothing and returns %FALSE.
	 *
	 * Otherwise this method encodes the error in @message as a #GError
	 * using g_dbus_error_set_dbus_error() using the information in the
	 * %G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field of @message as
	 * well as the first string item in @message's body.
	 *
	 * Returns: %TRUE if @error was set, %FALSE otherwise.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public bool toGerror()
	{
		GError* err = null;

		auto __p = g_dbus_message_to_gerror(gDBusMessage, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
