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


module gio.InetSocketAddress;

private import gio.InetAddress;
private import gio.SocketAddress;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * An IPv4 or IPv6 socket address; that is, the combination of a
 * #GInetAddress and a port number.
 */
public class InetSocketAddress : SocketAddress
{
	/** the main Gtk struct */
	protected GInetSocketAddress* gInetSocketAddress;

	/** Get the main Gtk struct */
	public GInetSocketAddress* getInetSocketAddressStruct()
	{
		return gInetSocketAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetSocketAddress;
	}

	protected override void setStruct(GObject* obj)
	{
		gInetSocketAddress = cast(GInetSocketAddress*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GInetSocketAddress* gInetSocketAddress, bool ownedRef = false)
	{
		this.gInetSocketAddress = gInetSocketAddress;
		super(cast(GSocketAddress*)gInetSocketAddress, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_inet_socket_address_get_type();
	}

	/**
	 * Creates a new #GInetSocketAddress for @address and @port.
	 *
	 * Params:
	 *     address = a #GInetAddress
	 *     port = a port number
	 *
	 * Return: a new #GInetSocketAddress
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InetAddress address, ushort port)
	{
		auto p = g_inet_socket_address_new((address is null) ? null : address.getInetAddressStruct(), port);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GInetSocketAddress*) p, true);
	}

	/**
	 * Creates a new #GInetSocketAddress for @address and @port.
	 *
	 * If @address is an IPv6 address, it can also contain a scope ID
	 * (separated from the address by a "<literal>%</literal>").
	 *
	 * Params:
	 *     address = the string form of an IP address
	 *     port = a port number
	 *
	 * Return: a new #GInetSocketAddress, or %NULL if @address cannot be
	 *     parsed.
	 *
	 * Since: 2.40
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string address, uint port)
	{
		auto p = g_inet_socket_address_new_from_string(Str.toStringz(address), port);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}
		
		this(cast(GInetSocketAddress*) p, true);
	}

	/**
	 * Gets @address's #GInetAddress.
	 *
	 * Return: the #GInetAddress for @address, which must be
	 *     g_object_ref()'d if it will be stored
	 *
	 * Since: 2.22
	 */
	public InetAddress getAddress()
	{
		auto p = g_inet_socket_address_get_address(gInetSocketAddress);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InetAddress)(cast(GInetAddress*) p);
	}

	/**
	 * Gets the `sin6_flowinfo` field from @address,
	 * which must be an IPv6 address.
	 *
	 * Return: the flowinfo field
	 *
	 * Since: 2.32
	 */
	public uint getFlowinfo()
	{
		return g_inet_socket_address_get_flowinfo(gInetSocketAddress);
	}

	/**
	 * Gets @address's port.
	 *
	 * Return: the port for @address
	 *
	 * Since: 2.22
	 */
	public ushort getPort()
	{
		return g_inet_socket_address_get_port(gInetSocketAddress);
	}

	/**
	 * Gets the `sin6_scope_id` field from @address,
	 * which must be an IPv6 address.
	 *
	 * Return: the scope id field
	 *
	 * Since: 2.32
	 */
	public uint getScopeId()
	{
		return g_inet_socket_address_get_scope_id(gInetSocketAddress);
	}
}
