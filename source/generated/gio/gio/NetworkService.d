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


module gio.NetworkService;

private import gio.SocketConnectableIF;
private import gio.SocketConnectableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Like #GNetworkAddress does with hostnames, #GNetworkService
 * provides an easy way to resolve a SRV record, and then attempt to
 * connect to one of the hosts that implements that service, handling
 * service priority/weighting, multiple IP addresses, and multiple
 * address families.
 * 
 * See #GSrvTarget for more information about SRV records, and see
 * #GSocketConnectable for an example of using the connectable
 * interface.
 */
public class NetworkService : ObjectG, SocketConnectableIF
{
	/** the main Gtk struct */
	protected GNetworkService* gNetworkService;

	/** Get the main Gtk struct */
	public GNetworkService* getNetworkServiceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gNetworkService;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gNetworkService;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GNetworkService* gNetworkService, bool ownedRef = false)
	{
		this.gNetworkService = gNetworkService;
		super(cast(GObject*)gNetworkService, ownedRef);
	}

	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(GNetworkService);


	/** */
	public static GType getType()
	{
		return g_network_service_get_type();
	}

	/**
	 * Creates a new #GNetworkService representing the given @service,
	 * @protocol, and @domain. This will initially be unresolved; use the
	 * #GSocketConnectable interface to resolve it.
	 *
	 * Params:
	 *     service = the service type to look up (eg, "ldap")
	 *     protocol = the networking protocol to use for @service (eg, "tcp")
	 *     domain = the DNS domain to look up the service in
	 *
	 * Returns: a new #GNetworkService
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string service, string protocol, string domain)
	{
		auto __p = g_network_service_new(Str.toStringz(service), Str.toStringz(protocol), Str.toStringz(domain));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GNetworkService*) __p, true);
	}

	/**
	 * Gets the domain that @srv serves. This might be either UTF-8 or
	 * ASCII-encoded, depending on what @srv was created with.
	 *
	 * Returns: @srv's domain name
	 *
	 * Since: 2.22
	 */
	public string getDomain()
	{
		return Str.toString(g_network_service_get_domain(gNetworkService));
	}

	/**
	 * Gets @srv's protocol name (eg, "tcp").
	 *
	 * Returns: @srv's protocol name
	 *
	 * Since: 2.22
	 */
	public string getProtocol()
	{
		return Str.toString(g_network_service_get_protocol(gNetworkService));
	}

	/**
	 * Gets the URI scheme used to resolve proxies. By default, the service name
	 * is used as scheme.
	 *
	 * Returns: @srv's scheme name
	 *
	 * Since: 2.26
	 */
	public string getScheme()
	{
		return Str.toString(g_network_service_get_scheme(gNetworkService));
	}

	/**
	 * Gets @srv's service name (eg, "ldap").
	 *
	 * Returns: @srv's service name
	 *
	 * Since: 2.22
	 */
	public string getService()
	{
		return Str.toString(g_network_service_get_service(gNetworkService));
	}

	/**
	 * Set's the URI scheme used to resolve proxies. By default, the service name
	 * is used as scheme.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Since: 2.26
	 */
	public void setScheme(string scheme)
	{
		g_network_service_set_scheme(gNetworkService, Str.toStringz(scheme));
	}
}
