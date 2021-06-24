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


module gio.InetAddressMask;

private import gio.InetAddress;
private import gio.InitableIF;
private import gio.InitableT;
private import gio.c.functions;
public  import gio.c.types;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import glib.c.functions;
private import gobject.ObjectG;


/**
 * #GInetAddressMask represents a range of IPv4 or IPv6 addresses
 * described by a base address and a length indicating how many bits
 * of the base address are relevant for matching purposes. These are
 * often given in string form. Eg, "10.0.0.0/8", or "fe80::/10".
 *
 * Since: 2.32
 */
public class InetAddressMask : ObjectG, InitableIF
{
	/** the main Gtk struct */
	protected GInetAddressMask* gInetAddressMask;

	/** Get the main Gtk struct */
	public GInetAddressMask* getInetAddressMaskStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gInetAddressMask;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gInetAddressMask;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GInetAddressMask* gInetAddressMask, bool ownedRef = false)
	{
		this.gInetAddressMask = gInetAddressMask;
		super(cast(GObject*)gInetAddressMask, ownedRef);
	}

	// add the Initable capabilities
	mixin InitableT!(GInetAddressMask);


	/** */
	public static GType getType()
	{
		return g_inet_address_mask_get_type();
	}

	/**
	 * Creates a new #GInetAddressMask representing all addresses whose
	 * first @length bits match @addr.
	 *
	 * Params:
	 *     addr = a #GInetAddress
	 *     length = number of bits of @addr to use
	 *
	 * Returns: a new #GInetAddressMask, or %NULL on error
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(InetAddress addr, uint length)
	{
		GError* err = null;

		auto __p = g_inet_address_mask_new((addr is null) ? null : addr.getInetAddressStruct(), length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GInetAddressMask*) __p, true);
	}

	/**
	 * Parses @mask_string as an IP address and (optional) length, and
	 * creates a new #GInetAddressMask. The length, if present, is
	 * delimited by a "/". If it is not present, then the length is
	 * assumed to be the full length of the address.
	 *
	 * Params:
	 *     maskString = an IP address or address/length string
	 *
	 * Returns: a new #GInetAddressMask corresponding to @string, or %NULL
	 *     on error.
	 *
	 * Since: 2.32
	 *
	 * Throws: GException on failure.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string maskString)
	{
		GError* err = null;

		auto __p = g_inet_address_mask_new_from_string(Str.toStringz(maskString), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_string");
		}

		this(cast(GInetAddressMask*) __p, true);
	}

	/**
	 * Tests if @mask and @mask2 are the same mask.
	 *
	 * Params:
	 *     mask2 = another #GInetAddressMask
	 *
	 * Returns: whether @mask and @mask2 are the same mask
	 *
	 * Since: 2.32
	 */
	public bool equal(InetAddressMask mask2)
	{
		return g_inet_address_mask_equal(gInetAddressMask, (mask2 is null) ? null : mask2.getInetAddressMaskStruct()) != 0;
	}

	/**
	 * Gets @mask's base address
	 *
	 * Returns: @mask's base address
	 *
	 * Since: 2.32
	 */
	public InetAddress getAddress()
	{
		auto __p = g_inet_address_mask_get_address(gInetAddressMask);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InetAddress)(cast(GInetAddress*) __p);
	}

	/**
	 * Gets the #GSocketFamily of @mask's address
	 *
	 * Returns: the #GSocketFamily of @mask's address
	 *
	 * Since: 2.32
	 */
	public GSocketFamily getFamily()
	{
		return g_inet_address_mask_get_family(gInetAddressMask);
	}

	/**
	 * Gets @mask's length
	 *
	 * Returns: @mask's length
	 *
	 * Since: 2.32
	 */
	public uint getLength()
	{
		return g_inet_address_mask_get_length(gInetAddressMask);
	}

	/**
	 * Tests if @address falls within the range described by @mask.
	 *
	 * Params:
	 *     address = a #GInetAddress
	 *
	 * Returns: whether @address falls within the range described by
	 *     @mask.
	 *
	 * Since: 2.32
	 */
	public bool matches(InetAddress address)
	{
		return g_inet_address_mask_matches(gInetAddressMask, (address is null) ? null : address.getInetAddressStruct()) != 0;
	}

	/**
	 * Converts @mask back to its corresponding string form.
	 *
	 * Returns: a string corresponding to @mask.
	 *
	 * Since: 2.32
	 */
	public override string toString()
	{
		auto retStr = g_inet_address_mask_to_string(gInetAddressMask);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
