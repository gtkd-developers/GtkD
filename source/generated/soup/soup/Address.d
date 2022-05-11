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


module soup.Address;

private import gio.Cancellable;
private import gio.SocketAddress;
private import gio.SocketConnectableIF;
private import gio.SocketConnectableT;
private import glib.ConstructionException;
private import glib.MainContext;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class Address : ObjectG, SocketConnectableIF
{
	/** the main Gtk struct */
	protected SoupAddress* soupAddress;

	/** Get the main Gtk struct */
	public SoupAddress* getAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAddress* soupAddress, bool ownedRef = false)
	{
		this.soupAddress = soupAddress;
		super(cast(GObject*)soupAddress, ownedRef);
	}

	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(SoupAddress);


	/** */
	public static GType getType()
	{
		return soup_address_get_type();
	}

	/**
	 * Creates a #SoupAddress from @name and @port. The #SoupAddress's IP
	 * address may not be available right away; the caller can call
	 * soup_address_resolve_async() or soup_address_resolve_sync() to
	 * force a DNS resolution.
	 *
	 * Params:
	 *     name = a hostname or physical address
	 *     port = a port number
	 *
	 * Returns: a #SoupAddress
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, uint port)
	{
		auto __p = soup_address_new(Str.toStringz(name), port);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupAddress*) __p, true);
	}

	/**
	 * Returns a #SoupAddress corresponding to the "any" address
	 * for @family (or %NULL if @family isn't supported), suitable for
	 * using as a listening #SoupSocket.
	 *
	 * Params:
	 *     family = the address family
	 *     port = the port number (usually %SOUP_ADDRESS_ANY_PORT)
	 *
	 * Returns: the new #SoupAddress
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(SoupAddressFamily family, uint port)
	{
		auto __p = soup_address_new_any(family, port);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_any");
		}

		this(cast(SoupAddress*) __p, true);
	}

	/**
	 * Returns a #SoupAddress equivalent to @sa (or %NULL if @sa's
	 * address family isn't supported)
	 *
	 * Params:
	 *     sa = a pointer to a sockaddr
	 *     len = size of @sa
	 *
	 * Returns: the new #SoupAddress
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(sockaddr* sa, int len)
	{
		auto __p = soup_address_new_from_sockaddr(sa, len);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_sockaddr");
		}

		this(cast(SoupAddress*) __p, true);
	}

	/**
	 * Tests if @addr1 and @addr2 have the same IP address. This method
	 * can be used with soup_address_hash_by_ip() to create a
	 * #GHashTable that hashes on IP address.
	 *
	 * This would be used to distinguish hosts in situations where
	 * different virtual hosts on the same IP address should be considered
	 * the same. Eg, if "www.example.com" and "www.example.net" have the
	 * same IP address, then a single connection can be used to talk
	 * to either of them.
	 *
	 * See also soup_address_equal_by_name(), which compares by name
	 * rather than by IP address.
	 *
	 * Params:
	 *     addr2 = another #SoupAddress with a resolved
	 *         IP address
	 *
	 * Returns: whether or not @addr1 and @addr2 have the same IP
	 *     address.
	 *
	 * Since: 2.26
	 */
	public bool equalByIp(Address addr2)
	{
		return soup_address_equal_by_ip(soupAddress, (addr2 is null) ? null : addr2.getAddressStruct()) != 0;
	}

	/**
	 * Tests if @addr1 and @addr2 have the same "name". This method can be
	 * used with soup_address_hash_by_name() to create a #GHashTable that
	 * hashes on address "names".
	 *
	 * Comparing by name normally means comparing the addresses by their
	 * hostnames. But if the address was originally created using an IP
	 * address literal, then it will be compared by that instead.
	 *
	 * In particular, if "www.example.com" has the IP address 10.0.0.1,
	 * and @addr1 was created with the name "www.example.com" and @addr2
	 * was created with the name "10.0.0.1", then they will compare as
	 * unequal for purposes of soup_address_equal_by_name().
	 *
	 * This would be used to distinguish hosts in situations where
	 * different virtual hosts on the same IP address should be considered
	 * different. Eg, for purposes of HTTP authentication or cookies, two
	 * hosts with the same IP address but different names are considered
	 * to be different hosts.
	 *
	 * See also soup_address_equal_by_ip(), which compares by IP address
	 * rather than by name.
	 *
	 * Params:
	 *     addr2 = another #SoupAddress with a resolved
	 *         name
	 *
	 * Returns: whether or not @addr1 and @addr2 have the same name
	 *
	 * Since: 2.26
	 */
	public bool equalByName(Address addr2)
	{
		return soup_address_equal_by_name(soupAddress, (addr2 is null) ? null : addr2.getAddressStruct()) != 0;
	}

	/**
	 * Creates a new #GSocketAddress corresponding to @addr (which is assumed
	 * to only have one socket address associated with it).
	 *
	 * Returns: a new #GSocketAddress
	 *
	 * Since: 2.32
	 */
	public SocketAddress getGsockaddr()
	{
		auto __p = soup_address_get_gsockaddr(soupAddress);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Returns the hostname associated with @addr.
	 *
	 * This method is not thread-safe; if you call it while @addr is being
	 * resolved in another thread, it may return garbage. You can use
	 * soup_address_is_resolved() to safely test whether or not an address
	 * is resolved before fetching its name or address.
	 *
	 * Returns: the hostname, or %NULL if it is not known.
	 */
	public string getName()
	{
		return Str.toString(soup_address_get_name(soupAddress));
	}

	/**
	 * Returns the physical address associated with @addr as a string.
	 * (Eg, "127.0.0.1"). If the address is not yet known, returns %NULL.
	 *
	 * This method is not thread-safe; if you call it while @addr is being
	 * resolved in another thread, it may return garbage. You can use
	 * soup_address_is_resolved() to safely test whether or not an address
	 * is resolved before fetching its name or address.
	 *
	 * Returns: the physical address, or %NULL
	 */
	public string getPhysical()
	{
		return Str.toString(soup_address_get_physical(soupAddress));
	}

	/**
	 * Returns the port associated with @addr.
	 *
	 * Returns: the port
	 */
	public uint getPort()
	{
		return soup_address_get_port(soupAddress);
	}

	/**
	 * Returns the sockaddr associated with @addr, with its length in
	 * *@len. If the sockaddr is not yet known, returns %NULL.
	 *
	 * This method is not thread-safe; if you call it while @addr is being
	 * resolved in another thread, it may return garbage. You can use
	 * soup_address_is_resolved() to safely test whether or not an address
	 * is resolved before fetching its name or address.
	 *
	 * Params:
	 *     len = return location for sockaddr length
	 *
	 * Returns: the sockaddr, or %NULL
	 */
	public sockaddr* getSockaddr(int* len)
	{
		return soup_address_get_sockaddr(soupAddress, len);
	}

	/**
	 * A hash function (for #GHashTable) that corresponds to
	 * soup_address_equal_by_ip(), qv
	 *
	 * Returns: the IP-based hash value for @addr.
	 *
	 * Since: 2.26
	 */
	public uint hashByIp()
	{
		return soup_address_hash_by_ip(soupAddress);
	}

	/**
	 * A hash function (for #GHashTable) that corresponds to
	 * soup_address_equal_by_name(), qv
	 *
	 * Returns: the named-based hash value for @addr.
	 *
	 * Since: 2.26
	 */
	public uint hashByName()
	{
		return soup_address_hash_by_name(soupAddress);
	}

	/**
	 * Tests if @addr has already been resolved. Unlike the other
	 * #SoupAddress "get" methods, this is safe to call when @addr might
	 * be being resolved in another thread.
	 *
	 * Returns: %TRUE if @addr has been resolved.
	 */
	public bool isResolved()
	{
		return soup_address_is_resolved(soupAddress) != 0;
	}

	/**
	 * Asynchronously resolves the missing half of @addr (its IP address
	 * if it was created with soup_address_new(), or its hostname if it
	 * was created with soup_address_new_from_sockaddr() or
	 * soup_address_new_any().)
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * resolution. @callback will still be invoked in this case, with a
	 * status of %SOUP_STATUS_CANCELLED.
	 *
	 * It is safe to call this more than once on a given address, from the
	 * same thread, with the same @async_context (and doing so will not
	 * result in redundant DNS queries being made). But it is not safe to
	 * call from multiple threads, or with different @async_contexts, or
	 * mixed with calls to soup_address_resolve_sync().
	 *
	 * Params:
	 *     asyncContext = the #GMainContext to call @callback from
	 *     cancellable = a #GCancellable object, or %NULL
	 *     callback = callback to call with the result
	 *     userData = data for @callback
	 */
	public void resolveAsync(MainContext asyncContext, Cancellable cancellable, SoupAddressCallback callback, void* userData)
	{
		soup_address_resolve_async(soupAddress, (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Synchronously resolves the missing half of @addr, as with
	 * soup_address_resolve_async().
	 *
	 * If @cancellable is non-%NULL, it can be used to cancel the
	 * resolution. soup_address_resolve_sync() will then return a status
	 * of %SOUP_STATUS_CANCELLED.
	 *
	 * It is safe to call this more than once, even from different
	 * threads, but it is not safe to mix calls to
	 * soup_address_resolve_sync() with calls to
	 * soup_address_resolve_async() on the same address.
	 *
	 * Params:
	 *     cancellable = a #GCancellable object, or %NULL
	 *
	 * Returns: %SOUP_STATUS_OK, %SOUP_STATUS_CANT_RESOLVE, or
	 *     %SOUP_STATUS_CANCELLED.
	 */
	public uint resolveSync(Cancellable cancellable)
	{
		return soup_address_resolve_sync(soupAddress, (cancellable is null) ? null : cancellable.getCancellableStruct());
	}
}
