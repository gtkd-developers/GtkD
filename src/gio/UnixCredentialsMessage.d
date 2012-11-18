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
 * inFile  = GUnixCredentialsMessage.html
 * outPack = gio
 * outFile = UnixCredentialsMessage
 * strct   = GUnixCredentialsMessage
 * realStrct=
 * ctorStrct=GSocketControlMessage
 * clss    = UnixCredentialsMessage
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_unix_credentials_message_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.Credentials
 * structWrap:
 * 	- GCredentials* -> Credentials
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.UnixCredentialsMessage;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.Credentials;



private import gio.SocketControlMessage;

/**
 * Description
 * This GSocketControlMessage contains a GCredentials instance. It
 * may be sent using g_socket_send_message() and received using
 * g_socket_receive_message() over UNIX sockets (ie: sockets in the
 * G_SOCKET_FAMILY_UNIX family).
 * For an easier way to send and receive credentials over
 * stream-oriented UNIX sockets, see
 * g_unix_connection_send_credentials() and
 * g_unix_connection_receive_credentials(). To receive credentials of
 * a foreign process connected to a socket, use
 * g_socket_get_credentials().
 */
public class UnixCredentialsMessage : SocketControlMessage
{
	
	/** the main Gtk struct */
	protected GUnixCredentialsMessage* gUnixCredentialsMessage;
	
	
	public GUnixCredentialsMessage* getUnixCredentialsMessageStruct()
	{
		return gUnixCredentialsMessage;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gUnixCredentialsMessage;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GUnixCredentialsMessage* gUnixCredentialsMessage)
	{
		super(cast(GSocketControlMessage*)gUnixCredentialsMessage);
		this.gUnixCredentialsMessage = gUnixCredentialsMessage;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gUnixCredentialsMessage = cast(GUnixCredentialsMessage*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GUnixCredentialsMessage with credentials matching the current processes.
	 * Since 2.26
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GSocketControlMessage * g_unix_credentials_message_new (void);
		auto p = g_unix_credentials_message_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_credentials_message_new()");
		}
		this(cast(GUnixCredentialsMessage*) p);
	}
	
	/**
	 * Creates a new GUnixCredentialsMessage holding credentials.
	 * Since 2.26
	 * Params:
	 * credentials = A GCredentials object.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (Credentials credentials)
	{
		// GSocketControlMessage * g_unix_credentials_message_new_with_credentials  (GCredentials *credentials);
		auto p = g_unix_credentials_message_new_with_credentials((credentials is null) ? null : credentials.getCredentialsStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_unix_credentials_message_new_with_credentials((credentials is null) ? null : credentials.getCredentialsStruct())");
		}
		this(cast(GUnixCredentialsMessage*) p);
	}
	
	/**
	 * Gets the credentials stored in message.
	 * Since 2.26
	 * Returns: A GCredentials instance. Do not free, it is owned by message. [transfer none]
	 */
	public Credentials getCredentials()
	{
		// GCredentials * g_unix_credentials_message_get_credentials  (GUnixCredentialsMessage *message);
		auto p = g_unix_credentials_message_get_credentials(gUnixCredentialsMessage);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(Credentials)(cast(GCredentials*) p);
	}
	
	/**
	 * Checks if passing GCredentials on a GSocket is supported on this platform.
	 * Since 2.26
	 * Returns: TRUE if supported, FALSE otherwise
	 */
	public static int isSupported()
	{
		// gboolean g_unix_credentials_message_is_supported  (void);
		return g_unix_credentials_message_is_supported();
	}
}
