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


module gst.mpegts.SCTESIT;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/** */
public final class SCTESIT
{
	/** the main Gtk struct */
	protected GstMpegtsSCTESIT* gstMpegtsSCTESIT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSCTESIT* getSCTESITStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSCTESIT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSCTESIT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSCTESIT* gstMpegtsSCTESIT, bool ownedRef = false)
	{
		this.gstMpegtsSCTESIT = gstMpegtsSCTESIT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsSCTESIT);
	}


	/** */
	public @property bool encryptedPacket()
	{
		return gstMpegtsSCTESIT.encryptedPacket != 0;
	}

	/** Ditto */
	public @property void encryptedPacket(bool value)
	{
		gstMpegtsSCTESIT.encryptedPacket = value;
	}

	/** */
	public @property ubyte encryptionAlgorithm()
	{
		return gstMpegtsSCTESIT.encryptionAlgorithm;
	}

	/** Ditto */
	public @property void encryptionAlgorithm(ubyte value)
	{
		gstMpegtsSCTESIT.encryptionAlgorithm = value;
	}

	/** */
	public @property ulong ptsAdjustment()
	{
		return gstMpegtsSCTESIT.ptsAdjustment;
	}

	/** Ditto */
	public @property void ptsAdjustment(ulong value)
	{
		gstMpegtsSCTESIT.ptsAdjustment = value;
	}

	/** */
	public @property ubyte cwIndex()
	{
		return gstMpegtsSCTESIT.cwIndex;
	}

	/** Ditto */
	public @property void cwIndex(ubyte value)
	{
		gstMpegtsSCTESIT.cwIndex = value;
	}

	/** */
	public @property ushort tier()
	{
		return gstMpegtsSCTESIT.tier;
	}

	/** Ditto */
	public @property void tier(ushort value)
	{
		gstMpegtsSCTESIT.tier = value;
	}

	/** */
	public @property ushort spliceCommandLength()
	{
		return gstMpegtsSCTESIT.spliceCommandLength;
	}

	/** Ditto */
	public @property void spliceCommandLength(ushort value)
	{
		gstMpegtsSCTESIT.spliceCommandLength = value;
	}

	/** */
	public @property GstMpegtsSCTESpliceCommandType spliceCommandType()
	{
		return gstMpegtsSCTESIT.spliceCommandType;
	}

	/** Ditto */
	public @property void spliceCommandType(GstMpegtsSCTESpliceCommandType value)
	{
		gstMpegtsSCTESIT.spliceCommandType = value;
	}

	/** */
	public @property bool spliceTimeSpecified()
	{
		return gstMpegtsSCTESIT.spliceTimeSpecified != 0;
	}

	/** Ditto */
	public @property void spliceTimeSpecified(bool value)
	{
		gstMpegtsSCTESIT.spliceTimeSpecified = value;
	}

	/** */
	public @property ulong spliceTime()
	{
		return gstMpegtsSCTESIT.spliceTime;
	}

	/** Ditto */
	public @property void spliceTime(ulong value)
	{
		gstMpegtsSCTESIT.spliceTime = value;
	}

	/** */
	public @property PtrArray splices()
	{
		return new PtrArray(gstMpegtsSCTESIT.splices, false);
	}

	/** Ditto */
	public @property void splices(PtrArray value)
	{
		gstMpegtsSCTESIT.splices = value.getPtrArrayStruct();
	}

	/** */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsSCTESIT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsSCTESIT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_scte_sit_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsSCTESIT.
	 *
	 * Returns: A newly allocated #GstMpegtsSCTESIT
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_mpegts_scte_sit_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSCTESIT*) __p);
	}
}
