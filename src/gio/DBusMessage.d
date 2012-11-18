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
 * inFile  = GDBusMessage.html
 * outPack = gio
 * outFile = DBusMessage
 * strct   = GDBusMessage
 * realStrct=
 * ctorStrct=
 * clss    = DBusMessage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_dbus_message_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- glib.Variant
 * 	- gio.UnixFDList
 * structWrap:
 * 	- GDBusMessage* -> DBusMessage
 * 	- GError* -> ErrorG
 * 	- GUnixFDList* -> UnixFDList
 * 	- GVariant* -> Variant
 * module aliases:
 * local aliases:
 * 	- body -> bod
 * overrides:
 */

module gio.DBusMessage;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import glib.Variant;
private import gio.UnixFDList;



private import gobject.ObjectG;

/**
 * Description
 * A type for representing D-Bus messages that can be sent or received
 * on a GDBusConnection.
 */
public class DBusMessage : ObjectG
{
	
	/** the main Gtk struct */
	protected GDBusMessage* gDBusMessage;
	
	
	public GDBusMessage* getDBusMessageStruct()
	{
		return gDBusMessage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gDBusMessage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GDBusMessage* gDBusMessage)
	{
		super(cast(GObject*)gDBusMessage);
		this.gDBusMessage = gDBusMessage;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gDBusMessage = cast(GDBusMessage*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new empty GDBusMessage.
	 * Since 2.26
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GDBusMessage * g_dbus_message_new (void);
		auto p = g_dbus_message_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new()");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Creates a new GDBusMessage for a signal emission.
	 * Since 2.26
	 * Params:
	 * path = A valid object path.
	 * signal = A valid signal name.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string path, string iface, string signal)
	{
		// GDBusMessage * g_dbus_message_new_signal (const gchar *path,  const gchar *interface_,  const gchar *signal);
		auto p = g_dbus_message_new_signal(Str.toStringz(path), Str.toStringz(iface), Str.toStringz(signal));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_signal(Str.toStringz(path), Str.toStringz(iface), Str.toStringz(signal))");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Creates a new GDBusMessage for a method call.
	 * Since 2.26
	 * Params:
	 * name = A valid D-Bus name or NULL. [allow-none]
	 * path = A valid object path.
	 * method = A valid method name.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string name, string path, string iface, string method)
	{
		// GDBusMessage * g_dbus_message_new_method_call (const gchar *name,  const gchar *path,  const gchar *interface_,  const gchar *method);
		auto p = g_dbus_message_new_method_call(Str.toStringz(name), Str.toStringz(path), Str.toStringz(iface), Str.toStringz(method));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_method_call(Str.toStringz(name), Str.toStringz(path), Str.toStringz(iface), Str.toStringz(method))");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Creates a new GDBusMessage that is a reply to method_call_message.
	 * Since 2.26
	 * Params:
	 * methodCallMessage = A message of type G_DBUS_MESSAGE_TYPE_METHOD_CALL to
	 * create a reply message to.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusMessage methodCallMessage)
	{
		// GDBusMessage * g_dbus_message_new_method_reply (GDBusMessage *method_call_message);
		auto p = g_dbus_message_new_method_reply((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_method_reply((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct())");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Like g_dbus_message_new_method_error() but intended for language bindings.
	 * Since 2.26
	 * Params:
	 * methodCallMessage = A message of type G_DBUS_MESSAGE_TYPE_METHOD_CALL to
	 * create a reply message to.
	 * errorName = A valid D-Bus error name.
	 * errorMessageFormat = The D-Bus error message in a printf() format.
	 * varArgs = Arguments for error_message_format.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusMessage methodCallMessage, string errorName, string errorMessageFormat, void* varArgs)
	{
		// GDBusMessage * g_dbus_message_new_method_error_valist  (GDBusMessage *method_call_message,  const gchar *error_name,  const gchar *error_message_format,  va_list var_args);
		auto p = g_dbus_message_new_method_error_valist((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct(), Str.toStringz(errorName), Str.toStringz(errorMessageFormat), varArgs);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_method_error_valist((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct(), Str.toStringz(errorName), Str.toStringz(errorMessageFormat), varArgs)");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Creates a new GDBusMessage that is an error reply to method_call_message.
	 * Since 2.26
	 * Params:
	 * methodCallMessage = A message of type G_DBUS_MESSAGE_TYPE_METHOD_CALL to
	 * create a reply message to.
	 * errorName = A valid D-Bus error name.
	 * errorMessage = The D-Bus error message.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (DBusMessage methodCallMessage, string errorName, string errorMessage)
	{
		// GDBusMessage * g_dbus_message_new_method_error_literal  (GDBusMessage *method_call_message,  const gchar *error_name,  const gchar *error_message);
		auto p = g_dbus_message_new_method_error_literal((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct(), Str.toStringz(errorName), Str.toStringz(errorMessage));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_method_error_literal((methodCallMessage is null) ? null : methodCallMessage.getDBusMessageStruct(), Str.toStringz(errorName), Str.toStringz(errorMessage))");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * Produces a human-readable multi-line description of message.
	 * The contents of the description has no ABI guarantees, the contents
	 * and formatting is subject to change at any time. Typical output
	 * Since 2.26
	 * Params:
	 * indent = Indentation level.
	 * Returns: A string that should be freed with g_free().
	 */
	public string print(uint indent)
	{
		// gchar * g_dbus_message_print (GDBusMessage *message,  guint indent);
		return Str.toString(g_dbus_message_print(gDBusMessage, indent));
	}
	
	/**
	 * Checks whether message is locked. To monitor changes to this
	 * value, conncet to the "notify" signal to listen for changes
	 * on the "locked" property.
	 * Since 2.26
	 * Returns: TRUE if message is locked, FALSE otherwise.
	 */
	public int getLocked()
	{
		// gboolean g_dbus_message_get_locked (GDBusMessage *message);
		return g_dbus_message_get_locked(gDBusMessage);
	}
	
	/**
	 * If message is locked, does nothing. Otherwise locks the message.
	 * Since 2.26
	 */
	public void lock()
	{
		// void g_dbus_message_lock (GDBusMessage *message);
		g_dbus_message_lock(gDBusMessage);
	}
	
	/**
	 * Copies message. The copy is a deep copy and the returned
	 * GDBusMessage is completely identical except that it is guaranteed
	 * to not be locked.
	 * This operation can fail if e.g. message contains file descriptors
	 * and the per-process or system-wide open files limit is reached.
	 * Since 2.26
	 * Returns: A new GDBusMessage or NULL if error is set. Free with g_object_unref(). [transfer full]
	 * Throws: GException on failure.
	 */
	public DBusMessage copy()
	{
		// GDBusMessage * g_dbus_message_copy (GDBusMessage *message,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_message_copy(gDBusMessage, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(DBusMessage)(cast(GDBusMessage*) p);
	}
	
	/**
	 * Gets the byte order of message.
	 * Returns: The byte order.
	 */
	public GDBusMessageByteOrder getByteOrder()
	{
		// GDBusMessageByteOrder g_dbus_message_get_byte_order (GDBusMessage *message);
		return g_dbus_message_get_byte_order(gDBusMessage);
	}
	
	/**
	 * Sets the byte order of message.
	 * Params:
	 * byteOrder = The byte order.
	 */
	public void setByteOrder(GDBusMessageByteOrder byteOrder)
	{
		// void g_dbus_message_set_byte_order (GDBusMessage *message,  GDBusMessageByteOrder byte_order);
		g_dbus_message_set_byte_order(gDBusMessage, byteOrder);
	}
	
	/**
	 * Gets the type of message.
	 * Since 2.26
	 * Returns: A 8-bit unsigned integer (typically a value from the GDBusMessageType enumeration).
	 */
	public GDBusMessageType getMessageType()
	{
		// GDBusMessageType g_dbus_message_get_message_type (GDBusMessage *message);
		return g_dbus_message_get_message_type(gDBusMessage);
	}
	
	/**
	 * Sets message to be of type.
	 * Since 2.26
	 * Params:
	 * type = A 8-bit unsigned integer (typically a value from the GDBusMessageType enumeration).
	 */
	public void setMessageType(GDBusMessageType type)
	{
		// void g_dbus_message_set_message_type (GDBusMessage *message,  GDBusMessageType type);
		g_dbus_message_set_message_type(gDBusMessage, type);
	}
	
	/**
	 * Gets the serial for message.
	 * Since 2.26
	 * Returns: A guint32.
	 */
	public uint getSerial()
	{
		// guint32 g_dbus_message_get_serial (GDBusMessage *message);
		return g_dbus_message_get_serial(gDBusMessage);
	}
	
	/**
	 * Sets the serial for message.
	 * Since 2.26
	 * Params:
	 * serial = A guint32.
	 */
	public void setSerial(uint serial)
	{
		// void g_dbus_message_set_serial (GDBusMessage *message,  guint32 serial);
		g_dbus_message_set_serial(gDBusMessage, serial);
	}
	
	/**
	 * Gets the flags for message.
	 * Since 2.26
	 * Returns: Flags that are set (typically values from the GDBusMessageFlags enumeration bitwise ORed together).
	 */
	public GDBusMessageFlags getFlags()
	{
		// GDBusMessageFlags g_dbus_message_get_flags (GDBusMessage *message);
		return g_dbus_message_get_flags(gDBusMessage);
	}
	
	/**
	 * Sets the flags to set on message.
	 * Since 2.26
	 * Params:
	 * flags = Flags for message that are set (typically values from the GDBusMessageFlags
	 * enumeration bitwise ORed together).
	 */
	public void setFlags(GDBusMessageFlags flags)
	{
		// void g_dbus_message_set_flags (GDBusMessage *message,  GDBusMessageFlags flags);
		g_dbus_message_set_flags(gDBusMessage, flags);
	}
	
	/**
	 * Gets the body of a message.
	 * Since 2.26
	 * Returns: A GVariant or NULL if the body is empty. Do not free, it is owned by message.
	 */
	public Variant getBody()
	{
		// GVariant * g_dbus_message_get_body (GDBusMessage *message);
		auto p = g_dbus_message_get_body(gDBusMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Sets the body message. As a side-effect the
	 * G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field is set to the
	 * type string of body (or cleared if body is NULL).
	 * If body is floating, message assumes ownership of body.
	 * Since 2.26
	 */
	public void setBody(Variant bod)
	{
		// void g_dbus_message_set_body (GDBusMessage *message,  GVariant *body);
		g_dbus_message_set_body(gDBusMessage, (bod is null) ? null : bod.getVariantStruct());
	}
	
	/**
	 * Gets the UNIX file descriptors associated with message, if any.
	 * This method is only available on UNIX.
	 * Since 2.26
	 * Returns: A GUnixFDList or NULL if no file descriptors are associated. Do not free, this object is owned by message. [transfer none]
	 */
	public UnixFDList getUnixFdList()
	{
		// GUnixFDList * g_dbus_message_get_unix_fd_list (GDBusMessage *message);
		auto p = g_dbus_message_get_unix_fd_list(gDBusMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(UnixFDList)(cast(GUnixFDList*) p);
	}
	
	/**
	 * Sets the UNIX file descriptors associated with message. As a
	 * side-effect the G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header
	 * field is set to the number of fds in fd_list (or cleared if
	 * fd_list is NULL).
	 * This method is only available on UNIX.
	 * Since 2.26
	 * Params:
	 * fdList = A GUnixFDList or NULL. [allow-none]
	 */
	public void setUnixFdList(UnixFDList fdList)
	{
		// void g_dbus_message_set_unix_fd_list (GDBusMessage *message,  GUnixFDList *fd_list);
		g_dbus_message_set_unix_fd_list(gDBusMessage, (fdList is null) ? null : fdList.getUnixFDListStruct());
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public uint getNumUnixFds()
	{
		// guint32 g_dbus_message_get_num_unix_fds (GDBusMessage *message);
		return g_dbus_message_get_num_unix_fds(gDBusMessage);
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setNumUnixFds(uint value)
	{
		// void g_dbus_message_set_num_unix_fds (GDBusMessage *message,  guint32 value);
		g_dbus_message_set_num_unix_fds(gDBusMessage, value);
	}
	
	/**
	 * Gets an array of all header fields on message that are set.
	 * Since 2.26
	 * Returns: An array of header fields terminated by G_DBUS_MESSAGE_HEADER_FIELD_INVALID. Each element is a guchar. Free with g_free(). [array zero-terminated=1]
	 */
	public char* getHeaderFields()
	{
		// guchar * g_dbus_message_get_header_fields (GDBusMessage *message);
		return g_dbus_message_get_header_fields(gDBusMessage);
	}
	
	/**
	 * Gets a header field on message.
	 * Since 2.26
	 * Params:
	 * headerField = A 8-bit unsigned integer (typically a value from the GDBusMessageHeaderField enumeration)
	 * Returns: A GVariant with the value if the header was found, NULL otherwise. Do not free, it is owned by message.
	 */
	public Variant getHeader(GDBusMessageHeaderField headerField)
	{
		// GVariant * g_dbus_message_get_header (GDBusMessage *message,  GDBusMessageHeaderField header_field);
		auto p = g_dbus_message_get_header(gDBusMessage, headerField);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Variant)(cast(GVariant*) p);
	}
	
	/**
	 * Sets a header field on message.
	 * If value is floating, message assumes ownership of value.
	 * Since 2.26
	 * Params:
	 * headerField = A 8-bit unsigned integer (typically a value from the GDBusMessageHeaderField enumeration)
	 * value = A GVariant to set the header field or NULL to clear the header field. [allow-none]
	 */
	public void setHeader(GDBusMessageHeaderField headerField, Variant value)
	{
		// void g_dbus_message_set_header (GDBusMessage *message,  GDBusMessageHeaderField header_field,  GVariant *value);
		g_dbus_message_set_header(gDBusMessage, headerField, (value is null) ? null : value.getVariantStruct());
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getDestination()
	{
		// const gchar * g_dbus_message_get_destination (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_destination(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setDestination(string value)
	{
		// void g_dbus_message_set_destination (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_destination(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getErrorName()
	{
		// const gchar * g_dbus_message_get_error_name (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_error_name(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setErrorName(string value)
	{
		// void g_dbus_message_set_error_name (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_error_name(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getInterface()
	{
		// const gchar * g_dbus_message_get_interface (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_interface(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setInterface(string value)
	{
		// void g_dbus_message_set_interface (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_interface(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_MEMBER header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getMember()
	{
		// const gchar * g_dbus_message_get_member (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_member(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_MEMBER header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setMember(string value)
	{
		// void g_dbus_message_set_member (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_member(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_PATH header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getPath()
	{
		// const gchar * g_dbus_message_get_path (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_path(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_PATH header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setPath(string value)
	{
		// void g_dbus_message_set_path (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_path(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public uint getReplySerial()
	{
		// guint32 g_dbus_message_get_reply_serial (GDBusMessage *message);
		return g_dbus_message_get_reply_serial(gDBusMessage);
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setReplySerial(uint value)
	{
		// void g_dbus_message_set_reply_serial (GDBusMessage *message,  guint32 value);
		g_dbus_message_set_reply_serial(gDBusMessage, value);
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_SENDER header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getSender()
	{
		// const gchar * g_dbus_message_get_sender (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_sender(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_SENDER header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setSender(string value)
	{
		// void g_dbus_message_set_sender (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_sender(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience getter for the G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field.
	 * Since 2.26
	 * Returns: The value.
	 */
	public string getSignature()
	{
		// const gchar * g_dbus_message_get_signature (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_signature(gDBusMessage));
	}
	
	/**
	 * Convenience setter for the G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE header field.
	 * Since 2.26
	 * Params:
	 * value = The value to set.
	 */
	public void setSignature(string value)
	{
		// void g_dbus_message_set_signature (GDBusMessage *message,  const gchar *value);
		g_dbus_message_set_signature(gDBusMessage, Str.toStringz(value));
	}
	
	/**
	 * Convenience to get the first item in the body of message.
	 * Since 2.26
	 * Returns: The string item or NULL if the first item in the body of message is not a string.
	 */
	public string getArg0()
	{
		// const gchar * g_dbus_message_get_arg0 (GDBusMessage *message);
		return Str.toString(g_dbus_message_get_arg0(gDBusMessage));
	}
	
	/**
	 * Serializes message to a blob. The byte order returned by
	 * g_dbus_message_get_byte_order() will be used.
	 * Since 2.26
	 * Params:
	 * capabilities = A GDBusCapabilityFlags describing what protocol features are supported.
	 * Returns: A pointer to a valid binary D-Bus message of out_size bytes generated by message or NULL if error is set. Free with g_free(). [array length=out_size][transfer full]
	 * Throws: GException on failure.
	 */
	public char[] toBlob(GDBusCapabilityFlags capabilities)
	{
		// guchar * g_dbus_message_to_blob (GDBusMessage *message,  gsize *out_size,  GDBusCapabilityFlags capabilities,  GError **error);
		gsize outSize;
		GError* err = null;
		
		auto p = g_dbus_message_to_blob(gDBusMessage, &outSize, capabilities, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return p[0 .. outSize];
	}
	
	/**
	 * Utility function to calculate how many bytes are needed to
	 * completely deserialize the D-Bus message stored at blob.
	 * Since 2.26
	 * Params:
	 * blob = A blob represent a binary D-Bus message. [array length=blob_len][element-type guint8]
	 * Returns: Number of bytes needed or -1 if error is set (e.g. if blob contains invalid data or not enough data is available to determine the size).
	 * Throws: GException on failure.
	 */
	public static gssize bytesNeeded(char[] blob)
	{
		// gssize g_dbus_message_bytes_needed (guchar *blob,  gsize blob_len,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_message_bytes_needed(blob.ptr, cast(int) blob.length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Creates a new GDBusMessage from the data stored at blob. The byte
	 * order that the message was in can be retrieved using
	 * g_dbus_message_get_byte_order().
	 * Since 2.26
	 * Params:
	 * blob = A blob represent a binary D-Bus message. [array length=blob_len][element-type guint8]
	 * capabilities = A GDBusCapabilityFlags describing what protocol features are supported.
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (char[] blob, GDBusCapabilityFlags capabilities)
	{
		// GDBusMessage * g_dbus_message_new_from_blob (guchar *blob,  gsize blob_len,  GDBusCapabilityFlags capabilities,  GError **error);
		GError* err = null;
		
		auto p = g_dbus_message_new_from_blob(blob.ptr, cast(int) blob.length, capabilities, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_dbus_message_new_from_blob(blob.ptr, cast(int) blob.length, capabilities, &err)");
		}
		this(cast(GDBusMessage*) p);
	}
	
	/**
	 * If message is not of type G_DBUS_MESSAGE_TYPE_ERROR does
	 * nothing and returns FALSE.
	 * Otherwise this method encodes the error in message as a GError
	 * using g_dbus_error_set_dbus_error() using the information in the
	 * G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME header field of message as
	 * well as the first string item in message's body.
	 * Since 2.26
	 * Params:
	 * error = The GError to set.
	 * Returns: TRUE if error was set, FALSE otherwise.
	 */
	public int toGerror(out ErrorG error)
	{
		// gboolean g_dbus_message_to_gerror (GDBusMessage *message,  GError **error);
		GError* outerror = null;
		
		auto p = g_dbus_message_to_gerror(gDBusMessage, &outerror);
		
		error = ObjectG.getDObject!(ErrorG)(outerror);
		return p;
	}
}
