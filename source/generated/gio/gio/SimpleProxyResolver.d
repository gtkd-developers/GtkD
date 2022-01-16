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


module gio.SimpleProxyResolver;

private import gio.ProxyResolverIF;
private import gio.ProxyResolverT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/**
 * #GSimpleProxyResolver is a simple #GProxyResolver implementation
 * that handles a single default proxy, multiple URI-scheme-specific
 * proxies, and a list of hosts that proxies should not be used for.
 * 
 * #GSimpleProxyResolver is never the default proxy resolver, but it
 * can be used as the base class for another proxy resolver
 * implementation, or it can be created and used manually, such as
 * with g_socket_client_set_proxy_resolver().
 *
 * Since: 2.36
 */
public class SimpleProxyResolver : ObjectG, ProxyResolverIF
{
	/** the main Gtk struct */
	protected GSimpleProxyResolver* gSimpleProxyResolver;

	/** Get the main Gtk struct */
	public GSimpleProxyResolver* getSimpleProxyResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gSimpleProxyResolver;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleProxyResolver;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GSimpleProxyResolver* gSimpleProxyResolver, bool ownedRef = false)
	{
		this.gSimpleProxyResolver = gSimpleProxyResolver;
		super(cast(GObject*)gSimpleProxyResolver, ownedRef);
	}

	// add the ProxyResolver capabilities
	mixin ProxyResolverT!(GSimpleProxyResolver);


	/** */
	public static GType getType()
	{
		return g_simple_proxy_resolver_get_type();
	}

	/**
	 * Creates a new #GSimpleProxyResolver. See
	 * #GSimpleProxyResolver:default-proxy and
	 * #GSimpleProxyResolver:ignore-hosts for more details on how the
	 * arguments are interpreted.
	 *
	 * Params:
	 *     defaultProxy = the default proxy to use, eg
	 *         "socks://192.168.1.1"
	 *     ignoreHosts = an optional list of hosts/IP addresses
	 *         to not use a proxy for.
	 *
	 * Returns: a new #GSimpleProxyResolver
	 *
	 * Since: 2.36
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string defaultProxy, string[] ignoreHosts)
	{
		auto __p = g_simple_proxy_resolver_new(Str.toStringz(defaultProxy), Str.toStringzArray(ignoreHosts));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GSimpleProxyResolver*) __p, true);
	}

	/**
	 * Sets the default proxy on @resolver, to be used for any URIs that
	 * don't match #GSimpleProxyResolver:ignore-hosts or a proxy set
	 * via g_simple_proxy_resolver_set_uri_proxy().
	 *
	 * If @default_proxy starts with "socks://",
	 * #GSimpleProxyResolver will treat it as referring to all three of
	 * the socks5, socks4a, and socks4 proxy types.
	 *
	 * Params:
	 *     defaultProxy = the default proxy to use
	 *
	 * Since: 2.36
	 */
	public void setDefaultProxy(string defaultProxy)
	{
		g_simple_proxy_resolver_set_default_proxy(gSimpleProxyResolver, Str.toStringz(defaultProxy));
	}

	/**
	 * Sets the list of ignored hosts.
	 *
	 * See #GSimpleProxyResolver:ignore-hosts for more details on how the
	 * @ignore_hosts argument is interpreted.
	 *
	 * Params:
	 *     ignoreHosts = %NULL-terminated list of hosts/IP addresses
	 *         to not use a proxy for
	 *
	 * Since: 2.36
	 */
	public void setIgnoreHosts(string[] ignoreHosts)
	{
		g_simple_proxy_resolver_set_ignore_hosts(gSimpleProxyResolver, Str.toStringzArray(ignoreHosts));
	}

	/**
	 * Adds a URI-scheme-specific proxy to @resolver; URIs whose scheme
	 * matches @uri_scheme (and which don't match
	 * #GSimpleProxyResolver:ignore-hosts) will be proxied via @proxy.
	 *
	 * As with #GSimpleProxyResolver:default-proxy, if @proxy starts with
	 * "socks://", #GSimpleProxyResolver will treat it
	 * as referring to all three of the socks5, socks4a, and socks4 proxy
	 * types.
	 *
	 * Params:
	 *     uriScheme = the URI scheme to add a proxy for
	 *     proxy = the proxy to use for @uri_scheme
	 *
	 * Since: 2.36
	 */
	public void setUriProxy(string uriScheme, string proxy)
	{
		g_simple_proxy_resolver_set_uri_proxy(gSimpleProxyResolver, Str.toStringz(uriScheme), Str.toStringz(proxy));
	}
}
