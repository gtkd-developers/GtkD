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
 * inFile  = GProxyAddress.html
 * outPack = gio
 * outFile = ProxyAddress
 * strct   = GProxyAddress
 * realStrct=
 * ctorStrct=GSocketAddress
 * clss    = ProxyAddress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_proxy_address_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.ProxyAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;



private import gio.InetSocketAddress;

/**
 * Description
 * Support for proxied GInetSocketAddress.
 */
public class ProxyAddress : InetSocketAddress
{
	
	/** the main Gtk struct */
	protected GProxyAddress* gProxyAddress;
	
	
	public GProxyAddress* getProxyAddressStruct()
	{
		return gProxyAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gProxyAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GProxyAddress* gProxyAddress)
	{
		super(cast(GInetSocketAddress*)gProxyAddress);
		this.gProxyAddress = gProxyAddress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gProxyAddress = cast(GProxyAddress*)obj;
	}
	
	/**
	 */
	
	/**
	 * Gets the protocol that is being spoken to the destination
	 * server; eg, "http" or "ftp".
	 * Since 2.34
	 * Returns: the proxy's destination protocol
	 */
	public string getDestinationProtocol()
	{
		// const gchar * g_proxy_address_get_destination_protocol  (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_destination_protocol(gProxyAddress));
	}
	
	/**
	 * Gets proxy's destination hostname; that is, the name of the host
	 * that will be connected to via the proxy, not the name of the proxy
	 * itself.
	 * Since 2.26
	 * Returns: the proxy's destination hostname
	 */
	public string getDestinationHostname()
	{
		// const gchar * g_proxy_address_get_destination_hostname  (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_destination_hostname(gProxyAddress));
	}
	
	/**
	 * Gets proxy's destination port; that is, the port on the
	 * destination host that will be connected to via the proxy, not the
	 * port number of the proxy itself.
	 * Since 2.26
	 * Returns: the proxy's destination port
	 */
	public ushort getDestinationPort()
	{
		// guint16 g_proxy_address_get_destination_port  (GProxyAddress *proxy);
		return g_proxy_address_get_destination_port(gProxyAddress);
	}
	
	/**
	 * Gets proxy's password.
	 * Since 2.26
	 * Returns: the proxy's password
	 */
	public string getPassword()
	{
		// const gchar * g_proxy_address_get_password (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_password(gProxyAddress));
	}
	
	/**
	 * Gets proxy's protocol. eg, "socks" or "http"
	 * Since 2.26
	 * Returns: the proxy's protocol
	 */
	public string getProtocol()
	{
		// const gchar * g_proxy_address_get_protocol (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_protocol(gProxyAddress));
	}
	
	/**
	 * Gets proxy's username.
	 * Since 2.26
	 * Returns: the proxy's username
	 */
	public string getUsername()
	{
		// const gchar * g_proxy_address_get_username (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_username(gProxyAddress));
	}
	
	/**
	 * Gets the proxy URI that proxy was constructed from.
	 * Since 2.34
	 * Returns: the proxy's URI, or NULL if unknown
	 */
	public string getUri()
	{
		// const gchar * g_proxy_address_get_uri (GProxyAddress *proxy);
		return Str.toString(g_proxy_address_get_uri(gProxyAddress));
	}
	
	/**
	 * Creates a new GProxyAddress for inetaddr with protocol that should
	 * tunnel through dest_hostname and dest_port.
	 * (Note that this method doesn't set the "uri" or
	 * "destination-protocol" fields; use g_object_new()
	 * directly if you want to set those.)
	 * Since 2.26
	 * Params:
	 * inetaddr = The proxy server GInetAddress.
	 * port = The proxy server port.
	 * protocol = The proxy protocol to support, in lower case (e.g. socks, http).
	 * destHostname = The destination hostname the proxy should tunnel to.
	 * destPort = The destination port to tunnel to.
	 * username = The username to authenticate to the proxy server
	 * (or NULL). [allow-none]
	 * password = The password to authenticate to the proxy server
	 * (or NULL). [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GInetAddress* inetaddr, ushort port, string protocol, string destHostname, ushort destPort, string username, string password)
	{
		// GSocketAddress * g_proxy_address_new (GInetAddress *inetaddr,  guint16 port,  const gchar *protocol,  const gchar *dest_hostname,  guint16 dest_port,  const gchar *username,  const gchar *password);
		auto p = g_proxy_address_new(inetaddr, port, Str.toStringz(protocol), Str.toStringz(destHostname), destPort, Str.toStringz(username), Str.toStringz(password));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_proxy_address_new(inetaddr, port, Str.toStringz(protocol), Str.toStringz(destHostname), destPort, Str.toStringz(username), Str.toStringz(password))");
		}
		this(cast(GProxyAddress*) p);
	}
}
