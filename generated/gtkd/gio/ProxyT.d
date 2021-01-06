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


module gio.ProxyT;

public  import gio.AsyncResultIF;
public  import gio.Cancellable;
public  import gio.IOStream;
public  import gio.ProxyAddress;
public  import gio.ProxyIF;
public  import gio.c.functions;
public  import gio.c.types;
public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import gobject.ObjectG;


/**
 * A #GProxy handles connecting to a remote host via a given type of
 * proxy server. It is implemented by the 'gio-proxy' extension point.
 * The extensions are named after their proxy protocol name. As an
 * example, a SOCKS5 proxy implementation can be retrieved with the
 * name 'socks5' using the function
 * g_io_extension_point_get_extension_by_name().
 *
 * Since: 2.26
 */
public template ProxyT(TStruct)
{
	/** Get the main Gtk struct */
	public GProxy* getProxyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(GProxy*)getStruct();
	}


	/**
	 * Given @connection to communicate with a proxy (eg, a
	 * #GSocketConnection that is connected to the proxy server), this
	 * does the necessary handshake to connect to @proxy_address, and if
	 * required, wraps the #GIOStream to handle proxy payload.
	 *
	 * Params:
	 *     connection = a #GIOStream
	 *     proxyAddress = a #GProxyAddress
	 *     cancellable = a #GCancellable
	 *
	 * Returns: a #GIOStream that will replace @connection. This might
	 *     be the same as @connection, in which case a reference
	 *     will be added.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public IOStream connect(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable)
	{
		GError* err = null;

		auto __p = g_proxy_connect(getProxyStruct(), (connection is null) ? null : connection.getIOStreamStruct(), (proxyAddress is null) ? null : proxyAddress.getProxyAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Asynchronous version of g_proxy_connect().
	 *
	 * Params:
	 *     connection = a #GIOStream
	 *     proxyAddress = a #GProxyAddress
	 *     cancellable = a #GCancellable
	 *     callback = a #GAsyncReadyCallback
	 *     userData = callback data
	 *
	 * Since: 2.26
	 */
	public void connectAsync(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		g_proxy_connect_async(getProxyStruct(), (connection is null) ? null : connection.getIOStreamStruct(), (proxyAddress is null) ? null : proxyAddress.getProxyAddressStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * See g_proxy_connect().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GIOStream.
	 *
	 * Since: 2.26
	 *
	 * Throws: GException on failure.
	 */
	public IOStream connectFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = g_proxy_connect_finish(getProxyStruct(), (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(IOStream)(cast(GIOStream*) __p, true);
	}

	/**
	 * Some proxy protocols expect to be passed a hostname, which they
	 * will resolve to an IP address themselves. Others, like SOCKS4, do
	 * not allow this. This function will return %FALSE if @proxy is
	 * implementing such a protocol. When %FALSE is returned, the caller
	 * should resolve the destination hostname first, and then pass a
	 * #GProxyAddress containing the stringified IP address to
	 * g_proxy_connect() or g_proxy_connect_async().
	 *
	 * Returns: %TRUE if hostname resolution is supported.
	 *
	 * Since: 2.26
	 */
	public bool supportsHostname()
	{
		return g_proxy_supports_hostname(getProxyStruct()) != 0;
	}
}
