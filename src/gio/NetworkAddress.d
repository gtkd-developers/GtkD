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
 * inFile  = GNetworkAddress.html
 * outPack = gio
 * outFile = NetworkAddress
 * strct   = GNetworkAddress
 * realStrct=
 * ctorStrct=GSocketConnectable
 * clss    = NetworkAddress
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- SocketConnectableIF
 * prefixes:
 * 	- g_network_address_
 * omit structs:
 * omit prefixes:
 * omit code:
 * 	- g_network_address_parse
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.SocketConnectable
 * 	- gio.SocketConnectableIF
 * 	- gio.SocketConnectableT
 * structWrap:
 * 	- GSocketConnectable* -> SocketConnectableIF
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.NetworkAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.SocketConnectable;
private import gio.SocketConnectableIF;
private import gio.SocketConnectableT;



private import gobject.ObjectG;

/**
 * GNetworkAddress provides an easy way to resolve a hostname and
 * then attempt to connect to that host, handling the possibility of
 * multiple IP addresses and multiple address families.
 *
 * See GSocketConnectable for and example of using the connectable
 * interface.
 */
public class NetworkAddress : ObjectG, SocketConnectableIF
{
	
	/** the main Gtk struct */
	protected GNetworkAddress* gNetworkAddress;
	
	
	public GNetworkAddress* getNetworkAddressStruct()
	{
		return gNetworkAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gNetworkAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GNetworkAddress* gNetworkAddress)
	{
		super(cast(GObject*)gNetworkAddress);
		this.gNetworkAddress = gNetworkAddress;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gNetworkAddress = cast(GNetworkAddress*)obj;
	}
	
	// add the SocketConnectable capabilities
	mixin SocketConnectableT!(GNetworkAddress);
	
	/**
	 * Creates a new GSocketConnectable for connecting to the given
	 * hostname and port. May fail and return NULL in case
	 * parsing host_and_port fails.
	 * host_and_port may be in any of a number of recognised formats: an IPv6
	 * address, an IPv4 address, or a domain name (in which case a DNS
	 * lookup is performed). Quoting with [] is supported for all address
	 * types. A port override may be specified in the usual way with a
	 * colon. Ports may be given as decimal numbers or symbolic names (in
	 * which case an /etc/services lookup is performed).
	 * If no port is specified in host_and_port then default_port will be
	 * used as the port number to connect to.
	 * In general, host_and_port is expected to be provided by the user
	 * (allowing them to give the hostname, and a port overide if necessary)
	 * and default_port is expected to be provided by the application.
	 * Since 2.22
	 * Params:
	 * hostAndPort =  the hostname and optionally a port
	 * defaultPort =  the default port if not in host_and_port
	 * Returns: the new GNetworkAddress, or NULL on error
	 * Throws: GException on failure.
	 */
	public static SocketConnectableIF parse(string hostAndPort, ushort defaultPort)
	{
		// GSocketConnectable * g_network_address_parse (const gchar *host_and_port,  guint16 default_port,  GError **error);
		GError* err = null;
		
		auto p = g_network_address_parse(Str.toStringz(hostAndPort), defaultPort, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			return null;
		}
		return new NetworkAddress(cast(GNetworkAddress*) p);
	}
	
	/**
	 */
	
	/**
	 * Creates a new GSocketConnectable for connecting to the given
	 * hostname and port.
	 * Since 2.22
	 * Params:
	 * hostname = the hostname
	 * port = the port
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string hostname, ushort port)
	{
		// GSocketConnectable * g_network_address_new (const gchar *hostname,  guint16 port);
		auto p = g_network_address_new(Str.toStringz(hostname), port);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_network_address_new(Str.toStringz(hostname), port)");
		}
		this(cast(GNetworkAddress*) p);
	}
	
	/**
	 * Gets addr's hostname. This might be either UTF-8 or ASCII-encoded,
	 * depending on what addr was created with.
	 * Since 2.22
	 * Returns: addr's hostname
	 */
	public string getHostname()
	{
		// const gchar * g_network_address_get_hostname (GNetworkAddress *addr);
		return Str.toString(g_network_address_get_hostname(gNetworkAddress));
	}
	
	/**
	 * Gets addr's port number
	 * Since 2.22
	 * Returns: addr's port (which may be 0)
	 */
	public ushort getPort()
	{
		// guint16 g_network_address_get_port (GNetworkAddress *addr);
		return g_network_address_get_port(gNetworkAddress);
	}
	
	/**
	 * Gets addr's scheme
	 * Since 2.26
	 * Returns: addr's scheme (NULL if not built from URI)
	 */
	public string getScheme()
	{
		// const gchar * g_network_address_get_scheme (GNetworkAddress *addr);
		return Str.toString(g_network_address_get_scheme(gNetworkAddress));
	}
	
	/**
	 * Creates a new GSocketConnectable for connecting to the given
	 * uri. May fail and return NULL in case parsing uri fails.
	 * Using this rather than g_network_address_new() or
	 * g_network_address_parse() allows GSocketClient to determine
	 * when to use application-specific proxy protocols.
	 * Since 2.26
	 * Params:
	 * uri = the hostname and optionally a port
	 * defaultPort = The default port if none is found in the URI
	 * Returns: the new GNetworkAddress, or NULL on error. [transfer full]
	 * Throws: GException on failure.
	 */
	public static SocketConnectableIF parseUri(string uri, ushort defaultPort)
	{
		// GSocketConnectable * g_network_address_parse_uri (const gchar *uri,  guint16 default_port,  GError **error);
		GError* err = null;
		
		auto p = g_network_address_parse_uri(Str.toStringz(uri), defaultPort, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(SocketConnectable)(cast(GSocketConnectable*) p);
	}
}
