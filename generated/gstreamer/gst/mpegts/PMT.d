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


module gst.mpegts.PMT;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Program Map Table (ISO/IEC 13818-1).
 * 
 * The program_number is contained in the subtable_extension field of the
 * container #GstMpegtsSection.
 */
public final class PMT
{
	/** the main Gtk struct */
	protected GstMpegtsPMT* gstMpegtsPMT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsPMT* getPMTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsPMT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsPMT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsPMT* gstMpegtsPMT, bool ownedRef = false)
	{
		this.gstMpegtsPMT = gstMpegtsPMT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsPMT);
	}


	/**
	 * PID of the stream containing PCR
	 */
	public @property ushort pcrPid()
	{
		return gstMpegtsPMT.pcrPid;
	}

	/** Ditto */
	public @property void pcrPid(ushort value)
	{
		gstMpegtsPMT.pcrPid = value;
	}

	/** */
	public @property ushort programNumber()
	{
		return gstMpegtsPMT.programNumber;
	}

	/** Ditto */
	public @property void programNumber(ushort value)
	{
		gstMpegtsPMT.programNumber = value;
	}

	/**
	 * array of #GstMpegtsDescriptor
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsPMT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsPMT.descriptors = value.getPtrArrayStruct();
	}

	/**
	 * Array of #GstMpegtsPMTStream
	 */
	public @property PtrArray streams()
	{
		return new PtrArray(gstMpegtsPMT.streams, false);
	}

	/** Ditto */
	public @property void streams(PtrArray value)
	{
		gstMpegtsPMT.streams = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_pmt_get_type();
	}

	/**
	 * Allocates and initializes a new #GstMpegtsPMT.
	 *
	 * Returns: #GstMpegtsPMT
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = gst_mpegts_pmt_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsPMT*) p);
	}
}
