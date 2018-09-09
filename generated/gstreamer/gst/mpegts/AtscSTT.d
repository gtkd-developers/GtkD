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


module gst.mpegts.AtscSTT;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gstreamer.DateTime;
private import gtkd.Loader;


/**
 * System Time Table (A65)
 */
public final class AtscSTT
{
	/** the main Gtk struct */
	protected GstMpegtsAtscSTT* gstMpegtsAtscSTT;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscSTT* getAtscSTTStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscSTT;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscSTT;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscSTT* gstMpegtsAtscSTT, bool ownedRef = false)
	{
		this.gstMpegtsAtscSTT = gstMpegtsAtscSTT;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscSTT);
	}


	/** */
	public @property ubyte protocolVersion()
	{
		return gstMpegtsAtscSTT.protocolVersion;
	}

	/** Ditto */
	public @property void protocolVersion(ubyte value)
	{
		gstMpegtsAtscSTT.protocolVersion = value;
	}

	/** */
	public @property uint systemTime()
	{
		return gstMpegtsAtscSTT.systemTime;
	}

	/** Ditto */
	public @property void systemTime(uint value)
	{
		gstMpegtsAtscSTT.systemTime = value;
	}

	/** */
	public @property ubyte gpsUtcOffset()
	{
		return gstMpegtsAtscSTT.gpsUtcOffset;
	}

	/** Ditto */
	public @property void gpsUtcOffset(ubyte value)
	{
		gstMpegtsAtscSTT.gpsUtcOffset = value;
	}

	/** */
	public @property bool dsStatus()
	{
		return gstMpegtsAtscSTT.dsStatus != 0;
	}

	/** Ditto */
	public @property void dsStatus(bool value)
	{
		gstMpegtsAtscSTT.dsStatus = value;
	}

	/** */
	public @property ubyte dsDayofmonth()
	{
		return gstMpegtsAtscSTT.dsDayofmonth;
	}

	/** Ditto */
	public @property void dsDayofmonth(ubyte value)
	{
		gstMpegtsAtscSTT.dsDayofmonth = value;
	}

	/** */
	public @property ubyte dsHour()
	{
		return gstMpegtsAtscSTT.dsHour;
	}

	/** Ditto */
	public @property void dsHour(ubyte value)
	{
		gstMpegtsAtscSTT.dsHour = value;
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscSTT.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscSTT.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public @property DateTime utcDatetime()
	{
		return ObjectG.getDObject!(DateTime)(gstMpegtsAtscSTT.utcDatetime, false);
	}

	/** Ditto */
	public @property void utcDatetime(DateTime value)
	{
		gstMpegtsAtscSTT.utcDatetime = value.getDateTimeStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_stt_get_type();
	}

	/** */
	public DateTime getDatetimeUtc()
	{
		auto p = gst_mpegts_atsc_stt_get_datetime_utc(gstMpegtsAtscSTT);

		if(p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DateTime)(cast(GstDateTime*) p, true);
	}
}
