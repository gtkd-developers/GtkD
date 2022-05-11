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


module gio.SocketConnectableIF;

private import gio.SocketAddressEnumerator;
private import gio.c.functions;
public  import gio.c.types;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * Objects that describe one or more potential socket endpoints
 * implement #GSocketConnectable. Callers can then use
 * g_socket_connectable_enumerate() to get a #GSocketAddressEnumerator
 * to try out each socket address in turn until one succeeds, as shown
 * in the sample code below.
 * 
 * |[<!-- language="C" -->
 * MyConnectionType *
 * connect_to_host (const char    *hostname,
 * guint16        port,
 * GCancellable  *cancellable,
 * GError       **error)
 * {
 * MyConnection *conn = NULL;
 * GSocketConnectable *addr;
 * GSocketAddressEnumerator *enumerator;
 * GSocketAddress *sockaddr;
 * GError *conn_error = NULL;
 * 
 * addr = g_network_address_new (hostname, port);
 * enumerator = g_socket_connectable_enumerate (addr);
 * g_object_unref (addr);
 * 
 * // Try each sockaddr until we succeed. Record the first connection error,
 * // but not any further ones (since they'll probably be basically the same
 * // as the first).
 * while (!conn && (sockaddr = g_socket_address_enumerator_next (enumerator, cancellable, error))
 * {
 * conn = connect_to_sockaddr (sockaddr, conn_error ? NULL : &conn_error);
 * g_object_unref (sockaddr);
 * }
 * g_object_unref (enumerator);
 * 
 * if (conn)
 * {
 * if (conn_error)
 * {
 * // We couldn't connect to the first address, but we succeeded
 * // in connecting to a later address.
 * g_error_free (conn_error);
 * }
 * return conn;
 * }
 * else if (error)
 * {
 * /// Either initial lookup failed, or else the caller cancelled us.
 * if (conn_error)
 * g_error_free (conn_error);
 * return NULL;
 * }
 * else
 * {
 * g_error_propagate (error, conn_error);
 * return NULL;
 * }
 * }
 * ]|
 */
public interface SocketConnectableIF{
	/** Get the main Gtk struct */
	public GSocketConnectable* getSocketConnectableStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return g_socket_connectable_get_type();
	}

	/**
	 * Creates a #GSocketAddressEnumerator for @connectable.
	 *
	 * Returns: a new #GSocketAddressEnumerator.
	 *
	 * Since: 2.22
	 */
	public SocketAddressEnumerator enumerate();

	/**
	 * Creates a #GSocketAddressEnumerator for @connectable that will
	 * return a #GProxyAddress for each of its addresses that you must connect
	 * to via a proxy.
	 *
	 * If @connectable does not implement
	 * g_socket_connectable_proxy_enumerate(), this will fall back to
	 * calling g_socket_connectable_enumerate().
	 *
	 * Returns: a new #GSocketAddressEnumerator.
	 *
	 * Since: 2.26
	 */
	public SocketAddressEnumerator proxyEnumerate();

	/**
	 * Format a #GSocketConnectable as a string. This is a human-readable format for
	 * use in debugging output, and is not a stable serialization format. It is not
	 * suitable for use in user interfaces as it exposes too much information for a
	 * user.
	 *
	 * If the #GSocketConnectable implementation does not support string formatting,
	 * the implementation’s type name will be returned as a fallback.
	 *
	 * Returns: the formatted string
	 *
	 * Since: 2.48
	 */
	public string toString();
}
