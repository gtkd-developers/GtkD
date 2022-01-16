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


module gio.SocketAddress;

private import gio.SocketConnectableIF;
private import gio.SocketConnectableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * #GSocketAddress is the equivalent of struct sockaddr in the BSD
 * sockets API. This is an abstract class; use #GInetSocketAddress
 * for internet sockets, or #GUnixSocketAddress for UNIX domain sockets.
 */
public class SocketAddress : ObjectG, SocketConnectableIF
{
	/** the main Gtk struct */
	protected GSocketAddress* gSocketAddress;

	/** Get the main Gtk struct */
	public GSocketAddress* getSocketAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketAddress* gSocketAddress, bool ownedRef = false)
	{
		this.gSocketAddress = gSocketAddress;
		super(cast(GObject*)gSocketAddress, ownedRef);
	}

	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(GSocketAddress);


	/** */
	public static GType getType()
	{
		return g_socket_address_get_type();
	}

	/**
	 * Creates a #GSocketAddress subclass corresponding to the native
	 * struct sockaddr @native.
	 *
	 * Params:
	 *     native = a pointer to a struct sockaddr
	 *     len = the size of the memory location pointed to by @native
	 *
	 * Returns: a new #GSocketAddress if @native could successfully
	 *     be converted, otherwise %NULL
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(void* native, size_t len)
	{
		auto __p = g_socket_address_new_from_native(native, len);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_native");
		}

		this(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Gets the socket family type of @address.
	 *
	 * Returns: the socket family type of @address
	 *
	 * Since: 2.22
	 */
	public GSocketFamily getFamily()
	{
		return g_socket_address_get_family(gSocketAddress);
	}

	/**
	 * Gets the size of @address's native struct sockaddr.
	 * You can use this to allocate memory to pass to
	 * g_socket_address_to_native().
	 *
	 * Returns: the size of the native struct sockaddr that
	 *     @address represents
	 *
	 * Since: 2.22
	 */
	public ptrdiff_t getNativeSize()
	{
		return g_socket_address_get_native_size(gSocketAddress);
	}

	/**
	 * Converts a #GSocketAddress to a native struct sockaddr, which can
	 * be passed to low-level functions like connect() or bind().
	 *
	 * If not enough space is available, a %G_IO_ERROR_NO_SPACE error
	 * is returned. If the address type is not known on the system
	 * then a %G_IO_ERROR_NOT_SUPPORTED error is returned.
	 *
	 * Params:
	 *     dest = a pointer to a memory location that will contain the native
	 *         struct sockaddr
	 *     destlen = the size of @dest. Must be at least as large as
	 *         g_socket_address_get_native_size()
	 *
	 * Returns: %TRUE if @dest was filled in, %FALSE on error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public bool toNative(void* dest, size_t destlen)
	{
		GError* err = null;

		auto __p = g_socket_address_to_native(gSocketAddress, dest, destlen, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
