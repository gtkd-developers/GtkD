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

/*
 * Conversion parameters:
 * inFile  = GProxyResolver.html
 * outPack = gio
 * outFile = ProxyResolverT
 * strct   = GProxyResolver
 * realStrct=
 * ctorStrct=
 * clss    = ProxyResolverT
 * interf  = ProxyResolverIF
 * class Code: No
 * interface Code: No
 * template for:
 * 	- TStruct
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_proxy_resolver_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.AsyncResultIF
 * 	- gio.Cancellable
 * 	- gio.ProxyResolver
 * 	- gio.ProxyResolverIF
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GProxyResolver* -> ProxyResolverIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ProxyResolverT;

public  import gtkc.giotypes;

public import gtkc.gio;
public import glib.ConstructionException;
public import gobject.ObjectG;


public import glib.Str;
public import glib.ErrorG;
public import glib.GException;
public import gio.AsyncResultIF;
public import gio.Cancellable;
public import gio.ProxyResolver;
public import gio.ProxyResolverIF;




/**
 * GProxyResolver provides synchronous and asynchronous network proxy
 * resolution. GProxyResolver is used within GSocketClient through
 * the method g_socket_connectable_proxy_enumerate().
 */
public template ProxyResolverT(TStruct)
{
	
	/** the main Gtk struct */
	protected GProxyResolver* gProxyResolver;
	
	
	public GProxyResolver* getProxyResolverTStruct()
	{
		return cast(GProxyResolver*)getStruct();
	}
	
	
	/**
	 */
	
	/**
	 * Gets the default GProxyResolver for the system.
	 * Since 2.26
	 * Returns: the default GProxyResolver. [transfer none]
	 */
	public static ProxyResolverIF getDefault()
	{
		// GProxyResolver * g_proxy_resolver_get_default (void);
		auto p = g_proxy_resolver_get_default();
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(ProxyResolver)(cast(GProxyResolver*) p);
	}
	
	/**
	 * Checks if resolver can be used on this system. (This is used
	 * internally; g_proxy_resolver_get_default() will only return a proxy
	 * resolver that returns TRUE for this method.)
	 * Since 2.26
	 * Returns: TRUE if resolver is supported.
	 */
	public int isSupported()
	{
		// gboolean g_proxy_resolver_is_supported (GProxyResolver *resolver);
		return g_proxy_resolver_is_supported(getProxyResolverTStruct());
	}
	
	/**
	 * Looks into the system proxy configuration to determine what proxy,
	 * if any, to use to connect to uri. The returned proxy URIs are of the
	 * form <protocol>://[user[:password]@]host:port
	 * or direct://, where <protocol> could be
	 * http, rtsp, socks or other proxying protocol.
	 * If you don't know what network protocol is being used on the
	 * socket, you should use none as the URI protocol.
	 * In this case, the resolver might still return a generic proxy type
	 * (such as SOCKS), but would not return protocol-specific proxy types
	 * (such as http).
	 * direct:// is used when no proxy is needed.
	 * Direct connection should not be attempted unless it is part of the
	 * returned array of proxies.
	 * Since 2.26
	 * Params:
	 * uri = a URI representing the destination to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * Returns: A NULL-terminated array of proxy URIs. Must be freed with g_strfreev(). [transfer full][array zero-terminated=1]
	 * Throws: GException on failure.
	 */
	public string[] lookup(string uri, Cancellable cancellable)
	{
		// gchar ** g_proxy_resolver_lookup (GProxyResolver *resolver,  const gchar *uri,  GCancellable *cancellable,  GError **error);
		GError* err = null;
		
		auto p = g_proxy_resolver_lookup(getProxyResolverTStruct(), Str.toStringz(uri), (cancellable is null) ? null : cancellable.getCancellableStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
	
	/**
	 * Asynchronous lookup of proxy. See g_proxy_resolver_lookup() for more
	 * details.
	 * Since 2.26
	 * Params:
	 * uri = a URI representing the destination to connect to
	 * cancellable = a GCancellable, or NULL. [allow-none]
	 * callback = callback to call after resolution completes. [scope async]
	 * userData = data for callback. [closure]
	 */
	public void lookupAsync(string uri, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		// void g_proxy_resolver_lookup_async (GProxyResolver *resolver,  const gchar *uri,  GCancellable *cancellable,  GAsyncReadyCallback callback,  gpointer user_data);
		g_proxy_resolver_lookup_async(getProxyResolverTStruct(), Str.toStringz(uri), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}
	
	/**
	 * Call this function to obtain the array of proxy URIs when
	 * g_proxy_resolver_lookup_async() is complete. See
	 * g_proxy_resolver_lookup() for more details.
	 * Since 2.26
	 * Params:
	 * result = the result passed to your GAsyncReadyCallback
	 * Returns: A NULL-terminated array of proxy URIs. Must be freed with g_strfreev(). [transfer full][array zero-terminated=1]
	 * Throws: GException on failure.
	 */
	public string[] lookupFinish(AsyncResultIF result)
	{
		// gchar ** g_proxy_resolver_lookup_finish (GProxyResolver *resolver,  GAsyncResult *result,  GError **error);
		GError* err = null;
		
		auto p = g_proxy_resolver_lookup_finish(getProxyResolverTStruct(), (result is null) ? null : result.getAsyncResultTStruct(), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return Str.toStringArray(p);
	}
}
