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


module gst.mpegts.DVBLinkageEvent;

private import glib.MemorySlice;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;


/** */
public final class DVBLinkageEvent
{
	/** the main Gtk struct */
	protected GstMpegtsDVBLinkageEvent* gstMpegtsDVBLinkageEvent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsDVBLinkageEvent* getDVBLinkageEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsDVBLinkageEvent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsDVBLinkageEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsDVBLinkageEvent* gstMpegtsDVBLinkageEvent, bool ownedRef = false)
	{
		this.gstMpegtsDVBLinkageEvent = gstMpegtsDVBLinkageEvent;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			sliceFree(gstMpegtsDVBLinkageEvent);
	}


	/** */
	public @property ushort targetEventId()
	{
		return gstMpegtsDVBLinkageEvent.targetEventId;
	}

	/** Ditto */
	public @property void targetEventId(ushort value)
	{
		gstMpegtsDVBLinkageEvent.targetEventId = value;
	}

	/** */
	public @property bool targetListed()
	{
		return gstMpegtsDVBLinkageEvent.targetListed != 0;
	}

	/** Ditto */
	public @property void targetListed(bool value)
	{
		gstMpegtsDVBLinkageEvent.targetListed = value;
	}

	/** */
	public @property bool eventSimulcast()
	{
		return gstMpegtsDVBLinkageEvent.eventSimulcast != 0;
	}

	/** Ditto */
	public @property void eventSimulcast(bool value)
	{
		gstMpegtsDVBLinkageEvent.eventSimulcast = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_dvb_linkage_event_get_type();
	}
}
