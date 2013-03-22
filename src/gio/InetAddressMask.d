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
 * inFile  = gio-GInetAddressMask.html
 * outPack = gio
 * outFile = InetAddressMask
 * strct   = GInetAddressMask
 * realStrct=
 * ctorStrct=
 * clss    = InetAddressMask
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = GObject
 * implements:
 * prefixes:
 * 	- g_inet_address_mask_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gio.InetAddress
 * structWrap:
 * 	- GInetAddress* -> InetAddress
 * 	- GInetAddressMask* -> InetAddressMask
 * module aliases:
 * local aliases:
 * overrides:
 * 	- toString
 */

module gio.InetAddressMask;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;
private import gobject.ObjectG;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gio.InetAddress;



private import gobject.ObjectG;

/**
 * GInetAddressMask represents a range of IPv4 or IPv6 addresses
 * described by a base address and a length indicating how many bits
 * of the base address are relevant for matching purposes. These are
 * often given in string form. Eg, "10.0.0.0/8", or "fe80::/10".
 */
public class InetAddressMask : ObjectG
{
	
	/** the main Gtk struct */
	protected GInetAddressMask* gInetAddressMask;
	
	
	public GInetAddressMask* getInetAddressMaskStruct()
	{
		return gInetAddressMask;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetAddressMask;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GInetAddressMask* gInetAddressMask)
	{
		super(cast(GObject*)gInetAddressMask);
		this.gInetAddressMask = gInetAddressMask;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gInetAddressMask = cast(GInetAddressMask*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GInetAddressMask representing all addresses whose
	 * first length bits match addr.
	 * Since 2.32
	 * Params:
	 * addr = a GInetAddress
	 * length = number of bits of addr to use
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (InetAddress addr, uint length)
	{
		// GInetAddressMask * g_inet_address_mask_new (GInetAddress *addr,  guint length,  GError **error);
		GError* err = null;
		
		auto p = g_inet_address_mask_new((addr is null) ? null : addr.getInetAddressStruct(), length, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_mask_new((addr is null) ? null : addr.getInetAddressStruct(), length, &err)");
		}
		this(cast(GInetAddressMask*) p);
	}
	
	/**
	 * Parses mask_string as an IP address and (optional) length, and
	 * creates a new GInetAddressMask. The length, if present, is
	 * delimited by a "/". If it is not present, then the length is
	 * assumed to be the full length of the address.
	 * Since 2.32
	 * Params:
	 * maskString = an IP address or address/length string
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string maskString)
	{
		// GInetAddressMask * g_inet_address_mask_new_from_string (const gchar *mask_string,  GError **error);
		GError* err = null;
		
		auto p = g_inet_address_mask_new_from_string(Str.toStringz(maskString), &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		if(p is null)
		{
			throw new ConstructionException("null returned by g_inet_address_mask_new_from_string(Str.toStringz(maskString), &err)");
		}
		this(cast(GInetAddressMask*) p);
	}
	
	/**
	 * Converts mask back to its corresponding string form.
	 * Since 2.32
	 * Returns: a string corresponding to mask.
	 */
	public override string toString()
	{
		// gchar * g_inet_address_mask_to_string (GInetAddressMask *mask);
		return Str.toString(g_inet_address_mask_to_string(gInetAddressMask));
	}
	
	/**
	 * Gets the GSocketFamily of mask's address
	 * Since 2.32
	 * Returns: the GSocketFamily of mask's address
	 */
	public GSocketFamily getFamily()
	{
		// GSocketFamily g_inet_address_mask_get_family (GInetAddressMask *mask);
		return g_inet_address_mask_get_family(gInetAddressMask);
	}
	
	/**
	 * Gets mask's base address
	 * Since 2.32
	 * Returns: mask's base address. [transfer none]
	 */
	public InetAddress getAddress()
	{
		// GInetAddress * g_inet_address_mask_get_address (GInetAddressMask *mask);
		auto p = g_inet_address_mask_get_address(gInetAddressMask);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(InetAddress)(cast(GInetAddress*) p);
	}
	
	/**
	 * Gets mask's length
	 * Since 2.32
	 * Returns: mask's length
	 */
	public uint getLength()
	{
		// guint g_inet_address_mask_get_length (GInetAddressMask *mask);
		return g_inet_address_mask_get_length(gInetAddressMask);
	}
	
	/**
	 * Tests if address falls within the range described by mask.
	 * Since 2.32
	 * Params:
	 * address = a GInetAddress
	 * Returns: whether address falls within the range described by mask.
	 */
	public int matches(InetAddress address)
	{
		// gboolean g_inet_address_mask_matches (GInetAddressMask *mask,  GInetAddress *address);
		return g_inet_address_mask_matches(gInetAddressMask, (address is null) ? null : address.getInetAddressStruct());
	}
	
	/**
	 * Tests if mask and mask2 are the same mask.
	 * Since 2.32
	 * Params:
	 * mask = a GInetAddressMask
	 * mask2 = another GInetAddressMask
	 * Returns: whether mask and mask2 are the same mask
	 */
	public int equal(InetAddressMask mask2)
	{
		// gboolean g_inet_address_mask_equal (GInetAddressMask *mask,  GInetAddressMask *mask2);
		return g_inet_address_mask_equal(gInetAddressMask, (mask2 is null) ? null : mask2.getInetAddressMaskStruct());
	}
}
