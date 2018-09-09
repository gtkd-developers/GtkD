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


module gst.mpegts.AtscETT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Extended Text Table (ATSC)
 */
public final class AtscETT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscETT* gstMpegtsAtscETT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscETT* getAtscETTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscETT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscETT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscETT* gstMpegtsAtscETT, bool ownedRef = false)
	{
		this.gstMpegtsAtscETT = gstMpegtsAtscETT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscETT);
	}


	/** */
	public @property ushort ettTableIdExtension()
	{
		return gstMpegtsAtscETT.ettTableIdExtension;
	}

	/** Ditto */
	public @property void ettTableIdExtension(ushort value)
	{
		gstMpegtsAtscETT.ettTableIdExtension = value;
	}

	/** */
	public @property ushort protocolVersion()
	{
		return gstMpegtsAtscETT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ushort value)
	{
		gstMpegtsAtscETT.protocolVersion = value;
	}

	/** */
	public @property uint etmId()
	{
		return gstMpegtsAtscETT.etmId;
	}

	/** Ditto */
	public @property void etmId(uint value)
	{
		gstMpegtsAtscETT.etmId = value;
	}

	/**
	 * List of texts
	 */
	public @property PtrArray messages()
	{
		return new PtrArray(gstMpegtsAtscETT.messages, false);
	}

	/** Ditto */
	public @property void messages(PtrArray value)
	{
		gstMpegtsAtscETT.messages = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_ett_get_type();
	}
}
