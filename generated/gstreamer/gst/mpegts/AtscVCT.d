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


module gst.mpegts.AtscVCT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Represents both:
 * Terrestrial Virtual Channel Table (A65)
 * Cable Virtual Channel Table (A65)
 */
public final class AtscVCT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscVCT* gstMpegtsAtscVCT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscVCT* getAtscVCTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscVCT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscVCT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscVCT* gstMpegtsAtscVCT, bool ownedRef = false)
	{
		this.gstMpegtsAtscVCT = gstMpegtsAtscVCT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscVCT);
	}


	/** */
	public @property ushort transportStreamId()
	{
		return gstMpegtsAtscVCT.transportStreamId;
	}

	/** Ditto */
	public @property void transportStreamId(ushort value)
	{
		gstMpegtsAtscVCT.transportStreamId = value;
	}

	/** */
	public @property ubyte protocolVersion()
	{
		return gstMpegtsAtscVCT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ubyte value)
	{
		gstMpegtsAtscVCT.protocolVersion = value;
	}

	/**
	 * sources
	 */
	public @property PtrArray sources()
	{
		return new PtrArray(gstMpegtsAtscVCT.sources, false);
	}

	/** Ditto */
	public @property void sources(PtrArray value)
	{
		gstMpegtsAtscVCT.sources = value.getPtrArrayStruct();
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscVCT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscVCT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_vct_get_type();
	}
}
