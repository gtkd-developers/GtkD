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


module soup.ProxyURIResolverT;

public  import gio.Cancellable;
public  import glib.MainContext;
public  import gobject.ObjectG;
public  import soup.URI;
public  import soup.c.functions;
public  import soup.c.types;


/** */
public template ProxyURIResolverT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupProxyURIResolver* getProxyURIResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupProxyURIResolver*)getStruct();
	}


	/**
	 * Asynchronously determines a proxy URI to use for @msg and calls
	 * @callback.
	 *
	 * Deprecated: #SoupProxyURIResolver is deprecated in favor of
	 * #GProxyResolver
	 *
	 * Params:
	 *     uri = the #SoupURI you want a proxy for
	 *     asyncContext = the #GMainContext to invoke @callback in
	 *     cancellable = a #GCancellable, or %NULL
	 *     callback = callback to invoke with the proxy address
	 *     userData = data for @callback
	 *
	 * Since: 2.26.3
	 */
	public void getProxyUriAsync(URI uri, MainContext asyncContext, Cancellable cancellable, SoupProxyURIResolverCallback callback, void* userData)
	{
		soup_proxy_uri_resolver_get_proxy_uri_async(getProxyURIResolverStruct(), (uri is null) ? null : uri.getURIStruct(), (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Synchronously determines a proxy URI to use for @uri. If @uri
	 * should be sent via proxy, *@proxy_uri will be set to the URI of the
	 * proxy, else it will be set to %NULL.
	 *
	 * Deprecated: #SoupProxyURIResolver is deprecated in favor of
	 * #GProxyResolver
	 *
	 * Params:
	 *     uri = the #SoupURI you want a proxy for
	 *     cancellable = a #GCancellable, or %NULL
	 *     proxyUri = on return, will contain the proxy URI
	 *
	 * Returns: %SOUP_STATUS_OK if successful, or a transport-level
	 *     error.
	 *
	 * Since: 2.26.3
	 */
	public uint getProxyUriSync(URI uri, Cancellable cancellable, out URI proxyUri)
	{
		SoupURI* outproxyUri = null;

		auto __p = soup_proxy_uri_resolver_get_proxy_uri_sync(getProxyURIResolverStruct(), (uri is null) ? null : uri.getURIStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &outproxyUri);

		proxyUri = ObjectG.getDObject!(URI)(outproxyUri);

		return __p;
	}
}
