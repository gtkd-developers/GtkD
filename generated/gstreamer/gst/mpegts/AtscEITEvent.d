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


module gst.mpegts.AtscEITEvent;

private import glib.MemorySlice;
private import glib.PtrArray;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/**
 * An ATSC EIT Event
 */
public final class AtscEITEvent
{
	/** the main Gtk struct */
	protected GstMpegtsAtscEITEvent* gstMpegtsAtscEITEvent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsAtscEITEvent* getAtscEITEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsAtscEITEvent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsAtscEITEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsAtscEITEvent* gstMpegtsAtscEITEvent, bool ownedRef = false)
	{
		this.gstMpegtsAtscEITEvent = gstMpegtsAtscEITEvent;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsAtscEITEvent);
	}


	/** */
	public @property ushort eventId()
	{
		return gstMpegtsAtscEITEvent.eventId;
	}

	/** Ditto */
	public @property void eventId(ushort value)
	{
		gstMpegtsAtscEITEvent.eventId = value;
	}

	/** */
	public @property uint startTime()
	{
		return gstMpegtsAtscEITEvent.startTime;
	}

	/** Ditto */
	public @property void startTime(uint value)
	{
		gstMpegtsAtscEITEvent.startTime = value;
	}

	/** */
	public @property ubyte etmLocation()
	{
		return gstMpegtsAtscEITEvent.etmLocation;
	}

	/** Ditto */
	public @property void etmLocation(ubyte value)
	{
		gstMpegtsAtscEITEvent.etmLocation = value;
	}

	/** */
	public @property uint lengthInSeconds()
	{
		return gstMpegtsAtscEITEvent.lengthInSeconds;
	}

	/** Ditto */
	public @property void lengthInSeconds(uint value)
	{
		gstMpegtsAtscEITEvent.lengthInSeconds = value;
	}

	/**
	 * the titles
	 */
	public @property PtrArray titles()
	{
		return new PtrArray(gstMpegtsAtscEITEvent.titles, false);
	}

	/** Ditto */
	public @property void titles(PtrArray value)
	{
		gstMpegtsAtscEITEvent.titles = value.getPtrArrayStruct();
	}

	/**
	 * descriptors
	 */
	public @property PtrArray descriptors()
	{
		return new PtrArray(gstMpegtsAtscEITEvent.descriptors, false);
	}

	/** Ditto */
	public @property void descriptors(PtrArray value)
	{
		gstMpegtsAtscEITEvent.descriptors = value.getPtrArrayStruct();
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_atsc_eit_event_get_type();
	}
}
