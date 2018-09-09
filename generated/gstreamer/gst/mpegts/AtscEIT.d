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


module gst.mpegts.AtscEIT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Event Information Table (ATSC)
 */
public final class AtscEIT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscEIT* gstMpegtsAtscEIT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscEIT* getAtscEITStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscEIT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscEIT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscEIT* gstMpegtsAtscEIT, bool ownedRef = false)
	{
		this.gstMpegtsAtscEIT = gstMpegtsAtscEIT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscEIT);
	}


	/** */
	public @property ushort sourceId()
	{
		return gstMpegtsAtscEIT.sourceId;
	}

	/** Ditto */
	public @property void sourceId(ushort value)
	{
		gstMpegtsAtscEIT.sourceId = value;
	}

	/** */
	public @property ubyte protocolVersion()
	{
		return gstMpegtsAtscEIT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ubyte value)
	{
		gstMpegtsAtscEIT.protocolVersion = value;
	}

	/**
	 * Events
	 */
	public @property PtrArray events()
	{
		return new PtrArray(gstMpegtsAtscEIT.events, false);
	}

	/** Ditto */
	public @property void events(PtrArray value)
	{
		gstMpegtsAtscEIT.events = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_eit_get_type();
	}
}
