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


module gio.NativeSocketAddress;

private import gio.SocketAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;


/**
 * A socket address of some unknown native type.
 */
public class NativeSocketAddress : SocketAddress
{
	/** the main Gtk struct */
	protected GNativeSocketAddress* gNativeSocketAddress;

	/** Get the main Gtk struct */
	public GNativeSocketAddress* getNativeSocketAddressStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gNativeSocketAddress;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gNativeSocketAddress;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GNativeSocketAddress* gNativeSocketAddress, bool ownedRef = false)
	{
		this.gNativeSocketAddress = gNativeSocketAddress;
		super(cast(GSocketAddress*)gNativeSocketAddress, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_native_socket_address_get_type();
	}

	/**
	 * Creates a new #GNativeSocketAddress for @native and @len.
	 *
	 * Params:
	 *     native = a native address object
	 *     len = the length of @native, in bytes
	 *
	 * Returns: a new #GNativeSocketAddress
	 *
	 * Since: 2.46
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(void* native, size_t len)
	{
		auto __p = g_native_socket_address_new(native, len);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GNativeSocketAddress*) __p, true);
	}
}
