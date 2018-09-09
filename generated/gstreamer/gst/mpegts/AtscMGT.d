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


module gst.mpegts.AtscMGT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Master Guide Table (A65)
 */
public final class AtscMGT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscMGT* gstMpegtsAtscMGT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscMGT* getAtscMGTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscMGT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscMGT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscMGT* gstMpegtsAtscMGT, bool ownedRef = false)
	{
		this.gstMpegtsAtscMGT = gstMpegtsAtscMGT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscMGT);
	}


	/** */
	public @property ubyte protocolVersion()
	{
		return gstMpegtsAtscMGT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ubyte value)
	{
		gstMpegtsAtscMGT.protocolVersion = value;
	}

	/** */
	public @property ushort tablesDefined()
	{
		return gstMpegtsAtscMGT.tablesDefined;
	}

	/** Ditto */
	public @property void tablesDefined(ushort value)
	{
		gstMpegtsAtscMGT.tablesDefined = value;
	}

	/**
	 * the tables
	 */
	public @property PtrArray tables()
	{
		return new PtrArray(gstMpegtsAtscMGT.tables, false);
	}

	/** Ditto */
	public @property void tables(PtrArray value)
	{
		gstMpegtsAtscMGT.tables = value.getPtrArrayStruct();
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscMGT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscMGT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_mgt_get_type();
	}
}
