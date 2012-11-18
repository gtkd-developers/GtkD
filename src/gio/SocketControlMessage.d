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
 * inFile  = GSocketControlMessage.html
 * outPack = gio
 * outFile = SocketControlMessage
 * strct   = GSocketControlMessage
 * realStrct=
 * ctorStrct=
 * clss    = SocketControlMessage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_socket_control_message_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * structWrap:
 * 	- GSocketControlMessage* -> SocketControlMessage
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SocketControlMessage;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;





private import gobject.ObjectG;

/**
 * Description
 * A GSocketControlMessage is a special-purpose utility message that
 * can be sent to or received from a GSocket. These types of
 * messages are often called "ancillary data".
 * The message can represent some sort of special instruction to or
 * information from the socket or can represent a special kind of
 * transfer to the peer (for example, sending a file description over
 * a UNIX socket).
 * These messages are sent with g_socket_send_message() and received
 * with g_socket_receive_message().
 * To extend the set of control message that can be sent, subclass this
 * class and override the get_size, get_level, get_type and serialize
 * methods.
 * To extend the set of control messages that can be received, subclass
 * this class and implement the deserialize method. Also, make sure your
 * class is registered with the GType typesystem before calling
 * g_socket_receive_message() to read such a message.
 */
public class SocketControlMessage : ObjectG
{
	
	/** the main Gtk struct */
	protected GSocketControlMessage* gSocketControlMessage;
	
	
	public GSocketControlMessage* getSocketControlMessageStruct()
	{
		return gSocketControlMessage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketControlMessage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSocketControlMessage* gSocketControlMessage)
	{
		super(cast(GObject*)gSocketControlMessage);
		this.gSocketControlMessage = gSocketControlMessage;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSocketControlMessage = cast(GSocketControlMessage*)obj;
	}
	
	/**
	 */
	
	/**
	 * Tries to deserialize a socket control message of a given
	 * level and type. This will ask all known (to GType) subclasses
	 * of GSocketControlMessage if they can understand this kind
	 * of message and if so deserialize it into a GSocketControlMessage.
	 * If there is no implementation for this kind of control message, NULL
	 * will be returned.
	 * Since 2.22
	 * Params:
	 * level = a socket level
	 * type = a socket control message type for the given level
	 * size = the size of the data in bytes
	 * data = pointer to the message data. [array length=size][element-type guint8]
	 * Returns: the deserialized message or NULL. [transfer full]
	 */
	public static SocketControlMessage deserialize(int level, int type, gsize size, void* data)
	{
		// GSocketControlMessage * g_socket_control_message_deserialize  (int level,  int type,  gsize size,  gpointer data);
		auto p = g_socket_control_message_deserialize(level, type, size, data);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketControlMessage)(cast(GSocketControlMessage*) p);
	}
	
	/**
	 * Returns the "level" (i.e. the originating protocol) of the control message.
	 * This is often SOL_SOCKET.
	 * Since 2.22
	 * Returns: an integer describing the level
	 */
	public int getLevel()
	{
		// int g_socket_control_message_get_level (GSocketControlMessage *message);
		return g_socket_control_message_get_level(gSocketControlMessage);
	}
	
	/**
	 * Returns the protocol specific type of the control message.
	 * For instance, for UNIX fd passing this would be SCM_RIGHTS.
	 * Since 2.22
	 * Returns: an integer describing the type of control message
	 */
	public int getMsgType()
	{
		// int g_socket_control_message_get_msg_type  (GSocketControlMessage *message);
		return g_socket_control_message_get_msg_type(gSocketControlMessage);
	}
	
	/**
	 * Returns the space required for the control message, not including
	 * headers or alignment.
	 * Since 2.22
	 * Returns: The number of bytes required.
	 */
	public gsize getSize()
	{
		// gsize g_socket_control_message_get_size (GSocketControlMessage *message);
		return g_socket_control_message_get_size(gSocketControlMessage);
	}
	
	/**
	 * Converts the data in the message to bytes placed in the
	 * message.
	 * data is guaranteed to have enough space to fit the size
	 * returned by g_socket_control_message_get_size() on this
	 * object.
	 * Since 2.22
	 * Params:
	 * data = A buffer to write data to
	 */
	public void serialize(void* data)
	{
		// void g_socket_control_message_serialize (GSocketControlMessage *message,  gpointer data);
		g_socket_control_message_serialize(gSocketControlMessage, data);
	}
}
