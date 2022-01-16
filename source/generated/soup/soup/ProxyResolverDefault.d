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


module soup.ProxyResolverDefault;

private import gobject.ObjectG;
private import soup.ProxyURIResolverIF;
private import soup.ProxyURIResolverT;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class ProxyResolverDefault : ObjectG, ProxyURIResolverIF, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupProxyResolverDefault* soupProxyResolverDefault;

	/** Get the main Gtk struct */
	public SoupProxyResolverDefault* getProxyResolverDefaultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupProxyResolverDefault;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupProxyResolverDefault;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupProxyResolverDefault* soupProxyResolverDefault, bool ownedRef = false)
	{
		this.soupProxyResolverDefault = soupProxyResolverDefault;
		super(cast(GObject*)soupProxyResolverDefault, ownedRef);
	}

	// add the ProxyURIResolver capabilities
	mixin ProxyURIResolverT!(SoupProxyResolverDefault);

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupProxyResolverDefault);


	/** */
	public static GType getType()
	{
		return soup_proxy_resolver_default_get_type();
	}
}
