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


module gio.InetAddress;

private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GInetAddress represents an IPv4 or IPv6 internet address. Use
 * g_resolver_lookup_by_name() or g_resolver_lookup_by_name_async() to
 * look up the #GInetAddress for a hostname. Use
 * g_resolver_lookup_by_address() or
 * g_resolver_lookup_by_address_async() to look up the hostname for a
 * #GInetAddress.
 * 
 * To actually connect to a remote host, you will need a
 * #GInetSocketAddress (which includes a #GInetAddress as well as a
 * port number).
 */
public class InetAddress : ObjectG
{
	/** the main Gtk struct */
	protected GInetAddress* gInetAddress;

	/** Get the main Gtk struct */
	public GInetAddress* getInetAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gInetAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GInetAddress* gInetAddress, bool ownedRef = false)
	{
		this.gInetAddress = gInetAddress;
		super(cast(GObject*)gInetAddress, ownedRef);
	}

	/**
	 * Creates a InetAddress for the "any" address (unassigned/"don't
	 * care") for family.
	 *
	 * Params:
	 *     family = the address family
	 *     loopback = If true create an InetAddress for the loopback address.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 *
	 * Since: 2.22
	 */
	public this (GSocketFamily family, bool loopback = false)
	{
		GInetAddress* p;

		if ( loopback )
		{
			p = g_inet_address_new_loopback(family);
		}
		else
		{
			p = g_inet_address_new_any(family);
		}

		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_new_any(family)");
		}
		this(p, true);
	}

	/**
	 */

	/** */
	public static GType getType()
	{
		return g_inet_address_get_type();
	}

	/**
	 * Creates a new #GInetAddress from the given @family and @bytes.
	 * @bytes should be 4 bytes for %G_SOCKET_FAMILY_IPV4 and 16 bytes for
	 * %G_SOCKET_FAMILY_IPV6.
	 *
	 * Params:
	 *     bytes = raw address data
	 *     family = the address family of @bytes
	 *
	 * Returns: a new #GInetAddress corresponding to @family and @bytes.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ubyte[] bytes, GSocketFamily family)
	{
		auto __p = g_inet_address_new_from_bytes(bytes.ptr, family);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_bytes");
		}

		this(cast(GInetAddress*) __p, true);
	}

	/**
	 * Parses @string as an IP address and creates a new #GInetAddress.
	 *
	 * Params:
	 *     string_ = a string representation of an IP address
	 *
	 * Returns: a new #GInetAddress corresponding
	 *     to @string, or %NULL if @string could not be parsed.
	 *     Free the returned object with g_object_unref().
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string string_)
	{
		auto __p = g_inet_address_new_from_string(Str.toStringz(string_));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}

		this(cast(GInetAddress*) __p, true);
	}

	/**
	 * Checks if two #GInetAddress instances are equal, e.g. the same address.
	 *
	 * Params:
	 *     otherAddress = Another #GInetAddress.
	 *
	 * Returns: %TRUE if @address and @other_address are equal, %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	public bool equal(InetAddress otherAddress)
	{
		return g_inet_address_equal(gInetAddress, (otherAddress is null) ? null : otherAddress.getInetAddressStruct()) != 0;
	}

	/**
	 * Gets @address's family
	 *
	 * Returns: @address's family
	 *
	 * Since: 2.22
	 */
	public GSocketFamily getFamily()
	{
		return g_inet_address_get_family(gInetAddress);
	}

	/**
	 * Tests whether @address is the "any" address for its family.
	 *
	 * Returns: %TRUE if @address is the "any" address for its family.
	 *
	 * Since: 2.22
	 */
	public bool getIsAny()
	{
		return g_inet_address_get_is_any(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a link-local address (that is, if it
	 * identifies a host on a local network that is not connected to the
	 * Internet).
	 *
	 * Returns: %TRUE if @address is a link-local address.
	 *
	 * Since: 2.22
	 */
	public bool getIsLinkLocal()
	{
		return g_inet_address_get_is_link_local(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is the loopback address for its family.
	 *
	 * Returns: %TRUE if @address is the loopback address for its family.
	 *
	 * Since: 2.22
	 */
	public bool getIsLoopback()
	{
		return g_inet_address_get_is_loopback(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a global multicast address.
	 *
	 * Returns: %TRUE if @address is a global multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMcGlobal()
	{
		return g_inet_address_get_is_mc_global(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a link-local multicast address.
	 *
	 * Returns: %TRUE if @address is a link-local multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMcLinkLocal()
	{
		return g_inet_address_get_is_mc_link_local(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a node-local multicast address.
	 *
	 * Returns: %TRUE if @address is a node-local multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMcNodeLocal()
	{
		return g_inet_address_get_is_mc_node_local(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is an organization-local multicast address.
	 *
	 * Returns: %TRUE if @address is an organization-local multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMcOrgLocal()
	{
		return g_inet_address_get_is_mc_org_local(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a site-local multicast address.
	 *
	 * Returns: %TRUE if @address is a site-local multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMcSiteLocal()
	{
		return g_inet_address_get_is_mc_site_local(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a multicast address.
	 *
	 * Returns: %TRUE if @address is a multicast address.
	 *
	 * Since: 2.22
	 */
	public bool getIsMulticast()
	{
		return g_inet_address_get_is_multicast(gInetAddress) != 0;
	}

	/**
	 * Tests whether @address is a site-local address such as 10.0.0.1
	 * (that is, the address identifies a host on a local network that can
	 * not be reached directly from the Internet, but which may have
	 * outgoing Internet connectivity via a NAT or firewall).
	 *
	 * Returns: %TRUE if @address is a site-local address.
	 *
	 * Since: 2.22
	 */
	public bool getIsSiteLocal()
	{
		return g_inet_address_get_is_site_local(gInetAddress) != 0;
	}

	/**
	 * Gets the size of the native raw binary address for @address. This
	 * is the size of the data that you get from g_inet_address_to_bytes().
	 *
	 * Returns: the number of bytes used for the native version of @address.
	 *
	 * Since: 2.22
	 */
	public size_t getNativeSize()
	{
		return g_inet_address_get_native_size(gInetAddress);
	}

	/**
	 * Gets the raw binary address data from @address.
	 *
	 * Returns: a pointer to an internal array of the bytes in @address,
	 *     which should not be modified, stored, or freed. The size of this
	 *     array can be gotten with g_inet_address_get_native_size().
	 *
	 * Since: 2.22
	 */
	public ubyte* toBytes()
	{
		return g_inet_address_to_bytes(gInetAddress);
	}

	/**
	 * Converts @address to string form.
	 *
	 * Returns: a representation of @address as a string, which should be
	 *     freed after use.
	 *
	 * Since: 2.22
	 */
	public override string toString()
	{
		auto retStr = g_inet_address_to_string(gInetAddress);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
