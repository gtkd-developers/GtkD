/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GInetAddress.html
 * outPack = gio
 * outFile = InetAddress
 * strct   = GInetAddress
 * realStrct=
 * ctorStrct=
 * clss    = InetAddress
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_inet_address_
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

module gio.InetAddress;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;



private import gobject.ObjectG;

/**
 * Description
 * GInetAddress represents an IPv4 or IPv6 internet address. Use
 * g_resolver_lookup_by_name() or g_resolver_lookup_by_name_async() to
 * look up the GInetAddress for a hostname. Use
 * g_resolver_lookup_by_address() or
 * g_resolver_lookup_by_address_async() to look up the hostname for a
 * GInetAddress.
 * To actually connect to a remote host, you will need a
 * GInetSocketAddress (which includes a GInetAddress as well as a
 * port number).
 */
public class InetAddress : ObjectG
{
	
	/** the main Gtk struct */
	protected GInetAddress* gInetAddress;
	
	
	public GInetAddress* getInetAddressStruct()
	{
		return gInetAddress;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetAddress;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GInetAddress* gInetAddress)
	{
		if(gInetAddress is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gInetAddress);
		if( ptr !is null )
		{
			this = cast(InetAddress)ptr;
			return;
		}
		super(cast(GObject*)gInetAddress);
		this.gInetAddress = gInetAddress;
	}
	
	/**
	 */
	
	/**
	 * Parses string as an IP address and creates a new GInetAddress.
	 * Since 2.22
	 * Params:
	 * string = a string representation of an IP address
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string string)
	{
		// GInetAddress * g_inet_address_new_from_string (const gchar *string);
		auto p = g_inet_address_new_from_string(Str.toStringz(string));
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_new_from_string(Str.toStringz(string))");
		}
		this(cast(GInetAddress*) p);
	}
	
	/**
	 * Creates a new GInetAddress from the given family and bytes.
	 * bytes should be 4 bytes for G_INET_ADDRESS_IPV4 and 16 bytes for
	 * G_INET_ADDRESS_IPV6.
	 * Since 2.22
	 * Params:
	 * bytes = raw address data
	 * family = the address family of bytes
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ubyte[] bytes, GSocketFamily family)
	{
		// GInetAddress * g_inet_address_new_from_bytes (const guint8 *bytes,  GSocketFamily family);
		auto p = g_inet_address_new_from_bytes(bytes.ptr, family);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_new_from_bytes(bytes.ptr, family)");
		}
		this(cast(GInetAddress*) p);
	}
	
	/**
	 * Creates a GInetAddress for the "any" address (unassigned/"don't
	 * care") for family.
	 * Since 2.22
	 * Params:
	 * family = the address family
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (GSocketFamily family)
	{
		// GInetAddress * g_inet_address_new_any (GSocketFamily family);
		auto p = g_inet_address_new_any(family);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_new_any(family)");
		}
		this(cast(GInetAddress*) p);
	}
	
	/**
	 * Gets the raw binary address data from address.
	 * Since 2.22
	 * Returns: a pointer to an internal array of the bytes in address,which should not be modified, stored, or freed. The size of thisarray can be gotten with g_inet_address_get_native_size().
	 */
	public ubyte[] toBytes()
	{
		// const guint8 * g_inet_address_to_bytes (GInetAddress *address);
		auto p = g_inet_address_to_bytes(gInetAddress);
		return p[0 .. getNativeSize()];
	}
	
	/**
	 * Gets the size of the native raw binary address for address. This
	 * is the size of the data that you get from g_inet_address_to_bytes().
	 * Since 2.22
	 * Returns: the number of bytes used for the native version of address.
	 */
	public uint getNativeSize()
	{
		// gsize g_inet_address_get_native_size (GInetAddress *address);
		return g_inet_address_get_native_size(gInetAddress);
	}
	
	/**
	 * Converts address to string form.
	 * Since 2.22
	 * Returns: a representation of address as a string, which should befreed after use.
	 */
	public string toString()
	{
		// gchar * g_inet_address_to_string (GInetAddress *address);
		return Str.toString(g_inet_address_to_string(gInetAddress));
	}
	
	/**
	 * Gets address's family
	 * Since 2.22
	 * Returns: address's family
	 */
	public GSocketFamily getFamily()
	{
		// GSocketFamily g_inet_address_get_family (GInetAddress *address);
		return g_inet_address_get_family(gInetAddress);
	}
	
	/**
	 * Tests whether address is the "any" address for its family.
	 * Since 2.22
	 * Returns: TRUE if address is the "any" address for its family.
	 */
	public int getIsAny()
	{
		// gboolean g_inet_address_get_is_any (GInetAddress *address);
		return g_inet_address_get_is_any(gInetAddress);
	}
	
	/**
	 * Tests whether address is the loopback address for its family.
	 * Since 2.22
	 * Returns: TRUE if address is the loopback address for its family.
	 */
	public int getIsLoopback()
	{
		// gboolean g_inet_address_get_is_loopback (GInetAddress *address);
		return g_inet_address_get_is_loopback(gInetAddress);
	}
	
	/**
	 * Tests whether address is a link-local address (that is, if it
	 * identifies a host on a local network that is not connected to the
	 * Internet).
	 * Since 2.22
	 * Returns: TRUE if address is a link-local address.
	 */
	public int getIsLinkLocal()
	{
		// gboolean g_inet_address_get_is_link_local (GInetAddress *address);
		return g_inet_address_get_is_link_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is a site-local address such as 10.0.0.1
	 * (that is, the address identifies a host on a local network that can
	 * not be reached directly from the Internet, but which may have
	 * outgoing Internet connectivity via a NAT or firewall).
	 * Since 2.22
	 * Returns: TRUE if address is a site-local address.
	 */
	public int getIsSiteLocal()
	{
		// gboolean g_inet_address_get_is_site_local (GInetAddress *address);
		return g_inet_address_get_is_site_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is a multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is a multicast address.
	 */
	public int getIsMulticast()
	{
		// gboolean g_inet_address_get_is_multicast (GInetAddress *address);
		return g_inet_address_get_is_multicast(gInetAddress);
	}
	
	/**
	 * Tests whether address is a link-local multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is a link-local multicast address.
	 */
	public int getIsMcLinkLocal()
	{
		// gboolean g_inet_address_get_is_mc_link_local (GInetAddress *address);
		return g_inet_address_get_is_mc_link_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is a node-local multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is a node-local multicast address.
	 */
	public int getIsMcNodeLocal()
	{
		// gboolean g_inet_address_get_is_mc_node_local (GInetAddress *address);
		return g_inet_address_get_is_mc_node_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is a site-local multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is a site-local multicast address.
	 */
	public int getIsMcSiteLocal()
	{
		// gboolean g_inet_address_get_is_mc_site_local (GInetAddress *address);
		return g_inet_address_get_is_mc_site_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is an organization-local multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is an organization-local multicast address.
	 */
	public int getIsMcOrgLocal()
	{
		// gboolean g_inet_address_get_is_mc_org_local (GInetAddress *address);
		return g_inet_address_get_is_mc_org_local(gInetAddress);
	}
	
	/**
	 * Tests whether address is a global multicast address.
	 * Since 2.22
	 * Returns: TRUE if address is a global multicast address.
	 */
	public int getIsMcGlobal()
	{
		// gboolean g_inet_address_get_is_mc_global (GInetAddress *address);
		return g_inet_address_get_is_mc_global(gInetAddress);
	}
}
