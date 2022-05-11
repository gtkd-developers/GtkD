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


module gio.SocketAddressEnumerator;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.SocketAddress;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;


/**
 * #GSocketAddressEnumerator is an enumerator type for #GSocketAddress
 * instances. It is returned by enumeration functions such as
 * g_socket_connectable_enumerate(), which returns a #GSocketAddressEnumerator
 * to list each #GSocketAddress which could be used to connect to that
 * #GSocketConnectable.
 * 
 * Enumeration is typically a blocking operation, so the asynchronous methods
 * g_socket_address_enumerator_next_async() and
 * g_socket_address_enumerator_next_finish() should be used where possible.
 * 
 * Each #GSocketAddressEnumerator can only be enumerated once. Once
 * g_socket_address_enumerator_next() has returned %NULL, further
 * enumeration with that #GSocketAddressEnumerator is not possible, and it can
 * be unreffed.
 */
public class SocketAddressEnumerator : ObjectG
{
	/** the main Gtk struct */
	protected GSocketAddressEnumerator* gSocketAddressEnumerator;

	/** Get the main Gtk struct */
	public GSocketAddressEnumerator* getSocketAddressEnumeratorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSocketAddressEnumerator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSocketAddressEnumerator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSocketAddressEnumerator* gSocketAddressEnumerator, bool ownedRef = false)
	{
		this.gSocketAddressEnumerator = gSocketAddressEnumerator;
		super(cast(GObject*)gSocketAddressEnumerator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_socket_address_enumerator_get_type();
	}

	/**
	 * Retrieves the next #GSocketAddress from @enumerator. Note that this
	 * may block for some amount of time. (Eg, a #GNetworkAddress may need
	 * to do a DNS lookup before it can return an address.) Use
	 * g_socket_address_enumerator_next_async() if you need to avoid
	 * blocking.
	 *
	 * If @enumerator is expected to yield addresses, but for some reason
	 * is unable to (eg, because of a DNS error), then the first call to
	 * g_socket_address_enumerator_next() will return an appropriate error
	 * in *@error. However, if the first call to
	 * g_socket_address_enumerator_next() succeeds, then any further
	 * internal errors (other than @cancellable being triggered) will be
	 * ignored.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *
	 * Returns: a #GSocketAddress (owned by the caller), or %NULL on
	 *     error (in which case *@error will be set) or if there are no
	 *     more addresses.
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress next(Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_socket_address_enumerator_next(gSocketAddressEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}

	/**
	 * Asynchronously retrieves the next #GSocketAddress from @enumerator
	 * and then calls @callback, which must call
	 * g_socket_address_enumerator_next_finish() to get the result.
	 *
	 * It is an error to call this multiple times before the previous callback has finished.
	 *
	 * Params:
	 *     cancellable = optional #GCancellable object, %NULL to ignore.
	 *     callback = a #GAsyncReadyCallback to call when the request
	 *         is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void nextAsync(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_socket_address_enumerator_next_async(gSocketAddressEnumerator, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Retrieves the result of a completed call to
	 * g_socket_address_enumerator_next_async(). See
	 * g_socket_address_enumerator_next() for more information about
	 * error handling.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GSocketAddress (owned by the caller), or %NULL on
	 *     error (in which case *@error will be set) or if there are no
	 *     more addresses.
	 *
	 * Throws: GException on failure.
	 */
	public SocketAddress nextFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_socket_address_enumerator_next_finish(gSocketAddressEnumerator, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SocketAddress)(cast(GSocketAddress*) __p, true);
	}
}
