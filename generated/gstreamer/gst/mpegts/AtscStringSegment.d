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


module gst.mpegts.AtscStringSegment;

private import glib.MemorySlice;
private import glib.Str;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class AtscStringSegment
{
	/** the main Gtk struct */
	protected GstMpegtsAtscStringSegment* gstMpegtsAtscStringSegment;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscStringSegment* getAtscStringSegmentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscStringSegment;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscStringSegment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscStringSegment* gstMpegtsAtscStringSegment, bool ownedRef = false)
	{
		this.gstMpegtsAtscStringSegment = gstMpegtsAtscStringSegment;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscStringSegment);
	}


	/** */
	public @property ubyte compressionType()
	{
		return gstMpegtsAtscStringSegment.compressionType;
	}

	/** Ditto */
	public @property void compressionType(ubyte value)
	{
		gstMpegtsAtscStringSegment.compressionType = value;
	}

	/** */
	public @property ubyte mode()
	{
		return gstMpegtsAtscStringSegment.mode;
	}

	/** Ditto */
	public @property void mode(ubyte value)
	{
		gstMpegtsAtscStringSegment.mode = value;
	}


	/** */
	public @property ubyte[] compressedData()
	{
		return gstMpegtsAtscStringSegment.compressedData[0..gstMpegtsAtscStringSegment.compressedDataSize];
	}

	/** Ditto */
	public @property void compressedData(ubyte[] value)
	{
		gstMpegtsAtscStringSegment.compressedData = value.ptr;
		gstMpegtsAtscStringSegment.compressedDataSize = cast(ubyte)value.length;
	}

	/** */
	public @property string cachedString()
	{
		return Str.toString(gstMpegtsAtscStringSegment.cachedString);
	}

	/** Ditto */
	public @property void cachedString(string value)
	{
		gstMpegtsAtscStringSegment.cachedString = Str.toStringz(value);
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_string_segment_get_type();
	}

	/** */
	public string getString()
	{
		return Str.toString(gst_mpegts_atsc_string_segment_get_string(gstMpegtsAtscStringSegment));
	}
}
