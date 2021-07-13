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


module gio.ProxyAddress;

private import gio.InetAddress;
private import gio.InetSocketAddress;
private import gio.SocketAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Support for proxied #GInetSocketAddress.
 *
 * Since: 2.26
 */
public class ProxyAddress : InetSocketAddress
{
	/** the main Gtk struct */
	protected GProxyAddress* gProxyAddress;

	/** Get the main Gtk struct */
	public GProxyAddress* getProxyAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gProxyAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gProxyAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GProxyAddress* gProxyAddress, bool ownedRef = false)
	{
		this.gProxyAddress = gProxyAddress;
		super(cast(GInetSocketAddress*)gProxyAddress, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_proxy_address_get_type();
	}

	/**
	 * Creates a new #GProxyAddress for @inetaddr with @protocol that should
	 * tunnel through @dest_hostname and @dest_port.
	 *
	 * (Note that this method doesn't set the #GProxyAddress:uri or
	 * #GProxyAddress:destination-protocol fields; use g_object_new()
	 * directly if you want to set those.)
	 *
	 * Params:
	 *     inetaddr = The proxy server #GInetAddress.
	 *     port = The proxy server port.
	 *     protocol = The proxy protocol to support, in lower case (e.g. socks, http).
	 *     destHostname = The destination hostname the proxy should tunnel to.
	 *     destPort = The destination port to tunnel to.
	 *     username = The username to authenticate to the proxy server
	 *         (or %NULL).
	 *     password = The password to authenticate to the proxy server
	 *         (or %NULL).
	 *
	 * Returns: a new #GProxyAddress
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InetAddress inetaddr, ushort port, string protocol, string destHostname, ushort destPort, string username, string password)
	{
		auto __p = g_proxy_address_new((inetaddr is null) ? null : inetaddr.getInetAddressStruct(), port, Str.toStringz(protocol), Str.toStringz(destHostname), destPort, Str.toStringz(username), Str.toStringz(password));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GProxyAddress*) __p, true);
	}

	/**
	 * Gets @proxy's destination hostname; that is, the name of the host
	 * that will be connected to via the proxy, not the name of the proxy
	 * itself.
	 *
	 * Returns: the @proxy's destination hostname
	 *
	 * Since: 2.26
	 */
	public string getDestinationHostname()
	{
		return Str.toString(g_proxy_address_get_destination_hostname(gProxyAddress));
	}

	/**
	 * Gets @proxy's destination port; that is, the port on the
	 * destination host that will be connected to via the proxy, not the
	 * port number of the proxy itself.
	 *
	 * Returns: the @proxy's destination port
	 *
	 * Since: 2.26
	 */
	public ushort getDestinationPort()
	{
		return g_proxy_address_get_destination_port(gProxyAddress);
	}

	/**
	 * Gets the protocol that is being spoken to the destination
	 * server; eg, "http" or "ftp".
	 *
	 * Returns: the @proxy's destination protocol
	 *
	 * Since: 2.34
	 */
	public string getDestinationProtocol()
	{
		return Str.toString(g_proxy_address_get_destination_protocol(gProxyAddress));
	}

	/**
	 * Gets @proxy's password.
	 *
	 * Returns: the @proxy's password
	 *
	 * Since: 2.26
	 */
	public string getPassword()
	{
		return Str.toString(g_proxy_address_get_password(gProxyAddress));
	}

	/**
	 * Gets @proxy's protocol. eg, "socks" or "http"
	 *
	 * Returns: the @proxy's protocol
	 *
	 * Since: 2.26
	 */
	public string getProtocol()
	{
		return Str.toString(g_proxy_address_get_protocol(gProxyAddress));
	}

	/**
	 * Gets the proxy URI that @proxy was constructed from.
	 *
	 * Returns: the @proxy's URI, or %NULL if unknown
	 *
	 * Since: 2.34
	 */
	public string getUri()
	{
		return Str.toString(g_proxy_address_get_uri(gProxyAddress));
	}

	/**
	 * Gets @proxy's username.
	 *
	 * Returns: the @proxy's username
	 *
	 * Since: 2.26
	 */
	public string getUsername()
	{
		return Str.toString(g_proxy_address_get_username(gProxyAddress));
	}
}
