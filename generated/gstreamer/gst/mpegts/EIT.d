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


module gst.mpegts.EIT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * Event Information Table (EN 300 468)
 */
public final class EIT
{
	/** the main Gtk struct */
	protected GstMpegtsEIT* gstMpegtsEIT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsEIT* getEITStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsEIT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsEIT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsEIT* gstMpegtsEIT, bool ownedRef = false)
	{
		this.gstMpegtsEIT = gstMpegtsEIT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsEIT);
	}


	/** */
	public @property ushort transportStreamId()
	{
		return gstMpegtsEIT.transportStreamId;
	}

	/** Ditto */
	public @property void transportStreamId(ushort value)
	{
		gstMpegtsEIT.transportStreamId = value;
	}

	/** */
	public @property ushort originalNetworkId()
	{
		return gstMpegtsEIT.originalNetworkId;
	}

	/** Ditto */
	public @property void originalNetworkId(ushort value)
	{
		gstMpegtsEIT.originalNetworkId = value;
	}

	/** */
	public @property ubyte segmentLastSectionNumber()
	{
		return gstMpegtsEIT.segmentLastSectionNumber;
	}

	/** Ditto */
	public @property void segmentLastSectionNumber(ubyte value)
	{
		gstMpegtsEIT.segmentLastSectionNumber = value;
	}

	/** */
	public @property ubyte lastTableId()
	{
		return gstMpegtsEIT.lastTableId;
	}

	/** Ditto */
	public @property void lastTableId(ubyte value)
	{
		gstMpegtsEIT.lastTableId = value;
	}

	/** */
	public @property bool actualStream()
	{
		return gstMpegtsEIT.actualStream != 0;
	}

	/** Ditto */
	public @property void actualStream(bool value)
	{
		gstMpegtsEIT.actualStream = value;
	}

	/** */
	public @property bool presentFollowing()
	{
		return gstMpegtsEIT.presentFollowing != 0;
	}

	/** Ditto */
	public @property void presentFollowing(bool value)
	{
		gstMpegtsEIT.presentFollowing = value;
	}

	/**
	 * List of events
	 */
	public @property PtrArray events()
	{
		return new PtrArray(gstMpegtsEIT.events, false);
	}

	/** Ditto */
	public @property void events(PtrArray value)
	{
		gstMpegtsEIT.events = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_eit_get_type();
	}
}
