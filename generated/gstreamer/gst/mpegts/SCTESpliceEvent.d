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


module gst.mpegts.SCTESpliceEvent;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.PtrArray;
private import gobject.ObjectG;
private import gst.mpegts.c.functions;
public  import gst.mpegts.c.types;
private import gtkd.Loader;


/** */
public final class SCTESpliceEvent
{
	/** the main Gtk struct */
	protected GstMpegtsSCTESpliceEvent* gstMpegtsSCTESpliceEvent;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GstMpegtsSCTESpliceEvent* getSCTESpliceEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return gstMpegtsSCTESpliceEvent;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gstMpegtsSCTESpliceEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GstMpegtsSCTESpliceEvent* gstMpegtsSCTESpliceEvent, bool ownedRef = false)
	{
		this.gstMpegtsSCTESpliceEvent = gstMpegtsSCTESpliceEvent;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( Linker.isLoaded(LIBRARY_GSTMPEGTS) && ownedRef )
			sliceFree(gstMpegtsSCTESpliceEvent);
	}


	/** */
	public @property bool insertEvent()
	{
		return gstMpegtsSCTESpliceEvent.insertEvent != 0;
	}

	/** Ditto */
	public @property void insertEvent(bool value)
	{
		gstMpegtsSCTESpliceEvent.insertEvent = value;
	}

	/** */
	public @property uint spliceEventId()
	{
		return gstMpegtsSCTESpliceEvent.spliceEventId;
	}

	/** Ditto */
	public @property void spliceEventId(uint value)
	{
		gstMpegtsSCTESpliceEvent.spliceEventId = value;
	}

	/** */
	public @property bool spliceEventCancelIndicator()
	{
		return gstMpegtsSCTESpliceEvent.spliceEventCancelIndicator != 0;
	}

	/** Ditto */
	public @property void spliceEventCancelIndicator(bool value)
	{
		gstMpegtsSCTESpliceEvent.spliceEventCancelIndicator = value;
	}

	/** */
	public @property bool outOfNetworkIndicator()
	{
		return gstMpegtsSCTESpliceEvent.outOfNetworkIndicator != 0;
	}

	/** Ditto */
	public @property void outOfNetworkIndicator(bool value)
	{
		gstMpegtsSCTESpliceEvent.outOfNetworkIndicator = value;
	}

	/** */
	public @property bool programSpliceFlag()
	{
		return gstMpegtsSCTESpliceEvent.programSpliceFlag != 0;
	}

	/** Ditto */
	public @property void programSpliceFlag(bool value)
	{
		gstMpegtsSCTESpliceEvent.programSpliceFlag = value;
	}

	/** */
	public @property bool durationFlag()
	{
		return gstMpegtsSCTESpliceEvent.durationFlag != 0;
	}

	/** Ditto */
	public @property void durationFlag(bool value)
	{
		gstMpegtsSCTESpliceEvent.durationFlag = value;
	}

	/** */
	public @property bool spliceImmediateFlag()
	{
		return gstMpegtsSCTESpliceEvent.spliceImmediateFlag != 0;
	}

	/** Ditto */
	public @property void spliceImmediateFlag(bool value)
	{
		gstMpegtsSCTESpliceEvent.spliceImmediateFlag = value;
	}

	/** */
	public @property bool programSpliceTimeSpecified()
	{
		return gstMpegtsSCTESpliceEvent.programSpliceTimeSpecified != 0;
	}

	/** Ditto */
	public @property void programSpliceTimeSpecified(bool value)
	{
		gstMpegtsSCTESpliceEvent.programSpliceTimeSpecified = value;
	}

	/** */
	public @property ulong programSpliceTime()
	{
		return gstMpegtsSCTESpliceEvent.programSpliceTime;
	}

	/** Ditto */
	public @property void programSpliceTime(ulong value)
	{
		gstMpegtsSCTESpliceEvent.programSpliceTime = value;
	}

	/**
	 * The UTC time of the signaled splice event
	 */
	public @property uint utcSpliceTime()
	{
		return gstMpegtsSCTESpliceEvent.utcSpliceTime;
	}

	/** Ditto */
	public @property void utcSpliceTime(uint value)
	{
		gstMpegtsSCTESpliceEvent.utcSpliceTime = value;
	}

	/**
	 * Per-PID splice time information
	 */
	public @property PtrArray components()
	{
		return new PtrArray(gstMpegtsSCTESpliceEvent.components, false);
	}

	/** Ditto */
	public @property void components(PtrArray value)
	{
		gstMpegtsSCTESpliceEvent.components = value.getPtrArrayStruct();
	}

	/** */
	public @property bool breakDurationAutoReturn()
	{
		return gstMpegtsSCTESpliceEvent.breakDurationAutoReturn != 0;
	}

	/** Ditto */
	public @property void breakDurationAutoReturn(bool value)
	{
		gstMpegtsSCTESpliceEvent.breakDurationAutoReturn = value;
	}

	/** */
	public @property ulong breakDuration()
	{
		return gstMpegtsSCTESpliceEvent.breakDuration;
	}

	/** Ditto */
	public @property void breakDuration(ulong value)
	{
		gstMpegtsSCTESpliceEvent.breakDuration = value;
	}

	/** */
	public @property ushort uniqueProgramId()
	{
		return gstMpegtsSCTESpliceEvent.uniqueProgramId;
	}

	/** Ditto */
	public @property void uniqueProgramId(ushort value)
	{
		gstMpegtsSCTESpliceEvent.uniqueProgramId = value;
	}

	/** */
	public @property ubyte availNum()
	{
		return gstMpegtsSCTESpliceEvent.availNum;
	}

	/** Ditto */
	public @property void availNum(ubyte value)
	{
		gstMpegtsSCTESpliceEvent.availNum = value;
	}

	/** */
	public @property ubyte availsExpected()
	{
		return gstMpegtsSCTESpliceEvent.availsExpected;
	}

	/** Ditto */
	public @property void availsExpected(ubyte value)
	{
		gstMpegtsSCTESpliceEvent.availsExpected = value;
	}

	/** */
	public static GType getType()
	{
		return gst_mpegts_scte_splice_event_get_type();
	}

	/**
	 * Allocates and initializes a #GstMpegtsSCTESpliceEvent.
	 *
	 * Returns: A newly allocated #GstMpegtsSCTESpliceEvent
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = gst_mpegts_scte_splice_event_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(GstMpegtsSCTESpliceEvent*) __p);
	}
}
