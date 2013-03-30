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
 * inFile  = GSimpleProxyResolver.html
 * outPack = gio
 * outFile = SimpleProxyResolver
 * strct   = GSimpleProxyResolver
 * realStrct=
 * ctorStrct=
 * clss    = SimpleProxyResolver
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- ProxyResolverIF
 * prefixes:
 * 	- g_simple_proxy_resolver_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gio.ProxyResolverT
 * 	- gio.ProxyResolverIF
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimpleProxyResolver;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import gio.ProxyResolverT;
private import gio.ProxyResolverIF;



private import gobject.ObjectG;

/**
 * GSimpleProxyResolver is a simple GProxyResolver implementation
 * that handles a single default proxy, multiple URI-scheme-specific
 * proxies, and a list of hosts that proxies should not be used for.
 *
 * GSimpleProxyResolver is never the default proxy resolver, but it
 * can be used as the base class for another proxy resolver
 * implementation, or it can be created and used manually, such as
 * with g_socket_client_set_proxy_resolver().
 */
public class SimpleProxyResolver : ObjectG, ProxyResolverIF
{
	
	/** the main Gtk struct */
	protected GSimpleProxyResolver* gSimpleProxyResolver;
	
	
	public GSimpleProxyResolver* getSimpleProxyResolverStruct()
	{
		return gSimpleProxyResolver;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleProxyResolver;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimpleProxyResolver* gSimpleProxyResolver)
	{
		super(cast(GObject*)gSimpleProxyResolver);
		this.gSimpleProxyResolver = gSimpleProxyResolver;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gSimpleProxyResolver = cast(GSimpleProxyResolver*)obj;
	}
	
	// Minimal implementation.
	mixin ProxyResolverT!(GProxyResolver);
	
	/**
	 */
	
	/**
	 * Creates a new GSimpleProxyResolver. See
	 * "default-proxy" and
	 * "ignore-hosts" for more details on how the
	 * arguments are interpreted.
	 * Since 2.36
	 * Params:
	 * defaultProxy = the default proxy to use, eg
	 * "socks://192.168.1.1". [allow-none]
	 * ignoreHosts = an optional list of hosts/IP addresses
	 * to not use a proxy for. [allow-none]
	 * Returns: a new GSimpleProxyResolver
	 */
	public static GProxyResolver* newSimpleProxyResolver(string defaultProxy, char** ignoreHosts)
	{
		// GProxyResolver * g_simple_proxy_resolver_new (const gchar *default_proxy,  gchar **ignore_hosts);
		return g_simple_proxy_resolver_new(Str.toStringz(defaultProxy), ignoreHosts);
	}
	
	/**
	 * Sets the default proxy on resolver, to be used for any URIs that
	 * don't match "ignore-hosts" or a proxy set
	 * via g_simple_proxy_resolver_set_uri_proxy().
	 * If default_proxy starts with "socks://",
	 * GSimpleProxyResolver will treat it as referring to all three of
	 * the socks5, socks4a, and
	 * socks4 proxy types.
	 * Since 2.36
	 * Params:
	 * defaultProxy = the default proxy to use
	 */
	public void setDefaultProxy(string defaultProxy)
	{
		// void g_simple_proxy_resolver_set_default_proxy  (GSimpleProxyResolver *resolver,  const gchar *default_proxy);
		g_simple_proxy_resolver_set_default_proxy(gSimpleProxyResolver, Str.toStringz(defaultProxy));
	}
	
	/**
	 */
	public void setIgnoreHosts(char** ignoreHosts)
	{
		// void g_simple_proxy_resolver_set_ignore_hosts  (GSimpleProxyResolver *resolver,  gchar **ignore_hosts);
		g_simple_proxy_resolver_set_ignore_hosts(gSimpleProxyResolver, ignoreHosts);
	}
	
	/**
	 * Adds a URI-scheme-specific proxy to resolver; URIs whose scheme
	 * matches uri_scheme (and which don't match
	 * "ignore-hosts") will be proxied via proxy.
	 * As with "default-proxy", if proxy starts with
	 * "socks://", GSimpleProxyResolver will treat it
	 * as referring to all three of the socks5,
	 * socks4a, and socks4 proxy
	 * types.
	 * Since 2.36
	 * Params:
	 * uriScheme = the URI scheme to add a proxy for
	 * proxy = the proxy to use for uri_scheme
	 */
	public void setUriProxy(string uriScheme, string proxy)
	{
		// void g_simple_proxy_resolver_set_uri_proxy  (GSimpleProxyResolver *resolver,  const gchar *uri_scheme,  const gchar *proxy);
		g_simple_proxy_resolver_set_uri_proxy(gSimpleProxyResolver, Str.toStringz(uriScheme), Str.toStringz(proxy));
	}
}
