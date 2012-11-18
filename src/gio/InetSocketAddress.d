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
 * inFile  = GInetSocketAddress.html
 * outPack = gio
 * outFile = InetSocketAddress
 * strct   = GInetSocketAddress
 * realStrct=
 * ctorStrct=GSocketAddress
 * clss    = InetSocketAddress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_inet_socket_address_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.InetAddress
 * structWrap:
 * 	- GInetAddress* -> InetAddress
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.InetSocketAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.InetAddress;



private import gio.SocketAddress;

/**
 * Description
 * An IPv4 or IPv6 socket address; that is, the combination of a
 * GInetAddress and a port number.
 */
public class InetSocketAddress : SocketAddress
{
	
	/** the main Gtk struct */
	protected GInetSocketAddress* gInetSocketAddress;
	
	
	public GInetSocketAddress* getInetSocketAddressStruct()
	{
		return gInetSocketAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetSocketAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GInetSocketAddress* gInetSocketAddress)
	{
		super(cast(GSocketAddress*)gInetSocketAddress);
		this.gInetSocketAddress = gInetSocketAddress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gInetSocketAddress = cast(GInetSocketAddress*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GInetSocketAddress for address and port.
	 * Since 2.22
	 * Params:
	 * address = a GInetAddress
	 * port = a port number
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InetAddress address, ushort port)
	{
		// GSocketAddress * g_inet_socket_address_new (GInetAddress *address,  guint16 port);
		auto p = g_inet_socket_address_new((address is null) ? null : address.getInetAddressStruct(), port);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_socket_address_new((address is null) ? null : address.getInetAddressStruct(), port)");
		}
		this(cast(GInetSocketAddress*) p);
	}
	
	/**
	 * Gets address's GInetAddress.
	 * Since 2.22
	 * Returns: the GInetAddress for address, which must be g_object_ref()'d if it will be stored. [transfer none]
	 */
	public InetAddress getAddress()
	{
		// GInetAddress * g_inet_socket_address_get_address (GInetSocketAddress *address);
		auto p = g_inet_socket_address_get_address(gInetSocketAddress);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InetAddress)(cast(GInetAddress*) p);
	}
	
	/**
	 * Gets address's port.
	 * Since 2.22
	 * Returns: the port for address
	 */
	public ushort getPort()
	{
		// guint16 g_inet_socket_address_get_port (GInetSocketAddress *address);
		return g_inet_socket_address_get_port(gInetSocketAddress);
	}
	
	/**
	 * Gets the sin6_flowinfo field from address,
	 * which must be an IPv6 address.
	 * Since 2.32
	 * Returns: the flowinfo field
	 */
	public uint getFlowinfo()
	{
		// guint32 g_inet_socket_address_get_flowinfo (GInetSocketAddress *address);
		return g_inet_socket_address_get_flowinfo(gInetSocketAddress);
	}
	
	/**
	 * Gets the sin6_scope_id field from address,
	 * which must be an IPv6 address.
	 * Since 2.32
	 * Returns: the scope id field
	 */
	public uint getScopeId()
	{
		// guint32 g_inet_socket_address_get_scope_id (GInetSocketAddress *address);
		return g_inet_socket_address_get_scope_id(gInetSocketAddress);
	}
}
