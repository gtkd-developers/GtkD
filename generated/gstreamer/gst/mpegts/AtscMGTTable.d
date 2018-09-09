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


module gst.mpegts.AtscMGTTable;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Source from a @GstMpegtsAtscMGT
 */
public final class AtscMGTTable
{
	/** the main Gtk struct */
	protected GstMpegtsAtscMGTTable* gstMpegtsAtscMGTTable;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscMGTTable* getAtscMGTTableStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscMGTTable;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscMGTTable;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscMGTTable* gstMpegtsAtscMGTTable, bool ownedRef = false)
	{
		this.gstMpegtsAtscMGTTable = gstMpegtsAtscMGTTable;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscMGTTable);
	}


	/** */
	public @property ushort tableType()
	{
		return gstMpegtsAtscMGTTable.tableType;
	}

	/** Ditto */
	public @property void tableType(ushort value)
	{
		gstMpegtsAtscMGTTable.tableType = value;
	}

	/** */
	public @property ushort pid()
	{
		return gstMpegtsAtscMGTTable.pid;
	}

	/** Ditto */
	public @property void pid(ushort value)
	{
		gstMpegtsAtscMGTTable.pid = value;
	}

	/** */
	public @property ubyte versionNumber()
	{
		return gstMpegtsAtscMGTTable.versionNumber;
	}

	/** Ditto */
	public @property void versionNumber(ubyte value)
	{
		gstMpegtsAtscMGTTable.versionNumber = value;
	}

	/** */
	public @property uint numberBytes()
	{
		return gstMpegtsAtscMGTTable.numberBytes;
	}

	/** Ditto */
	public @property void numberBytes(uint value)
	{
		gstMpegtsAtscMGTTable.numberBytes = value;
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscMGTTable.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscMGTTable.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_mgt_table_get_type();
	}
}
