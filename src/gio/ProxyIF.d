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
 * inFile  = GProxy.html
 * outPack = gio
 * outFile = ProxyIF
 * strct   = GProxy
 * realStrct=
 * ctorStrct=
 * clss    = ProxyT
 * interf  = ProxyIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_initable_
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
 * 	- gio.IOStream
 * 	- gio.ProxyAddress
 * structWrap:
 * 	- GAsyncResult* -> AsyncResultIF
 * 	- GCancellable* -> Cancellable
 * 	- GIOStream* -> IOStream
 * 	- GProxy* -> ProxyIF
 * 	- GProxyAddress* -> ProxyAddress
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ProxyIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.IOStream;
private import gio.ProxyAddress;




/**
 * A GProxy handles connecting to a remote host via a given type of
 * proxy server. It is implemented by the 'gio-proxy' extension point.
 * The extensions are named after their proxy protocol name. As an
 * example, a SOCKS5 proxy implementation can be retrieved with the
 * name 'socks5' using the function
 * g_io_extension_point_get_extension_by_name().
 */
public interface ProxyIF
{
	
	
	public GProxy* getProxyTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Given connection to communicate with a proxy (eg, a
	 * GSocketConnection that is connected to the proxy server), this
	 * does the necessary handshake to connect to proxy_address, and if
	 * required, wraps the GIOStream to handle proxy payload.
	 * Since 2.26
	 * Params:
	 * proxy = a GProxy
	 * connection = a GIOStream
	 * proxyAddress = a GProxyAddress
	 * cancellable = a GCancellable. [allow-none]
	 * Returns: a GIOStream that will replace connection. This might be the same as connection, in which case a reference will be added. [transfer full]
	 * Throws: GException on failure.
	 */
	public IOStream gProxyConnect(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable);
	
	/**
	 * Asynchronous version of g_proxy_connect().
	 * Since 2.26
	 * Params:
	 * proxy = a GProxy
	 * connection = a GIOStream
	 * proxyAddress = a GProxyAddress
	 * cancellable = a GCancellable. [allow-none]
	 * callback = a GAsyncReadyCallback. [scope async]
	 * userData = callback data. [closure]
	 */
	public void gProxyConnectAsync(IOStream connection, ProxyAddress proxyAddress, Cancellable cancellable, GAsyncReadyCallback callback, void* userData);
	
	/**
	 * See g_proxy_connect().
	 * Since 2.26
	 * Params:
	 * result = a GAsyncResult
	 * Returns: a GIOStream. [transfer full]
	 * Throws: GException on failure.
	 */
	public IOStream gProxyConnectFinish(AsyncResultIF result);
	
	/**
	 * Lookup "gio-proxy" extension point for a proxy implementation that supports
	 * specified protocol.
	 * Since 2.26
	 * Params:
	 * protocol = the proxy protocol name (e.g. http, socks, etc)
	 * Returns: return a GProxy or NULL if protocol is not supported. [transfer full]
	 */
	public static ProxyIF gProxyGetDefaultForProtocol(string protocol);
	
	/**
	 * Some proxy protocols expect to be passed a hostname, which they
	 * will resolve to an IP address themselves. Others, like SOCKS4, do
	 * not allow this. This function will return FALSE if proxy is
	 * implementing such a protocol. When FALSE is returned, the caller
	 * should resolve the destination hostname first, and then pass a
	 * GProxyAddress containing the stringified IP address to
	 * g_proxy_connect() or g_proxy_connect_async().
	 * Since 2.26
	 * Returns: TRUE if hostname resolution is supported.
	 */
	public int gProxySupportsHostname();
}
