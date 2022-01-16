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


module soup.ProxyResolverT;

public  import gio.Cancellable;
public  import glib.MainContext;
public  import gobject.ObjectG;
public  import soup.Address;
public  import soup.Message;
public  import soup.c.functions;
public  import soup.c.types;


/** */
public template ProxyResolverT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupProxyResolver* getProxyResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupProxyResolver*)getStruct();
	}


	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_async instead
	 */
	public void getProxyAsync(Message msg, MainContext asyncContext, Cancellable cancellable, SoupProxyResolverCallback callback, void* userData)
	{
		soup_proxy_resolver_get_proxy_async(getProxyResolverStruct(), (msg is null) ? null : msg.getMessageStruct(), (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_sync() instead
	 */
	public uint getProxySync(Message msg, Cancellable cancellable, out Address addr)
	{
		SoupAddress* outaddr = null;

		auto __p = soup_proxy_resolver_get_proxy_sync(getProxyResolverStruct(), (msg is null) ? null : msg.getMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &outaddr);

		addr = ObjectG.getDObject!(Address)(outaddr);

		return __p;
	}
}
