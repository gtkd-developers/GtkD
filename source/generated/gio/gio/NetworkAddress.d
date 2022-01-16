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


module gio.NetworkAddress;

private import gio.SocketConnectableIF;
private import gio.SocketConnectableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GNetworkAddress provides an easy way to resolve a hostname and
 * then attempt to connect to that host, handling the possibility of
 * multiple IP addresses and multiple address families.
 * 
 * The enumeration results of resolved addresses *may* be cached as long
 * as this object is kept alive which may have unexpected results if
 * alive for too long.
 * 
 * See #GSocketConnectable for an example of using the connectable
 * interface.
 */
public class NetworkAddress : ObjectG, SocketConnectableIF
{
	/** the main Gtk struct */
	protected GNetworkAddress* gNetworkAddress;

	/** Get the main Gtk struct */
	public GNetworkAddress* getNetworkAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gNetworkAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gNetworkAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GNetworkAddress* gNetworkAddress, bool ownedRef = false)
	{
		this.gNetworkAddress = gNetworkAddress;
		super(cast(GObject*)gNetworkAddress, ownedRef);
	}

	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(GNetworkAddress);


	/** */
	public static GType getType()
	{
		return g_network_address_get_type();
	}

	/**
	 * Creates a new #GSocketConnectable for connecting to the given
	 * @hostname and @port.
	 *
	 * Note that depending on the configuration of the machine, a
	 * @hostname of `localhost` may refer to the IPv4 loopback address
	 * only, or to both IPv4 and IPv6; use
	 * g_network_address_new_loopback() to create a #GNetworkAddress that
	 * is guaranteed to resolve to both addresses.
	 *
	 * Params:
	 *     hostname = the hostname
	 *     port = the port
	 *
	 * Returns: the new #GNetworkAddress
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string hostname, ushort port)
	{
		auto __p = g_network_address_new(Str.toStringz(hostname), port);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GNetworkAddress*) __p, true);
	}

	/**
	 * Creates a new #GSocketConnectable for connecting to the local host
	 * over a loopback connection to the given @port. This is intended for
	 * use in connecting to local services which may be running on IPv4 or
	 * IPv6.
	 *
	 * The connectable will return IPv4 and IPv6 loopback addresses,
	 * regardless of how the host resolves `localhost`. By contrast,
	 * g_network_address_new() will often only return an IPv4 address when
	 * resolving `localhost`, and an IPv6 address for `localhost6`.
	 *
	 * g_network_address_get_hostname() will always return `localhost` for
	 * a #GNetworkAddress created with this constructor.
	 *
	 * Params:
	 *     port = the port
	 *
	 * Returns: the new #GNetworkAddress
	 *
	 * Since: 2.44
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ushort port)
	{
		auto __p = g_network_address_new_loopback(port);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_loopback");
		}

		this(cast(GNetworkAddress*) __p, true);
	}

	/**
	 * Creates a new #GSocketConnectable for connecting to the given
	 * @hostname and @port. May fail and return %NULL in case
	 * parsing @host_and_port fails.
	 *
	 * @host_and_port may be in any of a number of recognised formats; an IPv6
	 * address, an IPv4 address, or a domain name (in which case a DNS
	 * lookup is performed). Quoting with [] is supported for all address
	 * types. A port override may be specified in the usual way with a
	 * colon.
	 *
	 * If no port is specified in @host_and_port then @default_port will be
	 * used as the port number to connect to.
	 *
	 * In general, @host_and_port is expected to be provided by the user
	 * (allowing them to give the hostname, and a port override if necessary)
	 * and @default_port is expected to be provided by the application.
	 *
	 * (The port component of @host_and_port can also be specified as a
	 * service name rather than as a numeric port, but this functionality
	 * is deprecated, because it depends on the contents of /etc/services,
	 * which is generally quite sparse on platforms other than Linux.)
	 *
	 * Params:
	 *     hostAndPort = the hostname and optionally a port
	 *     defaultPort = the default port if not in @host_and_port
	 *
	 * Returns: the new
	 *     #GNetworkAddress, or %NULL on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public static NetworkAddress parse(string hostAndPort, ushort defaultPort)
	{
		GError* err = null;

		auto __p = g_network_address_parse(Str.toStringz(hostAndPort), defaultPort, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NetworkAddress)(cast(GNetworkAddress*) __p, true);
	}

	/**
	 * Creates a new #GSocketConnectable for connecting to the given
	 * @uri. May fail and return %NULL in case parsing @uri fails.
	 *
	 * Using this rather than g_network_address_new() or
	 * g_network_address_parse() allows #GSocketClient to determine
	 * when to use application-specific proxy protocols.
	 *
	 * Params:
	 *     uri = the hostname and optionally a port
	 *     defaultPort = The default port if none is found in the URI
	 *
	 * Returns: the new
	 *     #GNetworkAddress, or %NULL on error
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public static NetworkAddress parseUri(string uri, ushort defaultPort)
	{
		GError* err = null;

		auto __p = g_network_address_parse_uri(Str.toStringz(uri), defaultPort, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NetworkAddress)(cast(GNetworkAddress*) __p, true);
	}

	/**
	 * Gets @addr's hostname. This might be either UTF-8 or ASCII-encoded,
	 * depending on what @addr was created with.
	 *
	 * Returns: @addr's hostname
	 *
	 * Since: 2.22
	 */
	public string getHostname()
	{
		return Str.toString(g_network_address_get_hostname(gNetworkAddress));
	}

	/**
	 * Gets @addr's port number
	 *
	 * Returns: @addr's port (which may be 0)
	 *
	 * Since: 2.22
	 */
	public ushort getPort()
	{
		return g_network_address_get_port(gNetworkAddress);
	}

	/**
	 * Gets @addr's scheme
	 *
	 * Returns: @addr's scheme (%NULL if not built from URI)
	 *
	 * Since: 2.26
	 */
	public string getScheme()
	{
		return Str.toString(g_network_address_get_scheme(gNetworkAddress));
	}
}
